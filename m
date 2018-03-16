Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B21AE00AE6; Fri, 16 Mar 2018 11:00:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A32DFE00529
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:00:06 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Mar 2018 11:00:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,316,1517904000"; d="scan'208";a="25316590"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 16 Mar 2018 11:00:04 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 16 Mar 2018 19:53:19 +0200
Message-Id: <20180316175319.40415-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.16.1
Subject: [PATCH][AUH] Add a commit_revert_policy configuration setting
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
X-List-Received-Date: Fri, 16 Mar 2018 18:00:07 -0000

This helps in particular when a package upgrade builds fine, but then
causes other packages to fail. Depending on how close to the root
of dependency tree the failing packages are, this can badly subvert
the unattended upgrade process. So for that case, the better approach
is to revert every upgrade commit, so that each upgrade is effectively
built against master, which makes it less likely to fail.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 upgrade-helper.conf | 13 +++++++++++++
 upgradehelper.py    |  6 +++++-
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/upgrade-helper.conf b/upgrade-helper.conf
index b84b407..98ef58f 100644
--- a/upgrade-helper.conf
+++ b/upgrade-helper.conf
@@ -74,6 +74,19 @@
 # about what has changed in the resulting packages, compared to previous version
 #buildhistory=yes
 
+# When AUH has built an upgraded recipe it then creates a commit with the upgrade.
+# This setting specifies whether to also revert the commit. Possible values are:
+# 'failed_to_build' (default) - revert if the recipe failed to build. This is useful
+# to prevent further upgrades in the batch from failing, if they're dependent on the
+# recipe.
+# 'all' - always revert. This is useful when running automatic, unattended upgrades,
+#  as it will effectively test each upgrade against the baseline, and will avoid the 
+# situation where one successful upgrade thwarts others due to newly introduced 
+# incompatibilities.
+# 'never' - never revert. Use in interactive upgrade sessions, where any issues can be
+# manually fixed.
+#commit_revert_policy=failed_to_build
+
 # If enabled, build and boots a test image, and runs integration tests on it
 # If upgraded packages have ptest support those are run as well
 #testimage=no
diff --git a/upgradehelper.py b/upgradehelper.py
index d868cde..b5e696e 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -376,9 +376,13 @@ class Updater(object):
             else:
                 I(" %s: Save patch in directory: %s." %
                     (pkg_ctx['PN'], pkg_ctx['workdir']))
-            if pkg_ctx['error'] is not None:
+            revert_policy = settings.get('commit_revert_policy', 'failed_to_build')
+            if (pkg_ctx['error'] is not None and revert_policy == 'failed_to_build'):
                 I("Due to build errors, the commit will also be reverted to avoid cascading upgrade failures.")
                 self.git.revert("HEAD")
+            elif revert_policy == 'all':
+                I("The commit will be reverted to follow the policy set in the configuration file.")
+                self.git.revert("HEAD")
         except Error as e:
             msg = ''
 
-- 
2.16.1


