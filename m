Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BEE9E00AC5; Tue, 15 Nov 2016 19:18:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D4A2E00997
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 19:18:50 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 15 Nov 2016 19:18:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,497,1473145200"; d="scan'208";a="1059985973"
Received: from nnasirin-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.185.211])
	by orsmga001.jf.intel.com with ESMTP; 15 Nov 2016 19:18:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 16 Nov 2016 16:18:31 +1300
Message-Id: <1479266314-8574-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [layerindex-web][PATCH 1/4] admin: add an action to duplicate a branch
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
X-List-Received-Date: Wed, 16 Nov 2016 03:18:54 -0000

Add an action to duplicate a Branch object, along with all of the
LayerBranches (and LayerMaintainers and LayerDependencies) underneath
it.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/admin.py | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/layerindex/admin.py b/layerindex/admin.py
index 7339ce1..f50aae4 100644
--- a/layerindex/admin.py
+++ b/layerindex/admin.py
@@ -17,6 +17,32 @@ class LayerDependencyInline(admin.StackedInline):
 
 class BranchAdmin(CompareVersionAdmin):
     model = Branch
+    actions = ['duplicate']
+
+    def duplicate(self, request, queryset):
+        for branch in queryset:
+            layerbranches = branch.layerbranch_set.all()
+            branch.pk = None
+            branch.name += '-copy'
+            branch.save()
+            for layerbranch in layerbranches:
+                layerbranch_maintainers = layerbranch.layermaintainer_set.all()
+                layerbranch_dependencies = layerbranch.dependencies_set.all()
+                layerbranch.pk = None
+                layerbranch.branch = branch
+                layerbranch.vcs_last_fetch = None
+                layerbranch.vcs_last_rev = ''
+                layerbranch.vcs_last_commit = None
+                layerbranch.save()
+                for layermaintainer in layerbranch_maintainers:
+                    layermaintainer.pk = None
+                    layermaintainer.layerbranch = layerbranch
+                    layermaintainer.save()
+                for layerdependency in layerbranch_dependencies:
+                    layerdependency.pk = None
+                    layerdependency.layerbranch = layerbranch
+                    layerdependency.save()
+    duplicate.short_description = "Duplicate selected Branches"
 
 class LayerItemAdmin(CompareVersionAdmin):
     list_filter = ['status', 'layer_type']
-- 
2.5.5


