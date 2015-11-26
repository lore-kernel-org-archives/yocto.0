Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 880E5E0088C; Wed, 25 Nov 2015 16:00:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E5D0E00985
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:03 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847188773"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:01 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:30 -0600
Message-Id: <1448496046-13186-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 01/17] {upgradehelper, bitbake}.py: Move _get_env function to bitbake
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Remove unnecesary access function (_get_env) to environment move
logic to build dictionary to bitbake env method.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 bitbake.py       | 19 ++++++++++++++++++-
 upgradehelper.py | 26 ++++----------------------
 2 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/bitbake.py b/bitbake.py
index a1587ce..cdbce2b 100644
--- a/bitbake.py
+++ b/bitbake.py
@@ -29,6 +29,8 @@ from logging import debug as D
 from logging import error as E
 from logging import critical as C
 import sys
+import re
+
 from errors import *
 
 for path in os.environ["PATH"].split(':'):
@@ -80,7 +82,22 @@ class Bitbake(object):
         return os.path.join(self.log_dir, BITBAKE_ERROR_LOG)
 
     def env(self, recipe=None):
-        return self._cmd(recipe, "-e", output_filter="-v \"^#\"")
+        stdout = self._cmd(recipe, "-e", output_filter="-v \"^#\"")
+
+        assignment = re.compile("^([^ \t=]*)=(.*)")
+        bb_env = dict()
+        for line in stdout.split('\n'):
+            m = assignment.match(line)
+            if m:
+                if m.group(1) in bb_env:
+                    continue
+
+                bb_env[m.group(1)] = m.group(2).strip("\"")
+
+        if not bb_env:
+            raise EmptyEnvError(stdout)
+
+        return bb_env
 
     def fetch(self, recipe):
         return self._cmd(recipe, "-c fetch")
diff --git a/upgradehelper.py b/upgradehelper.py
index 0223ac0..128bc07 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -168,7 +168,7 @@ class Updater(object):
         ]
 
         try:
-            self.base_env = self._get_env()
+            self.base_env = self.bb.env()
         except EmptyEnvError as e:
             import traceback
             E( " %s\n%s" % (e.message, traceback.format_exc()))
@@ -185,24 +185,6 @@ class Updater(object):
         else:
             return "Succeeded"
 
-    def _get_env(self, pn=None):
-        stdout = self.bb.env(pn)
-
-        assignment = re.compile("^([^ \t=]*)=(.*)")
-        bb_env = dict()
-        for line in stdout.split('\n'):
-            m = assignment.match(line)
-            if m:
-                if m.group(1) in bb_env:
-                    continue
-
-                bb_env[m.group(1)] = m.group(2).strip("\"")
-
-        if not bb_env:
-            raise EmptyEnvError(stdout)
-
-        return bb_env
-
     def _buildhistory_is_enabled(self):
         enabled = False
 
@@ -226,7 +208,7 @@ class Updater(object):
         return enabled
 
     def _load_env(self):
-        self.env = self._get_env(self.pn)
+        self.env = self.bb.env(self.pn)
 
     def _create_workdir(self):
         self.workdir = os.path.join(self.uh_recipes_all_dir, self.pn)
@@ -257,7 +239,7 @@ class Updater(object):
             self.git.reset_hard()
             self.git.clean_untracked()
 
-            self.env = self._get_env(self.pn)
+            self.env = self.bb.env(self.pn)
 
     def _clean_repo(self):
         try:
@@ -296,7 +278,7 @@ class Updater(object):
     def _rename(self):
         self.recipe.rename()
 
-        self.env = self._get_env(self.pn)
+        self.env = self.bb.env(self.pn)
 
         self.recipe.update_env(self.env)
 
-- 
2.1.4


