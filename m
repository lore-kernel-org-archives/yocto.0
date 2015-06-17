Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0ECFE00960; Tue, 16 Jun 2015 17:36:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1D68E00496
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 17:36:38 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 16 Jun 2015 17:36:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,629,1427785200"; d="scan'208";a="728819040"
Received: from yctb03.ostc.intel.com (HELO yctb03.otcr.jf.intel.com)
	([10.23.219.52])
	by fmsmga001.fm.intel.com with ESMTP; 16 Jun 2015 17:36:38 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Jun 2015 00:35:18 +0000
Message-Id: <1434501318-33354-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCHv3 09/11][auh] upgradehelper.py: Change policy for send emails and fix error handling.
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
X-List-Received-Date: Wed, 17 Jun 2015 00:36:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add MaintainerError class for identify errors that can be hanlded by
Maintainers, only send emails when error is instance of MaintainerError.

Get rid of UpgradeNotNeededError when run steps now is handled by
new upstream version detection only load recipes that need update.

[YOCTO #7489]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 errors.py        | 16 ++++++++++++----
 upgradehelper.py | 16 +++++++---------
 2 files changed, 19 insertions(+), 13 deletions(-)

diff --git a/errors.py b/errors.py
index c650165..7194944 100644
--- a/errors.py
+++ b/errors.py
@@ -31,6 +31,11 @@ class Error(Exception):
     def __str__(self):
         return "Failed(other errors)"
 
+class MaintainerError(Error):
+    """ Class for group error that can be sent to Maintainer's """
+    def __init__(self, message=None, stdout=None, stderr=None):
+        super(MaintainerError, self).__init__(message, stdout, stderr)
+
 class FetchError(Error):
     def __init__(self):
         super(FetchError, self).__init__("do_fetch failed")
@@ -38,25 +43,28 @@ class FetchError(Error):
     def __str__(self):
         return "Failed(do_fetch)"
 
-class PatchError(Error):
+class PatchError(MaintainerError):
     def __init__(self):
         super(PatchError, self).__init__("do_patch failed")
 
     def __str__(self):
         return "Failed(do_patch)"
 
-class ConfigureError(Error):
+class ConfigureError(MaintainerError):
     def __init__(self):
         super(ConfigureError, self).__init__("do_configure failed")
 
-class CompilationError(Error):
+    def __str__(self):
+        return "Failed(do_configure)"
+
+class CompilationError(MaintainerError):
     def __init__(self):
         super(CompilationError, self).__init__("do_compile failed")
 
     def __str__(self):
         return "Failed(do_compile)"
 
-class LicenseError(Error):
+class LicenseError(MaintainerError):
     def __init__(self):
         super(LicenseError, self).__init__("license checksum does not match")
 
diff --git a/upgradehelper.py b/upgradehelper.py
index b1f075d..7756b36 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -346,8 +346,6 @@ class Updater(object):
                 self.git.clean_untracked()
                 return
 
-        status = type(err).__name__
-
         # drop last upgrade from git. It's safer this way if the upgrade has
         # problems and other recipes depend on it. Give the other recipes a
         # chance...
@@ -381,8 +379,11 @@ class Updater(object):
                 "Attached are the patch, license diff (if change) and bitbake log.\n\n" \
                 "Regards,\nThe Upgrade Helper"
 
-            # don't bother maintainer with mail if the recipe is already up to date
-            if status == "UpgradeNotNeededError":
+            # only send email to Maintainer when is an error that can handle
+            if err and not isinstance(err, MaintainerError):
+                D( "%s: Don't send email to maintainer because the error was " \
+                   "%s and the information isn't useful, please review it." \
+                    % (self.pn, type(err).__name__))
                 return
 
             if self.maintainer in maintainer_override:
@@ -478,6 +479,7 @@ class Updater(object):
 
         attempted_pkgs = 0
         for self.pn, self.new_ver, self.maintainer in pkgs_to_upgrade:
+            error = None
             self.recipe = None
             attempted_pkgs += 1
             I(" ATTEMPT PACKAGE %d/%d" % (attempted_pkgs, total_pkgs))
@@ -489,10 +491,6 @@ class Updater(object):
                     step()
 
                 I(" %s: Upgrade SUCCESSFUL! Please test!" % self.pn)
-                error = None
-            except UpgradeNotNeededError as e:
-                I(" %s: %s" % (self.pn, e.message))
-                error = e
             except Error as e:
                 E(" %s: %s" % (self.pn, e.message))
                 E(" %s: Upgrade FAILED! Logs and/or file diffs are available in %s" % (self.pn, self.workdir))
@@ -667,7 +665,7 @@ class UniverseUpdater(Updater):
 
     # overriding the base method
     def pkg_upgrade_handler(self, err):
-        super(UniverseUpdater, self).pkg_upgrade_handler(self)
+        super(UniverseUpdater, self).pkg_upgrade_handler(err)
         self.update_history(self.pn, self.new_ver, self.maintainer,
                 self._get_status_msg(err))
 
-- 
1.8.4.5


