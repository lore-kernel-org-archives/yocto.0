Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40DBFE00B5D; Wed, 25 Nov 2015 16:00:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EADC5E00AC5
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:12 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847189040"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:11 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:41 -0600
Message-Id: <1448496046-13186-13-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 12/17] upgradehelper.py: Add settings for enable testimage.
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Testimage feature will provide the ability to run testimage
class over a set of succesful upgrades.

Also it will run ptest on recipes that support ptest and retrive
the result for store/send to maintainer.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 README           | 25 +++++++++++++++++++++++++
 upgradehelper.py | 38 ++++++++++++++++++++++++++++++++++++--
 2 files changed, 61 insertions(+), 2 deletions(-)

diff --git a/README b/README
index ee1bd1f..6432f97 100644
--- a/README
+++ b/README
@@ -61,6 +61,7 @@ machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
 
 # optional features
 buildhistory=no
+testimage=no
 
 --------------- snip ---------------
 
@@ -93,6 +94,30 @@ $BUILDDIR/upgrade-helper/work/recipe/buildhistory-diff.txt.
 
 (Do not remove any other inherited class in the process, e.g. distrodata).
 
+5. If you want to enable testimage (optional) you need to enable in
+upgrade-helper.conf also add the following lines to your conf/local.conf
+file:
+
+--------------- snip ---------------
+INHERIT += "testimage"
+
+EXTRA_IMAGE_FEATURES = "debug-tweaks package-management"
+# testimage/ptest only work with rpm
+PACKAGE_CLASSES = "package_rpm"
+--------------- snip ---------------
+
+Also if you are running in a server without X11 session, you need to start
+a vncserver example:
+
+$ vncserver :1
+$ export DISPLAY=:1
+
+If upgrade is succesful testimage/ptest results are generated into
+$BUILDDIR/upgrade-helper/work/recipe/ptest_recipe.log if recipe support
+ptest.
+
+(Do not remove any other inherited class in the process, e.g. distrodata).
+
 Usage
 -----
 
diff --git a/upgradehelper.py b/upgradehelper.py
index c841c2a..222909b 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -157,6 +157,7 @@ class Updater(object):
                 'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
         self.opts['skip_compilation'] = skip_compilation
         self.opts['buildhistory'] = self._buildhistory_is_enabled()
+        self.opts['testimage'] = self._testimage_is_enabled()
 
         self.uh_dir = os.path.join(build_dir, "upgrade-helper")
         if not os.path.exists(self.uh_dir):
@@ -211,6 +212,41 @@ class Updater(object):
 
         return enabled
 
+    def _testimage_is_enabled(self):
+        enabled = False
+
+        if settings.get("testimage", "no") == "yes":
+            if 'testimage' in self.base_env['INHERIT']:
+                if not "ptest" in self.base_env["DISTRO_FEATURES"]:
+                    E(" testimage requires ptest in DISTRO_FEATURES please add to"\
+                      " conf/local.conf.")
+                    exit(1)
+
+                if not "package-management" in self.base_env['EXTRA_IMAGE_FEATURES']:
+                    E(" testimage requires package-management in EXTRA_IMAGE_FEATURES"\
+                      " please add to conf/local.conf.")
+                    exit(1)
+
+                if not "package_rpm" == self.base_env["PACKAGE_CLASSES"]:
+                    E(" testimage/ptest requires PACKAGE_CLASSES set to package_rpm"\
+                      " please add to conf/local.conf.")
+                    exit(1)
+
+                enabled = True
+            else:
+                E(" testimage was enabled in upgrade-helper.conf"\
+                  " but isn't INHERIT in conf/local.conf, if you want"\
+                  " to enable please set.")
+                exit(1)
+        else:
+            if 'testimage' in self.base_env['INHERIT']:
+                E(" testimage was INHERIT in conf/local.conf"\
+                  " but testimage=yes isn't in upgrade-helper.conf,"\
+                  " if you want to enable please set.")
+                exit(1)
+
+        return enabled
+
     def _get_packages_to_upgrade(self, packages=None):
         if packages is None:
             I( "Nothing to upgrade")
@@ -497,10 +533,8 @@ class Updater(object):
                     self.uh_recipes_failed_dir, pkg_ctx['PN']))
 
             self.commit_changes(pkg_ctx)
-
             self.statistics.update(pkg_ctx['PN'], pkg_ctx['NPV'],
                     pkg_ctx['MAINTAINER'], pkg_ctx['error'])
-
             self.pkg_upgrade_handler(pkg_ctx)
 
         if attempted_pkgs > 1:
-- 
2.1.4


