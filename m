Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5839FE00A3B; Wed, 10 Jun 2015 09:30:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DF4AE0086D
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 09:30:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 10 Jun 2015 09:30:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,588,1427785200"; d="scan'208";a="585476961"
Received: from yctb03.ostc.intel.com (HELO yctb03.otcr.jf.intel.com)
	([10.23.219.52])
	by orsmga003.jf.intel.com with ESMTP; 10 Jun 2015 09:30:13 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Jun 2015 16:28:42 +0000
Message-Id: <1433953732-29963-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
In-Reply-To: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 01/11][auh] upgradehelper.py: Fix status_msg in pkg_upgrade_handler
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
X-List-Received-Date: Wed, 10 Jun 2015 16:30:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When is called pkg_upgrade_handler for generate email and save
build history at end sometimes status_msg is undefined.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index ddd0835..366efb3 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -173,8 +173,6 @@ class Updater(object):
         self.email_handler = Email(settings)
         self.statistics = Statistics()
 
-
-
     def _get_env(self):
         stdout = self.bb.env(self.pn)
 
@@ -217,6 +215,11 @@ class Updater(object):
         self.recipe = recipe(self.env, self.new_ver, self.interactive, self.workdir,
                              self.recipe_dir, self.bb, self.git)
 
+    def _get_status_msg(self, err):
+        if err:
+            return str(err)
+        else:
+            return "Succeeded"
 
     def _create_workdir(self):
         self.workdir = self.uh_dir + "/" + self.pn
@@ -344,7 +347,6 @@ class Updater(object):
     def pkg_upgrade_handler(self, err):
         if err and self.patch_file:
             answer = "N"
-            status_msg = str(err)
             if self.interactive:
                 I(" %s: Do you want to keep the changes? (y/N)" % self.pn)
                 answer = sys.stdin.readline().strip().upper()
@@ -354,8 +356,6 @@ class Updater(object):
                 self.git.reset_hard(1)
                 self.git.clean_untracked()
                 return
-        elif not err:
-            status_msg = "Succeeded"
 
         status = type(err).__name__
 
@@ -384,7 +384,8 @@ class Updater(object):
             else:
                 subject += " FAILED"
 
-            msg_body = self.mail_header % (self.pn, self.new_ver, status_msg)
+            msg_body = self.mail_header % (self.pn, self.new_ver,
+                    self._get_status_msg(err))
 
             if err is None:
                 msg_body += self.next_steps_info % os.path.basename(self.patch_file)
@@ -653,7 +654,8 @@ class UniverseUpdater(Updater):
     # overriding the base method
     def pkg_upgrade_handler(self, err):
         super(UniverseUpdater, self).pkg_upgrade_handler(self)
-        self.update_history(self.pn, self.new_ver, self.maintainer, status_msg)
+        self.update_history(self.pn, self.new_ver, self.maintainer,
+                self._get_status_msg(err))
 
     def run(self):
         self.update_master()
-- 
1.8.4.5


