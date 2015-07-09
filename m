Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 293CBE00A54; Thu,  9 Jul 2015 13:33:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB8C9E009D7
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 13:33:42 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2015 13:33:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,442,1432623600"; d="scan'208";a="761497494"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.24.79])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2015 13:33:42 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Jul 2015 15:33:34 -0500
Message-Id: <1436474014-12101-3-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1436474014-12101-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1436474014-12101-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 2/2] recipes.html: Add Last Updated column
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
X-List-Received-Date: Thu, 09 Jul 2015 20:33:44 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

Added a column in the recipes view that show
the last time a recipe was updated when is
not up-to-date

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 templates/rrs/recipes.html | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/templates/rrs/recipes.html b/templates/rrs/recipes.html
index ca3c93e..a69ff0f 100644
--- a/templates/rrs/recipes.html
+++ b/templates/rrs/recipes.html
@@ -76,6 +76,7 @@
         <th class="version_column muted">Version</th>
         <th class="upstream_version_column muted">Upstream version</th>
         <th class="upstream_status_column span2">Upstream status</th>
+        <th class="last_updated_column">Last Updated</th>
         <th class="maintainer_column">Maintainer</th>
         <th class="summary_column muted span5">Summary</th>
         <th class="no_update_reason_column muted span5" style="display:none">No update reason</th>
@@ -88,16 +89,24 @@
     <td class="version_column">{{ r.version }}</td>
     <td class="upstream_version_column">{{ r.upstream_version }}</td>
     {% if r.upstream_status == "Up-to-date" %}
-    <td class="text-success" data-toggle="tooltip" title="{{r.outdated}}">
+    <td class="text-success">
     {% elif r.upstream_status == "Not updated" %}
-    <td class="text-error" data-toggle="tooltip" title="{{r.outdated}}">
+    <td class="text-error">
     {% elif r.upstream_status == "Can't be updated" %}
-    <td class="muted" data-toggle="tooltip" title="{{r.outdated}}">
+    <td class="muted">
     {% else %}
-    <td class="text-warning" data-toggle="tooltip" title="{{r.outdated}}">
+    <td class="text-warning">
     {% endif %}
         {{ r.upstream_status }}
     </td>
+    {% if r.outdated == "Up-to-date" %}
+    <td class="text-success">
+    {% elif r.outdated == "Unknown" %}
+    <td class="text-warning">
+    {% else %}
+    <td class="text-error">
+    {% endif %}
+        {{r.outdated}}</td>
     <td class="maintainer_column">{{ r.maintainer_name }}</td>
     <td class="summary_column">{{ r.summary }}</td>
     <td class="no_update_reason_column" style="display:none">{{ r.no_update_reason }}</td>
-- 
1.9.1


