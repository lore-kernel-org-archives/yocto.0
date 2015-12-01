Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84472E00B20; Tue,  1 Dec 2015 14:02:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18703E00AE4
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 14:02:54 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 01 Dec 2015 14:02:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,370,1444719600"; d="scan'208";a="610892749"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2015 14:02:52 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Dec 2015 16:03:39 -0600
Message-Id: <1449007421-26206-5-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
References: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 4/6] testimage/ptest: Add require of ptest-pkgs in EXTRA_IMAGE_FEATURES.
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
X-List-Received-Date: Tue, 01 Dec 2015 22:02:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Instead of add manually the ptest packages use IMAGE_FEATURE to
install ptest packages this save time validating if ptest pkg
exist.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 README               | 3 ++-
 modules/testimage.py | 5 ++---
 upgradehelper.py     | 5 +++++
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/README b/README
index 1c8eba1..63c3b39 100644
--- a/README
+++ b/README
@@ -108,7 +108,8 @@ file:
 --------------- snip ---------------
 INHERIT += "testimage"
 
-EXTRA_IMAGE_FEATURES = "debug-tweaks package-management"
+DISTRO_FEATURES_append = " ptest"
+EXTRA_IMAGE_FEATURES = "debug-tweaks package-management ptest-pkgs"
 # testimage/ptest only work with rpm
 PACKAGE_CLASSES = "package_rpm"
 --------------- snip ---------------
diff --git a/modules/testimage.py b/modules/testimage.py
index e410111..52e2592 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -60,11 +60,10 @@ class TestImage():
         # for provide access to the target
         if ptest:
             pkgs_out.append("dropbear")
+            pkgs_out.append("ptest-runner")
 
         for c in pkgs:
             pkgs_out.append(c['PN'])
-            if ptest:
-                pkgs_out.append("%s-ptest" % c['PN'])
 
         return ' '.join(pkgs_out)
 
@@ -122,7 +121,7 @@ class TestImage():
         ptest_pkgs = self._get_ptest_pkgs()
 
         os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
-            self._get_pkgs_to_install(ptest_pkgs, True)
+            self._get_pkgs_to_install(ptest_pkgs, ptest=True)
         I( "   building core-image-minimal for %s ..." % machine)
         self.bb.complete("core-image-minimal", machine)
 
diff --git a/upgradehelper.py b/upgradehelper.py
index db39601..5a2b844 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -242,6 +242,11 @@ class Updater(object):
                       " please add to conf/local.conf.")
                     exit(1)
 
+                if not "ptest-pkgs" in self.base_env['EXTRA_IMAGE_FEATURES']:
+                    E(" testimage/ptest requires ptest-pkgs in EXTRA_IMAGE_FEATURES"\
+                      " please add to conf/local.conf.")
+                    exit(1)
+
                 if not "package_rpm" == self.base_env["PACKAGE_CLASSES"]:
                     E(" testimage/ptest requires PACKAGE_CLASSES set to package_rpm"\
                       " please add to conf/local.conf.")
-- 
2.1.4


