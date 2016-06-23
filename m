Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E058E00C8F; Thu, 23 Jun 2016 14:34:57 -0700 (PDT)
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
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33BFBE00C69
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 14:34:53 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id av7so1237824pac.3
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 14:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=kF5uy7x/t6qaW1VKpHPajbbye1/Y+CKXXP5gGbxBYbM=;
	b=dzndPW9H4FDNMD5LvFZriNM/xZegVT2LN9aY+7X0cWnI0FFm1r3UIzHklMCeyTkDQv
	UxRJ7oC9IooYmkj4Z+X9OZUGEyfE4fPahloOrlsFkapXBsqbFgT+t+iF4wW9wIaGkE5c
	poOp9M6hv+Q5NiN4eSbQcPS5RxZXMjx4DymotXQG5N4uea/Z9M2crFQm+xRt3t6H5rDR
	m4bGqoMRk8BolZ5py+1USSEWWP7BVHC5GokVnWo+BP651yPV3ZXy7V7azNS0x/1t5dmL
	ME6mBg3FoJon1hWkCaGHTk3fcNJYDl1Oj+zmK3dAskJtl+b24ip8eznSMTEYhUqD2Pri
	P9dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=kF5uy7x/t6qaW1VKpHPajbbye1/Y+CKXXP5gGbxBYbM=;
	b=JCnHJGTkTEa+3WYy34jwxuC1VEJq74oLZ267DCoaYFw2M/vJ0wHa6GUjC0ie2+WSca
	vsvRgZp0ZsSlCS2nsgwEI5DO+6t13H0xqemeKggRIiRuMM4/Kik5jxbytZ/67yfPw4Ql
	+vOKvSr59sU79PL0XcuqXstuIWgvpVN+2f6yRPZr8h7wtmK6gO6YK5idkJEQB7Kx6RLE
	kQRLbHn8bF2NwCaE6LFhOvgtxhRyTZM3JSMx/jnyhdFcglp22EPrrocvpKw2WOML+MYg
	GdvRsrQTzMUR7xcXYlC2kZWr/tOwqKyrjANkK50gkxw2g1lCFkxS81Y4pwFyzk40SiaZ
	2/CA==
X-Gm-Message-State: ALyK8tKOy8IT+5Vos97R+cLeAKyrOSx6M2e9Xyqo96rdhSF1fj91gmYg3eXXO8BlpRqoVA==
X-Received: by 10.66.83.35 with SMTP id n3mr1276357pay.124.1466717692755;
	Thu, 23 Jun 2016 14:34:52 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	q127sm2277847pfb.34.2016.06.23.14.34.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Jun 2016 14:34:52 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 Jun 2016 14:34:28 -0700
Message-Id: <20160623213431.5513-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.0
Subject: [meta-raspberrypi][PATCH 1/4] userland: Upgrade to latest tip
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
X-List-Received-Date: Thu, 23 Jun 2016 21:34:57 -0000

Drop upstream applied patches

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...applications-to-set-next-resource-handle.patch} |   6 +-
 ...make-generate-and-install-pkgconfig-files.patch | 114 ---------------------
 ...yland-Add-support-for-the-Wayland-winsys.patch} |  10 +-
 ...atch => 0003-wayland-Add-Wayland-example.patch} |   6 +-
 ...wayland-egl-Add-bcm_host-to-dependencies.patch} |   6 +-
 ...move-faulty-assert-to-make-weston-happy-.patch} |   8 +-
 ...-zero-out-wl-buffers-in-egl_surface_free.patch} |   6 +-
 ...07-initialize-front-back-wayland-buffers.patch} |   6 +-
 ...RPC_FLUSH.patch => 0008-Remove-RPC_FLUSH.patch} |   6 +-
 ....patch => 0009-fix-cmake-dependency-race.patch} |   6 +-
 ...tch => 0010-Fix-enum-conversion-warnings.patch} |   6 +-
 ...ix-for-framerate-with-nested-composition.patch} |   6 +-
 ...> 0012-build-shared-library-for-vchostif.patch} |   6 +-
 ...t-buffer-wrapping-interface-for-dispmanx.patch} |  14 ++-
 recipes-graphics/userland/userland_git.bb          |  29 +++---
 15 files changed, 66 insertions(+), 169 deletions(-)
 rename recipes-graphics/userland/userland/{0003-Allow-applications-to-set-next-resource-handle.patch => 0001-Allow-applications-to-set-next-resource-handle.patch} (98%)
 delete mode 100644 recipes-graphics/userland/userland/0002-cmake-generate-and-install-pkgconfig-files.patch
 rename recipes-graphics/userland/userland/{0004-wayland-Add-support-for-the-Wayland-winsys.patch => 0002-wayland-Add-support-for-the-Wayland-winsys.patch} (99%)
 rename recipes-graphics/userland/userland/{0005-wayland-Add-Wayland-example.patch => 0003-wayland-Add-Wayland-example.patch} (99%)
 rename recipes-graphics/userland/userland/{0006-wayland-egl-Add-bcm_host-to-dependencies.patch => 0004-wayland-egl-Add-bcm_host-to-dependencies.patch} (86%)
 rename recipes-graphics/userland/userland/{0007-interface-remove-faulty-assert-to-make-weston-happy-.patch => 0005-interface-remove-faulty-assert-to-make-weston-happy-.patch} (86%)
 rename recipes-graphics/userland/userland/{0008-zero-out-wl-buffers-in-egl_surface_free.patch => 0006-zero-out-wl-buffers-in-egl_surface_free.patch} (87%)
 rename recipes-graphics/userland/userland/{0009-initialize-front-back-wayland-buffers.patch => 0007-initialize-front-back-wayland-buffers.patch} (88%)
 rename recipes-graphics/userland/userland/{0010-Remove-RPC_FLUSH.patch => 0008-Remove-RPC_FLUSH.patch} (87%)
 rename recipes-graphics/userland/userland/{0011-fix-cmake-dependency-race.patch => 0009-fix-cmake-dependency-race.patch} (95%)
 rename recipes-graphics/userland/userland/{0012-Fix-enum-conversion-warnings.patch => 0010-Fix-enum-conversion-warnings.patch} (97%)
 rename recipes-graphics/userland/userland/{0013-Fix-for-framerate-with-nested-composition.patch => 0011-Fix-for-framerate-with-nested-composition.patch} (94%)
 rename recipes-graphics/userland/userland/{0014-build-shared-library-for-vchostif.patch => 0012-build-shared-library-for-vchostif.patch} (84%)
 rename recipes-graphics/userland/userland/{0015-wl-dispmanx-buffer-wrapping.patch => 0013-implement-buffer-wrapping-interface-for-dispmanx.patch} (85%)

diff --git a/recipes-graphics/userland/userland/0003-Allow-applications-to-set-next-resource-handle.patch b/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
similarity index 98%
rename from recipes-graphics/userland/userland/0003-Allow-applications-to-set-next-resource-handle.patch
rename to recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
index 4a8b16d..4d026bd 100644
--- a/recipes-graphics/userland/userland/0003-Allow-applications-to-set-next-resource-handle.patch
+++ b/recipes-graphics/userland/userland/0001-Allow-applications-to-set-next-resource-handle.patch
@@ -1,7 +1,7 @@
-From 1d750c8922cbb4276e4337d2af2776676c0bd224 Mon Sep 17 00:00:00 2001
+From 83c5ac5892d0cd29caa8922ff8b639b9a373c3cb Mon Sep 17 00:00:00 2001
 From: Dom Cobley <dc4@broadcom.com>
 Date: Tue, 9 Jul 2013 09:26:26 -0400
-Subject: [PATCH 03/13] Allow applications to set next resource handle
+Subject: [PATCH 01/13] Allow applications to set next resource handle
 
 This patch adds provisions in userland to
 let apps callers set the next rendereing dispmanx resource.
@@ -204,5 +204,5 @@ index 8a5734c..51b3580 100644
  
  FN(void, eglIntGetColorData_impl, (EGL_SURFACE_ID_T s, KHRN_IMAGE_FORMAT_T format, uint32_t width, uint32_t height, int32_t stride, uint32_t y_offset, void *data))
 -- 
-2.7.4
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0002-cmake-generate-and-install-pkgconfig-files.patch b/recipes-graphics/userland/userland/0002-cmake-generate-and-install-pkgconfig-files.patch
deleted file mode 100644
index 50ebaa6..0000000
--- a/recipes-graphics/userland/userland/0002-cmake-generate-and-install-pkgconfig-files.patch
+++ /dev/null
@@ -1,114 +0,0 @@
-From 9abccc4553b29643eee3c5a7edad641bc83f58f4 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sun, 9 Aug 2015 23:59:32 -0700
-Subject: [PATCH 02/13] cmake: generate and install pkgconfig files
-
-many packages expect packageconfig support especially for detecting EGL
-libraries. This patch helps in compiling those packages on RPi
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- CMakeLists.txt           | 10 +++++++++-
- pkgconfig/bcm_host.pc.in | 10 ++++++++++
- pkgconfig/egl.pc.in      | 13 +++++++++++++
- pkgconfig/glesv2.pc.in   | 12 ++++++++++++
- pkgconfig/vg.pc.in       | 11 +++++++++++
- 5 files changed, 55 insertions(+), 1 deletion(-)
- create mode 100644 pkgconfig/bcm_host.pc.in
- create mode 100644 pkgconfig/egl.pc.in
- create mode 100644 pkgconfig/glesv2.pc.in
- create mode 100644 pkgconfig/vg.pc.in
-
-diff --git a/CMakeLists.txt b/CMakeLists.txt
-index aec0316..3113618 100644
---- a/CMakeLists.txt
-+++ b/CMakeLists.txt
-@@ -113,6 +113,14 @@ set(vmcs_host_apps_VERSION_MAJOR 1)
- set(vmcs_host_apps_VERSION_MINOR 0)
- 
- include_directories("${PROJECT_BINARY_DIR}")
--
-+include(FindPkgConfig QUIET)
-+if(PKG_CONFIG_FOUND)
-+	# Produce a pkg-config file
-+	foreach(PCFILE bcm_host.pc  egl.pc  glesv2.pc  vg.pc)
-+		configure_file("pkgconfig/${PCFILE}.in" "${PCFILE}" @ONLY)
-+		install(FILES       "${CMAKE_CURRENT_BINARY_DIR}/${PCFILE}"
-+			DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig")
-+	endforeach()
-+endif()
- # Remove cache entry, if one added by command line
- unset(KHRONOS_EGL_PLATFORM CACHE)
-diff --git a/pkgconfig/bcm_host.pc.in b/pkgconfig/bcm_host.pc.in
-new file mode 100644
-index 0000000..c7237c5
---- /dev/null
-+++ b/pkgconfig/bcm_host.pc.in
-@@ -0,0 +1,10 @@
-+prefix=@CMAKE_INSTALL_PREFIX@
-+exec_prefix=${prefix}
-+libdir=${exec_prefix}/lib
-+includedir=${prefix}/include
-+
-+Name: bcm_host
-+Description: Broadcom VideoCore host API library
-+Version: 1
-+Libs: -L${libdir} -lbcm_host -lvcos -lvchiq_arm -pthread
-+Cflags: -I${includedir} -I${includedir}/interface/vmcs_host/linux -I${includedir}/interface/vcos/pthreads -DUSE_VCHIQ_ARM
-diff --git a/pkgconfig/egl.pc.in b/pkgconfig/egl.pc.in
-new file mode 100644
-index 0000000..27a6236
---- /dev/null
-+++ b/pkgconfig/egl.pc.in
-@@ -0,0 +1,13 @@
-+prefix=@CMAKE_INSTALL_PREFIX@
-+exec_prefix=${prefix}
-+libdir=${exec_prefix}/lib
-+includedir=${prefix}/include
-+
-+Name: EGL
-+Description: Fake EGL package for RPi
-+Version: 10
-+Requires: bcm_host
-+Libs: -L${libdir} -lEGL -lGLESv2 -lbcm_host -lvchostif
-+Cflags: -I${includedir} -I${includedir}/interface/vmcs_host/linux \
-+        -I${includedir}/interface/vcos/pthreads
-+
-diff --git a/pkgconfig/glesv2.pc.in b/pkgconfig/glesv2.pc.in
-new file mode 100644
-index 0000000..5900225
---- /dev/null
-+++ b/pkgconfig/glesv2.pc.in
-@@ -0,0 +1,12 @@
-+prefix=@CMAKE_INSTALL_PREFIX@
-+exec_prefix=${prefix}
-+libdir=${exec_prefix}/lib
-+includedir=${prefix}/include
-+
-+Name: GLESv2
-+Description: Fake GL ES 2 package for RPi
-+Version: 10
-+Requires: bcm_host
-+Libs: -L${libdir} -lGLESv2
-+Cflags: -I${includedir}
-+
-diff --git a/pkgconfig/vg.pc.in b/pkgconfig/vg.pc.in
-new file mode 100644
-index 0000000..8c39c98
---- /dev/null
-+++ b/pkgconfig/vg.pc.in
-@@ -0,0 +1,11 @@
-+prefix=@CMAKE_INSTALL_PREFIX@
-+exec_prefix=${prefix}
-+libdir=${exec_prefix}/lib
-+includedir=${prefix}/include
-+
-+Name: OpenVG
-+Description: Fake OpenVG package for RPi
-+Version: 10
-+Requires: bcm_host
-+Libs: -L${libdir} -lOpenVG
-+Cflags: -I${includedir}
--- 
-2.7.4
-
diff --git a/recipes-graphics/userland/userland/0004-wayland-Add-support-for-the-Wayland-winsys.patch b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
similarity index 99%
rename from recipes-graphics/userland/userland/0004-wayland-Add-support-for-the-Wayland-winsys.patch
rename to recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
index 472afe0..aa09dda 100644
--- a/recipes-graphics/userland/userland/0004-wayland-Add-support-for-the-Wayland-winsys.patch
+++ b/recipes-graphics/userland/userland/0002-wayland-Add-support-for-the-Wayland-winsys.patch
@@ -1,7 +1,7 @@
-From b8acbcddeb6774bdfc2f7329775a19cd362f47ea Mon Sep 17 00:00:00 2001
+From 79ce2b4125359593f37c5b9744a37203e24249de Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
-Subject: [PATCH 04/13] wayland: Add support for the Wayland winsys
+Subject: [PATCH 02/13] wayland: Add support for the Wayland winsys
 
 * Adds EGL_WL_bind_wayland_display extension
 * Adds wayland-egl library
@@ -333,7 +333,7 @@ index 4f3ce49..84f6ec0 100644
  /* OpenGL ES 1.1 and 2.0 functions */
  
 diff --git a/interface/khronos/common/linux/khrn_client_platform_linux.c b/interface/khronos/common/linux/khrn_client_platform_linux.c
-index a060f26..13c8c25 100644
+index 9d43d15..00821d3 100644
 --- a/interface/khronos/common/linux/khrn_client_platform_linux.c
 +++ b/interface/khronos/common/linux/khrn_client_platform_linux.c
 @@ -37,6 +37,11 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
@@ -1595,7 +1595,7 @@ index 37fdae1..fe3619a 100755
  }
  #endif
 diff --git a/interface/vmcs_host/vc_vchi_dispmanx.c b/interface/vmcs_host/vc_vchi_dispmanx.c
-index 3c91e07..1d24b6e 100755
+index d188068..3e668f5 100755
 --- a/interface/vmcs_host/vc_vchi_dispmanx.c
 +++ b/interface/vmcs_host/vc_vchi_dispmanx.c
 @@ -1316,3 +1316,45 @@ static void *dispmanx_notify_func( void *arg ) {
@@ -1876,5 +1876,5 @@ index 0000000..ad90d30
 +    set(${_sources} ${${_sources}} PARENT_SCOPE)
 +endfunction()
 -- 
-2.7.4
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0005-wayland-Add-Wayland-example.patch b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
similarity index 99%
rename from recipes-graphics/userland/userland/0005-wayland-Add-Wayland-example.patch
rename to recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
index 20ca92f..11befc3 100644
--- a/recipes-graphics/userland/userland/0005-wayland-Add-Wayland-example.patch
+++ b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
@@ -1,7 +1,7 @@
-From 2d028f45ca223e30fb0947cb1dd7f0aee24b090a Mon Sep 17 00:00:00 2001
+From b6ee187184456d66095146e3dc06b6baa29c17d7 Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
-Subject: [PATCH 05/13] wayland: Add Wayland example
+Subject: [PATCH 03/13] wayland: Add Wayland example
 
 ---
  .../linux/apps/hello_pi/CMakeLists.txt             |   1 +
@@ -862,5 +862,5 @@ index fa4539e..37120ac 100755
 -
 +make -C hello_wayland
 -- 
-2.7.4
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0006-wayland-egl-Add-bcm_host-to-dependencies.patch b/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
similarity index 86%
rename from recipes-graphics/userland/userland/0006-wayland-egl-Add-bcm_host-to-dependencies.patch
rename to recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
index 0c09325..2a44e26 100644
--- a/recipes-graphics/userland/userland/0006-wayland-egl-Add-bcm_host-to-dependencies.patch
+++ b/recipes-graphics/userland/userland/0004-wayland-egl-Add-bcm_host-to-dependencies.patch
@@ -1,7 +1,7 @@
-From f292e22f1988a0ce2ea7226dc882235daea6071b Mon Sep 17 00:00:00 2001
+From e3df3fec01aefac3ec301f6f3d5ec3e91652b9c5 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Mon, 10 Aug 2015 02:38:27 -0700
-Subject: [PATCH 06/13] wayland-egl: Add bcm_host to dependencies
+Subject: [PATCH 04/13] wayland-egl: Add bcm_host to dependencies
 
 It uses headers like vcos_platform_types.h but does not
 depend on module which should add the required include paths
@@ -24,5 +24,5 @@ index 8bafc15..fd259c9 100644
  Libs: -L${libdir} -lwayland-egl
  Cflags: -I${includedir}
 -- 
-2.7.4
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0007-interface-remove-faulty-assert-to-make-weston-happy-.patch b/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
similarity index 86%
rename from recipes-graphics/userland/userland/0007-interface-remove-faulty-assert-to-make-weston-happy-.patch
rename to recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
index eb6c408..6f41932 100644
--- a/recipes-graphics/userland/userland/0007-interface-remove-faulty-assert-to-make-weston-happy-.patch
+++ b/recipes-graphics/userland/userland/0005-interface-remove-faulty-assert-to-make-weston-happy-.patch
@@ -1,7 +1,7 @@
-From 39de2c976a1a98cd6c8ee20154c63d302d9a0c54 Mon Sep 17 00:00:00 2001
+From 6c9d407c9ec0859380e7bcf35cf915cef4b3687b Mon Sep 17 00:00:00 2001
 From: "Yann E. MORIN" <yann.morin.1998@free.fr>
 Date: Sat, 24 Jan 2015 22:07:19 +0100
-Subject: [PATCH 07/13] interface: remove faulty assert() to make weston happy
+Subject: [PATCH 05/13] interface: remove faulty assert() to make weston happy
  at runtime
 
 This was removed after a discussion on IRC with the weston guys
@@ -13,7 +13,7 @@ Signed-off-by: "Yann E. MORIN" <yann.morin.1998@free.fr>
  1 file changed, 1 deletion(-)
 
 diff --git a/interface/vmcs_host/vc_vchi_dispmanx.c b/interface/vmcs_host/vc_vchi_dispmanx.c
-index 1d24b6e..e2e7ccc 100755
+index 3e668f5..8e065dc 100755
 --- a/interface/vmcs_host/vc_vchi_dispmanx.c
 +++ b/interface/vmcs_host/vc_vchi_dispmanx.c
 @@ -1304,7 +1304,6 @@ static void *dispmanx_notify_func( void *arg ) {
@@ -25,5 +25,5 @@ index 1d24b6e..e2e7ccc 100755
           }
        } else {
 -- 
-2.7.4
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0008-zero-out-wl-buffers-in-egl_surface_free.patch b/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
similarity index 87%
rename from recipes-graphics/userland/userland/0008-zero-out-wl-buffers-in-egl_surface_free.patch
rename to recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
index 66e91be..2d52266 100644
--- a/recipes-graphics/userland/userland/0008-zero-out-wl-buffers-in-egl_surface_free.patch
+++ b/recipes-graphics/userland/userland/0006-zero-out-wl-buffers-in-egl_surface_free.patch
@@ -1,7 +1,7 @@
-From 944e559da5c34db74321c811694132aeb30439b2 Mon Sep 17 00:00:00 2001
+From e3ffe9438fe8417586d0045d00eb1368ca3a71b6 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:10:47 -0800
-Subject: [PATCH 08/13] zero-out wl buffers in egl_surface_free
+Subject: [PATCH 06/13] zero-out wl buffers in egl_surface_free
 
 origins from buildroot
 
@@ -29,5 +29,5 @@ index 49cf7e5..512c83b 100644
  #endif
     }
 -- 
-2.7.4
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0009-initialize-front-back-wayland-buffers.patch b/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
similarity index 88%
rename from recipes-graphics/userland/userland/0009-initialize-front-back-wayland-buffers.patch
rename to recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
index fd600cb..f54f77d 100644
--- a/recipes-graphics/userland/userland/0009-initialize-front-back-wayland-buffers.patch
+++ b/recipes-graphics/userland/userland/0007-initialize-front-back-wayland-buffers.patch
@@ -1,7 +1,7 @@
-From bea88c648c775472cfc1d067e166e270ce610f3a Mon Sep 17 00:00:00 2001
+From ed31a6a206c9e205bd5316e95788e5d7bb837e38 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:11:41 -0800
-Subject: [PATCH 09/13] initialize front back wayland buffers
+Subject: [PATCH 07/13] initialize front back wayland buffers
 
 origins from metrological wayland support
 
@@ -30,5 +30,5 @@ index 512c83b..a429724 100644
     }
  #endif
 -- 
-2.7.4
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0010-Remove-RPC_FLUSH.patch b/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
similarity index 87%
rename from recipes-graphics/userland/userland/0010-Remove-RPC_FLUSH.patch
rename to recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
index 6d3febc..0206a08 100644
--- a/recipes-graphics/userland/userland/0010-Remove-RPC_FLUSH.patch
+++ b/recipes-graphics/userland/userland/0008-Remove-RPC_FLUSH.patch
@@ -1,7 +1,7 @@
-From f1cbd0eccc9e4677a2fd7714cffd88a5ecb24ed1 Mon Sep 17 00:00:00 2001
+From 6e173040a825185013ccbbb33113442207f10eeb Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:09:18 -0800
-Subject: [PATCH 10/13] Remove RPC_FLUSH
+Subject: [PATCH 08/13] Remove RPC_FLUSH
 
 Origins from buildroot
 
@@ -23,5 +23,5 @@ index f9b7287..b04ffef 100644
        }
  #endif
 -- 
-2.7.4
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0011-fix-cmake-dependency-race.patch b/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
similarity index 95%
rename from recipes-graphics/userland/userland/0011-fix-cmake-dependency-race.patch
rename to recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
index 94f8a7f..87cfce4 100644
--- a/recipes-graphics/userland/userland/0011-fix-cmake-dependency-race.patch
+++ b/recipes-graphics/userland/userland/0009-fix-cmake-dependency-race.patch
@@ -1,7 +1,7 @@
-From 66d6b4040b5fa9a135a91ca2d152c539cce56159 Mon Sep 17 00:00:00 2001
+From c4217231fd78daee83b0c0f312c1d392aa6e0f47 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 13:12:47 -0800
-Subject: [PATCH 11/13] fix cmake dependency race
+Subject: [PATCH 09/13] fix cmake dependency race
 
 Fixes errors like
 
@@ -74,5 +74,5 @@ index f0bae30..8c44c58 100644
  	struct wl_resource *resource;
  	struct wl_dispmanx *dispmanx;
 -- 
-2.7.4
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0012-Fix-enum-conversion-warnings.patch b/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
similarity index 97%
rename from recipes-graphics/userland/userland/0012-Fix-enum-conversion-warnings.patch
rename to recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
index cbf5f15..d4e8825 100644
--- a/recipes-graphics/userland/userland/0012-Fix-enum-conversion-warnings.patch
+++ b/recipes-graphics/userland/userland/0010-Fix-enum-conversion-warnings.patch
@@ -1,7 +1,7 @@
-From b2b1a4f7564a7ba50b705f850edffbf6f437a896 Mon Sep 17 00:00:00 2001
+From 377f6aada3b7569e3d662fc830e01b8c5ba8a15d Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Thu, 18 Feb 2016 09:04:46 +0000
-Subject: [PATCH 12/13] Fix enum conversion warnings
+Subject: [PATCH 10/13] Fix enum conversion warnings
 
 Signed-off-by: Khem Raj <raj.khem@gmail.com>
 ---
@@ -95,5 +95,5 @@ index f088296..83e3724 100644
        omx->pixel_y    = mmal->pixel_y;
        omx->layer      = mmal->layer;
 -- 
-2.7.4
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch b/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
similarity index 94%
rename from recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
rename to recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
index ff9ccce..5e97571 100644
--- a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
+++ b/recipes-graphics/userland/userland/0011-Fix-for-framerate-with-nested-composition.patch
@@ -1,7 +1,7 @@
-From f8779a124fc447b63c1ba1795330bdc2d765dc7a Mon Sep 17 00:00:00 2001
+From 6e634184ee4b3d2c98c3213a3931845ec3014754 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Tue, 29 Mar 2016 20:38:30 -0700
-Subject: [PATCH 13/13] Fix for framerate with nested composition
+Subject: [PATCH 11/13] Fix for framerate with nested composition
 
 frame rate appears irregular and lower than expected when using nested composition.
 
@@ -56,5 +56,5 @@ index 024f3ed..83970ec 100644
  #ifdef ANDROID
                 CLIENT_UNLOCK();
 -- 
-2.8.0
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch b/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
similarity index 84%
rename from recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
rename to recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
index ca7cb66..44815c5 100644
--- a/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
+++ b/recipes-graphics/userland/userland/0012-build-shared-library-for-vchostif.patch
@@ -1,7 +1,7 @@
-From 4e9aa3fffb458ca4fafd2241c18e9c8008b66ad8 Mon Sep 17 00:00:00 2001
+From 559209ce15027b3370466ccb56223a7a66d2a40c Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 2 Apr 2016 10:37:24 -0700
-Subject: [PATCH] build shared library for vchostif
+Subject: [PATCH 12/13] build shared library for vchostif
 
 Fixes #149
 
@@ -24,5 +24,5 @@ index 22949a8..f8c2f2f 100755
  #add_library(bufman            vc_vchi_bufman.c            )
  
 -- 
-2.8.0
+2.9.0
 
diff --git a/recipes-graphics/userland/userland/0015-wl-dispmanx-buffer-wrapping.patch b/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
similarity index 85%
rename from recipes-graphics/userland/userland/0015-wl-dispmanx-buffer-wrapping.patch
rename to recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
index 1a0faba..8f36048 100644
--- a/recipes-graphics/userland/userland/0015-wl-dispmanx-buffer-wrapping.patch
+++ b/recipes-graphics/userland/userland/0013-implement-buffer-wrapping-interface-for-dispmanx.patch
@@ -1,7 +1,16 @@
-implement buffer wrapping interface for dispmanx
+From 5b55a152651eece345d9ea1e0e40ecd9fc4ca2d5 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 2 Apr 2016 10:54:59 -0700
+Subject: [PATCH 13/13] implement buffer wrapping interface for dispmanx
 
 Courtesy: Zan Dobersek
 
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ interface/khronos/ext/egl_wayland.c | 42 +++++++++++++++++++++++++++++++++++++
+ interface/wayland/dispmanx.xml      | 10 +++++++++
+ 2 files changed, 52 insertions(+)
+
 diff --git a/interface/khronos/ext/egl_wayland.c b/interface/khronos/ext/egl_wayland.c
 index 5730743..9ef89cd 100644
 --- a/interface/khronos/ext/egl_wayland.c
@@ -78,3 +87,6 @@ index c18626d..11ed1ef 100644
    </interface>
  
  </protocol>
+-- 
+2.9.0
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 7acd8b8..6e73ca7 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,24 +16,23 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "17c28b9d1d234893b73adeb95efc4959b617fc85"
+SRCREV = "0147f98bdd4fdc822d25d8a70cf5adc5adb89096"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-    file://0002-cmake-generate-and-install-pkgconfig-files.patch \
-    file://0003-Allow-applications-to-set-next-resource-handle.patch \
-    file://0004-wayland-Add-support-for-the-Wayland-winsys.patch \
-    file://0005-wayland-Add-Wayland-example.patch \
-    file://0006-wayland-egl-Add-bcm_host-to-dependencies.patch \
-    file://0007-interface-remove-faulty-assert-to-make-weston-happy-.patch \
-    file://0008-zero-out-wl-buffers-in-egl_surface_free.patch \
-    file://0009-initialize-front-back-wayland-buffers.patch \
-    file://0010-Remove-RPC_FLUSH.patch \
-    file://0011-fix-cmake-dependency-race.patch \
-    file://0012-Fix-enum-conversion-warnings.patch \
-    file://0013-Fix-for-framerate-with-nested-composition.patch \
-    file://0014-build-shared-library-for-vchostif.patch \
-    file://0015-wl-dispmanx-buffer-wrapping.patch \
+    file://0001-Allow-applications-to-set-next-resource-handle.patch \
+    file://0002-wayland-Add-support-for-the-Wayland-winsys.patch \
+    file://0003-wayland-Add-Wayland-example.patch \
+    file://0004-wayland-egl-Add-bcm_host-to-dependencies.patch \
+    file://0005-interface-remove-faulty-assert-to-make-weston-happy-.patch \
+    file://0006-zero-out-wl-buffers-in-egl_surface_free.patch \
+    file://0007-initialize-front-back-wayland-buffers.patch \
+    file://0008-Remove-RPC_FLUSH.patch \
+    file://0009-fix-cmake-dependency-race.patch \
+    file://0010-Fix-enum-conversion-warnings.patch \
+    file://0011-Fix-for-framerate-with-nested-composition.patch \
+    file://0012-build-shared-library-for-vchostif.patch \
+    file://0013-implement-buffer-wrapping-interface-for-dispmanx.patch \
 "
 S = "${WORKDIR}/git"
 
-- 
2.9.0


