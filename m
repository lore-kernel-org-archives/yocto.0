Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18B2BE005A9; Mon, 13 Jun 2016 16:31:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16A5DE0073D
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 16:31:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2016 16:31:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,468,1459839600"; d="scan'208";a="1001247096"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.51])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2016 16:31:27 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2016 18:32:15 -0500
Message-Id: <1465860736-26581-8-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
References: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: belen.barros.pena@linux.intel.com
Subject: [[PATCH][error-report-web] 7/8] views/templates: Add support for display different type of errors
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 13 Jun 2016 23:31:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now we have a set of different type of errors not only Recipe ones
this change enable support for display it based on design did by
Belen Barros [1].

[YOCTO #7583]

[1] https://bugzilla.yoctoproject.org/attachment.cgi?id=3214

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 Post/views.py                | 16 +++++-----------
 templates/error-details.html | 13 ++++++++++++-
 templates/latest-errors.html | 19 +++++++++++--------
 3 files changed, 28 insertions(+), 20 deletions(-)

diff --git a/Post/views.py b/Post/views.py
index 0455baa..6b57977 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -134,18 +134,13 @@ def search(request, mode=results_mode.LATEST, **kwargs):
          'field' : 'BUILD__DATE',
          'disable_toggle' : True,
         },
-        {'name': 'Recipe',
-         'clclass' : 'recipe',
-         'field' : 'RECIPE',
+        {'name': 'Error type',
+         'clclass' : 'error_type',
+         'field' : 'BUILD__ERROR_TYPE',
          'disable_toggle' : True,
         },
-        {'name': 'Recipe version',
-         'clclass': 'recipe_version',
-         'field' : 'RECIPE_VERSION',
-        },
-        {'name': 'Task',
-         'clclass': 'task',
-         'field' : 'TASK',
+        {'name': 'Failure',
+         'clclass': 'failure',
          'disable_toggle' : True,
         },
         {'name': 'Machine',
@@ -156,7 +151,6 @@ def search(request, mode=results_mode.LATEST, **kwargs):
         {'name': 'Distro',
          'clclass': 'distro',
          'field': 'BUILD__DISTRO',
-         'disable_toggle' : True,
         },
         {'name': 'Build system',
          'clclass': 'build_sys',
diff --git a/templates/error-details.html b/templates/error-details.html
index 62ec75f..e5bf758 100644
--- a/templates/error-details.html
+++ b/templates/error-details.html
@@ -9,7 +9,11 @@
     <a class="btn pull-left back-btn" style="margin-top:7px;" href="#">
       <i class="icon-arrow-left"></i>
     </a>
-    <h1 style="margin-left:60px;">{{detail.RECIPE}}-{{detail.RECIPE_VERSION}} {{detail.TASK}} </h1>
+    <h1 style="margin-left:60px;">
+        {% if detail.BUILD.ERROR_TYPE == "Recipe" %}
+        {{detail.RECIPE}}-{{detail.RECIPE_VERSION}}
+        {% endif %}
+        {{detail.TASK}} </h1>
   </div>
   <div class="row span8">
     <pre>{{detail.ERROR_DETAILS}}</pre>
@@ -20,12 +24,19 @@
       <dl class="dl-vertical">
         <dt>Submitted on:</dt>
         <dd>{{ detail.BUILD.DATE|date:"d/m/y H:i"}}</dd>
+        <dt>Error type:</dt>
+        <dd>{{ detail.BUILD.ERROR_TYPE }}</dd>
+        {% if detail.BUILD.ERROR_TYPE == "Recipe" %}
         <dt>Task:</dt>
         <dd>{{ detail.TASK }}</dd>
         <dt>Recipe:</dt>
         <dd>{{detail.RECIPE }} </dd>
         <dt>Recipe version:</dt>
         <dd>{{ detail.RECIPE_VERSION }}</dd>
+        {% else %}
+        <dt>Command:</dt>
+        <dd>{{ detail.TASK }}</dd>
+        {% endif %}
         <dt>Machine:</dt>
         <dd>{{ detail.BUILD.MACHINE }}</dd>
         <dt>Distro:</dt>
diff --git a/templates/latest-errors.html b/templates/latest-errors.html
index 56f612a..77a54af 100644
--- a/templates/latest-errors.html
+++ b/templates/latest-errors.html
@@ -127,18 +127,21 @@
               {% url "details" build_fail.id as details_url %}
               <tr class="data">
                 <td class="submitted_on"> <a href="{{details_url}}">{{ build_fail.BUILD.DATE|date:"d/m/y H:i"}}</a></td>
-                <td class="recipe"><a href="{{details_url}}">{{ build_fail.RECIPE }}</a>
-                  <a class="filter" href="#" data-filter="{{build_fail.RECIPE}}" data-type="recipe">
-                    <i class="icon-filter hover" title="Filter by {{build_fail.RECIPE}}"></i>
+
+                <td class="error_type"><a href="{{details_url}}">{{ build_fail.BUILD.ERROR_TYPE }}</a>
+                  <a class="filter" href="#" data-filter="{{build_fail.BUILD.ERROR_TYPE}}" data-type="error_type">
+                    <i class="icon-filter hover" title="Filter by {{build_fail.BUILD.ERROR_TYPE}}"></i>
                   </a>
                 </td>
-                <td class="recipe_version"><a href="{{details_url}}" {% if build_fail.RECIPE_VERSION|length > 13 %}class="tooltip-me" data-toggle="tooltip" title="{{ build_fail.RECIPE_VERSION }}"{%endif%}>{{ build_fail.RECIPE_VERSION|truncatechars:13 }}</a></td>
-                <td class="task"><a href="{{details_url}}">{{ build_fail.TASK }}</a>
-                  <a class="filter"  href="#" data-filter="{{build_fail.TASK}}" data-type="task">
-                    <i class="icon-filter hover" title="Filter by {{build_fail.TASK}}"></i>
-                  </a>
 
+                <td class="failure">
+                    <a href="{{details_url}}">
+                        {% if build_fail.BUILD.ERROR_TYPE == "Recipe" %}
+                        {{ build_fail.RECIPE }}:
+                        {% endif %}
+                        {{ build_fail.TASK }}</a>
                 </td>
+
                 <td class="machine"><a href="{{details_url}}">{{ build_fail.BUILD.MACHINE }}</a>
                   <a class="filter"  href="#" data-filter="{{build_fail.BUILD.MACHINE}}" data-type="machine">
                     <i class="icon-filter hover" title="Filter by {{build_fail.BUILD.MACHINE}}"></i>
-- 
2.1.4


