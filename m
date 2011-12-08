Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34655E006B0
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 11:56:55 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2011 11:56:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84429900"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.254])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2011 11:56:52 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2011 19:56:47 +0000
Message-Id: <016ed1af2a0986cd90bdd073091537d954588813.1323374147.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1323374147.git.paul.eggleton@linux.intel.com>
References: <cover.1323374147.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1323374147.git.paul.eggleton@linux.intel.com>
References: <cover.1323374147.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3] [PATCH 3/3] qt3: fix interaction between qt3 and qt4 in the sysroot
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

* Add a -qt3 suffix to all installed utilities so that they do not clash
  with their qt4 counterparts. This fixes errors mentioning
  QtCore/QVariant, Q3Support etc. which occur due to the Qt4 version of
  uic/moc being used that output source files containing references to
  Qt4 headers. qt3x11.bbclass has been updated to point to these renamed
  executables so any recipes using this class should be unaffected by
  this renaming.
* Install libraries using the standard oe_libinstall method

Fixes [YOCTO #1810].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 classes/qt3x11.bbclass                      |    5 +++--
 recipes-qt3/qt3/qt-x11-free-common.inc      |   18 +++++++++---------
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |   12 ++++--------
 3 files changed, 16 insertions(+), 19 deletions(-)

diff --git a/classes/qt3x11.bbclass b/classes/qt3x11.bbclass
index 5408b7f..79664f2 100644
--- a/classes/qt3x11.bbclass
+++ b/classes/qt3x11.bbclass
@@ -4,8 +4,9 @@ EXTRA_QMAKEVARS_POST += "CONFIG+=thread"
 # override variables set by qmake_base to compile Qt/X11 apps
 #
 export QTDIR = "${STAGING_DIR_HOST}/qt3"
-export OE_QMAKE_UIC = "${STAGING_BINDIR_NATIVE}/uic3"
-export OE_QMAKE_MOC = "${STAGING_BINDIR_NATIVE}/moc3"
+export OE_QMAKE_QMAKE = "${STAGING_BINDIR_NATIVE}/qmake-qt3"
+export OE_QMAKE_UIC = "${STAGING_BINDIR_NATIVE}/uic-qt3"
+export OE_QMAKE_MOC = "${STAGING_BINDIR_NATIVE}/moc-qt3"
 export OE_QMAKE_CXXFLAGS = "${CXXFLAGS} -DQT_NO_XIM"
 export OE_QMAKE_INCDIR_QT = "${QTDIR}/include"
 export OE_QMAKE_LIBDIR_QT = "${QTDIR}/lib"
diff --git a/recipes-qt3/qt3/qt-x11-free-common.inc b/recipes-qt3/qt3/qt-x11-free-common.inc
index 3bd4e4a..4c16b73 100644
--- a/recipes-qt3/qt3/qt-x11-free-common.inc
+++ b/recipes-qt3/qt3/qt-x11-free-common.inc
@@ -2,7 +2,7 @@ DESCRIPTION = "Qt/X11 Version ${PV} is a full fledged cross-platform application
 SECTION = "x11/libs"
 LICENSE = "GPL | QPL"
 HOMEPAGE = "http://www.trolltech.com"
-INC_PR = "r4"
+INC_PR = "r5"
 
 S = "${WORKDIR}/qt-x11-free-${PV}"
 
@@ -16,11 +16,11 @@ EXTRA_OEMAKE = "-e"
 QT_CONFIG_FLAGS = "-release -shared -qt-zlib -no-nas-sound -no-sm -qt-libpng -no-gif -no-xinerama \
                    -no-tablet -no-xkb -no-dlopen-opengl -no-nis -no-cups -thread  -verbose"
 
-EXTRA_ENV = 'QMAKE="${STAGING_BINDIR_NATIVE}/qmake -after INCPATH+=${STAGING_INCDIR} \
+EXTRA_ENV = 'QMAKE="${OE_QMAKE_QMAKE} -after INCPATH+=${STAGING_INCDIR} \
              INCPATH+=${STAGING_INCDIR}/freetype2 LIBS+=-L${STAGING_LIBDIR}" \
              QMAKESPEC="${QMAKESPEC}" LINK="${CXX} -Wl,-rpath-link,${STAGING_LIBDIR}" \
              AR="${TARGET_PREFIX}ar cqs" \
-             MOC="${STAGING_BINDIR_NATIVE}/moc3" UIC="${STAGING_BINDIR_NATIVE}/uic3" MAKE="make -e"'
+             MOC="${OE_QMAKE_MOC}" UIC="${OE_QMAKE_UIC}" MAKE="make -e"'
 
 do_configure() {
 	if [ ! -L ${QMAKE_MKSPEC_PATH}/${TARGET_OS}-oe-g++ ]; then
@@ -34,18 +34,18 @@ do_configure() {
 	rm -f src/qtmain.pro
 	cat Makefile >makefile
 	find . -name "Makefile"|xargs rm -f
-	(cd src && qmake -spec ${QMAKESPEC} )
-	(cd plugins/src && qmake -spec ${QMAKESPEC} )
-	(cd tools && qmake -spec ${QMAKESPEC} )
-	(cd tools/qvfb && qmake -spec ${QMAKESPEC} )
+	(cd src && ${OE_QMAKE_QMAKE} -spec ${QMAKESPEC} )
+	(cd plugins/src && ${OE_QMAKE_QMAKE} -spec ${QMAKESPEC} )
+	(cd tools && ${OE_QMAKE_QMAKE} -spec ${QMAKESPEC} )
+	(cd tools/qvfb && ${OE_QMAKE_QMAKE} -spec ${QMAKESPEC} )
 }
 
 do_compile() {
 	unset CFLAGS
 	unset CXXFLAGS
 
-	install -m 0755 ${STAGING_BINDIR_NATIVE}/moc3 ${S}/bin/moc
-	install -m 0755 ${STAGING_BINDIR_NATIVE}/uic3 ${S}/bin/uic
+	install -m 0755 ${OE_QMAKE_MOC} ${S}/bin/moc
+	install -m 0755 ${OE_QMAKE_UIC} ${S}/bin/uic
 
 	oe_runmake -C src ${EXTRA_ENV}
 	oe_runmake -C plugins/src ${EXTRA_ENV}
diff --git a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
index 48fc3a0..d70c373 100644
--- a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
+++ b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
@@ -3,7 +3,7 @@ SECTION = "libs"
 LICENSE = "GPL | QPL"
 DEPENDS = "xmu-native"
 HOMEPAGE = "http://www.trolltech.com"
-PR = "r2"
+PR = "r3"
 
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/qt-x11-free"
 
@@ -48,9 +48,9 @@ do_compile() {
 
 do_install() {
     install -d ${D}${bindir}/
-    install -m 0755 bin/qmake ${D}${bindir}/qmake3
+    install -m 0755 bin/qmake ${D}${bindir}/qmake-qt3
     for i in moc uic  lrelease lupdate; do
-        install -m 0755 bin/${i} ${D}${bindir}/${i}3
+        install -m 0755 bin/${i} ${D}${bindir}/${i}-qt3
     done
  
     install -d ${D}${datadir}/qt3/
@@ -58,11 +58,7 @@ do_install() {
     ln -sf linux-g++ ${D}${datadir}/qt3/mkspecs/${TARGET_OS}-oe-g++
     ln -sf qt3/mkspecs ${D}${datadir}/qmake
     install -d ${D}${libdir}/
-    oe_soinstall lib/libqt-mt.so.${PV} ${D}${libdir}/
-    cd ${D}${bindir}
-    for i in qmake moc uic lrelease lupdate;do
-        ln -s ${i}3 ${i}
-    done
+    oe_libinstall -so -C lib libqt-mt ${D}${libdir}
 }
 
 
-- 
1.7.5.4


