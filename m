Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B3A2E00972; Wed,  5 Apr 2017 19:11:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F84BE00961
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 19:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491444666; x=1522980666; h=from:to:subject:date:message-id;
	bh=eDebKC+6nlXdLI+WnsKCgZHXdbjpjgUz4nR/NFlAgZ4=;
	b=KCwd6gndoWJkqCtEJAR6AGiqIEg96TX5x07YZRGDtfFObCrjJnqwIids
	tEWLjEh5x0tka0aWu2EivYaVJcaxBg==;
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Apr 2017 19:11:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,282,1488873600"; d="scan'208";a="85004465"
Received: from mpragasa-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.138.225])
	by fmsmga005.fm.intel.com with ESMTP; 05 Apr 2017 19:11:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Apr 2017 14:10:37 +1200
Message-Id: <20170406021037.2392-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [meta-qt4][PATCH] sip: remove in favour of meta-oe recipe
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
X-List-Received-Date: Thu, 06 Apr 2017 02:11:09 -0000

Version 4.12 of python-pyqt that we are about to upgrade to requires sip
4.19 which is already in meta-oe, so this version is no longer working.
We shouldn't really be carrying a duplicate recipe here, but on the
other hand we don't want to be adding a hard dependency on meta-oe
either. As a compromise, drop the sip recipe here and require the user
to add meta-oe in order to build it, and a corresponding note to the
README.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README                                   |  7 +++++
 recipes-qt4/recipes-python/sip_4.16.4.bb | 54 --------------------------------
 2 files changed, 7 insertions(+), 54 deletions(-)
 delete mode 100644 recipes-qt4/recipes-python/sip_4.16.4.bb

diff --git a/README b/README
index 49c3ab2..cebdacd 100644
--- a/README
+++ b/README
@@ -23,6 +23,13 @@ subdirectory: meta
 branch: master
 revision: HEAD
 
+If you want to build python-pyqt you will also need meta-oe:
+
+URI: git://github.com/openembedded/meta-openembedded
+subdirectory: meta-oe
+branch: master
+revision: HEAD
+
 
 Maintenance
 -----------
diff --git a/recipes-qt4/recipes-python/sip_4.16.4.bb b/recipes-qt4/recipes-python/sip_4.16.4.bb
deleted file mode 100644
index 032d125..0000000
--- a/recipes-qt4/recipes-python/sip_4.16.4.bb
+++ /dev/null
@@ -1,54 +0,0 @@
-SUMMARY = "SIP is a C++/Python Wrapper Generator"
-AUTHOR = "Phil Thompson"
-HOMEPAGE = "http://www.riverbankcomputing.co.uk/sip"
-SECTION = "devel"
-LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://LICENSE-GPL2;md5=e91355d8a6f8bd8f7c699d62863c7303"
-DEPENDS_class-target = "qt4-x11-free python"
-
-# riverbankcomputing is upstream, but keeps only latest version, sf usually have few older
-#SRC_URI = "http://www.riverbankcomputing.com/static/Downloads/sip4/sip-${PV}.tar.gz"
-SRC_URI = "${SOURCEFORGE_MIRROR}/project/pyqt/sip/sip-${PV}/sip-${PV}.tar.gz"
-SRC_URI[md5sum] = "a9840670a064dbf8f63a8f653776fec9"
-SRC_URI[sha256sum] = "ceda443fc5e129e67a067e2cd7b73ff037f8b10b50e407baa2b1d9f2199d57f5"
-
-BBCLASSEXTEND = "native"
-
-PACKAGES += "python-sip"
-
-inherit qmake2 python-dir pythonnative distro_features_check
-# depends on qt4-x11-free
-REQUIRED_DISTRO_FEATURES = "x11"
-
-EXTRA_QMAKEVARS_POST += "CONFIG=console"
-
-export BUILD_SYS
-export HOST_SYS
-export STAGING_LIBDIR
-export STAGING_INCDIR
-
-do_configure_prepend_class-target() {
-    echo "py_platform = linux" > sip.cfg
-    echo "py_inc_dir = %(sysroot)/${includedir}/python%(py_major).%(py_minor)" >> sip.cfg
-    echo "sip_bin_dir = ${D}/${bindir}" >> sip.cfg
-    echo "sip_inc_dir = ${D}/${includedir}" >> sip.cfg
-    echo "sip_module_dir = ${D}/${libdir}/python%(py_major).%(py_minor)/site-packages" >> sip.cfg
-    echo "sip_sip_dir = ${D}/${datadir}/sip" >> sip.cfg
-    python configure.py --use-qmake --configuration sip.cfg --sysroot ${STAGING_DIR_HOST}
-}
-do_configure_prepend_class-native() {
-    echo "py_platform = linux" > sip.cfg
-    echo "py_inc_dir = ${includedir}/python%(py_major).%(py_minor)" >> sip.cfg
-    echo "sip_bin_dir = ${D}/${bindir}" >> sip.cfg
-    echo "sip_inc_dir = ${D}/${includedir}" >> sip.cfg
-    echo "sip_module_dir = ${D}/${libdir}/python%(py_major).%(py_minor)/site-packages" >> sip.cfg
-    echo "sip_sip_dir = ${D}/${datadir}/sip" >> sip.cfg
-    python configure.py --use-qmake --configuration sip.cfg --sysroot ${STAGING_DIR_NATIVE}
-}
-do_install() {
-    oe_runmake install
-}
-
-FILES_python-${BPN} = "${libdir}/${PYTHON_DIR}/site-packages/"
-FILES_${PN}-dbg += "${libdir}/${PYTHON_DIR}/site-packages/.debug"
-
-- 
2.9.3


