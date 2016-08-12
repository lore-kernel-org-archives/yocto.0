Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80BAFE01257; Thu, 11 Aug 2016 18:06:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F283CE01262
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:35 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id g202so589417pfb.1
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=UPYLaXyZADmbsR2JROBJp7lrGKDBpFvaloiBl430LRs=;
	b=KBuHzbPvFf6SV0pX8F/YpGT4gCzZ0aX5myrJU11Ev4fa0N+9Lilguf3kxwS0UM2dr6
	RJA/YsBmlt5Mh2GZfGZ4b9E5XFsx18KyS0VCMAcweHasHRptTZGzvF/TvaSUYGRpitv9
	ZohSCJq96FNsophkxGeTyWT5JEjpLRgQc4k76zDypyTi3w0U4isOldT2gg/HKJ0ZJl7a
	CS4phMMMOLMxUs8ajpgGhNVCxCGAHF4h6jARVxUa2LZMZzMX+UbanIEKFJkEir9hyiOI
	XsTf8ufvWPAGV8g7Q3mpXjM0eLVIixSonhXidnL+40iofVP4J0/Ea4l0g9r5dSP08w5i
	dtSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=UPYLaXyZADmbsR2JROBJp7lrGKDBpFvaloiBl430LRs=;
	b=OIj3eGzKNwNkbZRG8ZxbJyShu+cG3rqi4TO+qd7f8Gsy3XhmaKe9orL8/m5mfozC6Q
	Tw7++2Z1vgZF0aJlTlaWUR4XZQQ7rfIN8CoVb6KQb71ZysAvt/VTKW0T91uk0USGFkS4
	GrItssVmfl4bFk+2KY0KVsdlETMV53Jpq4byUvJ8Yr+hjE3SpomDxFXusPVBJGrOkz93
	WmAVFaCM40bYlwxpA+V+7psj1qzuxPntXvSjpbxL1c6bPXGPTctgSb7HYg1G3Tx4r7rU
	kro10G19kd+NLksebr++mTIlaWt+bvnX3A+ctsr1y+D8IxAVQsfUzlfcZKxEVLaiaHTP
	h/lg==
X-Gm-Message-State: AEkoousYL1y6obosWEy/UwCM2e2qiV69+3rHhuGVIS7z2PGyDA1mjymt2epDHty01utiFw==
X-Received: by 10.98.135.13 with SMTP id i13mr22471955pfe.44.1470963995598;
	Thu, 11 Aug 2016 18:06:35 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:34 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:06:05 -0700
Message-Id: <20160812010608.31182-20-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 20/23] firmware, userland: Bump to latest
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:42 -0000

firmware -> 20160726

userland -> 20160728

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc                    |  4 +-
 ...-applications-to-set-next-resource-handle.patch | 10 ++--
 ...ayland-Add-support-for-the-Wayland-winsys.patch | 65 ++++++++++++----------
 .../0003-wayland-Add-Wayland-example.patch         |  2 +-
 ...-wayland-egl-Add-bcm_host-to-dependencies.patch |  2 +-
 ...emove-faulty-assert-to-make-weston-happy-.patch |  2 +-
 ...6-zero-out-wl-buffers-in-egl_surface_free.patch |  4 +-
 ...007-initialize-front-back-wayland-buffers.patch |  4 +-
 .../userland/userland/0008-Remove-RPC_FLUSH.patch  |  2 +-
 .../userland/0009-fix-cmake-dependency-race.patch  |  4 +-
 .../0010-Fix-enum-conversion-warnings.patch        |  2 +-
 ...Fix-for-framerate-with-nested-composition.patch |  2 +-
 .../0012-build-shared-library-for-vchostif.patch   |  4 +-
 ...nt-buffer-wrapping-interface-for-dispmanx.patch |  2 +-
 recipes-graphics/userland/userland_git.bb          |  2 +-
 15 files changed, 59 insertions(+), 52 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 9df6156..a9d2327 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "390f53ed0fd79df274bdcc81d99e09fa262f03ab"
-RPIFW_DATE ?= "20160622"
+RPIFW_SRCREV ?= "1205048f037098b1532bb947d1f4b823bcdebdf7"
+RPIFW_DATE ?= "20160726"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
diff --git a/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch b/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
index 4d026bd..8c855da 100644
--- a/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
+++ b/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
@@ -1,4 +1,4 @@
-From 83c5ac5892d0cd29caa8922ff8b639b9a373c3cb Mon Sep 17 00:00:00 2001
+From a096ab4b7bbdd8f78d93a54a8da1ca3c9470c2ec Mon Sep 17 00:00:00 2001
 From: Dom Cobley <dc4@broadcom.com>
 Date: Tue, 9 Jul 2013 09:26:26 -0400
 Subject: [PATCH 01/13] Allow applications to set next resource handle
@@ -16,10 +16,10 @@ It's useful for implementing, say, a buffer carousel.
  6 files changed, 59 insertions(+), 7 deletions(-)
 
 diff --git a/interface/khronos/common/khrn_client_rpc.h b/interface/khronos/common/khrn_client_rpc.h
-index 418aa67..a7557a8 100644
+index dc4351d..10ea060 100644
 --- a/interface/khronos/common/khrn_client_rpc.h
 +++ b/interface/khronos/common/khrn_client_rpc.h
-@@ -683,6 +683,7 @@ static INLINE void rpc_call12_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id
+@@ -685,6 +685,7 @@ static INLINE void rpc_call12_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id
  static INLINE void rpc_call13_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id, uint32_t p0, uint32_t p1, uint32_t p2, uint32_t p3, uint32_t p4, uint32_t p5, uint32_t p6, uint32_t p7, uint32_t p8, uint32_t p9, uint32_t p10, uint32_t p11, void *out)               { rpc_begin(thread); RPC_CALL(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);      rpc_recv(thread, out, NULL, (RPC_RECV_FLAG_T)(RPC_RECV_FLAG_CTRL | RPC_RECV_FLAG_LEN)); rpc_end(thread); }
  static INLINE void rpc_call14_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id, uint32_t p0, uint32_t p1, uint32_t p2, uint32_t p3, uint32_t p4, uint32_t p5, uint32_t p6, uint32_t p7, uint32_t p8, uint32_t p9, uint32_t p10, uint32_t p11, uint32_t p12, void *out) { rpc_begin(thread); RPC_CALL(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12); rpc_recv(thread, out, NULL, (RPC_RECV_FLAG_T)(RPC_RECV_FLAG_CTRL | RPC_RECV_FLAG_LEN)); rpc_end(thread); }
  static INLINE void rpc_call15_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id, uint32_t p0, uint32_t p1, uint32_t p2, uint32_t p3, uint32_t p4, uint32_t p5, uint32_t p6, uint32_t p7, uint32_t p8, uint32_t p9, uint32_t p10, uint32_t p11, uint32_t p12, uint32_t p13, void *out) { rpc_begin(thread); RPC_CALL(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13); rpc_recv(thread, out, NULL, (RPC_RECV_FLAG_T)(RPC_RECV_FLAG_CTRL | RPC_RECV_FLAG_LEN)); rpc_end(thread); }
@@ -27,7 +27,7 @@ index 418aa67..a7557a8 100644
  #endif
  
  #define RPC_CALL1_OUT_CTRL(fn, thread, id, out)                                               rpc_call1_out_ctrl(thread, id, out)
-@@ -700,6 +701,7 @@ static INLINE void rpc_call15_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id
+@@ -702,6 +703,7 @@ static INLINE void rpc_call15_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id
  #define RPC_CALL13_OUT_CTRL(fn, thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, out)      rpc_call13_out_ctrl(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, out)
  #define RPC_CALL14_OUT_CTRL(fn, thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, out) rpc_call14_out_ctrl(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, out)
  #define RPC_CALL15_OUT_CTRL(fn, thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, out) rpc_call15_out_ctrl(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, out)
@@ -125,7 +125,7 @@ index 472ef0c..234da65 100644
                       thread,
                       EGLINTSWAPBUFFERS_ID,
 diff --git a/interface/khronos/egl/egl_client_surface.c b/interface/khronos/egl/egl_client_surface.c
-index 0fa1fd1..0dc10e2 100644
+index 6846dfa..128325e 100644
 --- a/interface/khronos/egl/egl_client_surface.c
 +++ b/interface/khronos/egl/egl_client_surface.c
 @@ -314,7 +314,8 @@ EGL_SURFACE_T *egl_surface_create(
diff --git a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
index aa09dda..00c96d5 100644
--- a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
+++ b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
@@ -1,4 +1,4 @@
-From 79ce2b4125359593f37c5b9744a37203e24249de Mon Sep 17 00:00:00 2001
+From 75ce950e68a0260ea5da56a83c27eb46331d819f Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
 Subject: [PATCH 02/13] wayland: Add support for the Wayland winsys
@@ -20,7 +20,8 @@ vc_vchi_dispmanx.h
  .gitignore                                         |   2 +
  CMakeLists.txt                                     |  11 +
  README.md                                          |   4 +
- buildme                                            |  14 +-
+ buildme                                            |  10 +-
+ .../linux/apps/raspicam/CMakeLists.txt             |   2 +-
  interface/khronos/CMakeLists.txt                   |  52 ++++-
  interface/khronos/common/khrn_client.c             |  15 ++
  interface/khronos/common/khrn_client.h             |  10 +
@@ -46,7 +47,7 @@ vc_vchi_dispmanx.h
  interface/vmcs_host/vc_vchi_dispmanx.h             |  15 ++
  interface/wayland/dispmanx.xml                     | 123 +++++++++++
  makefiles/cmake/Wayland.cmake                      |  72 ++++++
- 29 files changed, 1260 insertions(+), 97 deletions(-)
+ 30 files changed, 1258 insertions(+), 97 deletions(-)
  create mode 100644 interface/khronos/common/linux/khrn_wayland.c
  copy interface/{vmcs_host/vc_vchi_dispmanx.h => khronos/common/linux/khrn_wayland.h} (56%)
  create mode 100644 interface/khronos/ext/egl_wayland.c
@@ -67,7 +68,7 @@ index 8df9393..d0d1387 100644
 +
 +*~
 diff --git a/CMakeLists.txt b/CMakeLists.txt
-index 3113618..56b7fb8 100644
+index a12e389..f0fde45 100644
 --- a/CMakeLists.txt
 +++ b/CMakeLists.txt
 @@ -19,6 +19,17 @@ include(makefiles/cmake/global_settings.cmake)
@@ -101,11 +102,12 @@ index 358d2b4..4da4448 100644
 +
 +$ BUILD_WAYLAND=1 ./buildme.
 diff --git a/buildme b/buildme
-index d5d3de9..c46f214 100755
+index 9e9d4d7..4e5d0be 100755
 --- a/buildme
 +++ b/buildme
-@@ -1,10 +1,14 @@
- #!/bin/bash
+@@ -8,6 +8,10 @@ fi
+ 
+ BUILDSUBDIR=`echo $BUILDTYPE | tr [A-Z] [a-z]`;
  
 +if [ -n "$BUILD_WAYLAND" ]; then
 +       WAYLAND_VARS="-DBUILD_WAYLAND=TRUE"
@@ -113,32 +115,37 @@ index d5d3de9..c46f214 100755
 +
  if [ "armv6l" = `arch` ] || [ "armv7l" = `arch` ]; then
  	# Native compile on the Raspberry Pi
- 	mkdir -p build/raspberry/release
- 	pushd build/raspberry/release
--	cmake -DCMAKE_BUILD_TYPE=Release ../../..
-+	cmake -DCMAKE_BUILD_TYPE=Release $WAYLAND_VARS ../../..
- 	if [ "armv6l" = `arch` ]; then
- 		make
- 	else
-@@ -17,9 +21,15 @@ if [ "armv6l" = `arch` ] || [ "armv7l" = `arch` ]; then
- 	fi
+ 	mkdir -p build/raspberry/$BUILDSUBDIR
+@@ -32,9 +36,13 @@ elif [ "$1" = "--native" ]; then
+ 	make -j 6 $*
  else
  	# Cross compile on a more capable machine
-+
 +	if [ -n "$BUILD_WAYLAND" ]; then
 +		# Use wayland-scanner from the build platform
 +		WAYLAND_VARS+=" -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=/usr/bin/wayland-scanner"
 +	fi
-+
- 	mkdir -p build/arm-linux/release/
- 	pushd build/arm-linux/release/
--	cmake -DCMAKE_TOOLCHAIN_FILE=../../../makefiles/cmake/toolchains/arm-linux-gnueabihf.cmake -DCMAKE_BUILD_TYPE=Release ../../..
-+	cmake -DCMAKE_TOOLCHAIN_FILE=../../../makefiles/cmake/toolchains/arm-linux-gnueabihf.cmake -DCMAKE_BUILD_TYPE=Release $WAYLAND_VARS ../../..
+ 	mkdir -p build/arm-linux/$BUILDSUBDIR
+ 	pushd build/arm-linux/$BUILDSUBDIR
+-	cmake -DCMAKE_TOOLCHAIN_FILE=../../../makefiles/cmake/toolchains/arm-linux-gnueabihf.cmake -DCMAKE_BUILD_TYPE=$BUILDTYPE ../../..
++	cmake -DCMAKE_TOOLCHAIN_FILE=../../../makefiles/cmake/toolchains/arm-linux-gnueabihf.cmake -DCMAKE_BUILD_TYPE=$BUILDTYPE $WAYLAND_VARS ../../..
  	make -j 6
  
  	if [ "$1" != "" ]; then
+diff --git a/host_applications/linux/apps/raspicam/CMakeLists.txt b/host_applications/linux/apps/raspicam/CMakeLists.txt
+index 2afc145..126211f 100644
+--- a/host_applications/linux/apps/raspicam/CMakeLists.txt
++++ b/host_applications/linux/apps/raspicam/CMakeLists.txt
+@@ -26,7 +26,7 @@ add_executable(raspividyuv  ${COMMON_SOURCES} RaspiVidYUV.c)
+ 
+ set (MMAL_LIBS mmal_core mmal_util mmal_vc_client)
+ 
+-target_link_libraries(raspistill ${MMAL_LIBS} vcos bcm_host brcmGLESv2 brcmEGL m)
++target_link_libraries(raspistill ${MMAL_LIBS} vcos bcm_host brcmGLESv2 brcmEGL m ${WAYLAND_SERVER_LIBRARIES} ${WAYLAND_CLIENT_LIBRARIES})
+ target_link_libraries(raspiyuv   ${MMAL_LIBS} vcos bcm_host)
+ target_link_libraries(raspivid   ${MMAL_LIBS} vcos bcm_host)
+ target_link_libraries(raspividyuv   ${MMAL_LIBS} vcos bcm_host)
 diff --git a/interface/khronos/CMakeLists.txt b/interface/khronos/CMakeLists.txt
-index c437291..6778e10 100644
+index 4231af4..7506e5c 100644
 --- a/interface/khronos/CMakeLists.txt
 +++ b/interface/khronos/CMakeLists.txt
 @@ -6,6 +6,12 @@
@@ -220,7 +227,7 @@ index c437291..6778e10 100644
  target_link_libraries(WFC EGL)
  target_link_libraries(OpenVG EGL)
 diff --git a/interface/khronos/common/khrn_client.c b/interface/khronos/common/khrn_client.c
-index e38a85f..783a68e 100644
+index ef4babd..d7e798e 100644
 --- a/interface/khronos/common/khrn_client.c
 +++ b/interface/khronos/common/khrn_client.c
 @@ -54,6 +54,10 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
@@ -333,7 +340,7 @@ index 4f3ce49..84f6ec0 100644
  /* OpenGL ES 1.1 and 2.0 functions */
  
 diff --git a/interface/khronos/common/linux/khrn_client_platform_linux.c b/interface/khronos/common/linux/khrn_client_platform_linux.c
-index 9d43d15..00821d3 100644
+index 3320b33..39fc7cc 100644
 --- a/interface/khronos/common/linux/khrn_client_platform_linux.c
 +++ b/interface/khronos/common/linux/khrn_client_platform_linux.c
 @@ -37,6 +37,11 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
@@ -348,7 +355,7 @@ index 9d43d15..00821d3 100644
  extern VCOS_LOG_CAT_T khrn_client_log;
  
  extern void vc_vchi_khronos_init();
-@@ -460,13 +465,36 @@ EGLDisplay khrn_platform_set_display_id(EGLNativeDisplayType display_id)
+@@ -462,13 +467,36 @@ EGLDisplay khrn_platform_set_display_id(EGLNativeDisplayType display_id)
  	   return EGL_NO_DISPLAY;
  }
  #else
@@ -387,7 +394,7 @@ index 9d43d15..00821d3 100644
  #endif
  
  #ifdef WANT_X
-@@ -801,22 +829,81 @@ static EGL_DISPMANX_WINDOW_T *check_default(EGLNativeWindowType win)
+@@ -803,22 +831,81 @@ static EGL_DISPMANX_WINDOW_T *check_default(EGLNativeWindowType win)
  void platform_get_dimensions(EGLDisplay dpy, EGLNativeWindowType win,
        uint32_t *width, uint32_t *height, uint32_t *swapchain_count)
  {
@@ -941,7 +948,7 @@ index 4cfa9ff..6a715af 100644
  }
  
 diff --git a/interface/khronos/egl/egl_client_surface.c b/interface/khronos/egl/egl_client_surface.c
-index 0dc10e2..49cf7e5 100644
+index 128325e..42350bf 100644
 --- a/interface/khronos/egl/egl_client_surface.c
 +++ b/interface/khronos/egl/egl_client_surface.c
 @@ -46,6 +46,11 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
@@ -1533,7 +1540,7 @@ index 0000000..8bafc15
 +Libs: -L${libdir} -lwayland-egl
 +Cflags: -I${includedir}
 diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
-index e0c6e13..35150ed 100755
+index 3205cf1..6ef97bd 100755
 --- a/interface/vmcs_host/CMakeLists.txt
 +++ b/interface/vmcs_host/CMakeLists.txt
 @@ -9,13 +9,24 @@ add_definitions(-fno-strict-aliasing)
diff --git a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
index 11befc3..4fcddf8 100644
--- a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
+++ b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
@@ -1,4 +1,4 @@
-From b6ee187184456d66095146e3dc06b6baa29c17d7 Mon Sep 17 00:00:00 2001
+From ce82c93dfede66447ea9d1195202bf0b0b09fa16 Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
 Subject: [PATCH 03/13] wayland: Add Wayland example
diff --git a/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch b/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
index 2a44e26..b8b8d44 100644
--- a/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
+++ b/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
@@ -1,4 +1,4 @@
-From e3df3fec01aefac3ec301f6f3d5ec3e91652b9c5 Mon Sep 17 00:00:00 2001
+From 809ea78d19ce21c4f74aeab58394d6c2396e166c Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Mon, 10 Aug 2015 02:38:27 -0700
 Subject: [PATCH 04/13] wayland-egl: Add bcm_host to dependencies
diff --git a/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch b/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
index 6f41932..57526f6 100644
--- a/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
+++ b/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
@@ -1,4 +1,4 @@
-From 6c9d407c9ec0859380e7bcf35cf915cef4b3687b Mon Sep 17 00:00:00 2001
+From dc87269edc34616a9adb11147be2d7efef9b25e2 Mon Sep 17 00:00:00 2001
 From: "Yann E. MORIN" <yann.morin.1998@free.fr>
 Date: Sat, 24 Jan 2015 22:07:19 +0100
 Subject: [PATCH 05/13] interface: remove faulty assert() to make weston happy
diff --git a/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch b/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
index 2d52266..f040ea4 100644
--- a/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
+++ b/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
@@ -1,4 +1,4 @@
-From e3ffe9438fe8417586d0045d00eb1368ca3a71b6 Mon Sep 17 00:00:00 2001
+From 9f70762bc0b2d42c45c9206e7b8fb4ce237ba4a3 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:10:47 -0800
 Subject: [PATCH 06/13] zero-out wl buffers in egl_surface_free
@@ -11,7 +11,7 @@ Signed-off-by: Khem Raj <raj.khem@gmail.com>
  1 file changed, 2 insertions(+)
 
 diff --git a/interface/khronos/egl/egl_client_surface.c b/interface/khronos/egl/egl_client_surface.c
-index 49cf7e5..512c83b 100644
+index 42350bf..1f923d9 100644
 --- a/interface/khronos/egl/egl_client_surface.c
 +++ b/interface/khronos/egl/egl_client_surface.c
 @@ -690,11 +690,13 @@ void egl_surface_free(EGL_SURFACE_T *surface)
diff --git a/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch b/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
index f54f77d..3d643b3 100644
--- a/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
+++ b/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
@@ -1,4 +1,4 @@
-From ed31a6a206c9e205bd5316e95788e5d7bb837e38 Mon Sep 17 00:00:00 2001
+From d0535b7c6108d241ee943eff11c1d62171066d1a Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:11:41 -0800
 Subject: [PATCH 07/13] initialize front back wayland buffers
@@ -11,7 +11,7 @@ Signed-off-by: Khem Raj <raj.khem@gmail.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/interface/khronos/egl/egl_client_surface.c b/interface/khronos/egl/egl_client_surface.c
-index 512c83b..a429724 100644
+index 1f923d9..9a9582c 100644
 --- a/interface/khronos/egl/egl_client_surface.c
 +++ b/interface/khronos/egl/egl_client_surface.c
 @@ -401,11 +401,14 @@ EGL_SURFACE_T *egl_surface_create(
diff --git a/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch b/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
index 0206a08..3243e1b 100644
--- a/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
+++ b/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
@@ -1,4 +1,4 @@
-From 6e173040a825185013ccbbb33113442207f10eeb Mon Sep 17 00:00:00 2001
+From 495f4e8d692be8f61966ce2ed54c50d98690fda2 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:09:18 -0800
 Subject: [PATCH 08/13] Remove RPC_FLUSH
diff --git a/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch b/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
index 87cfce4..4da981e 100644
--- a/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
+++ b/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
@@ -1,4 +1,4 @@
-From c4217231fd78daee83b0c0f312c1d392aa6e0f47 Mon Sep 17 00:00:00 2001
+From b83cbbfa7e37c292ce403b44b7e6e2b4c48270a6 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 13:12:47 -0800
 Subject: [PATCH 09/13] fix cmake dependency race
@@ -42,7 +42,7 @@ index 1d81ca3..d6cd415 100644
     add_library (vcos SHARED ${SOURCES})
     target_link_libraries (vcos pthread dl rt)
 diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
-index 35150ed..22949a8 100755
+index 6ef97bd..f62a9f5 100755
 --- a/interface/vmcs_host/CMakeLists.txt
 +++ b/interface/vmcs_host/CMakeLists.txt
 @@ -17,14 +17,6 @@ set(VCHOSTIF_SOURCE
diff --git a/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch b/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
index d4e8825..b2f09d8 100644
--- a/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
+++ b/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
@@ -1,4 +1,4 @@
-From 377f6aada3b7569e3d662fc830e01b8c5ba8a15d Mon Sep 17 00:00:00 2001
+From a00eee4a5464f0add14232e1f9d7a8268c02770e Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Thu, 18 Feb 2016 09:04:46 +0000
 Subject: [PATCH 10/13] Fix enum conversion warnings
diff --git a/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch b/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
index 5e97571..9864b49 100644
--- a/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
+++ b/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
@@ -1,4 +1,4 @@
-From 6e634184ee4b3d2c98c3213a3931845ec3014754 Mon Sep 17 00:00:00 2001
+From 5e36a54cc219e713796e3b16ccd9da7819cfa836 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Tue, 29 Mar 2016 20:38:30 -0700
 Subject: [PATCH 11/13] Fix for framerate with nested composition
diff --git a/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch b/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
index 44815c5..705040b 100644
--- a/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
+++ b/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
@@ -1,4 +1,4 @@
-From 559209ce15027b3370466ccb56223a7a66d2a40c Mon Sep 17 00:00:00 2001
+From 452ea70c80a26e83ac33385c00c5c8352117250e Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 2 Apr 2016 10:37:24 -0700
 Subject: [PATCH 12/13] build shared library for vchostif
@@ -11,7 +11,7 @@ Signed-off-by: Khem Raj <raj.khem@gmail.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
-index 22949a8..f8c2f2f 100755
+index f62a9f5..85f78fd 100755
 --- a/interface/vmcs_host/CMakeLists.txt
 +++ b/interface/vmcs_host/CMakeLists.txt
 @@ -17,7 +17,7 @@ set(VCHOSTIF_SOURCE
diff --git a/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch b/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
index 8f36048..88f529f 100644
--- a/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
+++ b/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
@@ -1,4 +1,4 @@
-From 5b55a152651eece345d9ea1e0e40ecd9fc4ca2d5 Mon Sep 17 00:00:00 2001
+From 4059611f79490606db6d9094263b1c56cd2abc05 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 2 Apr 2016 10:54:59 -0700
 Subject: [PATCH 13/13] implement buffer wrapping interface for dispmanx
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 6e73ca7..f4b50f4 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "0147f98bdd4fdc822d25d8a70cf5adc5adb89096"
+SRCREV = "a63658c5950ce4ac6dc9d125ed977be91896d68c"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-- 
2.9.2


