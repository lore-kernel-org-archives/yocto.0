Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5497FE006B5
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 11:56:55 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2011 11:56:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84429874"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.254])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2011 11:56:50 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2011 19:56:45 +0000
Message-Id: <d6eabbc05e39f78d50a0e6b9b41d356abc862741.1323374147.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1323374147.git.paul.eggleton@linux.intel.com>
References: <cover.1323374147.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1323374147.git.paul.eggleton@linux.intel.com>
References: <cover.1323374147.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3] [PATCH 1/3] qt-x11-free: fix installation and packaging
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 08 Dec 2011 19:56:55 -0000

* You cannot install files into the sysroot, this will cause interaction
  problems with shared state.
* Fixed packaging to install to sensible paths and remove most of the
  warnings.
* Merged prepends/appends and their associated functions within the same
  recipe

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-common.inc |   55 +++++++++++++------------------
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb   |    2 +-
 2 files changed, 24 insertions(+), 33 deletions(-)

diff --git a/recipes-qt3/qt3/qt-x11-free-common.inc b/recipes-qt3/qt3/qt-x11-free-common.inc
index c92d883..1e00138 100644
--- a/recipes-qt3/qt3/qt-x11-free-common.inc
+++ b/recipes-qt3/qt3/qt-x11-free-common.inc
@@ -3,7 +3,7 @@ SECTION = "x11/libs"
 PRIORITY = "optional"
 LICENSE = "GPL | QPL"
 HOMEPAGE = "http://www.trolltech.com"
-INC_PR = "r3"
+INC_PR = "r4"
 
 S = "${WORKDIR}/qt-x11-free-${PV}"
 
@@ -11,7 +11,6 @@ S = "${WORKDIR}/qt-x11-free-${PV}"
 inherit qmake_base qt3x11
 
 export QTDIR = "${S}"
-STAGING_QT_DIR = "${STAGING_DIR_HOST}/qt3"
 ARCH_i686 = "x86"
 EXTRA_OEMAKE = "-e"
 
@@ -24,13 +23,11 @@ EXTRA_ENV = 'QMAKE="${STAGING_BINDIR_NATIVE}/qmake -after INCPATH+=${STAGING_INC
              AR="${TARGET_PREFIX}ar cqs" \
              MOC="${STAGING_BINDIR_NATIVE}/moc3" UIC="${STAGING_BINDIR_NATIVE}/uic3" MAKE="make -e"'
 
-do_configure_prepend() {
-    if [ ! -L ${QMAKE_MKSPEC_PATH}/${TARGET_OS}-oe-g++ ]; then
-        ln -sf ${QMAKE_MKSPEC_PATH}/linux-g++ ${QMAKE_MKSPEC_PATH}/${TARGET_OS}-oe-g++
-    fi
-}
-
 do_configure() {
+	if [ ! -L ${QMAKE_MKSPEC_PATH}/${TARGET_OS}-oe-g++ ]; then
+		ln -sf ${QMAKE_MKSPEC_PATH}/linux-g++ ${QMAKE_MKSPEC_PATH}/${TARGET_OS}-oe-g++
+	fi
+
 	echo "yes" | ./configure -prefix ${prefix} ${QT_CONFIG_FLAGS} -no-fast \
 		-L${STAGING_LIBDIR} -I${STAGING_INCDIR} -I${STAGING_INCDIR}/freetype2 -I${STAGING_INCDIR}/mysql
 
@@ -56,43 +53,37 @@ do_compile() {
 	oe_runmake -C tools ${EXTRA_ENV}
 }
 
-do_install_prepend() {
-	install -d ${STAGING_QT_DIR}/bin
-	ln -sf ${STAGING_BINDIR_NATIVE}/moc3 ${STAGING_QT_DIR}/bin/moc
-	ln -sf ${STAGING_BINDIR_NATIVE}/uic3 ${STAGING_QT_DIR}/bin/uic
-	ln -sf ${STAGING_BINDIR_NATIVE}/qmake ${STAGING_QT_DIR}/bin/qmake
-	install -d ${STAGING_QT_DIR}/lib
-	oe_soinstall lib/libqt-mt.so.${PV} ${STAGING_QT_DIR}/lib
-	install -d ${STAGING_QT_DIR}/include/private
+do_install() {
+	install -d ${D}${includedir}
+	install -d ${D}${includedir}/qt3
+	install -d ${D}${includedir}/qt3/private
 	for f in include/*.h
 	do
-		install -m 0644 $f ${STAGING_QT_DIR}/include/
+		install -m 0644 $f ${D}${includedir}/qt3
 	done
 	for f in include/private/*.h
 	do
-		install -m 0644 $f ${STAGING_QT_DIR}/include/private
+		install -m 0644 $f ${D}${includedir}/qt3/private
 	done
+	install -d ${D}${libdir}
+	install -d ${D}${libdir}/qt3
 	for f in lib/*.prl
 	do
-		install -m 0644 $f ${STAGING_QT_DIR}/lib
+		install -m 0644 $f ${D}${libdir}/qt3
 	done
-}
-
-do_install() {
-	install -d ${D}${libdir}/
-	oe_soinstall lib/libqt-mt.so.${PV} ${D}${libdir}/
-	install -d ${D}${bindir}/
-	install -d ${D}${prefix}/plugins/
-	cp -pPR plugins/imageformats plugins/sqldrivers plugins/designer ${D}${prefix}/plugins/
+	oe_libinstall -so -C lib libqt-mt ${D}${libdir}
+	install -d ${D}${libdir}/qt3/plugins/
+	cp -pPR plugins/imageformats plugins/sqldrivers plugins/designer ${D}${libdir}/qt3/plugins/
 }
 
 PACKAGES =+ " libqt-mt3 qt-x11-plugins-imageformats qt-x11-plugins-sqldrivers qt-x11-plugins-designer \
              qt-x11-designer qt-x11-assistant qt-x11-qvfb qt-x11-qtconfig"
-FILES_libqt-mt3 = "${D}/{libdir}/libqt-mt*"
-FILES_qt-x11-plugins-imageformats = "${prefix}/plugins/imageformats/*.so"
-FILES_qt-x11-plugins-sqldrivers = "${prefix}/plugins/sqldrivers/*.so"
-FILES_qt-x11-plugins-designer = "${prefix}/plugins/designer/*.so"
+FILES_libqt-mt3 = "${libdir}/libqt-mt.so.*"
+FILES_${PN}-dev += "${libdir}/qt3/*.prl"
+FILES_qt-x11-plugins-imageformats = "${libdir}/qt3/plugins/imageformats/*.so"
+FILES_qt-x11-plugins-sqldrivers = "${libdir}/qt3/plugins/sqldrivers/*.so"
+FILES_qt-x11-plugins-designer = "${libdir}/qt3/plugins/designer/*.so"
 FILES_qt-x11-designer = "${bindir}/designer"
 FILES_qt-x11-assistant = "${bindir}/assistant"
 FILES_qt-x11-qtconfig = "${bindir}/qtconfig"
-FILES_qt-x11-dbg += "${prefix}/plugins/*/.debug ${D}/qt-x11-plugins-debug"
+FILES_${PN}-dbg += "${libdir}/qt3/plugins/*/.debug"
diff --git a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
index a67dd63..cf3b878 100644
--- a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
+++ b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
@@ -1,6 +1,6 @@
 DEPENDS = "qt-x11-free-native freetype virtual/libx11 libxmu libxft libxext libxrender libxrandr libxcursor  virtual/libgl"
 PROVIDES = "qt3x11"
-PR = "${INC_PR}.1"
+PR = "${INC_PR}.0"
 
 LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=b07b0d5ac6b1822effe47173a1744433 \
                     file://LICENSE.QPL;md5=b81b6b6fc04ed873adde5aa901c0613b"
-- 
1.7.5.4


