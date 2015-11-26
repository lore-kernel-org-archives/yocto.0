Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 940CEE00B68; Wed, 25 Nov 2015 16:00:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 255F0E009EF
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:11 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847189008"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:09 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:39 -0600
Message-Id: <1448496046-13186-11-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 10/17] steps.py: Move clean_repo to first step.
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

In order to avoid random errors of uncleaned repository.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/steps.py | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/modules/steps.py b/modules/steps.py
index 19549cc..2685b80 100644
--- a/modules/steps.py
+++ b/modules/steps.py
@@ -34,6 +34,21 @@ from recipe.base import Recipe
 from recipe.git import GitRecipe
 from recipe.svn import SvnRecipe
 
+def clean_repo(bb, git, opts, pkg_ctx):
+    git.checkout_branch("master")
+
+    try:
+        git.delete_branch("remove_patches")
+    except:
+        pass
+    try:
+        git.delete_branch("upgrades")
+    except:
+        pass
+
+    git.reset_hard()
+    git.create_branch("upgrades")
+
 def load_env(bb, git, opts, pkg_ctx):
     stdout = git.status()
     if stdout != "":
@@ -57,17 +72,6 @@ def load_env(bb, git, opts, pkg_ctx):
     if pkg_ctx['env']['PV'] == pkg_ctx['NPV']:
         raise UpgradeNotNeededError
 
-def clean_repo(bb, git, opts, pkg_ctx):
-    try:
-        git.checkout_branch("upgrades")
-    except Error:
-        git.create_branch("upgrades")
-
-    try:
-        git.delete_branch("remove_patches")
-    except:
-        pass
-
 def detect_recipe_type(bb, git, opts, pkg_ctx):
     if pkg_ctx['env']['SRC_URI'].find("ftp://") != -1 or  \
             pkg_ctx['env']['SRC_URI'].find("http://") != -1 or \
@@ -127,8 +131,8 @@ def buildhistory_diff(bb, git, opts, pkg_ctx):
     pkg_ctx['buildhistory'].diff()
 
 upgrade_steps = [
-    (load_env, "Loading environment ..."),
     (clean_repo, "Cleaning git repository of temporary branch ..."),
+    (load_env, "Loading environment ..."),
     (detect_recipe_type, None),
     (buildhistory_init, None),
     (unpack_original, "Fetch & unpack original version ..."),
-- 
2.1.4


