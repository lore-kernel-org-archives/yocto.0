Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E044E006E3; Thu,  8 Dec 2016 07:33:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C73BAE0050B
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 07:33:39 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga105.jf.intel.com with ESMTP; 08 Dec 2016 07:33:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,320,1477983600"; d="scan'208";a="1079276456"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.142])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2016 07:33:36 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2016 09:35:43 -0600
Message-Id: <1481211343-32419-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[PATCH][yocto-autobuilder]] autobuilder/buildsteps/Run{ESDK, SDK}SanityTests: Enable verbose on bitbake run
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
X-List-Received-Date: Thu, 08 Dec 2016 15:33:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Due to a recently changes on OEQA framework now uses the Bitbake logger
within a task there are no way to enable verbose.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../site-packages/autobuilder/buildsteps/RunESDKSanityTests.py        | 2 +-
 .../site-packages/autobuilder/buildsteps/RunSDKSanityTests.py         | 2 +-
 lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py  | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
index c16c8c2..177b726 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTests.py
@@ -55,7 +55,7 @@ class RunESDKSanityTests(BitbakeShellCommand):
                 command = command + "echo 'TEST_SUITES = \"" + self.suites + "\"'" + " >> ./conf/auto.conf;"
             if self.suitesappend:
                 command = command + "echo 'TEST_SUITES_append = \" " + self.suitesappend + "\"'" + " >> ./conf/auto.conf;"
-            command = command + "DISPLAY=:1 bitbake " + self.images + " -c testsdkext"
+            command = command + "DISPLAY=:1 bitbake -v " + self.images + " -c testsdkext"
         else:
             command = "echo 'Skipping step.'"
         self.command = command
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py
index 6fb3127..62c677b 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTests.py
@@ -58,7 +58,7 @@ class RunSDKSanityTests(BitbakeShellCommand):
                     command = command + "echo 'TEST_SUITES = \"" + self.suites.replace('kernelmodule', '').replace('python', '') + "\"'" + " >> ./conf/auto.conf;"
             if self.suitesappend:
                 command = command + "echo 'TEST_SUITES_append = \" " + self.suitesappend + "\"'" + " >> ./conf/auto.conf;"
-            command = command + "DISPLAY=:1 bitbake " + self.images + " -c testsdk"
+            command = command + "DISPLAY=:1 bitbake -v " + self.images + " -c testsdk"
         else:
             command = "echo 'Skipping step.'"
         self.command = command
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
index f7947de..48c8155 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.py
@@ -64,12 +64,12 @@ class RunSanityTests(BitbakeShellCommand):
                     command = command + "echo 'TEST_SUITES = \"" + self.suites.replace('kernelmodule', '').replace('python', '') + "\"'" + " >> ./conf/auto.conf;"
             if self.suitesappend:
                 command = command + "echo 'TEST_SUITES_append = \" " + self.suitesappend + "\"'" + " >> ./conf/auto.conf;"
-            command = command + "DISPLAY=:1 bitbake " + self.images + " -c testimage"
+            command = command + "DISPLAY=:1 bitbake -v " + self.images + " -c testimage"
         else:
             command = command + "echo 'IMAGETEST = \"qemu\"' >> ./conf/auto.conf;"
             if self.scene:
                 command = command + "echo 'TEST_SCEN = \"" + self.scene + "\"'" + " >> ./conf/auto.conf;"
-            command = command + "DISPLAY=localhost:1 bitbake " + self.images + " -c qemuimagetest_standalone"
+            command = command + "DISPLAY=localhost:1 bitbake -v " + self.images + " -c qemuimagetest_standalone"
         self.command = command
         ShellCommand.start(self)
 
-- 
2.1.4


