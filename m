Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01FACE00998; Wed,  4 Jan 2017 11:44:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A23F6E0043F
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 11:44:36 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jan 2017 11:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,317,1477983600"; d="scan'208";a="49546243"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.143])
	by fmsmga005.fm.intel.com with ESMTP; 04 Jan 2017 11:44:36 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Jan 2017 13:47:20 -0600
Message-Id: <1483559240-7206-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1483559240-7206-1-git-send-email-anibal.limon@linux.intel.com>
References: <1483559240-7206-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: alexander.kanavin@intel.com
Subject: [[PATCH][RRS] 2/2] templates/rrs/recipedetail.html: Fix unneeded quotes in url call
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
X-List-Received-Date: Wed, 04 Jan 2017 19:44:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The url template function resolve an URL associated with a model, so
in Django 1.6 quotes around variables don't get the variable value.

[YOCTO #10871]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 templates/rrs/recipedetail.html | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/templates/rrs/recipedetail.html b/templates/rrs/recipedetail.html
index fc3395c..9ac15da 100644
--- a/templates/rrs/recipedetail.html
+++ b/templates/rrs/recipedetail.html
@@ -79,7 +79,7 @@
                     <td>{{ rud.version }}</td>
                     {% if rud.milestone_name %}
                     <td>
-                        <a href="{% url 'recipes' 'rud.release_name' 'rud.milestone_name' %}">
+                        <a href="{% url 'recipes' rud.release_name rud.milestone_name %}">
                             {{ rud.release_name }}
                             {% if rud.milestone_name != "All" %}
                             {{ rud.milestone_name }}
@@ -97,7 +97,7 @@
                     <td>{{ rud.date }}</td>
 
                     {% if rud.is_recipe_maintainer %} 
-                    <td><a href="{% url 'recipes' 'rud.release_name' 'rud.milestone_name' %}?maintainer_name={{ rud.maintainer_name|urlencode }}">{{ rud.maintainer_name }}</a></td>
+                    <td><a href="{% url 'recipes' rud.release_name rud.milestone_name %}?maintainer_name={{ rud.maintainer_name|urlencode }}">{{ rud.maintainer_name }}</a></td>
                     {% else %}
                     <td>{{ rud.maintainer_name }}</a></td>
                     {% endif %}
-- 
2.1.4


