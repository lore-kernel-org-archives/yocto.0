Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DAF4E00E8D; Sat,  3 Oct 2015 09:37:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9570E006EA
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 09:37:45 -0700 (PDT)
Received: by qgx61 with SMTP id 61so118884287qgx.3
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 09:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=CC7F6AwvzrI+ySXptc4xeEA4EQbPqlKOREBWJ1YnSVQ=;
	b=Xq37c4kW+7/CioEbDONkff379D8gOnmdKIybpOZxqOgIE7bBIfaY/ZIX79CUSiOek4
	35vXbanZ6h2s+6PR+QJx6HBd/XKclLo15xOLk2KdmBZFCbFuF2efy7GzRw2zJKFhTY83
	wI11BXNI2pE/NoLf6soeQYrR3tzm4jQm38Xb5jJV9SllFMXH5QprlapBt20dpQOgsV52
	7cbbSRPr78qm6+USjvf/gOEm24IlbRPtA6PU7+mfOgyV/ZUA2psSJbzj9gfh4Ck7p3p7
	EwQysHX2GaJEMjOX9vbkkRjqnhFyBs0+JAYfaYWRBAHeVTmRAWXkWSBhvHJVFnMoyHWk
	n7Aw==
X-Received: by 10.140.101.226 with SMTP id u89mr28205827qge.90.1443890264926; 
	Sat, 03 Oct 2015 09:37:44 -0700 (PDT)
Received: from khem-dvm-001.sys.comcast.net (a-96-119-177-31.sys.comcast.net.
	[96.119.177.31])
	by smtp.gmail.com with ESMTPSA id 35sm7164184qkv.42.2015.10.03.09.37.43
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 03 Oct 2015 09:37:44 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  3 Oct 2015 16:37:34 +0000
Message-Id: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.6.0
Subject: [meta-raspberrypi][PATCH V4 1/5] userland: Fix install prefix and generate pkgconfigs
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
X-List-Received-Date: Sat, 03 Oct 2015 16:37:48 -0000

several userspace libraries like libepoxy poke for pkgconfigs ( .pc )
files to detect egl support, and comes out to fail in configure stage,
one of the patches now adds support to generate .pc files for some known
cases. it could be further extended if needed for other libraries too

Secondly, the default CMAKE_INSTALL_PREFIX is /opt/vc but in OE we use
proper /usr so lets make this change as well, it simplifies do_install()

.so are not versioned so we need to grapple with OE's defaults of
expecting versioned .so files.

Adjust packages for -dev package such that it can automatically package
pkgconfig files and inherit pkgconfig because in cmake code we are not
looking for pkgconfig so we need the dependency also put in place for
consistent builds

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0002-set-VMCS_INSTALL_PREFIX-to-usr.patch      |  29 ++++++
 ...make-generate-and-install-pkgconfig-files.patch | 114 +++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  21 ++--
 3 files changed, 152 insertions(+), 12 deletions(-)
 create mode 100644 recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch
 create mode 100644 recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch

diff --git a/recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch b/recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch
new file mode 100644
index 0000000..1c981af
--- /dev/null
+++ b/recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch
@@ -0,0 +1,29 @@
+From 05554d8486050546efc3c0605015786c8b267d19 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sun, 9 Aug 2015 23:58:17 -0700
+Subject: [PATCH 1/2] set VMCS_INSTALL_PREFIX to /usr
+
+in OE we dont use /opt/vc but standard prefix
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+Upstream-Status: Submitted
+ makefiles/cmake/vmcs.cmake | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/makefiles/cmake/vmcs.cmake b/makefiles/cmake/vmcs.cmake
+index 0f8641b..e9d576d 100644
+--- a/makefiles/cmake/vmcs.cmake
++++ b/makefiles/cmake/vmcs.cmake
+@@ -10,7 +10,7 @@ INCLUDE(CPack)
+ if (ANDROID)
+   SET(VMCS_INSTALL_PREFIX "/vendor/brcm/islands" CACHE PATH "Prefix prepended to install directories" FORCE)
+ else()
+-  SET(VMCS_INSTALL_PREFIX "/opt/vc" CACHE PATH "Prefix prepended to install directories" FORCE)
++  SET(VMCS_INSTALL_PREFIX "/usr" CACHE PATH "Prefix prepended to install directories" FORCE)
+ endif()
+ 
+ SET(CMAKE_INSTALL_PREFIX "${VMCS_INSTALL_PREFIX}" CACHE INTERNAL "Prefix
+-- 
+2.1.4
+
diff --git a/recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch b/recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch
new file mode 100644
index 0000000..c644d52
--- /dev/null
+++ b/recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch
@@ -0,0 +1,114 @@
+From ef43e09c2d13b88c2e92cffc94b68003afcb1f13 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sun, 9 Aug 2015 23:59:32 -0700
+Subject: [PATCH 2/2] cmake: generate and install pkgconfig files
+
+many packages expect packageconfig support especially for detecting EGL
+libraries. This patch helps in compiling those packages on RPi
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+Upstream-Status: Submitted
+ CMakeLists.txt           | 10 +++++++++-
+ pkgconfig/bcm_host.pc.in | 10 ++++++++++
+ pkgconfig/egl.pc.in      | 12 ++++++++++++
+ pkgconfig/glesv2.pc.in   | 12 ++++++++++++
+ pkgconfig/vg.pc.in       | 11 +++++++++++
+ 5 files changed, 54 insertions(+), 1 deletion(-)
+ create mode 100644 pkgconfig/bcm_host.pc.in
+ create mode 100644 pkgconfig/egl.pc.in
+ create mode 100644 pkgconfig/glesv2.pc.in
+ create mode 100644 pkgconfig/vg.pc.in
+
+diff --git a/CMakeLists.txt b/CMakeLists.txt
+index d8f776c..f15dc2b 100644
+--- a/CMakeLists.txt
++++ b/CMakeLists.txt
+@@ -105,6 +105,14 @@ set(vmcs_host_apps_VERSION_MAJOR 1)
+ set(vmcs_host_apps_VERSION_MINOR 0)
+ 
+ include_directories("${PROJECT_BINARY_DIR}")
+-
++include(FindPkgConfig QUIET)
++if(PKG_CONFIG_FOUND)
++	# Produce a pkg-config file
++	foreach(PCFILE bcm_host.pc  egl.pc  glesv2.pc  vg.pc)
++		configure_file("pkgconfig/${PCFILE}.in" "${PCFILE}" @ONLY)
++		install(FILES       "${CMAKE_CURRENT_BINARY_DIR}/${PCFILE}"
++			DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig")
++	endforeach()
++endif()
+ # Remove cache entry, if one added by command line
+ unset(KHRONOS_EGL_PLATFORM CACHE)
+diff --git a/pkgconfig/bcm_host.pc.in b/pkgconfig/bcm_host.pc.in
+new file mode 100644
+index 0000000..c7237c5
+--- /dev/null
++++ b/pkgconfig/bcm_host.pc.in
+@@ -0,0 +1,10 @@
++prefix=@CMAKE_INSTALL_PREFIX@
++exec_prefix=${prefix}
++libdir=${exec_prefix}/lib
++includedir=${prefix}/include
++
++Name: bcm_host
++Description: Broadcom VideoCore host API library
++Version: 1
++Libs: -L${libdir} -lbcm_host -lvcos -lvchiq_arm -pthread
++Cflags: -I${includedir} -I${includedir}/interface/vmcs_host/linux -I${includedir}/interface/vcos/pthreads -DUSE_VCHIQ_ARM
+diff --git a/pkgconfig/egl.pc.in b/pkgconfig/egl.pc.in
+new file mode 100644
+index 0000000..4e3d6ac
+--- /dev/null
++++ b/pkgconfig/egl.pc.in
+@@ -0,0 +1,12 @@
++prefix=@CMAKE_INSTALL_PREFIX@
++exec_prefix=${prefix}
++libdir=${exec_prefix}/lib
++includedir=${prefix}/include
++
++Name: EGL
++Description: Fake EGL package for RPi
++Version: 10
++Requires: bcm_host
++Libs: -L${libdir} -lEGL
++Cflags: -I${includedir}
++
+diff --git a/pkgconfig/glesv2.pc.in b/pkgconfig/glesv2.pc.in
+new file mode 100644
+index 0000000..5900225
+--- /dev/null
++++ b/pkgconfig/glesv2.pc.in
+@@ -0,0 +1,12 @@
++prefix=@CMAKE_INSTALL_PREFIX@
++exec_prefix=${prefix}
++libdir=${exec_prefix}/lib
++includedir=${prefix}/include
++
++Name: GLESv2
++Description: Fake GL ES 2 package for RPi
++Version: 10
++Requires: bcm_host
++Libs: -L${libdir} -lGLESv2
++Cflags: -I${includedir}
++
+diff --git a/pkgconfig/vg.pc.in b/pkgconfig/vg.pc.in
+new file mode 100644
+index 0000000..8c39c98
+--- /dev/null
++++ b/pkgconfig/vg.pc.in
+@@ -0,0 +1,11 @@
++prefix=@CMAKE_INSTALL_PREFIX@
++exec_prefix=${prefix}
++libdir=${exec_prefix}/lib
++includedir=${prefix}/include
++
++Name: OpenVG
++Description: Fake OpenVG package for RPi
++Version: 10
++Requires: bcm_host
++Libs: -L${libdir} -lOpenVG
++Cflags: -I${includedir}
+-- 
+2.1.4
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index e431077..65ff128 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -21,31 +21,28 @@ SRC_URI = "\
     file://0001-fix-gcc-5.x-inlines.patch \
     file://0002-fix-musl-build.patch \
     file://0003-fix-alloc-size-uninitialized.patch \
+    file://0002-set-VMCS_INSTALL_PREFIX-to-usr.patch \
+    file://0003-cmake-generate-and-install-pkgconfig-files.patch \
     "
 
 S = "${WORKDIR}/git"
 
-inherit cmake
+inherit cmake pkgconfig
 
 EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
 CFLAGS_append = " -fPIC"
 
-# The compiled binaries don't provide sonames.
-SOLIBS = "${SOLIBSDEV}"
-
-do_install_append() {
-    mkdir -p ${D}/${prefix}
-    mv ${D}/opt/vc/* ${D}/${prefix}
-    rm -rf ${D}/opt
-}
+# Shared libs from userland package  build aren't versioned, so we need
+# to force the .so files into the runtime package (and keep them
+# out of -dev package).
+FILES_SOLIBSDEV = ""
 
 FILES_${PN} += " \
-    ${libdir}/*${SOLIBS} \
+    ${libdir}/*.so \
     ${libdir}/plugins"
-FILES_${PN}-dev = "${includedir} \
+FILES_${PN}-dev += "${includedir} \
                    ${prefix}/src"
 FILES_${PN}-doc += "${datadir}/install"
 FILES_${PN}-dbg += "${libdir}/plugins/.debug"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
-
-- 
2.6.0


