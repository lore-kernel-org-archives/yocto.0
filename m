Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89FA4E00B46; Fri, 11 Dec 2015 13:14:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 691ABE00A04
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 13:14:07 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Dec 2015 13:14:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,415,1444719600"; d="scan'208";a="839480635"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.48])
	by orsmga001.jf.intel.com with ESMTP; 11 Dec 2015 13:14:04 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Dec 2015 15:15:02 -0600
Message-Id: <1449868505-9291-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 1/4] upgradehelper: commit_changes ensure that patch_file exist
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
X-List-Received-Date: Fri, 11 Dec 2015 21:14:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

If patch_file isn't generated treat it as an error this avoid
future exceptions in package_handler when try to send/save email.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 34 +++++++++++++++++++++++++++-------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 54f9a10..e5c2629 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -369,6 +369,8 @@ class Updater(object):
             f.write("\n%s\n" % msg_body)
 
     def commit_changes(self, pkg_ctx):
+        fail = False
+
         try:
             pkg_ctx['patch_file'] = None
 
@@ -376,19 +378,32 @@ class Updater(object):
                 I(" %s: Auto commit changes ..." % pkg_ctx['PN'])
                 self.git.commit(pkg_ctx['recipe'].commit_msg, self.opts['author'])
 
-                I(" %s: Save patch in directory: %s." %
-                        (pkg_ctx['PN'], pkg_ctx['workdir']))
-
                 stdout = self.git.create_patch(pkg_ctx['workdir'])
                 pkg_ctx['patch_file'] = stdout.strip()
+
+                if not pkg_ctx['patch_file']:
+                    msg = "Patch file not generated."
+                    E(" %s: %s\n %s" % (pkg_ctx['PN'], msg, stdout))
+                    pkg_ctx['error'] = Error(msg, stdout)
+                    fail = True
+                else:
+                    I(" %s: Save patch in directory: %s." %
+                        (pkg_ctx['PN'], pkg_ctx['workdir']))
         except Error as e:
+            msg = ''
+
             for line in e.stdout.split("\n"):
                 if line.find("nothing to commit") == 0:
-                    I(" %s: Nothing to commit!" % pkg_ctx['PN'])
-                    return
+                    msg = "Nothing to commit!"
+                    I(" %s: %s" % (pkg_ctx['PN'], msg))
 
             I(" %s: %s" % (pkg_ctx['PN'], e.stdout))
-            raise e
+
+            pkg_ctx['error'] = Error(msg, e.stdout)
+            fail = True
+
+        if fail:
+            raise pkg_ctx['error']
 
     def send_status_mail(self, statistics_summary):
         if "status_recipients" not in settings:
@@ -554,7 +569,12 @@ class Updater(object):
                 pkg_ctx['error'] = e
                 failed_pkgs_ctx.append(pkg_ctx)
 
-            self.commit_changes(pkg_ctx)
+            try:
+                self.commit_changes(pkg_ctx)
+            except:
+                if pkg_ctx in succeeded_pkgs_ctx:
+                    succeeded_pkgs_ctx.remove(pkg_ctx)
+                    failed_pkgs_ctx.append(pkg_ctx)
 
         if self.opts['testimage']:
             if len(succeeded_pkgs_ctx) > 0:
-- 
2.1.4


