Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4B7EE00B44; Tue,  1 Dec 2015 14:02:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D2EFE00B01
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 14:02:55 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2015 14:02:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,370,1444719600"; d="scan'208";a="610892744"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2015 14:02:52 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Dec 2015 16:03:38 -0600
Message-Id: <1449007421-26206-4-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
References: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 3/6] upgradehelper.py: Add support for specify what image test.
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
X-List-Received-Date: Tue, 01 Dec 2015 22:02:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Before this commit core-image-sato was hardcoded for image
to test with this commit image name can be specified in
the upgrade-helper.conf.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 README               |  1 +
 modules/testimage.py | 10 +++++-----
 upgradehelper.py     | 13 ++++++++-----
 3 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/README b/README
index 0756fdc..1c8eba1 100644
--- a/README
+++ b/README
@@ -68,6 +68,7 @@ machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
 # optional features
 buildhistory=no
 testimage=no
+testimage_name=image-custom # defaults to core-image-sato
 
 --------------- snip ---------------
 
diff --git a/modules/testimage.py b/modules/testimage.py
index 3fbbc19..e410111 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -153,18 +153,18 @@ class TestImage():
                         f.write(line)
                     f.write("END: PTEST for %s\n" % machine)
 
-    def sato(self, machine):
+    def testimage(self, machine, image):
         os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
             self._get_pkgs_to_install(self.pkgs_ctx)
 
         if 'TEST_SUITES' in os.environ:
             del os.environ['TEST_SUITES']
 
-        I( "   building core-image-sato for %s ..." % machine)
-        self.bb.complete("core-image-sato", machine)
+        I( "   building %s for %s ..." % (image, machine))
+        self.bb.complete(image, machine)
 
-        I( "   running core-image-sato/testimage for %s ..." % machine)
-        self.bb.complete("core-image-sato -c testimage", machine)
+        I( "   running %s/testimage for %s ..." % (image, machine))
+        self.bb.complete("%s -c testimage" % image, machine)
 
         log_file = self._find_log("log.do_testimage", machine)
         shutil.copyfile(log_file,
diff --git a/upgradehelper.py b/upgradehelper.py
index 7dbfbeb..db39601 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -68,6 +68,7 @@ help_text = """Usage examples:
     $ upgrade-helper.py all
 """
 
+DEFAULT_TESTIMAGE = 'core-image-sato'
 
 def parse_cmdline():
     parser = argparse.ArgumentParser(description='Package Upgrade Helper',
@@ -314,8 +315,8 @@ class Updater(object):
             "The recipe has ptest enabled and has been tested with core-image-minimal/ptest \n" \
             "with the next machines %s. Attached is the log file.\n\n"
 
-        testimage_sato_info = \
-            "The recipe has been tested using core-image-sato testimage and succeeded with \n" \
+        testimage_info = \
+            "The recipe has been tested using %s testimage and succeeded with \n" \
             "the next machines %s. Attached is the log file.\n\n" \
 
         mail_footer = \
@@ -353,7 +354,8 @@ class Updater(object):
                 msg_body += testimage_ptest_info % machines
             if 'testimage' in pkg_ctx:
                 machines = pkg_ctx['testimage'].keys()
-                msg_body += testimage_sato_info % machines
+                msg_body += testimage_info % (settings.get('testimage_name', \
+                    DEFAULT_TESTIMAGE), machines)
 
         msg_body += mail_footer
 
@@ -602,10 +604,11 @@ class Updater(object):
                             import traceback
                             traceback.print_exc(file=sys.stdout)
 
+                    image = settings.get('testimage_name', DEFAULT_TESTIMAGE)
                     try:
-                        tim.sato(machine)
+                        tim.testimage(machine, image)
                     except Exception as e:
-                        E(" core-image-sato/testimage on machine %s failed" % machine)
+                        E(" %s/testimage on machine %s failed" % (image, machine))
                         if isinstance(e, Error):
                             E(" %s" % e.stdout)
                         else:
-- 
2.1.4


