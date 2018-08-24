Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37FFAE007AD; Thu, 23 Aug 2018 22:00:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3ABDE0056D
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 22:00:19 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Aug 2018 22:00:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,281,1531810800"; d="scan'208,217";a="84510774"
Received: from pradhand-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.140.136])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2018 22:00:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2018 16:59:50 +1200
Message-Id: <a1b7fdacdbede7996cf54465a346023e2bacf4ec.1535086706.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1535086706.git.paul.eggleton@linux.intel.com>
References: <cover.1535086706.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 1/3] rrs: fix recipe/maintainer count showing at top
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
X-List-Received-Date: Fri, 24 Aug 2018 05:00:20 -0000

We were using the main badge class as a selector here to show the recipe
or maintainer count, and that meant that it also showed up at the top
next to the login button if there were some layers to review. Use a
proper id to stop that from happening.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 templates/rrs/maintainers.html | 6 +++---
 templates/rrs/recipes.html     | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/templates/rrs/maintainers.html b/templates/rrs/maintainers.html
index c237000f..cee02006 100644
--- a/templates/rrs/maintainers.html
+++ b/templates/rrs/maintainers.html
@@ -23,7 +23,7 @@
     <div class="navbar-inner table-controls">
         <ul class="nav">
             <li class="dropdown">
-            <span class="badge" style="margin-top:11px;"></span>
+            <span class="badge" id="maintainer-count" style="margin-top:11px;"></span>
             </li>
         </ul>    		
         <form id="form-search" class="pull-right input-append">
@@ -188,9 +188,9 @@ $(document).ready(function() {
         }
 
         if (count == 2) {
-            $('.badge').html("1 maintainer");
+            $('#maintainer-count').html("1 maintainer");
         } else {
-            $('.badge').html((count - 1) + " maintainers")
+            $('#maintainer-count').html((count - 1) + " maintainers")
         }
         updateTotals()
     }
diff --git a/templates/rrs/recipes.html b/templates/rrs/recipes.html
index af3c08d6..d917f19d 100644
--- a/templates/rrs/recipes.html
+++ b/templates/rrs/recipes.html
@@ -23,7 +23,7 @@
     <div class="navbar-inner table-controls">
         <ul class="nav">
             <li class="dropdown">
-                <span class="badge"></span>
+                <span class="badge" id="recipe-count"></span>
             </li>
             <li class="dropdown">
                 <a data-toggle="dropdown" href="#" class="dropdown-toggle" id="selected-status">
@@ -203,9 +203,9 @@ $(document).ready(function() {
         }
 
         if (count == 2) {
-            $('.badge').html("1 recipe");
+            $('#recipe-count').html("1 recipe");
         } else {
-            $('.badge').html((count - 1) + " recipes");
+            $('#recipe-count').html((count - 1) + " recipes");
         }
     }
 
-- 
2.17.1


