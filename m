Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A90CE0137C
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 10:38:54 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 14 Mar 2012 10:38:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="77518625"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.123.190])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Mar 2012 10:38:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Mar 2012 17:38:48 +0000
Message-Id: <a1c72ecf80c0ded21709aa667c41d65399e4439f.1331746641.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1331746641.git.paul.eggleton@linux.intel.com>
References: <cover.1331746641.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1331746641.git.paul.eggleton@linux.intel.com>
References: <cover.1331746641.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3] [PATCH 1/1] qt-x11-free: fix QA errors
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
X-List-Received-Date: Wed, 14 Mar 2012 17:38:54 -0000

Fix the following QA errors when building qt-x11-free:

WARNING: For recipe qt-x11-free, the following files/directories were installed but not shipped in any package:
WARNING:   /usr/lib/qt3/plugins/sqldrivers
WARNING: qt-x11-free: The compile log indicates that host include and/or library paths were used.  Please check the log '${WORKDIR}/temp/log.do_compile' for more information.
WARNING: QA Issue: package libqt-mt3 contains bad RPATH ${WORKDIR}/qt-x11-free-3.3.7/lib in file ${WORKDIR}/packages-split/libqt-mt3/usr/lib/libqt-mt.so.3.3.7
WARNING: QA Issue: package libqt-mt3 contains bad RPATH ${WORKDIR}/qt-x11-free-3.3.7/lib in file ${WORKDIR}/packages-split/libqt-mt3/usr/lib/libqt-mt.so.3
WARNING: QA Issue: package qt-x11-plugins-imageformats contains bad RPATH /usr/lib:${WORKDIR}/qt-x11-free-3.3.7/plugins/imageformats in file ${WORKDIR}/packages-split/qt-x11-plugins-imageformats/usr/lib/qt3/plugins/imageformats/libqjpeg.so
WARNING: QA Issue: package qt-x11-plugins-imageformats contains bad RPATH /usr/lib:${WORKDIR}/qt-x11-free-3.3.7/plugins/imageformats in file ${WORKDIR}/packages-split/qt-x11-plugins-imageformats/usr/lib/qt3/plugins/imageformats/libqmng.so
WARNING: QA Issue: package qt-x11-plugins-designer contains bad RPATH /usr/lib:${WORKDIR}/qt-x11-free-3.3.7/plugins/designer in file ${WORKDIR}/packages-split/qt-x11-plugins-designer/usr/lib/qt3/plugins/designer/libcppeditor.so
WARNING: QA Issue: package qt-x11-plugins-designer contains bad RPATH /usr/lib:${WORKDIR}/qt-x11-free-3.3.7/plugins/designer in file ${WORKDIR}/packages-split/qt-x11-plugins-designer/usr/lib/qt3/plugins/designer/librcplugin.so
WARNING: QA Issue: package qt-x11-plugins-designer contains bad RPATH /usr/lib:${WORKDIR}/qt-x11-free-3.3.7/plugins/designer in file ${WORKDIR}/packages-split/qt-x11-plugins-designer/usr/lib/qt3/plugins/designer/libwizards.so
WARNING: QA Issue: package qt-x11-plugins-designer contains bad RPATH /usr/lib:${WORKDIR}/qt-x11-free-3.3.7/plugins/designer in file ${WORKDIR}/packages-split/qt-x11-plugins-designer/usr/lib/qt3/plugins/designer/libkdevdlgplugin.so
WARNING: QA Issue: package qt-x11-plugins-designer contains bad RPATH /usr/lib:${WORKDIR}/qt-x11-free-3.3.7/plugins/designer in file ${WORKDIR}/packages-split/qt-x11-plugins-designer/usr/lib/qt3/plugins/designer/libdlgplugin.so
WARNING: QA Issue: package qt-x11-plugins-designer contains bad RPATH /usr/lib:${WORKDIR}/qt-x11-free-3.3.7/plugins/designer in file ${WORKDIR}/packages-split/qt-x11-plugins-designer/usr/lib/qt3/plugins/designer/libgladeplugin.so

This required installing a custom qmake.conf (as we do with Qt4 in OE-Core) in
qt-x11-free-native as well as removing the sql driver plugin directory if it
is empty (which it will be unless the appropriate flags are added to enable
the SQL driver plugins, which default to disabled even if the appropriate
libraries are installed).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-common.inc        |    3 +
 recipes-qt3/qt3/qt-x11-free-native/qmake.conf |   90 +++++++++++++++++++++++++
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb   |    6 +-
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb          |    2 +-
 4 files changed, 98 insertions(+), 3 deletions(-)
 create mode 100644 recipes-qt3/qt3/qt-x11-free-native/qmake.conf

diff --git a/recipes-qt3/qt3/qt-x11-free-common.inc b/recipes-qt3/qt3/qt-x11-free-common.inc
index fac77d5..b3c2dbf 100644
--- a/recipes-qt3/qt3/qt-x11-free-common.inc
+++ b/recipes-qt3/qt3/qt-x11-free-common.inc
@@ -73,6 +73,9 @@ do_install() {
 	oe_libinstall -so -C lib libqt-mt ${D}${libdir}
 	install -d ${D}${libdir}/qt3/plugins/
 	cp -pPR plugins/imageformats plugins/sqldrivers plugins/designer ${D}${libdir}/qt3/plugins/
+
+	# Avoid empty directory QA error
+	rmdir ${D}${libdir}/qt3/plugins/sqldrivers 2>/dev/null || true
 }
 
 PACKAGES =+ " libqt-mt3 qt-x11-plugins-imageformats qt-x11-plugins-sqldrivers qt-x11-plugins-designer \
diff --git a/recipes-qt3/qt3/qt-x11-free-native/qmake.conf b/recipes-qt3/qt3/qt-x11-free-native/qmake.conf
new file mode 100644
index 0000000..f0c71bf
--- /dev/null
+++ b/recipes-qt3/qt3/qt-x11-free-native/qmake.conf
@@ -0,0 +1,90 @@
+#
+# $Id: qt/qmake.conf   3.3.5   edited Oct 31 2003 $
+#
+# qmake configuration for linux-g++
+# Customised version for meta-qt3
+
+MAKEFILE_GENERATOR	= UNIX
+TEMPLATE		= app
+CONFIG			+= qt warn_on release incremental link_prl
+QMAKE_INCREMENTAL_STYLE = sublib
+
+QMAKE_CC		= gcc
+QMAKE_LEX		= flex
+QMAKE_LEXFLAGS		= 
+QMAKE_YACC		= yacc
+QMAKE_YACCFLAGS		= -d
+QMAKE_YACCFLAGS_MANGLE  = -p $base -b $base
+QMAKE_YACC_HEADER       = $base.tab.h
+QMAKE_YACC_SOURCE       = $base.tab.c
+QMAKE_CFLAGS		= -pipe
+QMAKE_CFLAGS_DEPS	= -M
+QMAKE_CFLAGS_WARN_ON	= -Wall -W
+QMAKE_CFLAGS_WARN_OFF	= -w
+QMAKE_CFLAGS_RELEASE	= -O2
+QMAKE_CFLAGS_DEBUG	= -g
+QMAKE_CFLAGS_SHLIB	= -fPIC
+QMAKE_CFLAGS_YACC	= -Wno-unused -Wno-parentheses
+QMAKE_CFLAGS_THREAD	= -D_REENTRANT
+
+QMAKE_CXX		= g++
+QMAKE_CXXFLAGS		= $$QMAKE_CFLAGS
+QMAKE_CXXFLAGS_DEPS	= $$QMAKE_CFLAGS_DEPS
+QMAKE_CXXFLAGS_WARN_ON	= $$QMAKE_CFLAGS_WARN_ON
+QMAKE_CXXFLAGS_WARN_OFF	= $$QMAKE_CFLAGS_WARN_OFF
+QMAKE_CXXFLAGS_RELEASE	= $$QMAKE_CFLAGS_RELEASE
+QMAKE_CXXFLAGS_DEBUG	= $$QMAKE_CFLAGS_DEBUG
+QMAKE_CXXFLAGS_SHLIB	= $$QMAKE_CFLAGS_SHLIB
+QMAKE_CXXFLAGS_YACC	= $$QMAKE_CFLAGS_YACC
+QMAKE_CXXFLAGS_THREAD	= $$QMAKE_CFLAGS_THREAD
+
+QMAKE_INCDIR		=
+QMAKE_LIBDIR		=
+QMAKE_INCDIR_X11	=
+QMAKE_LIBDIR_X11	=
+QMAKE_INCDIR_QT		= $(QTDIR)/include
+QMAKE_LIBDIR_QT		= $(QTDIR)/lib
+QMAKE_INCDIR_OPENGL	=
+QMAKE_LIBDIR_OPENGL	=
+
+QMAKE_LINK		= g++
+QMAKE_LINK_SHLIB	= g++
+QMAKE_LFLAGS		=
+QMAKE_LFLAGS_RELEASE	=
+QMAKE_LFLAGS_DEBUG	=
+QMAKE_LFLAGS_SHLIB	= -shared
+QMAKE_LFLAGS_PLUGIN	= $$QMAKE_LFLAGS_SHLIB
+QMAKE_LFLAGS_SONAME	= -Wl,-soname,
+QMAKE_LFLAGS_THREAD	=
+QMAKE_RPATH		=
+
+QMAKE_LIBS		=
+QMAKE_LIBS_DYNLOAD	= -ldl
+QMAKE_LIBS_X11		= -lXext -lX11 -lm
+QMAKE_LIBS_X11SM	= -lSM -lICE
+QMAKE_LIBS_NIS		= -lnsl
+QMAKE_LIBS_QT		= -lqt
+QMAKE_LIBS_QT_THREAD	= -lqt-mt
+QMAKE_LIBS_OPENGL	= -lGLU -lGL -lXmu
+QMAKE_LIBS_OPENGL_QT	= -lGL -lXmu
+QMAKE_LIBS_THREAD	= -lpthread
+
+QMAKE_MOC		= $(QTDIR)/bin/moc
+QMAKE_UIC		= $(QTDIR)/bin/uic
+
+QMAKE_AR		= ar cqs
+QMAKE_RANLIB		=
+
+QMAKE_TAR		= tar -cf
+QMAKE_GZIP		= gzip -9f
+
+QMAKE_COPY		= cp -f
+QMAKE_COPY_FILE         = $(COPY)
+QMAKE_COPY_DIR          = $(COPY) -r
+QMAKE_MOVE		= mv -f
+QMAKE_DEL_FILE		= rm -f
+QMAKE_DEL_DIR		= rmdir
+QMAKE_STRIP             = strip
+QMAKE_STRIPFLAGS_LIB 	+= --strip-unneeded
+QMAKE_CHK_DIR_EXISTS	= test -d
+QMAKE_MKDIR		= mkdir -p
diff --git a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
index d70c373..f80345b 100644
--- a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
+++ b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
@@ -3,7 +3,7 @@ SECTION = "libs"
 LICENSE = "GPL | QPL"
 DEPENDS = "xmu-native"
 HOMEPAGE = "http://www.trolltech.com"
-PR = "r3"
+PR = "r4"
 
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/qt-x11-free"
 
@@ -12,7 +12,8 @@ LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=629178675a7d49c9fa19dfe9f43ea256 \
 
 SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
            file://no-examples.patch \
-           file://qt3-cstddef.patch"
+           file://qt3-cstddef.patch \
+           file://qmake.conf"
 S = "${WORKDIR}/qt-x11-free-${PV}"
 
 #
@@ -55,6 +56,7 @@ do_install() {
  
     install -d ${D}${datadir}/qt3/
     cp -PfR mkspecs ${D}${datadir}/qt3/
+    install -m 0644 ${WORKDIR}/qmake.conf ${D}${datadir}/qt3/mkspecs/linux-g++/
     ln -sf linux-g++ ${D}${datadir}/qt3/mkspecs/${TARGET_OS}-oe-g++
     ln -sf qt3/mkspecs ${D}${datadir}/qmake
     install -d ${D}${libdir}/
diff --git a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
index cf3b878..a67dd63 100644
--- a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
+++ b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
@@ -1,6 +1,6 @@
 DEPENDS = "qt-x11-free-native freetype virtual/libx11 libxmu libxft libxext libxrender libxrandr libxcursor  virtual/libgl"
 PROVIDES = "qt3x11"
-PR = "${INC_PR}.0"
+PR = "${INC_PR}.1"
 
 LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=b07b0d5ac6b1822effe47173a1744433 \
                     file://LICENSE.QPL;md5=b81b6b6fc04ed873adde5aa901c0613b"
-- 
1.7.5.4


