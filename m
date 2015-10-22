Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68936E00A9A; Thu, 22 Oct 2015 04:50:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C51E00A9A
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 04:50:37 -0700 (PDT)
Received: by wicfx6 with SMTP id fx6so131836659wic.1
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 04:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references;
	bh=iYO1QmiG0kl3oYeutMW8GkDLGQNxnIYZRJZOKcMznRg=;
	b=K7GhaUf1rltWDQmezlczEfT/mvP0Gs7Gc/WEhoioRhHCg/FW4BCIfklCyDsmVHIouv
	rhMC2KA5kNuqlzBJ6LvRTZNBdPZueXV6c67DZ+lTQzMhnaZkhm9m8LIMLyy+nZwRElgs
	ELTNdYMDr126VCxcLgn/3/mvANNVPNGbTfOwzAoN/1XcodiqAgrOTo3tL/YaA3XWeDv3
	Efehd5FIToXA8blcJww4O0j7ScWNktpo7Pd5+Di4tl4bP67xdXRJGAYnRdPmY/uZR4tZ
	rGSGRSUyBS0vfdE3wa8YSP4m0NGYETy2Xyurgj+vw/jKzfqanw67MuxqDIefXw3ntNu4
	39tw==
X-Received: by 10.180.87.71 with SMTP id v7mr1712175wiz.61.1445514636610;
	Thu, 22 Oct 2015 04:50:36 -0700 (PDT)
Received: from localhost.localdomain
	(cpc47-live22-2-0-cust92.17-2.cable.virginm.net. [86.17.157.93])
	by smtp.gmail.com with ESMTPSA id
	fx19sm9069722wic.2.2015.10.22.04.50.35 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 22 Oct 2015 04:50:35 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 22 Oct 2015 12:50:11 +0100
Message-Id: <1445514612-10204-2-git-send-email-ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445514612-10204-1-git-send-email-ajlennon@dynamicdevices.co.uk>
References: <1445514612-10204-1-git-send-email-ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH 1/2] userland: add .pc files for the OpenGLESv2 and EGL libraries
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
X-List-Received-Date: Thu, 22 Oct 2015 11:50:40 -0000

These pkg-config files make it easier for libepoxy to find
those libraries and the appropriate link flags.

Modified from Thomas Petazzoni's patch here: http://goo.gl/jdz7lO

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 .../0004-rpi-userland-add-pkgconfig-files.patch    | 53 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  6 ++-
 2 files changed, 57 insertions(+), 2 deletions(-)
 create mode 100644 recipes-graphics/userland/userland/0004-rpi-userland-add-pkgconfig-files.patch

diff --git a/recipes-graphics/userland/userland/0004-rpi-userland-add-pkgconfig-files.patch b/recipes-graphics/userland/userland/0004-rpi-userland-add-pkgconfig-files.patch
new file mode 100644
index 0000000..2d454a4
--- /dev/null
+++ b/recipes-graphics/userland/userland/0004-rpi-userland-add-pkgconfig-files.patch
@@ -0,0 +1,53 @@
+Add .pc files for the OpenGLESv2 and EGL libraries
+
+Those pkg-config files make it easier for Qt5 to find those libraries
+and the appropriate link flags.
+
+(Modified to apply to userland by Alex J Lennon)
+
+Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
+
+diff -urN git.org/interface/khronos/CMakeLists.txt git/interface/khronos/CMakeLists.txt
+--- git.org/interface/khronos/CMakeLists.txt	2015-10-22 11:51:22.616445270 +0100
++++ git/interface/khronos/CMakeLists.txt	2015-10-22 11:55:32.024448754 +0100
+@@ -74,3 +74,11 @@
+ 
+ install(TARGETS EGL GLESv2 OpenVG WFC khrn_client DESTINATION lib)
+ install(TARGETS EGL_static GLESv2_static khrn_static DESTINATION lib)
++configure_file("${CMAKE_CURRENT_SOURCE_DIR}/egl/egl.pc.in"
++  "${CMAKE_CURRENT_BINARY_DIR}/egl/egl.pc" @ONLY)
++install(FILES "${CMAKE_CURRENT_BINARY_DIR}/egl/egl.pc"
++  DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig")
++configure_file("${CMAKE_CURRENT_SOURCE_DIR}/glxx/glesv2.pc.in"
++  "${CMAKE_CURRENT_BINARY_DIR}/glxx/glesv2.pc" @ONLY)
++install(FILES "${CMAKE_CURRENT_BINARY_DIR}/glxx/glesv2.pc"
++  DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig")
+diff -urN git.org/interface/khronos/egl/egl.pc.in git/interface/khronos/egl/egl.pc.in
+--- git.org/interface/khronos/egl/egl.pc.in	1970-01-01 01:00:00.000000000 +0100
++++ git/interface/khronos/egl/egl.pc.in	2015-10-22 11:54:25.724447827 +0100
+@@ -0,0 +1,10 @@
++prefix=@CMAKE_INSTALL_PREFIX@
++exec_prefix=${prefix}
++libdir=${exec_prefix}/lib
++includedir=${prefix}/include
++
++Name: egl
++Description: RasberryPi implementation of EGL
++Version: 1.0
++Libs: -L${libdir} -lEGL -lGLESv2
++Cflags: -I${includedir}/ -I${includedir}/interface/vcos/pthreads/
+diff -urN git.org/interface/khronos/glxx/glesv2.pc.in git/interface/khronos/glxx/glesv2.pc.in
+--- git.org/interface/khronos/glxx/glesv2.pc.in	1970-01-01 01:00:00.000000000 +0100
++++ git/interface/khronos/glxx/glesv2.pc.in	2015-10-22 11:54:50.248448170 +0100
+@@ -0,0 +1,10 @@
++prefix=@CMAKE_INSTALL_PREFIX@
++exec_prefix=${prefix}
++libdir=${exec_prefix}/lib
++includedir=${prefix}/include
++
++Name: glesv2
++Description: RasberryPi implementation of OpenGL ESv2
++Version: 2.0
++Libs: -L${libdir} -lGLESv2
++Cflags: -I${includedir}/
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 896229e..46ae2c2 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -21,11 +21,12 @@ SRC_URI = "\
     file://0001-fix-gcc-5.x-inlines.patch \
     file://0002-fix-musl-build.patch \
     file://0003-fix-alloc-size-uninitialized.patch \
+    file://0004-rpi-userland-add-pkgconfig-files.patch \
     "
 
 S = "${WORKDIR}/git"
 
-inherit cmake
+inherit cmake pkgconfig
 
 EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
 CFLAGS_append = " -fPIC"
@@ -43,7 +44,8 @@ FILES_${PN} += " \
     ${libdir}/*${SOLIBS} \
     ${libdir}/plugins"
 FILES_${PN}-dev = "${includedir} \
-                   ${prefix}/src"
+                   ${prefix}/src \
+                   ${libdir}/pkgconfig/*.pc"
 FILES_${PN}-doc += "${datadir}/install"
 FILES_${PN}-dbg += "${libdir}/plugins/.debug"
 
-- 
1.9.1


