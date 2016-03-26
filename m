Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2430E00C38; Sat, 26 Mar 2016 09:59:53 -0700 (PDT)
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
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 034DCE008A7
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2016 09:59:48 -0700 (PDT)
Received: by mail-qg0-f42.google.com with SMTP id j35so80527945qge.0
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2016 09:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=S1FJ0XQhJHoMGtn/HPgsFxDhE/EZwqESVBNAPk6iz7U=;
	b=hIs1mVKQ/Td+eCnlnjRzX8BhHvQDYhyfLCJZpivWd6SjKcD0Uk9oQcpldRC8ZLRRmB
	I0SbDljFh9FhLY0AD2eek23E/cnR1s118DROhXPz34qpywOjCfNjqHr0OzWQl/h5EzUh
	IzatAXDid1QfdeNcodw+s09e4H/qJkNNHhr0VWTPk/5KHDDwLamBBL4WT2iSqbVYgcxo
	sx9nS5frFf5N+93ex2uddcbMDUQWRNzh/Hcn7gGDOoGI6RBqyDSzeJdNaEMsv5iktolC
	oXAkxasp3772JwH90TITe1AXrTJBB5KQfESVPNBluBluox9MwkrwFuCetHGqY0DmCx9P
	PVPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=S1FJ0XQhJHoMGtn/HPgsFxDhE/EZwqESVBNAPk6iz7U=;
	b=XC35xkDI2nTCkY2Bs7iHtB/l2nKsHeTdL3GFbRQsE03YNAQ21ad8X9uDOGoC6g5NMB
	Fzak9qqwbKIffxk8dBCnxqtv8SoHOzeZAGB17V/nDgjwzmBIt0ccGWI2XSsTiqdMsjN/
	sFI6Vy4/z6LCRBkzoAyBLQeH4D0KVdYPNgIBoaut4sIbslY9pFgEe7oaa/bN49y57syX
	t60deisbKkDQ25wnmFzb2tvdwqOOr/VnA4G9TlR0/lW8Z9iiuaYsKP2CiSU1SrIQCEv8
	HnuPL3i60Oci2hVmbZXfxUD78qJAVMGZPxrmD0WWfUbzwhdYN6LyNXHRYp8RZE2IWJZb
	uhxQ==
X-Gm-Message-State: AD7BkJI0206uDQwgLTMDKImK8B3YZtFrIPWHjlAXVq+1JhC4/17G7WJ/a7wgoSOai1okFw==
X-Received: by 10.140.234.11 with SMTP id f11mr26761090qhc.51.1459011588035;
	Sat, 26 Mar 2016 09:59:48 -0700 (PDT)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	o128sm7955368qhb.34.2016.03.26.09.59.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 26 Mar 2016 09:59:47 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 26 Mar 2016 16:59:36 +0000
Message-Id: <1459011577-14870-4-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
References: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 4/5] userland: Upgrade to latest
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
X-List-Received-Date: Sat, 26 Mar 2016 16:59:53 -0000

Regenerate patches on top of given SRCREV
Add return code errors fix to get it working
with clang

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...h => 0001-set-VMCS_INSTALL_PREFIX-to-usr.patch} |  6 +--
 ...ake-generate-and-install-pkgconfig-files.patch} | 10 ++---
 ...applications-to-set-next-resource-handle.patch} |  6 +--
 ...yland-Add-support-for-the-Wayland-winsys.patch} |  8 ++--
 ...atch => 0005-wayland-Add-Wayland-example.patch} |  6 +--
 ...wayland-egl-Add-bcm_host-to-dependencies.patch} |  6 +--
 ...move-faulty-assert-to-make-weston-happy-.patch} |  6 +--
 ...-zero-out-wl-buffers-in-egl_surface_free.patch} |  6 +--
 ...09-initialize-front-back-wayland-buffers.patch} |  6 +--
 ...RPC_FLUSH.patch => 0010-Remove-RPC_FLUSH.patch} |  6 +--
 ....patch => 0011-fix-cmake-dependency-race.patch} |  6 +--
 ...tch => 0012-Fix-enum-conversion-warnings.patch} |  6 +--
 ...Fix-for-framerate-with-nested-composition.patch | 27 ++++++++++++++
 ...014-Fix-errors-due-to-ignored-return-code.patch | 43 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          | 28 +++++++-------
 15 files changed, 124 insertions(+), 52 deletions(-)
 rename recipes-graphics/userland/userland/{0002-set-VMCS_INSTALL_PREFIX-to-usr.patch => 0001-set-VMCS_INSTALL_PREFIX-to-usr.patch} (87%)
 rename recipes-graphics/userland/userland/{0003-cmake-generate-and-install-pkgconfig-files.patch => 0002-cmake-generate-and-install-pkgconfig-files.patch} (93%)
 rename recipes-graphics/userland/userland/{0005-Allow-applications-to-set-next-resource-handle.patch => 0003-Allow-applications-to-set-next-resource-handle.patch} (98%)
 rename recipes-graphics/userland/userland/{0006-wayland-Add-support-for-the-Wayland-winsys.patch => 0004-wayland-Add-support-for-the-Wayland-winsys.patch} (99%)
 rename recipes-graphics/userland/userland/{0007-wayland-Add-Wayland-example.patch => 0005-wayland-Add-Wayland-example.patch} (99%)
 rename recipes-graphics/userland/userland/{0008-wayland-egl-Add-bcm_host-to-dependencies.patch => 0006-wayland-egl-Add-bcm_host-to-dependencies.patch} (86%)
 rename recipes-graphics/userland/userland/{0009-interface-remove-faulty-assert-to-make-weston-happy-.patch => 0007-interface-remove-faulty-assert-to-make-weston-happy-.patch} (88%)
 rename recipes-graphics/userland/userland/{0010-zero-out-wl-buffers-in-egl_surface_free.patch => 0008-zero-out-wl-buffers-in-egl_surface_free.patch} (87%)
 rename recipes-graphics/userland/userland/{0011-initialize-front-back-wayland-buffers.patch => 0009-initialize-front-back-wayland-buffers.patch} (88%)
 rename recipes-graphics/userland/userland/{0012-Remove-RPC_FLUSH.patch => 0010-Remove-RPC_FLUSH.patch} (87%)
 rename recipes-graphics/userland/userland/{0013-fix-cmake-dependency-race.patch => 0011-fix-cmake-dependency-race.patch} (95%)
 rename recipes-graphics/userland/userland/{0014-Fix-enum-conversion-warnings.patch => 0012-Fix-enum-conversion-warnings.patch} (97%)
 create mode 100644 recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
 create mode 100644 recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch

diff --git a/recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch b/recipes-graphics/userland/userland/0001-set-VMCS_INSTALL_PREFIX-to-usr.patch
similarity index 87%
rename from recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch
rename to recipes-graphics/userland/userland/0001-set-VMCS_INSTALL_PREFIX-to-usr.patch
index 857b6c5..5165288 100644
--- a/recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch
+++ b/recipes-graphics/userland/userland/0001-set-VMCS_INSTALL_PREFIX-to-usr.patch
@@ -1,7 +1,7 @@
-From 8b114166f800df09e10de82b50e4856fe7104bbf Mon Sep 17 00:00:00 2001
+From b653ef9e770bd9e4976c058405b94b75873d2508 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sun, 9 Aug 2015 23:58:17 -0700
-Subject: [PATCH 02/13] set VMCS_INSTALL_PREFIX to /usr
+Subject: [PATCH 01/13] set VMCS_INSTALL_PREFIX to /usr
 
 in OE we dont use /opt/vc but standard prefix
 
@@ -24,5 +24,5 @@ index 0f8641b..e9d576d 100644
  
  SET(CMAKE_INSTALL_PREFIX "${VMCS_INSTALL_PREFIX}" CACHE INTERNAL "Prefix
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch b/recipes-graphics/userland/userland/0002-cmake-generate-and-install-pkgconfig-files.patch
similarity index 93%
rename from recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch
rename to recipes-graphics/userland/userland/0002-cmake-generate-and-install-pkgconfig-files.patch
index e229c8e..50ebaa6 100644
--- a/recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch
+++ b/recipes-graphics/userland/userland/0002-cmake-generate-and-install-pkgconfig-files.patch
@@ -1,7 +1,7 @@
-From 91c1eceb27ce3ff8d8943028968cd860683d7905 Mon Sep 17 00:00:00 2001
+From 9abccc4553b29643eee3c5a7edad641bc83f58f4 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sun, 9 Aug 2015 23:59:32 -0700
-Subject: [PATCH 03/13] cmake: generate and install pkgconfig files
+Subject: [PATCH 02/13] cmake: generate and install pkgconfig files
 
 many packages expect packageconfig support especially for detecting EGL
 libraries. This patch helps in compiling those packages on RPi
@@ -20,10 +20,10 @@ Signed-off-by: Khem Raj <raj.khem@gmail.com>
  create mode 100644 pkgconfig/vg.pc.in
 
 diff --git a/CMakeLists.txt b/CMakeLists.txt
-index fbb27f6..5e211b4 100644
+index aec0316..3113618 100644
 --- a/CMakeLists.txt
 +++ b/CMakeLists.txt
-@@ -111,6 +111,14 @@ set(vmcs_host_apps_VERSION_MAJOR 1)
+@@ -113,6 +113,14 @@ set(vmcs_host_apps_VERSION_MAJOR 1)
  set(vmcs_host_apps_VERSION_MINOR 0)
  
  include_directories("${PROJECT_BINARY_DIR}")
@@ -110,5 +110,5 @@ index 0000000..8c39c98
 +Libs: -L${libdir} -lOpenVG
 +Cflags: -I${includedir}
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0005-Allow-applications-to-set-next-resource-handle.patch b/recipes-graphics/userland/userland/0003-Allow-applications-to-set-next-resource-handle.patch
similarity index 98%
rename from recipes-graphics/userland/userland/0005-Allow-applications-to-set-next-resource-handle.patch
rename to recipes-graphics/userland/userland/0003-Allow-applications-to-set-next-resource-handle.patch
index 95154dc..4a8b16d 100644
--- a/recipes-graphics/userland/userland/0005-Allow-applications-to-set-next-resource-handle.patch
+++ b/recipes-graphics/userland/userland/0003-Allow-applications-to-set-next-resource-handle.patch
@@ -1,7 +1,7 @@
-From 1c2d411949890a42a99a51941ea4e5e0a3d27d3e Mon Sep 17 00:00:00 2001
+From 1d750c8922cbb4276e4337d2af2776676c0bd224 Mon Sep 17 00:00:00 2001
 From: Dom Cobley <dc4@broadcom.com>
 Date: Tue, 9 Jul 2013 09:26:26 -0400
-Subject: [PATCH 05/13] Allow applications to set next resource handle
+Subject: [PATCH 03/13] Allow applications to set next resource handle
 
 This patch adds provisions in userland to
 let apps callers set the next rendereing dispmanx resource.
@@ -204,5 +204,5 @@ index 8a5734c..51b3580 100644
  
  FN(void, eglIntGetColorData_impl, (EGL_SURFACE_ID_T s, KHRN_IMAGE_FORMAT_T format, uint32_t width, uint32_t height, int32_t stride, uint32_t y_offset, void *data))
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0006-wayland-Add-support-for-the-Wayland-winsys.patch b/recipes-graphics/userland/userland/0004-wayland-Add-support-for-the-Wayland-winsys.patch
similarity index 99%
rename from recipes-graphics/userland/userland/0006-wayland-Add-support-for-the-Wayland-winsys.patch
rename to recipes-graphics/userland/userland/0004-wayland-Add-support-for-the-Wayland-winsys.patch
index 6426a5c..472afe0 100644
--- a/recipes-graphics/userland/userland/0006-wayland-Add-support-for-the-Wayland-winsys.patch
+++ b/recipes-graphics/userland/userland/0004-wayland-Add-support-for-the-Wayland-winsys.patch
@@ -1,7 +1,7 @@
-From 16edb74ea67abe95b1c1ff629aa65c969b871403 Mon Sep 17 00:00:00 2001
+From b8acbcddeb6774bdfc2f7329775a19cd362f47ea Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
-Subject: [PATCH 06/13] wayland: Add support for the Wayland winsys
+Subject: [PATCH 04/13] wayland: Add support for the Wayland winsys
 
 * Adds EGL_WL_bind_wayland_display extension
 * Adds wayland-egl library
@@ -67,7 +67,7 @@ index 8df9393..d0d1387 100644
 +
 +*~
 diff --git a/CMakeLists.txt b/CMakeLists.txt
-index 5e211b4..aa5e14f 100644
+index 3113618..56b7fb8 100644
 --- a/CMakeLists.txt
 +++ b/CMakeLists.txt
 @@ -19,6 +19,17 @@ include(makefiles/cmake/global_settings.cmake)
@@ -1876,5 +1876,5 @@ index 0000000..ad90d30
 +    set(${_sources} ${${_sources}} PARENT_SCOPE)
 +endfunction()
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0007-wayland-Add-Wayland-example.patch b/recipes-graphics/userland/userland/0005-wayland-Add-Wayland-example.patch
similarity index 99%
rename from recipes-graphics/userland/userland/0007-wayland-Add-Wayland-example.patch
rename to recipes-graphics/userland/userland/0005-wayland-Add-Wayland-example.patch
index 8f4bd0b..20ca92f 100644
--- a/recipes-graphics/userland/userland/0007-wayland-Add-Wayland-example.patch
+++ b/recipes-graphics/userland/userland/0005-wayland-Add-Wayland-example.patch
@@ -1,7 +1,7 @@
-From 48591add15951b0adb1da8b0bfad05c49d26a5e6 Mon Sep 17 00:00:00 2001
+From 2d028f45ca223e30fb0947cb1dd7f0aee24b090a Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
-Subject: [PATCH 07/13] wayland: Add Wayland example
+Subject: [PATCH 05/13] wayland: Add Wayland example
 
 ---
  .../linux/apps/hello_pi/CMakeLists.txt             |   1 +
@@ -862,5 +862,5 @@ index fa4539e..37120ac 100755
 -
 +make -C hello_wayland
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0008-wayland-egl-Add-bcm_host-to-dependencies.patch b/recipes-graphics/userland/userland/0006-wayland-egl-Add-bcm_host-to-dependencies.patch
similarity index 86%
rename from recipes-graphics/userland/userland/0008-wayland-egl-Add-bcm_host-to-dependencies.patch
rename to recipes-graphics/userland/userland/0006-wayland-egl-Add-bcm_host-to-dependencies.patch
index f9631df..0c09325 100644
--- a/recipes-graphics/userland/userland/0008-wayland-egl-Add-bcm_host-to-dependencies.patch
+++ b/recipes-graphics/userland/userland/0006-wayland-egl-Add-bcm_host-to-dependencies.patch
@@ -1,7 +1,7 @@
-From 4201f2777cfc816df415286bd137f140d856fc95 Mon Sep 17 00:00:00 2001
+From f292e22f1988a0ce2ea7226dc882235daea6071b Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Mon, 10 Aug 2015 02:38:27 -0700
-Subject: [PATCH 08/13] wayland-egl: Add bcm_host to dependencies
+Subject: [PATCH 06/13] wayland-egl: Add bcm_host to dependencies
 
 It uses headers like vcos_platform_types.h but does not
 depend on module which should add the required include paths
@@ -24,5 +24,5 @@ index 8bafc15..fd259c9 100644
  Libs: -L${libdir} -lwayland-egl
  Cflags: -I${includedir}
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0009-interface-remove-faulty-assert-to-make-weston-happy-.patch b/recipes-graphics/userland/userland/0007-interface-remove-faulty-assert-to-make-weston-happy-.patch
similarity index 88%
rename from recipes-graphics/userland/userland/0009-interface-remove-faulty-assert-to-make-weston-happy-.patch
rename to recipes-graphics/userland/userland/0007-interface-remove-faulty-assert-to-make-weston-happy-.patch
index 58babb9..eb6c408 100644
--- a/recipes-graphics/userland/userland/0009-interface-remove-faulty-assert-to-make-weston-happy-.patch
+++ b/recipes-graphics/userland/userland/0007-interface-remove-faulty-assert-to-make-weston-happy-.patch
@@ -1,7 +1,7 @@
-From 54d2fdfd997a7f1f64575d6a4a03c74b89b2dbe0 Mon Sep 17 00:00:00 2001
+From 39de2c976a1a98cd6c8ee20154c63d302d9a0c54 Mon Sep 17 00:00:00 2001
 From: "Yann E. MORIN" <yann.morin.1998@free.fr>
 Date: Sat, 24 Jan 2015 22:07:19 +0100
-Subject: [PATCH 09/13] interface: remove faulty assert() to make weston happy
+Subject: [PATCH 07/13] interface: remove faulty assert() to make weston happy
  at runtime
 
 This was removed after a discussion on IRC with the weston guys
@@ -25,5 +25,5 @@ index 1d24b6e..e2e7ccc 100755
           }
        } else {
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0010-zero-out-wl-buffers-in-egl_surface_free.patch b/recipes-graphics/userland/userland/0008-zero-out-wl-buffers-in-egl_surface_free.patch
similarity index 87%
rename from recipes-graphics/userland/userland/0010-zero-out-wl-buffers-in-egl_surface_free.patch
rename to recipes-graphics/userland/userland/0008-zero-out-wl-buffers-in-egl_surface_free.patch
index 517b4ee..66e91be 100644
--- a/recipes-graphics/userland/userland/0010-zero-out-wl-buffers-in-egl_surface_free.patch
+++ b/recipes-graphics/userland/userland/0008-zero-out-wl-buffers-in-egl_surface_free.patch
@@ -1,7 +1,7 @@
-From bf3e7ded0ccb95ec0fed13483525a43175028485 Mon Sep 17 00:00:00 2001
+From 944e559da5c34db74321c811694132aeb30439b2 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:10:47 -0800
-Subject: [PATCH 10/13] zero-out wl buffers in egl_surface_free
+Subject: [PATCH 08/13] zero-out wl buffers in egl_surface_free
 
 origins from buildroot
 
@@ -29,5 +29,5 @@ index 49cf7e5..512c83b 100644
  #endif
     }
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0011-initialize-front-back-wayland-buffers.patch b/recipes-graphics/userland/userland/0009-initialize-front-back-wayland-buffers.patch
similarity index 88%
rename from recipes-graphics/userland/userland/0011-initialize-front-back-wayland-buffers.patch
rename to recipes-graphics/userland/userland/0009-initialize-front-back-wayland-buffers.patch
index 1b39136..fd600cb 100644
--- a/recipes-graphics/userland/userland/0011-initialize-front-back-wayland-buffers.patch
+++ b/recipes-graphics/userland/userland/0009-initialize-front-back-wayland-buffers.patch
@@ -1,7 +1,7 @@
-From fb4ec94e8c27fba57f04c28f9012ec67af505083 Mon Sep 17 00:00:00 2001
+From bea88c648c775472cfc1d067e166e270ce610f3a Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:11:41 -0800
-Subject: [PATCH 11/13] initialize front back wayland buffers
+Subject: [PATCH 09/13] initialize front back wayland buffers
 
 origins from metrological wayland support
 
@@ -30,5 +30,5 @@ index 512c83b..a429724 100644
     }
  #endif
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0012-Remove-RPC_FLUSH.patch b/recipes-graphics/userland/userland/0010-Remove-RPC_FLUSH.patch
similarity index 87%
rename from recipes-graphics/userland/userland/0012-Remove-RPC_FLUSH.patch
rename to recipes-graphics/userland/userland/0010-Remove-RPC_FLUSH.patch
index 5c9b49a..6d3febc 100644
--- a/recipes-graphics/userland/userland/0012-Remove-RPC_FLUSH.patch
+++ b/recipes-graphics/userland/userland/0010-Remove-RPC_FLUSH.patch
@@ -1,7 +1,7 @@
-From fa2beec8f792af577053340da914ef38b51535cb Mon Sep 17 00:00:00 2001
+From f1cbd0eccc9e4677a2fd7714cffd88a5ecb24ed1 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:09:18 -0800
-Subject: [PATCH 12/13] Remove RPC_FLUSH
+Subject: [PATCH 10/13] Remove RPC_FLUSH
 
 Origins from buildroot
 
@@ -23,5 +23,5 @@ index f9b7287..b04ffef 100644
        }
  #endif
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0013-fix-cmake-dependency-race.patch b/recipes-graphics/userland/userland/0011-fix-cmake-dependency-race.patch
similarity index 95%
rename from recipes-graphics/userland/userland/0013-fix-cmake-dependency-race.patch
rename to recipes-graphics/userland/userland/0011-fix-cmake-dependency-race.patch
index 20c9e6d..94f8a7f 100644
--- a/recipes-graphics/userland/userland/0013-fix-cmake-dependency-race.patch
+++ b/recipes-graphics/userland/userland/0011-fix-cmake-dependency-race.patch
@@ -1,7 +1,7 @@
-From 723478a07b69966ee606ba2435be736a1666eb5c Mon Sep 17 00:00:00 2001
+From 66d6b4040b5fa9a135a91ca2d152c539cce56159 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 13:12:47 -0800
-Subject: [PATCH 13/13] fix cmake dependency race
+Subject: [PATCH 11/13] fix cmake dependency race
 
 Fixes errors like
 
@@ -74,5 +74,5 @@ index f0bae30..8c44c58 100644
  	struct wl_resource *resource;
  	struct wl_dispmanx *dispmanx;
 -- 
-2.7.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0014-Fix-enum-conversion-warnings.patch b/recipes-graphics/userland/userland/0012-Fix-enum-conversion-warnings.patch
similarity index 97%
rename from recipes-graphics/userland/userland/0014-Fix-enum-conversion-warnings.patch
rename to recipes-graphics/userland/userland/0012-Fix-enum-conversion-warnings.patch
index 1a32c29..cbf5f15 100644
--- a/recipes-graphics/userland/userland/0014-Fix-enum-conversion-warnings.patch
+++ b/recipes-graphics/userland/userland/0012-Fix-enum-conversion-warnings.patch
@@ -1,7 +1,7 @@
-From 7574595454ba749029e75176e85959631335f53b Mon Sep 17 00:00:00 2001
+From b2b1a4f7564a7ba50b705f850edffbf6f437a896 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Thu, 18 Feb 2016 09:04:46 +0000
-Subject: [PATCH] Fix enum conversion warnings
+Subject: [PATCH 12/13] Fix enum conversion warnings
 
 Signed-off-by: Khem Raj <raj.khem@gmail.com>
 ---
@@ -95,5 +95,5 @@ index f088296..83e3724 100644
        omx->pixel_y    = mmal->pixel_y;
        omx->layer      = mmal->layer;
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch b/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
new file mode 100644
index 0000000..6377e31
--- /dev/null
+++ b/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
@@ -0,0 +1,27 @@
+From 7f424ce48f6c14118aea2ab770b3bbf87e1f0393 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Thu, 24 Mar 2016 14:30:58 -0700
+Subject: [PATCH 13/13] Fix for framerate with nested composition
+
+frame rate appears irregular and lower than expected when using nested composition.
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ interface/khronos/egl/egl_client.c | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/interface/khronos/egl/egl_client.c b/interface/khronos/egl/egl_client.c
+index 024f3ed..95bb581 100644
+--- a/interface/khronos/egl/egl_client.c
++++ b/interface/khronos/egl/egl_client.c
+@@ -2360,6 +2360,7 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
+                   wl_surface_damage(wl_egl_window->wl_surface, 0, 0,
+                                     surface->width, surface->height);
+                   wl_surface_commit(wl_egl_window->wl_surface);
++                  wl_display_flush(wl_display);
+ 
+                   while(ret != -1 && surface->back_wl_buffer->in_use)
+                      ret = wl_display_dispatch_queue(wl_display, process->wl_queue);
+-- 
+2.7.4
+
diff --git a/recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch b/recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch
new file mode 100644
index 0000000..2d11e9b
--- /dev/null
+++ b/recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch
@@ -0,0 +1,43 @@
+From 8ac57765d8b971aaa5ee5c610d8df25fa2ea36da Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Thu, 24 Mar 2016 15:03:50 -0700
+Subject: [PATCH 14/14] Fix errors due to ignored return code
+
+Clang warns/errors about not checking the return
+values from chdir() and fread(), here we check
+for chdir return code and report back using error()
+API, and second fix to fread is to let compiler
+ignore the value via assigning it to an unused variable
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ host_applications/linux/apps/dtoverlay/dtoverlay_main.c | 6 ++++--
+ 1 file changed, 4 insertions(+), 2 deletions(-)
+
+diff --git a/host_applications/linux/apps/dtoverlay/dtoverlay_main.c b/host_applications/linux/apps/dtoverlay/dtoverlay_main.c
+index 4b33809..fa8324f 100755
+--- a/host_applications/linux/apps/dtoverlay/dtoverlay_main.c
++++ b/host_applications/linux/apps/dtoverlay/dtoverlay_main.c
+@@ -353,7 +353,8 @@ static int dtoverlay_remove(STATE_T *state, const char *overlay)
+     int rmpos;
+     int i;
+ 
+-    chdir(work_dir);
++    if (chdir(work_dir) != 0)
++	return error("chdir to %s failed", work_dir);
+ 
+     overlay_dir = sprintf_dup("%s/%s", dt_overlays_dir, overlay);
+     if (!dir_exists(overlay_dir))
+@@ -633,7 +634,8 @@ static int overlay_applied(const char *overlay_dir)
+     FILE *fp = fopen(status_path, "r");
+     if (fp)
+     {
+-	fread(status, sizeof(status), 1, fp);
++	int bytes __attribute__((unused));
++	bytes = fread(status, sizeof(status), 1, fp);
+ 	fclose(fp);
+     }
+     free_string(status_path);
+-- 
+2.7.4
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index accc707..0189a16 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,22 +16,24 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "748b2ba6112435063352d72f48d1d6dcc124bd6f"
+SRCREV = "2f56a2943a9eb8420df52ccf91f5a1c5a70e8713"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-    file://0002-set-VMCS_INSTALL_PREFIX-to-usr.patch \
-    file://0003-cmake-generate-and-install-pkgconfig-files.patch \
-    file://0005-Allow-applications-to-set-next-resource-handle.patch \
-    file://0006-wayland-Add-support-for-the-Wayland-winsys.patch \
-    file://0007-wayland-Add-Wayland-example.patch \
-    file://0008-wayland-egl-Add-bcm_host-to-dependencies.patch \
-    file://0009-interface-remove-faulty-assert-to-make-weston-happy-.patch \
-    file://0010-zero-out-wl-buffers-in-egl_surface_free.patch \
-    file://0011-initialize-front-back-wayland-buffers.patch \
-    file://0012-Remove-RPC_FLUSH.patch \
-    file://0013-fix-cmake-dependency-race.patch \
-    file://0014-Fix-enum-conversion-warnings.patch \
+    file://0001-set-VMCS_INSTALL_PREFIX-to-usr.patch \
+    file://0002-cmake-generate-and-install-pkgconfig-files.patch \
+    file://0003-Allow-applications-to-set-next-resource-handle.patch \
+    file://0004-wayland-Add-support-for-the-Wayland-winsys.patch \
+    file://0005-wayland-Add-Wayland-example.patch \
+    file://0006-wayland-egl-Add-bcm_host-to-dependencies.patch \
+    file://0007-interface-remove-faulty-assert-to-make-weston-happy-.patch \
+    file://0008-zero-out-wl-buffers-in-egl_surface_free.patch \
+    file://0009-initialize-front-back-wayland-buffers.patch \
+    file://0010-Remove-RPC_FLUSH.patch \
+    file://0011-fix-cmake-dependency-race.patch \
+    file://0012-Fix-enum-conversion-warnings.patch \
+    file://0013-Fix-for-framerate-with-nested-composition.patch \
+    file://0014-Fix-errors-due-to-ignored-return-code.patch \
 "
 S = "${WORKDIR}/git"
 
-- 
1.9.1


