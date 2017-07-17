Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83F9CE00C38; Mon, 17 Jul 2017 14:38:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1512E00C34
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 14:38:09 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Jul 2017 14:38:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,375,1496127600"; d="scan'208";a="994037682"
Received: from unknown (HELO alimonb-mobl1.zpn.intel.com) ([10.219.128.142])
	by orsmga003.jf.intel.com with ESMTP; 17 Jul 2017 14:38:07 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 17 Jul 2017 16:38:40 -0500
Message-Id: <20170717213840.25983-1-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-yocto-bsp][PATCH] oeqa/selftest/cases: systemd_boot enable threaded runs
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
X-List-Received-Date: Mon, 17 Jul 2017 21:38:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../lib/oeqa/selftest/cases/systemd_boot.py        | 26 ++++++++++++----------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
index dd5eeec1633..0bd52dc6b85 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
@@ -3,9 +3,11 @@ import os
 from oeqa.selftest.case import OESelftestTestCase
 from oeqa.core.decorator.oeid import OETestID
 from oeqa.core.decorator.depends import OETestDepends
-from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
 
 class Systemdboot(OESelftestTestCase):
+    _use_own_builddir = True
+    _main_thread = False
+
     def _common_setup(self):
         """
         Common setup for test cases: 1445, 1528
@@ -22,7 +24,7 @@ class Systemdboot(OESelftestTestCase):
         """
 
         # Build a genericx86-64/efi systemdboot image
-        bitbake('mtools-native core-image-minimal')
+        self.bitbake('mtools-native core-image-minimal')
 
 
     @OETestID(1445)
@@ -38,14 +40,14 @@ class Systemdboot(OESelftestTestCase):
 
         # We'd use DEPLOY_DIR_IMAGE here, except that we need its value for
         # MACHINE="genericx86-64 which is probably not the one configured
-        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64', 'systemd-bootx64.efi')
+        systemdbootfile = os.path.join(self.get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64', 'systemd-bootx64.efi')
 
         self._common_setup()
 
         # Ensure we're actually testing that this gets built and not that
         # it was around from an earlier build
-        bitbake('-c cleansstate systemd-boot')
-        runCmd('rm -f %s' % systemdbootfile)
+        self.bitbake('-c cleansstate systemd-boot')
+        self.runCmd('rm -f %s' % systemdbootfile)
 
         self._common_build()
 
@@ -71,20 +73,20 @@ class Systemdboot(OESelftestTestCase):
         AutomatedBy:  Jose Perez Carranza <jose.perez.carranza at linux-intel.com>
         """
 
-        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
+        systemdbootfile = os.path.join(self.get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
                                            'systemd-bootx64.efi')
-        systemdbootimage = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
+        systemdbootimage = os.path.join(self.get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
                                                 'core-image-minimal-genericx86-64.hddimg')
-        imagebootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
+        imagebootfile = os.path.join(self.get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
                                                             'bootx64.efi')
-        mcopynative = os.path.join(get_bb_var('STAGING_BINDIR_NATIVE'), 'mcopy')
+        mcopynative = os.path.join(self.get_bb_var('STAGING_BINDIR_NATIVE'), 'mcopy')
 
         #Clean environment before start the test
         if os.path.isfile(imagebootfile):
-            runCmd('rm -f %s' % imagebootfile)
+            self.runCmd('rm -f %s' % imagebootfile)
 
             #Step 1
-            runCmd('%s -i %s ::EFI/BOOT/bootx64.efi %s' % (mcopynative ,systemdbootimage,
+            self.runCmd('%s -i %s ::EFI/BOOT/bootx64.efi %s' % (mcopynative ,systemdbootimage,
                                                            imagebootfile))
 
             #Step 2
@@ -93,6 +95,6 @@ class Systemdboot(OESelftestTestCase):
                             % imagebootfile)
 
             #Step 3
-            result = runCmd('md5sum %s %s' % (systemdbootfile, imagebootfile))
+            result = self.runCmd('md5sum %s %s' % (systemdbootfile, imagebootfile))
             self.assertEqual(result.output.split()[0], result.output.split()[2],
                              '%s was not correclty generated' % imagebootfile)
-- 
2.11.0


