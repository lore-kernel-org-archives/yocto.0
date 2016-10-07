Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DDCAE00BF9; Thu,  6 Oct 2016 19:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE393E00A96
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 19:09:15 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id t25so1994815pfg.2
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 19:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=JNIv8oAjQmVBrnzhpRgCS7krBhu8VJZYVeaIHqw+Zxk=;
	b=mVbge+UhaR803ECijPmDH525xemw3+2fgTkh0w+JliOU8rWnA9jQXOyHKW7JLJGmCT
	dC0Awat0hj7TD8TdbBg+LnHOlOPlZajbFdFcgl3vI0sz20GFq+j6GXCLnHLGdEnXlzy3
	q5uvD6uaFza0uBV/5NUQBNrB1QX8P/uYBqIl9NVmgh/BG3Qfdw+679DVBX3gad/GHcnP
	Lvdl9O6Sn265ZsORRAcQb+urdEs8a7B5UX9Pntx0SFIoRGFeLpETuWVqqfwS+dEaHop1
	Ju5r6MfhvVGHCrwZqwUsBUr+D9qtLAl+I6JvE7iRZMSrMxm97i+8V9C7jQhvL9eUXi2T
	GxKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=JNIv8oAjQmVBrnzhpRgCS7krBhu8VJZYVeaIHqw+Zxk=;
	b=PmST/ZQlXC2hfgNjmvTUShV5cimReznvxCgPNBttdam+ppqGBGnm9j4i/L1+fiK+zM
	rwJLcoJhdLysG4rYYsAYKCmL/IAn292YAoUcirMIUf8uZAQNy88/rycV3Bxydxt3xiAP
	bbYTBlQdfefzMq8loqLioXWX5lRaJbLI++mdwWAT7S6geDX6EhcmsSlyQjfHwt4/3ezw
	qQW+piDf2wsvnoul9iXF4QgpUK6oQYVf2//oYRlzanroKG86VPM+QslwdQjZralHeA6+
	+vrrSpCuwRFEYcUoeOjIbLig94ovqKtAAxZQ0uw0SuepHcVjypwCOi4pn/3GgdSruXPS
	ftKQ==
X-Gm-Message-State: AA6/9Rlc342aV1g0W346Cg2VHhhQCuJ4xyMlvBKme4M1/Imzr4jLNoSvhBaDF0cRXVuxDQ==
X-Received: by 10.98.201.151 with SMTP id l23mr22871825pfk.110.1475806154777; 
	Thu, 06 Oct 2016 19:09:14 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	wd7sm25932607pab.2.2016.10.06.19.09.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Oct 2016 19:09:14 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Oct 2016 19:09:04 -0700
Message-Id: <20161007020906.32228-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.0
In-Reply-To: <20161007020906.32228-1-raj.khem@gmail.com>
References: <20161007020906.32228-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/4] userland: Upgrade to latest
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
X-List-Received-Date: Fri, 07 Oct 2016 02:09:17 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...-applications-to-set-next-resource-handle.patch |  6 ++---
 ...ayland-Add-support-for-the-Wayland-winsys.patch | 28 +++++++++++-----------
 .../0003-wayland-Add-Wayland-example.patch         |  4 ++--
 ...-wayland-egl-Add-bcm_host-to-dependencies.patch |  4 ++--
 ...emove-faulty-assert-to-make-weston-happy-.patch | 22 ++++++++---------
 ...6-zero-out-wl-buffers-in-egl_surface_free.patch |  4 ++--
 ...007-initialize-front-back-wayland-buffers.patch |  4 ++--
 .../userland/userland/0008-Remove-RPC_FLUSH.patch  |  4 ++--
 .../userland/0009-fix-cmake-dependency-race.patch  |  6 ++---
 .../0010-Fix-enum-conversion-warnings.patch        |  4 ++--
 ...Fix-for-framerate-with-nested-composition.patch |  6 ++---
 .../0012-build-shared-library-for-vchostif.patch   |  6 ++---
 ...nt-buffer-wrapping-interface-for-dispmanx.patch |  4 ++--
 recipes-graphics/userland/userland_git.bb          |  2 +-
 14 files changed, 52 insertions(+), 52 deletions(-)

diff --git a/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch b/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
index 8c855da..b5bf461 100644
--- a/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
+++ b/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
@@ -1,4 +1,4 @@
-From a096ab4b7bbdd8f78d93a54a8da1ca3c9470c2ec Mon Sep 17 00:00:00 2001
+From 2b87c1271a5b2fc60a7bcfcaf902f3ef69ccad24 Mon Sep 17 00:00:00 2001
 From: Dom Cobley <dc4@broadcom.com>
 Date: Tue, 9 Jul 2013 09:26:26 -0400
 Subject: [PATCH 01/13] Allow applications to set next resource handle
@@ -56,7 +56,7 @@ index 8378f4a..ec961e0 100644
  #define EGLINTFLUSH_ID                    0x400c
  #define EGLINTGETCOLORDATA_ID             0x400d
 diff --git a/interface/khronos/egl/egl_client.c b/interface/khronos/egl/egl_client.c
-index 472ef0c..234da65 100644
+index 9d617c8..b8bb374 100644
 --- a/interface/khronos/egl/egl_client.c
 +++ b/interface/khronos/egl/egl_client.c
 @@ -162,6 +162,17 @@ static void egl_current_release(CLIENT_PROCESS_STATE_T *process, EGL_CURRENT_T *
@@ -204,5 +204,5 @@ index 8a5734c..51b3580 100644
  
  FN(void, eglIntGetColorData_impl, (EGL_SURFACE_ID_T s, KHRN_IMAGE_FORMAT_T format, uint32_t width, uint32_t height, int32_t stride, uint32_t y_offset, void *data))
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
index 00c96d5..2abe5ce 100644
--- a/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
+++ b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
@@ -1,4 +1,4 @@
-From 75ce950e68a0260ea5da56a83c27eb46331d819f Mon Sep 17 00:00:00 2001
+From 3a0e094a6aac53c9ddc4b28feb77cfc1a319880d Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
 Subject: [PATCH 02/13] wayland: Add support for the Wayland winsys
@@ -58,17 +58,17 @@ vc_vchi_dispmanx.h
  create mode 100644 makefiles/cmake/Wayland.cmake
 
 diff --git a/.gitignore b/.gitignore
-index 8df9393..d0d1387 100644
+index 4a88665..5da71a9 100644
 --- a/.gitignore
 +++ b/.gitignore
-@@ -10,3 +10,5 @@
+@@ -13,3 +13,5 @@ build/
  *.lai
  *.la
  *.a
 +
 +*~
 diff --git a/CMakeLists.txt b/CMakeLists.txt
-index a12e389..f0fde45 100644
+index d3159c7..58eb8f7 100644
 --- a/CMakeLists.txt
 +++ b/CMakeLists.txt
 @@ -19,6 +19,17 @@ include(makefiles/cmake/global_settings.cmake)
@@ -102,12 +102,12 @@ index 358d2b4..4da4448 100644
 +
 +$ BUILD_WAYLAND=1 ./buildme.
 diff --git a/buildme b/buildme
-index 9e9d4d7..4e5d0be 100755
+index d778276..f509864 100755
 --- a/buildme
 +++ b/buildme
 @@ -8,6 +8,10 @@ fi
  
- BUILDSUBDIR=`echo $BUILDTYPE | tr [A-Z] [a-z]`;
+ BUILDSUBDIR=`echo $BUILDTYPE | tr '[A-Z]' '[a-z]'`;
  
 +if [ -n "$BUILD_WAYLAND" ]; then
 +       WAYLAND_VARS="-DBUILD_WAYLAND=TRUE"
@@ -340,7 +340,7 @@ index 4f3ce49..84f6ec0 100644
  /* OpenGL ES 1.1 and 2.0 functions */
  
 diff --git a/interface/khronos/common/linux/khrn_client_platform_linux.c b/interface/khronos/common/linux/khrn_client_platform_linux.c
-index 3320b33..39fc7cc 100644
+index 710d20f..50d60a6 100644
 --- a/interface/khronos/common/linux/khrn_client_platform_linux.c
 +++ b/interface/khronos/common/linux/khrn_client_platform_linux.c
 @@ -37,6 +37,11 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
@@ -355,7 +355,7 @@ index 3320b33..39fc7cc 100644
  extern VCOS_LOG_CAT_T khrn_client_log;
  
  extern void vc_vchi_khronos_init();
-@@ -462,13 +467,36 @@ EGLDisplay khrn_platform_set_display_id(EGLNativeDisplayType display_id)
+@@ -464,13 +469,36 @@ EGLDisplay khrn_platform_set_display_id(EGLNativeDisplayType display_id)
  	   return EGL_NO_DISPLAY;
  }
  #else
@@ -394,7 +394,7 @@ index 3320b33..39fc7cc 100644
  #endif
  
  #ifdef WANT_X
-@@ -803,22 +831,81 @@ static EGL_DISPMANX_WINDOW_T *check_default(EGLNativeWindowType win)
+@@ -805,22 +833,81 @@ static EGL_DISPMANX_WINDOW_T *check_default(EGLNativeWindowType win)
  void platform_get_dimensions(EGLDisplay dpy, EGLNativeWindowType win,
        uint32_t *width, uint32_t *height, uint32_t *swapchain_count)
  {
@@ -774,7 +774,7 @@ index b723b76..b9bf08c 100644
 -#endif
 +struct wl_dispmanx_client_buffer *allocate_wl_buffer(struct wl_egl_window *window, KHRN_IMAGE_FORMAT_T color);
 diff --git a/interface/khronos/egl/egl_client.c b/interface/khronos/egl/egl_client.c
-index 234da65..024f3ed 100644
+index b8bb374..03fe67b 100644
 --- a/interface/khronos/egl/egl_client.c
 +++ b/interface/khronos/egl/egl_client.c
 @@ -153,6 +153,10 @@ by an attribute value"
@@ -1540,7 +1540,7 @@ index 0000000..8bafc15
 +Libs: -L${libdir} -lwayland-egl
 +Cflags: -I${includedir}
 diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
-index 3205cf1..6ef97bd 100755
+index 0b3adc9..f44d01f 100755
 --- a/interface/vmcs_host/CMakeLists.txt
 +++ b/interface/vmcs_host/CMakeLists.txt
 @@ -9,13 +9,24 @@ add_definitions(-fno-strict-aliasing)
@@ -1602,10 +1602,10 @@ index 37fdae1..fe3619a 100755
  }
  #endif
 diff --git a/interface/vmcs_host/vc_vchi_dispmanx.c b/interface/vmcs_host/vc_vchi_dispmanx.c
-index d188068..3e668f5 100755
+index 133e86d..45f4cff 100755
 --- a/interface/vmcs_host/vc_vchi_dispmanx.c
 +++ b/interface/vmcs_host/vc_vchi_dispmanx.c
-@@ -1316,3 +1316,45 @@ static void *dispmanx_notify_func( void *arg ) {
+@@ -1319,3 +1319,45 @@ static void *dispmanx_notify_func( void *arg ) {
     }
     return 0;
  }
@@ -1883,5 +1883,5 @@ index 0000000..ad90d30
 +    set(${_sources} ${${_sources}} PARENT_SCOPE)
 +endfunction()
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
index 4fcddf8..49a7872 100644
--- a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
+++ b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
@@ -1,4 +1,4 @@
-From ce82c93dfede66447ea9d1195202bf0b0b09fa16 Mon Sep 17 00:00:00 2001
+From 7f52662a4d1965988ee5ada28ce3525c38ebf164 Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
 Subject: [PATCH 03/13] wayland: Add Wayland example
@@ -862,5 +862,5 @@ index fa4539e..37120ac 100755
 -
 +make -C hello_wayland
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch b/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
index b8b8d44..0f9e528 100644
--- a/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
+++ b/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
@@ -1,4 +1,4 @@
-From 809ea78d19ce21c4f74aeab58394d6c2396e166c Mon Sep 17 00:00:00 2001
+From 5f01581e1288040507154ccc38d8bd99b13ed855 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Mon, 10 Aug 2015 02:38:27 -0700
 Subject: [PATCH 04/13] wayland-egl: Add bcm_host to dependencies
@@ -24,5 +24,5 @@ index 8bafc15..fd259c9 100644
  Libs: -L${libdir} -lwayland-egl
  Cflags: -I${includedir}
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch b/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
index 57526f6..9a3aa46 100644
--- a/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
+++ b/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
@@ -1,4 +1,4 @@
-From dc87269edc34616a9adb11147be2d7efef9b25e2 Mon Sep 17 00:00:00 2001
+From 6e333fef608c5738d2d9a812de29fc8b1edd24cc Mon Sep 17 00:00:00 2001
 From: "Yann E. MORIN" <yann.morin.1998@free.fr>
 Date: Sat, 24 Jan 2015 22:07:19 +0100
 Subject: [PATCH 05/13] interface: remove faulty assert() to make weston happy
@@ -13,17 +13,17 @@ Signed-off-by: "Yann E. MORIN" <yann.morin.1998@free.fr>
  1 file changed, 1 deletion(-)
 
 diff --git a/interface/vmcs_host/vc_vchi_dispmanx.c b/interface/vmcs_host/vc_vchi_dispmanx.c
-index 3e668f5..8e065dc 100755
+index 45f4cff..5d0368c 100755
 --- a/interface/vmcs_host/vc_vchi_dispmanx.c
 +++ b/interface/vmcs_host/vc_vchi_dispmanx.c
-@@ -1304,7 +1304,6 @@ static void *dispmanx_notify_func( void *arg ) {
-          // Decrement the use count - the corresponding "use" is in vc_dispmanx_update_submit.
-          vchi_service_release(dispmanx_client.notify_handle[0]);
-          if (dispmanx_client.update_callback ) {
--            vcos_assert( dispmanx_client.pending_update_handle == handle);
-             dispmanx_client.update_callback(handle, dispmanx_client.update_callback_param);
-          }
-       } else {
+@@ -1306,7 +1306,6 @@ static void *dispmanx_notify_func( void *arg ) {
+             // Decrement the use count - the corresponding "use" is in vc_dispmanx_update_submit.
+             vchi_service_release(dispmanx_client.notify_handle[0]);
+             if (dispmanx_client.update_callback ) {
+-               vcos_assert( dispmanx_client.pending_update_handle == handle);
+                dispmanx_client.update_callback(handle, dispmanx_client.update_callback_param);
+             }
+          } else {
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch b/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
index f040ea4..5ec459e 100644
--- a/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
+++ b/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
@@ -1,4 +1,4 @@
-From 9f70762bc0b2d42c45c9206e7b8fb4ce237ba4a3 Mon Sep 17 00:00:00 2001
+From 16b837f5d6e8a62ba11029c005488880d02befbf Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:10:47 -0800
 Subject: [PATCH 06/13] zero-out wl buffers in egl_surface_free
@@ -29,5 +29,5 @@ index 42350bf..1f923d9 100644
  #endif
     }
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch b/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
index 3d643b3..90f4a84 100644
--- a/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
+++ b/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
@@ -1,4 +1,4 @@
-From d0535b7c6108d241ee943eff11c1d62171066d1a Mon Sep 17 00:00:00 2001
+From efe05f6bdb77da027ddc2384e9a9043655a2a03b Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:11:41 -0800
 Subject: [PATCH 07/13] initialize front back wayland buffers
@@ -30,5 +30,5 @@ index 1f923d9..9a9582c 100644
     }
  #endif
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch b/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
index 3243e1b..a5c2ed1 100644
--- a/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
+++ b/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
@@ -1,4 +1,4 @@
-From 495f4e8d692be8f61966ce2ed54c50d98690fda2 Mon Sep 17 00:00:00 2001
+From bf98ea35dcbf86e7b422c8706efcbc01ddb2f6b9 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:09:18 -0800
 Subject: [PATCH 08/13] Remove RPC_FLUSH
@@ -23,5 +23,5 @@ index f9b7287..b04ffef 100644
        }
  #endif
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch b/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
index 4da981e..3e5cce8 100644
--- a/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
+++ b/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
@@ -1,4 +1,4 @@
-From b83cbbfa7e37c292ce403b44b7e6e2b4c48270a6 Mon Sep 17 00:00:00 2001
+From 028957cc519abf5e52d22966d219973294112e54 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 13:12:47 -0800
 Subject: [PATCH 09/13] fix cmake dependency race
@@ -42,7 +42,7 @@ index 1d81ca3..d6cd415 100644
     add_library (vcos SHARED ${SOURCES})
     target_link_libraries (vcos pthread dl rt)
 diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
-index 6ef97bd..f62a9f5 100755
+index f44d01f..9bcc2c3 100755
 --- a/interface/vmcs_host/CMakeLists.txt
 +++ b/interface/vmcs_host/CMakeLists.txt
 @@ -17,14 +17,6 @@ set(VCHOSTIF_SOURCE
@@ -74,5 +74,5 @@ index f0bae30..8c44c58 100644
  	struct wl_resource *resource;
  	struct wl_dispmanx *dispmanx;
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch b/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
index b2f09d8..0b03aed 100644
--- a/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
+++ b/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
@@ -1,4 +1,4 @@
-From a00eee4a5464f0add14232e1f9d7a8268c02770e Mon Sep 17 00:00:00 2001
+From 67b00c2b44cec5a7519acfdde43d5ea27c5ff6a8 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Thu, 18 Feb 2016 09:04:46 +0000
 Subject: [PATCH 10/13] Fix enum conversion warnings
@@ -95,5 +95,5 @@ index f088296..83e3724 100644
        omx->pixel_y    = mmal->pixel_y;
        omx->layer      = mmal->layer;
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch b/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
index 9864b49..9d4b930 100644
--- a/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
+++ b/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
@@ -1,4 +1,4 @@
-From 5e36a54cc219e713796e3b16ccd9da7819cfa836 Mon Sep 17 00:00:00 2001
+From 497637d8eff4e83b5ede26733c4f36371b1d2f07 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Tue, 29 Mar 2016 20:38:30 -0700
 Subject: [PATCH 11/13] Fix for framerate with nested composition
@@ -11,7 +11,7 @@ Signed-off-by: Khem Raj <raj.khem@gmail.com>
  1 file changed, 8 insertions(+)
 
 diff --git a/interface/khronos/egl/egl_client.c b/interface/khronos/egl/egl_client.c
-index 024f3ed..83970ec 100644
+index 03fe67b..13a110c 100644
 --- a/interface/khronos/egl/egl_client.c
 +++ b/interface/khronos/egl/egl_client.c
 @@ -2342,6 +2342,9 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
@@ -56,5 +56,5 @@ index 024f3ed..83970ec 100644
  #ifdef ANDROID
                 CLIENT_UNLOCK();
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch b/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
index 705040b..3e3a7f9 100644
--- a/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
+++ b/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
@@ -1,4 +1,4 @@
-From 452ea70c80a26e83ac33385c00c5c8352117250e Mon Sep 17 00:00:00 2001
+From 18f5ef775b4a367bf7fe972c9a2b4cd29f2f1043 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 2 Apr 2016 10:37:24 -0700
 Subject: [PATCH 12/13] build shared library for vchostif
@@ -11,7 +11,7 @@ Signed-off-by: Khem Raj <raj.khem@gmail.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
-index f62a9f5..85f78fd 100755
+index 9bcc2c3..0ef753f 100755
 --- a/interface/vmcs_host/CMakeLists.txt
 +++ b/interface/vmcs_host/CMakeLists.txt
 @@ -17,7 +17,7 @@ set(VCHOSTIF_SOURCE
@@ -24,5 +24,5 @@ index f62a9f5..85f78fd 100755
  #add_library(bufman            vc_vchi_bufman.c            )
  
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch b/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
index 88f529f..8b5c6b5 100644
--- a/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
+++ b/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
@@ -1,4 +1,4 @@
-From 4059611f79490606db6d9094263b1c56cd2abc05 Mon Sep 17 00:00:00 2001
+From d692c61077235e7b791f115b3140680580903c95 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 2 Apr 2016 10:54:59 -0700
 Subject: [PATCH 13/13] implement buffer wrapping interface for dispmanx
@@ -88,5 +88,5 @@ index c18626d..11ed1ef 100644
  
  </protocol>
 -- 
-2.9.0
+2.10.0
 
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 05d6cc1..3c63f94 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "a63658c5950ce4ac6dc9d125ed977be91896d68c"
+SRCREV = "2350bf2511fa49e177fb35c9613eef1b657a7506"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-- 
2.10.0


