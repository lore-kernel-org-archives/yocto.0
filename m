Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B140E00B78
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 10:05:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Mar 2014 09:59:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,704,1389772800"; d="scan'208";a="504950787"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.120.240])
	by orsmga002.jf.intel.com with ESMTP; 21 Mar 2014 10:03:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 21 Mar 2014 17:03:21 +0000
Message-Id: <1395421401-18701-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [meta-qt3][PATCH] qt-x11-free: apply Fedora patch to support freetype 2.5.1+
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
X-List-Received-Date: Fri, 21 Mar 2014 17:05:38 -0000

Without this we were picking up the host version (if present) and
possibly failing later on due to "unsafe for cross-compilation" errors.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../qt-x11-free-3.3.8b-freetype251.patch           | 53 ++++++++++++++++++++++
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb               |  3 +-
 2 files changed, 55 insertions(+), 1 deletion(-)
 create mode 100644 recipes-qt3/qt3/qt-x11-free/qt-x11-free-3.3.8b-freetype251.patch

diff --git a/recipes-qt3/qt3/qt-x11-free/qt-x11-free-3.3.8b-freetype251.patch b/recipes-qt3/qt3/qt-x11-free/qt-x11-free-3.3.8b-freetype251.patch
new file mode 100644
index 0000000..99b1fff
--- /dev/null
+++ b/recipes-qt3/qt3/qt-x11-free/qt-x11-free-3.3.8b-freetype251.patch
@@ -0,0 +1,53 @@
+Fix for FreeType 2.5.1
+
+Patch originally from Fedora.
+
+Upstream-Status: Inappropriate [unmaintained]
+
+Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
+
+diff -ur qt-x11-free-3.3.8b/config.tests/x11/xfreetype.test qt-x11-free-3.3.8b-freetype251/config.tests/x11/xfreetype.test
+--- qt-x11-free-3.3.8b/config.tests/x11/xfreetype.test	2008-01-15 20:09:15.000000000 +0100
++++ qt-x11-free-3.3.8b-freetype251/config.tests/x11/xfreetype.test	2014-02-23 19:22:02.000000000 +0100
+@@ -116,33 +116,14 @@
+ # check for freetype2 headers
+ FREETYPE2_INCDIR=
+ if [ "$XFT" = "yes" ]; then
+-    INC="freetype2/freetype/freetype.h"
+-    XDIRS=`sed -n -e '/^QMAKE_INCDIR_X11[	]*=/ { s/[^=]*=[	 ]*//; s/-I/ /g; p; }' $XCONFIG`
+-    LDIRS=`sed -n -e '/^QMAKE_INCDIR[	]*=/ { s/[^=]*=[	 ]*//; s/-I/ /g; p; }' $XCONFIG`
+-    INCDIRS="$IN_INCDIRS $XDIRS $LDIRS /usr/include /include"
+-    F=
+-    for INCDIR in $INCDIRS; do
+-	if [ -f $INCDIR/$INC ]; then
+-	    # detect major version of freetype2
+-	    FREETYPE_MAJOR=`grep "#define FREETYPE_MAJOR" $INCDIR/$INC | head -n 1 | awk '{ print \$3 }'`
+-	    FREETYPE_MINOR=`grep "#define FREETYPE_MINOR" $INCDIR/$INC | head -n 1 | awk '{ print \$3 }'`
+-	    FREETYPE_PATCH=`grep "#define FREETYPE_PATCH" $INCDIR/$INC | head -n 1 | awk '{ print \$3 }'`
+-	    test -z "$FREETYPE_PATCH" && FREETYPE_PATCH="0"
+-	    [ "$VERBOSE" = "yes" ] && \
+-		echo "  Found Freetype version $FREETYPE_MAJOR.$FREETYPE_MINOR.$FREETYPE_PATCH"
+-	    if [ "$FREETYPE_MAJOR" -eq "2" ] \
+-               && [ "$FREETYPE_MINOR" -ge "0" -a "$FREETYPE_PATCH" -ge "9" ] \
+-               || [ "$FREETYPE_MINOR" -ge "1" ]; then
+-		F=yes
+-		FREETYPE2_INCDIR=$INCDIR/freetype2
+-		[ "$VERBOSE" = "yes" ] && echo "  Found $INC in $INCDIR"
+-		break
+-	    fi
+-	fi
+-    done
+-    if [ -z "$F" ]; then
+-	XFT=no
+-	[ "$VERBOSE" = "yes" ] && echo "  Could not find $INC anywhere in $INCDIRS"
++    # minimum is freetype 2.0.9, which had libtool version 6.3.0
++    if pkg-config --atleast-version=6.3.0 freetype2; then
++        [ "$VERBOSE" = "yes" ] && echo "  Found Freetype >= 2.0.9 using pkg-config"
++        FREETYPE2_INCDIR=`pkg-config --cflags-only-I freetype2 | sed -e 's/^-I//g' -e 's/ -I/ /g'`
++        [ "$VERBOSE" = "yes" ] && echo "  Freetype headers in $FREETYPE2_INCDIR"
++    else
++        XFT=no
++        [ "$VERBOSE" = "yes" ] && echo "  Could not find Freetype >= 2.0.9 using pkg-config"
+     fi
+ fi
+ 
diff --git a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
index af4fc01..89f976d 100644
--- a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
+++ b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
@@ -9,7 +9,8 @@ SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
 	   file://configure.patch \
 	   file://no-examples.patch \
            file://gcc4_1-HACK.patch \
-           file://qt3-cstddef.patch"
+           file://qt3-cstddef.patch \
+           file://qt-x11-free-3.3.8b-freetype251.patch"
 
 require qt-x11-free-common.inc
 
-- 
1.8.5.3


