Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03497E00ADD; Tue,  4 Apr 2017 07:38:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C81D4E00655
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 07:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491316676; x=1522852676;
	h=from:to:cc:subject:date:message-id;
	bh=LvP8Rka2bvR+VjhIN+w9G1LXjJ0DEKHJxWrK1ewSXig=;
	b=feAaZKUKLEvMQkgV/MyyelzCSgaqE4KlOODAfvsiH2DHjDcMRZKFXdCm
	IecFjytIXZp3yfb9C054H7cVS3I0mA==;
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Apr 2017 07:37:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,275,1486454400"; d="scan'208";a="951608243"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 04 Apr 2017 07:37:54 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Apr 2017 17:37:21 +0300
Message-Id: <20170404143721.5260-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-qt4][PATCH] qt4: disable openssl support
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
X-List-Received-Date: Tue, 04 Apr 2017 14:38:00 -0000

Qt4 does not support openssl 1.1 (and likely never will), while its
oe-core dependencies are being moved to that version, which is causing a
sysroot conflict between openssl 1.0 and 1.1 headers. The only way to resolve
it is to disable openssl support in Qt4, as we don't want Qt4's outdated version
requirements for openssl to be imposed on the rest of oe-core.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 recipes-qt4/qt4/qt4.inc                          | 3 ++-
 recipes-qt4/recipes-python/python-pyqt_4.11.3.bb | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-qt4/qt4/qt4.inc b/recipes-qt4/qt4/qt4.inc
index 2058e54..256a9fe 100644
--- a/recipes-qt4/qt4/qt4.inc
+++ b/recipes-qt4/qt4/qt4.inc
@@ -1,6 +1,6 @@
 inherit qmake_base
 
-DEPENDS += "qt4-tools-native freetype jpeg libpng zlib dbus openssl glib-2.0 sqlite3 tiff icu"
+DEPENDS += "qt4-tools-native freetype jpeg libpng zlib dbus glib-2.0 sqlite3 tiff icu"
 DEPENDS += "${@bb.utils.contains('DISTRO_FEATURES', 'pulseaudio', 'pulseaudio', '', d)}"
 
 require qt4_arch.inc
@@ -25,6 +25,7 @@ QT_CONFIG_FLAGS += "-release -no-cups -reduce-relocations \
                     -system-libjpeg -system-libpng -system-libtiff -system-zlib \
                     -no-pch -stl -glib -icu \
                     -no-rpath -silent \
+                    -no-openssl \
 		    -D USE_QTMULTIMEDIA=1 \
                     ${QT_DBUS} \
                     ${QT_QT3SUPPORT} \
diff --git a/recipes-qt4/recipes-python/python-pyqt_4.11.3.bb b/recipes-qt4/recipes-python/python-pyqt_4.11.3.bb
index cfddee8..7b04b5c 100644
--- a/recipes-qt4/recipes-python/python-pyqt_4.11.3.bb
+++ b/recipes-qt4/recipes-python/python-pyqt_4.11.3.bb
@@ -26,7 +26,7 @@ inherit qmake2 pythonnative python-dir distro_features_check
 # depends on qt4-x11-free
 REQUIRED_DISTRO_FEATURES = "x11"
 
-DISABLED_FEATURES = "PyQt_Desktop_OpenGL PyQt_Accessibility PyQt_SessionManager"
+DISABLED_FEATURES = "PyQt_Desktop_OpenGL PyQt_Accessibility PyQt_SessionManager PyQt_OpenSSL"
 
 DISABLED_FEATURES_append_arm = " PyQt_qreal_double"
 
-- 
2.11.0


