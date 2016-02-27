Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 790A5E00D26; Sat, 27 Feb 2016 07:27:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29B8DE00DE9
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:21 -0800 (PST)
Received: by mail-qg0-f53.google.com with SMTP id d32so30900322qgd.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=LzSufuNx/DArx8Luq7yZwfjDhxmwxUnm7TouIlApWfw=;
	b=N4PyN0ritKUlD+YY7ARCPfe3k6Yg1NW5y/SSrXYA4DZLArCHFX4jrO/vIjp0PN1eP6
	8Jk2Yw/BJQYnpo+hjwOTklrp3i007iwSDdVwK5iIDxrFrIHc2GADRqbTlhfHDFoctl1L
	JYvjcIW/0WR1LLyTy1rp25IrH1cSpCTqUGOtlVrc7j9zjiTW8RA0cI3o3tYYZFOOQZSQ
	P4imzlLq1n8roO52I4TeDs36iv95Hnnejy+L2y9iJ3HVak4m8yVFgusOALBhGpFWvhA/
	BYsdFQgY5Oh/4d6OvcApG29IZXTCVzWCoYDbVMmis+CJVlol3Y/jLaJaSGeMsXZ3ZLo2
	tVvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=LzSufuNx/DArx8Luq7yZwfjDhxmwxUnm7TouIlApWfw=;
	b=Jt6TTVr8QSyeXS0lITYp6i7Hkeoynhh7iLvIv8ranR4yMAnJNM3iwz7bobFPSoyv9a
	iZyyP5XDvgHysdTK4gfywOWcrqFd24hroHE4mZd3cP4PPCHJYz1n8bMz5D71KeGRQiDa
	q2W1GubV1AXld4yWlJd1usv1MkEnZ5sLp75u59F6nwkC4vuei+nLKZMYXBAYnFP7Z+u6
	tYPsQ/nM7g9L4cMW3ag3DSVgh8JUZ4GcQboga+nk48vQSSfd7FXHDVbouVTNj9/0k5t3
	+li+RP9gwtK256sUvtuBWbcv7fSpNj4cVxcYHRKum+rBjZOS0qkHVR8eriBlELNkvmqQ
	PvZQ==
X-Gm-Message-State: AD7BkJI49Ju79CaZtouSmHCb0BiF3ymmj8k1C/5EdOC0vSqNM69jXs/TX6lGY+Gvu5748g==
X-Received: by 10.140.97.227 with SMTP id m90mr8967181qge.60.1456586840516;
	Sat, 27 Feb 2016 07:27:20 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:20 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:27:00 +0000
Message-Id: <3ad1f7ba41ad1b29769fa91fe4e5b7953d9fe14e.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 21/23] userland: Upgrade to latest
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:32 -0000

Drop upstreamed patches

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...LINE_DECL-to-not-use-extern-inlines-in-de.patch |   6 +-
 .../userland/0002-musl-inspired-fixed.patch        |  29 ----
 ...h => 0002-set-VMCS_INSTALL_PREFIX-to-usr.patch} |   6 +-
 ...ake-generate-and-install-pkgconfig-files.patch} |   8 +-
 ...m_types-Dont-use-extern-inline-with-clan.patch} |   6 +-
 ...applications-to-set-next-resource-handle.patch} |   6 +-
 .../0005-user-vcsm-Fix-build-with-clang.patch      |  44 ------
 .../0006-Fix-enum-type-conversion-warnings.patch   | 166 ---------------------
 ...yland-Add-support-for-the-Wayland-winsys.patch} |  10 +-
 ...atch => 0007-wayland-Add-Wayland-example.patch} |   6 +-
 ...wayland-egl-Add-bcm_host-to-dependencies.patch} |   6 +-
 ...move-faulty-assert-to-make-weston-happy-.patch} |   6 +-
 ...-zero-out-wl-buffers-in-egl_surface_free.patch} |   6 +-
 ...11-initialize-front-back-wayland-buffers.patch} |   6 +-
 ...RPC_FLUSH.patch => 0012-Remove-RPC_FLUSH.patch} |   6 +-
 ....patch => 0013-fix-cmake-dependency-race.patch} |   6 +-
 .../0014-Fix-enum-conversion-warnings.patch        |  99 ++++++++++++
 .../userland/0016-define-PROJECT_APIVER.patch      |  33 ----
 recipes-graphics/userland/userland_git.bb          |  31 ++--
 19 files changed, 155 insertions(+), 331 deletions(-)
 delete mode 100644 recipes-graphics/userland/userland/0002-musl-inspired-fixed.patch
 rename recipes-graphics/userland/userland/{0003-set-VMCS_INSTALL_PREFIX-to-usr.patch => 0002-set-VMCS_INSTALL_PREFIX-to-usr.patch} (87%)
 rename recipes-graphics/userland/userland/{0004-cmake-generate-and-install-pkgconfig-files.patch => 0003-cmake-generate-and-install-pkgconfig-files.patch} (93%)
 rename recipes-graphics/userland/userland/{0007-vcos_platform_types-Dont-use-extern-inline-with-clan.patch => 0004-vcos_platform_types-Dont-use-extern-inline-with-clan.patch} (95%)
 rename recipes-graphics/userland/userland/{0008-Allow-applications-to-set-next-resource-handle.patch => 0005-Allow-applications-to-set-next-resource-handle.patch} (98%)
 delete mode 100644 recipes-graphics/userland/userland/0005-user-vcsm-Fix-build-with-clang.patch
 delete mode 100644 recipes-graphics/userland/userland/0006-Fix-enum-type-conversion-warnings.patch
 rename recipes-graphics/userland/userland/{0009-wayland-Add-support-for-the-Wayland-winsys.patch => 0006-wayland-Add-support-for-the-Wayland-winsys.patch} (99%)
 rename recipes-graphics/userland/userland/{0010-wayland-Add-Wayland-example.patch => 0007-wayland-Add-Wayland-example.patch} (99%)
 rename recipes-graphics/userland/userland/{0011-wayland-egl-Add-bcm_host-to-dependencies.patch => 0008-wayland-egl-Add-bcm_host-to-dependencies.patch} (86%)
 rename recipes-graphics/userland/userland/{0012-interface-remove-faulty-assert-to-make-weston-happy-.patch => 0009-interface-remove-faulty-assert-to-make-weston-happy-.patch} (88%)
 rename recipes-graphics/userland/userland/{0013-zero-out-wl-buffers-in-egl_surface_free.patch => 0010-zero-out-wl-buffers-in-egl_surface_free.patch} (87%)
 rename recipes-graphics/userland/userland/{0014-initialize-front-back-wayland-buffers.patch => 0011-initialize-front-back-wayland-buffers.patch} (88%)
 rename recipes-graphics/userland/userland/{0015-Remove-RPC_FLUSH.patch => 0012-Remove-RPC_FLUSH.patch} (87%)
 rename recipes-graphics/userland/userland/{0017-fix-cmake-dependency-race.patch => 0013-fix-cmake-dependency-race.patch} (95%)
 create mode 100644 recipes-graphics/userland/userland/0014-Fix-enum-conversion-warnings.patch
 delete mode 100644 recipes-graphics/userland/userland/0016-define-PROJECT_APIVER.patch

diff --git a/recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch b/recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch
index 4824d1a..ebeefd3 100644
--- a/recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch
+++ b/recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch
@@ -1,7 +1,7 @@
-From d0b146e6571585989e7149a512533fcd6532545a Mon Sep 17 00:00:00 2001
+From 58e03d60603baabf63137cdc81ed774cc94d26d6 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:00:25 -0800
-Subject: [PATCH 01/16] Fix VCOS_INLINE_DECL to not use extern inlines in
+Subject: [PATCH 01/13] Fix VCOS_INLINE_DECL to not use extern inlines in
  declarations
 
 Signed-off-by: Khem Raj <raj.khem@gmail.com>
@@ -41,5 +41,5 @@ index 6feb4d2..e64fd99 100644
  #endif
  
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0002-musl-inspired-fixed.patch b/recipes-graphics/userland/userland/0002-musl-inspired-fixed.patch
deleted file mode 100644
index bbb670d..0000000
--- a/recipes-graphics/userland/userland/0002-musl-inspired-fixed.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 9856330f54c181e388df6f261c705e01500cf0bb Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sat, 6 Feb 2016 11:03:10 -0800
-Subject: [PATCH 02/16] musl inspired fixed
-
-stderr and stdout are not FILE pointers as per standards
-define PAGE_MASK if its not defined already
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- host_applications/linux/libs/debug_sym/debug_sym.c | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/host_applications/linux/libs/debug_sym/debug_sym.c b/host_applications/linux/libs/debug_sym/debug_sym.c
-index 8886f99..c7ace37 100755
---- a/host_applications/linux/libs/debug_sym/debug_sym.c
-+++ b/host_applications/linux/libs/debug_sym/debug_sym.c
-@@ -67,6 +67,8 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
- # else
- #  define PAGE_SIZE   4096
- # endif
-+#endif
-+#ifndef PAGE_MASK
- #define PAGE_MASK   (~(PAGE_SIZE - 1))
- #endif
- 
--- 
-2.7.0
-
diff --git a/recipes-graphics/userland/userland/0003-set-VMCS_INSTALL_PREFIX-to-usr.patch b/recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch
similarity index 87%
rename from recipes-graphics/userland/userland/0003-set-VMCS_INSTALL_PREFIX-to-usr.patch
rename to recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch
index 2829196..857b6c5 100644
--- a/recipes-graphics/userland/userland/0003-set-VMCS_INSTALL_PREFIX-to-usr.patch
+++ b/recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch
@@ -1,7 +1,7 @@
-From 8792a3645822c3ee2cea74def2a48e3e7f247ee1 Mon Sep 17 00:00:00 2001
+From 8b114166f800df09e10de82b50e4856fe7104bbf Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sun, 9 Aug 2015 23:58:17 -0700
-Subject: [PATCH 03/16] set VMCS_INSTALL_PREFIX to /usr
+Subject: [PATCH 02/13] set VMCS_INSTALL_PREFIX to /usr
 
 in OE we dont use /opt/vc but standard prefix
 
@@ -24,5 +24,5 @@ index 0f8641b..e9d576d 100644
  
  SET(CMAKE_INSTALL_PREFIX "${VMCS_INSTALL_PREFIX}" CACHE INTERNAL "Prefix
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0004-cmake-generate-and-install-pkgconfig-files.patch b/recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch
similarity index 93%
rename from recipes-graphics/userland/userland/0004-cmake-generate-and-install-pkgconfig-files.patch
rename to recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch
index aa209b2..e229c8e 100644
--- a/recipes-graphics/userland/userland/0004-cmake-generate-and-install-pkgconfig-files.patch
+++ b/recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch
@@ -1,7 +1,7 @@
-From 59fd98d2ee9076c08d020167e5176e2e3e669917 Mon Sep 17 00:00:00 2001
+From 91c1eceb27ce3ff8d8943028968cd860683d7905 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sun, 9 Aug 2015 23:59:32 -0700
-Subject: [PATCH 04/17] cmake: generate and install pkgconfig files
+Subject: [PATCH 03/13] cmake: generate and install pkgconfig files
 
 many packages expect packageconfig support especially for detecting EGL
 libraries. This patch helps in compiling those packages on RPi
@@ -20,10 +20,10 @@ Signed-off-by: Khem Raj <raj.khem@gmail.com>
  create mode 100644 pkgconfig/vg.pc.in
 
 diff --git a/CMakeLists.txt b/CMakeLists.txt
-index d8f776c..f15dc2b 100644
+index fbb27f6..5e211b4 100644
 --- a/CMakeLists.txt
 +++ b/CMakeLists.txt
-@@ -105,6 +105,14 @@ set(vmcs_host_apps_VERSION_MAJOR 1)
+@@ -111,6 +111,14 @@ set(vmcs_host_apps_VERSION_MAJOR 1)
  set(vmcs_host_apps_VERSION_MINOR 0)
  
  include_directories("${PROJECT_BINARY_DIR}")
diff --git a/recipes-graphics/userland/userland/0007-vcos_platform_types-Dont-use-extern-inline-with-clan.patch b/recipes-graphics/userland/userland/0004-vcos_platform_types-Dont-use-extern-inline-with-clan.patch
similarity index 95%
rename from recipes-graphics/userland/userland/0007-vcos_platform_types-Dont-use-extern-inline-with-clan.patch
rename to recipes-graphics/userland/userland/0004-vcos_platform_types-Dont-use-extern-inline-with-clan.patch
index 53a2a26..4d508d2 100644
--- a/recipes-graphics/userland/userland/0007-vcos_platform_types-Dont-use-extern-inline-with-clan.patch
+++ b/recipes-graphics/userland/userland/0004-vcos_platform_types-Dont-use-extern-inline-with-clan.patch
@@ -1,7 +1,7 @@
-From e60f708bef880542fbe45df7dba982c886852dd4 Mon Sep 17 00:00:00 2001
+From 7c07db6c640ec4dfc6baec23f86c7b312028c9c6 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sun, 23 Aug 2015 13:41:33 -0700
-Subject: [PATCH 07/16] vcos_platform_types: Dont use extern inline with clang
+Subject: [PATCH 04/13] vcos_platform_types: Dont use extern inline with clang
 
 Its very gcc specific implementation here in this code, we cant use
 it with clang as such, so we will use static inline instead which is
@@ -80,5 +80,5 @@ index e64fd99..7d86742 100644
  # define VCOS_INLINE_IMPL static __inline__
  #else
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0008-Allow-applications-to-set-next-resource-handle.patch b/recipes-graphics/userland/userland/0005-Allow-applications-to-set-next-resource-handle.patch
similarity index 98%
rename from recipes-graphics/userland/userland/0008-Allow-applications-to-set-next-resource-handle.patch
rename to recipes-graphics/userland/userland/0005-Allow-applications-to-set-next-resource-handle.patch
index bf6511d..95154dc 100644
--- a/recipes-graphics/userland/userland/0008-Allow-applications-to-set-next-resource-handle.patch
+++ b/recipes-graphics/userland/userland/0005-Allow-applications-to-set-next-resource-handle.patch
@@ -1,7 +1,7 @@
-From b5295cb247dfb062843f4a4c9996186e865d0cc2 Mon Sep 17 00:00:00 2001
+From 1c2d411949890a42a99a51941ea4e5e0a3d27d3e Mon Sep 17 00:00:00 2001
 From: Dom Cobley <dc4@broadcom.com>
 Date: Tue, 9 Jul 2013 09:26:26 -0400
-Subject: [PATCH 08/16] Allow applications to set next resource handle
+Subject: [PATCH 05/13] Allow applications to set next resource handle
 
 This patch adds provisions in userland to
 let apps callers set the next rendereing dispmanx resource.
@@ -204,5 +204,5 @@ index 8a5734c..51b3580 100644
  
  FN(void, eglIntGetColorData_impl, (EGL_SURFACE_ID_T s, KHRN_IMAGE_FORMAT_T format, uint32_t width, uint32_t height, int32_t stride, uint32_t y_offset, void *data))
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0005-user-vcsm-Fix-build-with-clang.patch b/recipes-graphics/userland/userland/0005-user-vcsm-Fix-build-with-clang.patch
deleted file mode 100644
index dd07798..0000000
--- a/recipes-graphics/userland/userland/0005-user-vcsm-Fix-build-with-clang.patch
+++ /dev/null
@@ -1,44 +0,0 @@
-From 5cfb274f036726a85bb45fd82652d55f50208954 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sun, 23 Aug 2015 13:17:33 -0700
-Subject: [PATCH 05/16] user-vcsm: Fix build with clang
-
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/host_applications/linux/libs/sm/user-vcsm.c:316:36: error: implicit conversion from enumeration
-      type 'enum vmcs_sm_cache_e' to different enumeration type 'VCSM_CACHE_TYPE_T' [-Werror,-Wenum-conversion]
-   return vcsm_malloc_cache( size, VMCS_SM_CACHE_NONE, name );
-          ~~~~~~~~~~~~~~~~~        ^~~~~~~~~~~~~~~~~~
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/host_applications/linux/libs/sm/user-vcsm.c:339:22: error: equality comparison with extraneous
-      parentheses [-Werror,-Wparentheses-equality]
-   if ( (vcsm_handle == VCSM_INVALID_HANDLE) )
-         ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- host_applications/linux/libs/sm/user-vcsm.c | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/host_applications/linux/libs/sm/user-vcsm.c b/host_applications/linux/libs/sm/user-vcsm.c
-index 4e78dc4..5298f25 100644
---- a/host_applications/linux/libs/sm/user-vcsm.c
-+++ b/host_applications/linux/libs/sm/user-vcsm.c
-@@ -313,7 +313,7 @@ unsigned int vcsm_malloc_cache( unsigned int size, VCSM_CACHE_TYPE_T cache, char
- */
- unsigned int vcsm_malloc( unsigned int size, char *name )
- {
--   return vcsm_malloc_cache( size, VMCS_SM_CACHE_NONE, name );
-+   return vcsm_malloc_cache( size, (VCSM_CACHE_TYPE_T)VMCS_SM_CACHE_NONE, name );
- }
- 
- /* Shares an allocated block of memory.
-@@ -336,7 +336,7 @@ unsigned int vcsm_malloc_share( unsigned int handle )
-    void *usr_ptr = NULL;
-    int rc;
- 
--   if ( (vcsm_handle == VCSM_INVALID_HANDLE) )
-+   if ( vcsm_handle == VCSM_INVALID_HANDLE )
-    {
-       vcos_log_error( "[%s]: [%d]: NULL size or invalid device!",
-                       __func__,
--- 
-2.7.0
-
diff --git a/recipes-graphics/userland/userland/0006-Fix-enum-type-conversion-warnings.patch b/recipes-graphics/userland/userland/0006-Fix-enum-type-conversion-warnings.patch
deleted file mode 100644
index cabaf97..0000000
--- a/recipes-graphics/userland/userland/0006-Fix-enum-type-conversion-warnings.patch
+++ /dev/null
@@ -1,166 +0,0 @@
-From ecfa07e3b8019983f3c0f3317d27785666b35f04 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sun, 23 Aug 2015 10:43:37 -0700
-Subject: [PATCH 06/16] Fix enum type conversion warnings
-
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_video.c:59:30: error: implicit conversion from enumeration type 'OMX_DISPLAYTRANSFORMTYPE' (aka 'enum OMX_DISPLAYTRANSFORMTYPE') to different enumeration type 'MMAL_DISPLAYTRANSFORM_T' (aka 'enum MMAL_DISPLAYTRANSFORM_T') [-Werror,-Wenum-conversion]
-      mmal->transform = omx->transform;
-                      ~ ~~~~~^~~~~~~~~
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_video.c:63:25: error: implicit conversion from enumeration type 'OMX_DISPLAYMODETYPE' (aka 'enum OMX_DISPLAYMODETYPE') to different enumeration type 'MMAL_DISPLAYMODE_T' (aka 'enum MMAL_DISPLAYMODE_T') [-Werror,-Wenum-conversion]
-      mmal->mode = omx->mode;
-                 ~ ~~~~~^~~~
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_video.c:75:31: error: implicit conversion from enumeration type 'MMAL_DISPLAYTRANSFORM_T' (aka 'enum MMAL_DISPLAYTRANSFORM_T') to different enumeration type 'OMX_DISPLAYTRANSFORMTYPE' (aka 'enum OMX_DISPLAYTRANSFORMTYPE') [-Werror,-Wenum-conversion]
-      omx->transform  = mmal->transform;
-                      ~ ~~~~~~^~~~~~~~~
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_video.c:79:31: error: implicit conversion from enumeration type 'MMAL_DISPLAYMODE_T' (aka 'enum MMAL_DISPLAYMODE_T') to different enumeration type 'OMX_DISPLAYMODETYPE' (aka 'enum OMX_DISPLAYMODETYPE') [-Werror,-Wenum-conversion]
-      omx->mode       = mmal->mode;
-                      ~ ~~~~~~^~~~
-
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/vc/mmal_vc_client.c:102:13: error: implicit conversion from enumeration type
-      'VCOS_STATUS_T' to different enumeration type 'MMAL_STATUS_T' [-Werror,-Wenum-conversion]
-   status = vcos_semaphore_create(&waitpool->sem, VCOS_FUNCTION,
-          ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/vc/mmal_vc_client.c:110:16: error: implicit conversion from enumeration type
-      'VCOS_STATUS_T' to different enumeration type 'MMAL_STATUS_T' [-Werror,-Wenum-conversion]
-      status = vcos_semaphore_create(&waitpool->waiters[i].sem,
-             ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_core.c:284:17: error: implicit conversion from enumeration
-      type 'MMAL_STATUS_T' to different enumeration type 'OMX_ERRORTYPE' (aka 'enum OMX_ERRORTYPE') [-Werror,-Wenum-conversion]
-         return mmalomx_get_port_settings(port, param);
-         ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_core.c:478:17: error: implicit conversion from enumeration
-      type 'MMAL_STATUS_T' to different enumeration type 'OMX_ERRORTYPE' (aka 'enum OMX_ERRORTYPE') [-Werror,-Wenum-conversion]
-         return mmalomx_set_port_settings(port, param);
-         ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_parameters.c:173:14: error: implicit conversion from
-      enumeration type 'MMAL_STATUS_T' to different enumeration type 'OMX_ERRORTYPE' (aka 'enum OMX_ERRORTYPE') [-Werror,-Wenum-conversion]
-      return xlat->fn.custom(MMALOMX_PARAM_MAPPING_TO_OMX, xlat, mmal_header,
-      ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_parameters.c:557:17: error: implicit conversion from
-      enumeration type 'MMAL_STATUS_T' to different enumeration type 'OMX_ERRORTYPE' (aka 'enum OMX_ERRORTYPE') [-Werror,-Wenum-conversion]
-         return mmal_port_format_commit(port->mmal);
-         ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/raspberrypi2-angstrom-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_parameters.c:564:17: error: implicit conversion from
-      enumeration type 'MMAL_STATUS_T' to different enumeration type 'OMX_ERRORTYPE' (aka 'enum OMX_ERRORTYPE') [-Werror,-Wenum-conversion]
-         return mmal_port_format_commit(port->mmal);
-         ~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- interface/mmal/openmaxil/mmalomx_core.c              | 4 ++--
- interface/mmal/openmaxil/mmalomx_parameters.c        | 6 +++---
- interface/mmal/openmaxil/mmalomx_util_params_video.c | 8 ++++----
- interface/mmal/vc/mmal_vc_client.c                   | 4 ++--
- 4 files changed, 11 insertions(+), 11 deletions(-)
-
-diff --git a/interface/mmal/openmaxil/mmalomx_core.c b/interface/mmal/openmaxil/mmalomx_core.c
-index da66b0b..3a72a2e 100644
---- a/interface/mmal/openmaxil/mmalomx_core.c
-+++ b/interface/mmal/openmaxil/mmalomx_core.c
-@@ -281,7 +281,7 @@ static OMX_ERRORTYPE mmalomx_ComponentGetParameter(
-       {
-          OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
-          PARAM_GET_PORT(port, component, param->nPortIndex);
--         return mmalomx_get_port_settings(port, param);
-+         return (OMX_ERRORTYPE)mmalomx_get_port_settings(port, param);
-       }
-       return OMX_ErrorNone;
-       break;
-@@ -475,7 +475,7 @@ static OMX_ERRORTYPE mmalomx_ComponentSetParameter(
-       {
-          OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
-          PARAM_GET_PORT(port, component, param->nPortIndex);
--         return mmalomx_set_port_settings(port, param);
-+         return (OMX_ERRORTYPE)mmalomx_set_port_settings(port, param);
-       }
-       return OMX_ErrorNone;
-       break;
-diff --git a/interface/mmal/openmaxil/mmalomx_parameters.c b/interface/mmal/openmaxil/mmalomx_parameters.c
-index a91b68c..f0bd17f 100644
---- a/interface/mmal/openmaxil/mmalomx_parameters.c
-+++ b/interface/mmal/openmaxil/mmalomx_parameters.c
-@@ -170,7 +170,7 @@ static OMX_ERRORTYPE mmalomx_parameter_get_xlat(MMALOMX_COMPONENT_T *component,
- 
-    if (xlat->fn.custom)
-    {
--      return xlat->fn.custom(MMALOMX_PARAM_MAPPING_TO_OMX, xlat, mmal_header,
-+      return (OMX_ERRORTYPE)xlat->fn.custom(MMALOMX_PARAM_MAPPING_TO_OMX, xlat, mmal_header,
-          pParam, mmal_port);
-    }
- 
-@@ -554,14 +554,14 @@ OMX_ERRORTYPE mmalomx_parameter_set(MMALOMX_COMPONENT_T *component,
-          port->mmal->format->es->video.par.num = param->nX;
-          port->mmal->format->es->video.par.den = param->nY;
-          mmal_rational_simplify(&port->mmal->format->es->video.par);
--         return mmal_port_format_commit(port->mmal);
-+         return (OMX_ERRORTYPE)mmal_port_format_commit(port->mmal);
-       }
-    case OMX_IndexParamColorSpace:
-       {
-          OMX_PARAM_COLORSPACETYPE *param = (OMX_PARAM_COLORSPACETYPE *)pParam;
-          PARAM_GET_PORT(port, component, param->nPortIndex);
-          port->mmal->format->es->video.color_space = mmalil_omx_color_space_to_mmal(param->eColorSpace);
--         return mmal_port_format_commit(port->mmal);
-+         return (OMX_ERRORTYPE)mmal_port_format_commit(port->mmal);
-       }
-    case OMX_IndexParamBrcmVideoCroppingDisable:
-       {
-diff --git a/interface/mmal/openmaxil/mmalomx_util_params_video.c b/interface/mmal/openmaxil/mmalomx_util_params_video.c
-index f088296..83e3724 100644
---- a/interface/mmal/openmaxil/mmalomx_util_params_video.c
-+++ b/interface/mmal/openmaxil/mmalomx_util_params_video.c
-@@ -56,11 +56,11 @@ static MMAL_STATUS_T mmalomx_param_mapping_displayregion(MMALOMX_PARAM_MAPPING_D
-       mmal->set = omx->set;
-       mmal->display_num = omx->num;
-       mmal->fullscreen = omx->fullscreen;
--      mmal->transform = omx->transform;
-+      mmal->transform = (MMAL_DISPLAYTRANSFORM_T)omx->transform;
-       rect_to_mmal(&mmal->dest_rect, &omx->dest_rect);
-       rect_to_mmal(&mmal->src_rect, &omx->src_rect);
-       mmal->noaspect = omx->noaspect;
--      mmal->mode = omx->mode;
-+      mmal->mode = (MMAL_DISPLAYMODE_T)omx->mode;
-       mmal->pixel_x = omx->pixel_x;
-       mmal->pixel_y = omx->pixel_y;
-       mmal->layer = omx->layer;
-@@ -72,11 +72,11 @@ static MMAL_STATUS_T mmalomx_param_mapping_displayregion(MMALOMX_PARAM_MAPPING_D
-       omx->set        = mmal->set;
-       omx->num        = mmal->display_num;
-       omx->fullscreen = mmal->fullscreen;
--      omx->transform  = mmal->transform;
-+      omx->transform  = (OMX_DISPLAYTRANSFORMTYPE)mmal->transform;
-       rect_to_omx(&omx->dest_rect, &mmal->dest_rect);
-       rect_to_omx(&omx->src_rect, &mmal->src_rect);
-       omx->noaspect   = mmal->noaspect;
--      omx->mode       = mmal->mode;
-+      omx->mode       = (OMX_DISPLAYMODETYPE)mmal->mode;
-       omx->pixel_x    = mmal->pixel_x;
-       omx->pixel_y    = mmal->pixel_y;
-       omx->layer      = mmal->layer;
-diff --git a/interface/mmal/vc/mmal_vc_client.c b/interface/mmal/vc/mmal_vc_client.c
-index b60544b..bd27fc5 100644
---- a/interface/mmal/vc/mmal_vc_client.c
-+++ b/interface/mmal/vc/mmal_vc_client.c
-@@ -99,7 +99,7 @@ static MMAL_STATUS_T create_waitpool(MMAL_WAITPOOL_T *waitpool)
-    MMAL_STATUS_T status;
-    int i;
- 
--   status = vcos_semaphore_create(&waitpool->sem, VCOS_FUNCTION,
-+   status = (MMAL_STATUS_T)vcos_semaphore_create(&waitpool->sem, VCOS_FUNCTION,
-                                   MAX_WAITERS);
-    if (status != MMAL_SUCCESS)
-       return status;
-@@ -107,7 +107,7 @@ static MMAL_STATUS_T create_waitpool(MMAL_WAITPOOL_T *waitpool)
-    for (i=0; i<MAX_WAITERS; i++)
-    {
-       waitpool->waiters[i].inuse = 0;
--      status = vcos_semaphore_create(&waitpool->waiters[i].sem,
-+      status = (MMAL_STATUS_T)vcos_semaphore_create(&waitpool->waiters[i].sem,
-                                      "mmal waiter", 0);
-       if (status != MMAL_SUCCESS)
-          break;
--- 
-2.7.0
-
diff --git a/recipes-graphics/userland/userland/0009-wayland-Add-support-for-the-Wayland-winsys.patch b/recipes-graphics/userland/userland/0006-wayland-Add-support-for-the-Wayland-winsys.patch
similarity index 99%
rename from recipes-graphics/userland/userland/0009-wayland-Add-support-for-the-Wayland-winsys.patch
rename to recipes-graphics/userland/userland/0006-wayland-Add-support-for-the-Wayland-winsys.patch
index c6e175e..6426a5c 100644
--- a/recipes-graphics/userland/userland/0009-wayland-Add-support-for-the-Wayland-winsys.patch
+++ b/recipes-graphics/userland/userland/0006-wayland-Add-support-for-the-Wayland-winsys.patch
@@ -1,7 +1,7 @@
-From dba72dbc97a07509befc3072cc4dc5184913b5a7 Mon Sep 17 00:00:00 2001
+From 16edb74ea67abe95b1c1ff629aa65c969b871403 Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
-Subject: [PATCH 09/16] wayland: Add support for the Wayland winsys
+Subject: [PATCH 06/13] wayland: Add support for the Wayland winsys
 
 * Adds EGL_WL_bind_wayland_display extension
 * Adds wayland-egl library
@@ -67,10 +67,10 @@ index 8df9393..d0d1387 100644
 +
 +*~
 diff --git a/CMakeLists.txt b/CMakeLists.txt
-index f15dc2b..b240ef6 100644
+index 5e211b4..aa5e14f 100644
 --- a/CMakeLists.txt
 +++ b/CMakeLists.txt
-@@ -13,6 +13,17 @@ include(makefiles/cmake/global_settings.cmake)
+@@ -19,6 +19,17 @@ include(makefiles/cmake/global_settings.cmake)
  include(makefiles/cmake/arm-linux.cmake)
  include(makefiles/cmake/vmcs.cmake)
  
@@ -1876,5 +1876,5 @@ index 0000000..ad90d30
 +    set(${_sources} ${${_sources}} PARENT_SCOPE)
 +endfunction()
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0010-wayland-Add-Wayland-example.patch b/recipes-graphics/userland/userland/0007-wayland-Add-Wayland-example.patch
similarity index 99%
rename from recipes-graphics/userland/userland/0010-wayland-Add-Wayland-example.patch
rename to recipes-graphics/userland/userland/0007-wayland-Add-Wayland-example.patch
index f468ef3..8f4bd0b 100644
--- a/recipes-graphics/userland/userland/0010-wayland-Add-Wayland-example.patch
+++ b/recipes-graphics/userland/userland/0007-wayland-Add-Wayland-example.patch
@@ -1,7 +1,7 @@
-From b853c05f425775a65cfc5a2d64b3491ab3673e36 Mon Sep 17 00:00:00 2001
+From 48591add15951b0adb1da8b0bfad05c49d26a5e6 Mon Sep 17 00:00:00 2001
 From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
 Date: Tue, 1 Oct 2013 13:19:20 +0200
-Subject: [PATCH 10/16] wayland: Add Wayland example
+Subject: [PATCH 07/13] wayland: Add Wayland example
 
 ---
  .../linux/apps/hello_pi/CMakeLists.txt             |   1 +
@@ -862,5 +862,5 @@ index fa4539e..37120ac 100755
 -
 +make -C hello_wayland
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0011-wayland-egl-Add-bcm_host-to-dependencies.patch b/recipes-graphics/userland/userland/0008-wayland-egl-Add-bcm_host-to-dependencies.patch
similarity index 86%
rename from recipes-graphics/userland/userland/0011-wayland-egl-Add-bcm_host-to-dependencies.patch
rename to recipes-graphics/userland/userland/0008-wayland-egl-Add-bcm_host-to-dependencies.patch
index 386ddf3..f9631df 100644
--- a/recipes-graphics/userland/userland/0011-wayland-egl-Add-bcm_host-to-dependencies.patch
+++ b/recipes-graphics/userland/userland/0008-wayland-egl-Add-bcm_host-to-dependencies.patch
@@ -1,7 +1,7 @@
-From 071771f1c2eb73c1f9083abb3a9f3a7712e20cdf Mon Sep 17 00:00:00 2001
+From 4201f2777cfc816df415286bd137f140d856fc95 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Mon, 10 Aug 2015 02:38:27 -0700
-Subject: [PATCH 11/16] wayland-egl: Add bcm_host to dependencies
+Subject: [PATCH 08/13] wayland-egl: Add bcm_host to dependencies
 
 It uses headers like vcos_platform_types.h but does not
 depend on module which should add the required include paths
@@ -24,5 +24,5 @@ index 8bafc15..fd259c9 100644
  Libs: -L${libdir} -lwayland-egl
  Cflags: -I${includedir}
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0012-interface-remove-faulty-assert-to-make-weston-happy-.patch b/recipes-graphics/userland/userland/0009-interface-remove-faulty-assert-to-make-weston-happy-.patch
similarity index 88%
rename from recipes-graphics/userland/userland/0012-interface-remove-faulty-assert-to-make-weston-happy-.patch
rename to recipes-graphics/userland/userland/0009-interface-remove-faulty-assert-to-make-weston-happy-.patch
index 74374fc..58babb9 100644
--- a/recipes-graphics/userland/userland/0012-interface-remove-faulty-assert-to-make-weston-happy-.patch
+++ b/recipes-graphics/userland/userland/0009-interface-remove-faulty-assert-to-make-weston-happy-.patch
@@ -1,7 +1,7 @@
-From fb577f53f9a91745557194b0422504e2cc93a637 Mon Sep 17 00:00:00 2001
+From 54d2fdfd997a7f1f64575d6a4a03c74b89b2dbe0 Mon Sep 17 00:00:00 2001
 From: "Yann E. MORIN" <yann.morin.1998@free.fr>
 Date: Sat, 24 Jan 2015 22:07:19 +0100
-Subject: [PATCH 12/16] interface: remove faulty assert() to make weston happy
+Subject: [PATCH 09/13] interface: remove faulty assert() to make weston happy
  at runtime
 
 This was removed after a discussion on IRC with the weston guys
@@ -25,5 +25,5 @@ index 1d24b6e..e2e7ccc 100755
           }
        } else {
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0013-zero-out-wl-buffers-in-egl_surface_free.patch b/recipes-graphics/userland/userland/0010-zero-out-wl-buffers-in-egl_surface_free.patch
similarity index 87%
rename from recipes-graphics/userland/userland/0013-zero-out-wl-buffers-in-egl_surface_free.patch
rename to recipes-graphics/userland/userland/0010-zero-out-wl-buffers-in-egl_surface_free.patch
index af291dc..517b4ee 100644
--- a/recipes-graphics/userland/userland/0013-zero-out-wl-buffers-in-egl_surface_free.patch
+++ b/recipes-graphics/userland/userland/0010-zero-out-wl-buffers-in-egl_surface_free.patch
@@ -1,7 +1,7 @@
-From 2d91c1fded75b3207743e058b0d5ca9eb98dce58 Mon Sep 17 00:00:00 2001
+From bf3e7ded0ccb95ec0fed13483525a43175028485 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:10:47 -0800
-Subject: [PATCH 13/16] zero-out wl buffers in egl_surface_free
+Subject: [PATCH 10/13] zero-out wl buffers in egl_surface_free
 
 origins from buildroot
 
@@ -29,5 +29,5 @@ index 49cf7e5..512c83b 100644
  #endif
     }
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0014-initialize-front-back-wayland-buffers.patch b/recipes-graphics/userland/userland/0011-initialize-front-back-wayland-buffers.patch
similarity index 88%
rename from recipes-graphics/userland/userland/0014-initialize-front-back-wayland-buffers.patch
rename to recipes-graphics/userland/userland/0011-initialize-front-back-wayland-buffers.patch
index 26cae0a..1b39136 100644
--- a/recipes-graphics/userland/userland/0014-initialize-front-back-wayland-buffers.patch
+++ b/recipes-graphics/userland/userland/0011-initialize-front-back-wayland-buffers.patch
@@ -1,7 +1,7 @@
-From 2c1574b2e867bb5dad028784642a9ad88df6b16c Mon Sep 17 00:00:00 2001
+From fb4ec94e8c27fba57f04c28f9012ec67af505083 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:11:41 -0800
-Subject: [PATCH 14/16] initialize front back wayland buffers
+Subject: [PATCH 11/13] initialize front back wayland buffers
 
 origins from metrological wayland support
 
@@ -30,5 +30,5 @@ index 512c83b..a429724 100644
     }
  #endif
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0015-Remove-RPC_FLUSH.patch b/recipes-graphics/userland/userland/0012-Remove-RPC_FLUSH.patch
similarity index 87%
rename from recipes-graphics/userland/userland/0015-Remove-RPC_FLUSH.patch
rename to recipes-graphics/userland/userland/0012-Remove-RPC_FLUSH.patch
index d90cb09..5c9b49a 100644
--- a/recipes-graphics/userland/userland/0015-Remove-RPC_FLUSH.patch
+++ b/recipes-graphics/userland/userland/0012-Remove-RPC_FLUSH.patch
@@ -1,7 +1,7 @@
-From a09249699cab4ffe6304aaf7e5936019c97f5a26 Mon Sep 17 00:00:00 2001
+From fa2beec8f792af577053340da914ef38b51535cb Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 11:09:18 -0800
-Subject: [PATCH 15/16] Remove RPC_FLUSH
+Subject: [PATCH 12/13] Remove RPC_FLUSH
 
 Origins from buildroot
 
@@ -23,5 +23,5 @@ index f9b7287..b04ffef 100644
        }
  #endif
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0017-fix-cmake-dependency-race.patch b/recipes-graphics/userland/userland/0013-fix-cmake-dependency-race.patch
similarity index 95%
rename from recipes-graphics/userland/userland/0017-fix-cmake-dependency-race.patch
rename to recipes-graphics/userland/userland/0013-fix-cmake-dependency-race.patch
index face946..20c9e6d 100644
--- a/recipes-graphics/userland/userland/0017-fix-cmake-dependency-race.patch
+++ b/recipes-graphics/userland/userland/0013-fix-cmake-dependency-race.patch
@@ -1,7 +1,7 @@
-From e2df72943951feb2c2a0899d4a1a00d24d7a3ccc Mon Sep 17 00:00:00 2001
+From 723478a07b69966ee606ba2435be736a1666eb5c Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sat, 6 Feb 2016 13:12:47 -0800
-Subject: [PATCH 17/17] fix cmake dependency race
+Subject: [PATCH 13/13] fix cmake dependency race
 
 Fixes errors like
 
@@ -74,5 +74,5 @@ index f0bae30..8c44c58 100644
  	struct wl_resource *resource;
  	struct wl_dispmanx *dispmanx;
 -- 
-2.7.0
+2.7.1
 
diff --git a/recipes-graphics/userland/userland/0014-Fix-enum-conversion-warnings.patch b/recipes-graphics/userland/userland/0014-Fix-enum-conversion-warnings.patch
new file mode 100644
index 0000000..1a32c29
--- /dev/null
+++ b/recipes-graphics/userland/userland/0014-Fix-enum-conversion-warnings.patch
@@ -0,0 +1,99 @@
+From 7574595454ba749029e75176e85959631335f53b Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Thu, 18 Feb 2016 09:04:46 +0000
+Subject: [PATCH] Fix enum conversion warnings
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ interface/mmal/openmaxil/mmalomx_core.c              | 4 ++--
+ interface/mmal/openmaxil/mmalomx_parameters.c        | 6 +++---
+ interface/mmal/openmaxil/mmalomx_util_params_video.c | 8 ++++----
+ 3 files changed, 9 insertions(+), 9 deletions(-)
+
+diff --git a/interface/mmal/openmaxil/mmalomx_core.c b/interface/mmal/openmaxil/mmalomx_core.c
+index 9bc632b..20d4fc7 100644
+--- a/interface/mmal/openmaxil/mmalomx_core.c
++++ b/interface/mmal/openmaxil/mmalomx_core.c
+@@ -281,7 +281,7 @@ static OMX_ERRORTYPE mmalomx_ComponentGetParameter(
+       {
+          OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
+          PARAM_GET_PORT(port, component, param->nPortIndex);
+-         return mmalil_error_to_mmal(mmalomx_get_port_settings(port, param));
++         return mmalil_error_to_omx(mmalomx_get_port_settings(port, param));
+       }
+       return OMX_ErrorNone;
+       break;
+@@ -475,7 +475,7 @@ static OMX_ERRORTYPE mmalomx_ComponentSetParameter(
+       {
+          OMX_PARAM_PORTDEFINITIONTYPE *param = (OMX_PARAM_PORTDEFINITIONTYPE *)pParam;
+          PARAM_GET_PORT(port, component, param->nPortIndex);
+-         return mmalil_error_to_mmal(mmalomx_set_port_settings(port, param));
++         return mmalil_error_to_omx(mmalomx_set_port_settings(port, param));
+       }
+       return OMX_ErrorNone;
+       break;
+diff --git a/interface/mmal/openmaxil/mmalomx_parameters.c b/interface/mmal/openmaxil/mmalomx_parameters.c
+index a20a5bd..c4f97d4 100644
+--- a/interface/mmal/openmaxil/mmalomx_parameters.c
++++ b/interface/mmal/openmaxil/mmalomx_parameters.c
+@@ -170,7 +170,7 @@ static OMX_ERRORTYPE mmalomx_parameter_get_xlat(MMALOMX_COMPONENT_T *component,
+ 
+    if (xlat->fn.custom)
+    {
+-      return mmalil_error_to_mmal(xlat->fn.custom(MMALOMX_PARAM_MAPPING_TO_OMX, xlat, mmal_header,
++      return mmalil_error_to_omx(xlat->fn.custom(MMALOMX_PARAM_MAPPING_TO_OMX, xlat, mmal_header,
+          pParam, mmal_port));
+    }
+ 
+@@ -554,14 +554,14 @@ OMX_ERRORTYPE mmalomx_parameter_set(MMALOMX_COMPONENT_T *component,
+          port->mmal->format->es->video.par.num = param->nX;
+          port->mmal->format->es->video.par.den = param->nY;
+          mmal_rational_simplify(&port->mmal->format->es->video.par);
+-         return mmalil_error_to_mmal(mmal_port_format_commit(port->mmal));
++         return mmalil_error_to_omx(mmal_port_format_commit(port->mmal));
+       }
+    case OMX_IndexParamColorSpace:
+       {
+          OMX_PARAM_COLORSPACETYPE *param = (OMX_PARAM_COLORSPACETYPE *)pParam;
+          PARAM_GET_PORT(port, component, param->nPortIndex);
+          port->mmal->format->es->video.color_space = mmalil_omx_color_space_to_mmal(param->eColorSpace);
+-         return mmalil_error_to_mmal(mmal_port_format_commit(port->mmal));
++         return mmalil_error_to_omx(mmal_port_format_commit(port->mmal));
+       }
+    case OMX_IndexParamBrcmVideoCroppingDisable:
+       {
+diff --git a/interface/mmal/openmaxil/mmalomx_util_params_video.c b/interface/mmal/openmaxil/mmalomx_util_params_video.c
+index f088296..83e3724 100644
+--- a/interface/mmal/openmaxil/mmalomx_util_params_video.c
++++ b/interface/mmal/openmaxil/mmalomx_util_params_video.c
+@@ -56,11 +56,11 @@ static MMAL_STATUS_T mmalomx_param_mapping_displayregion(MMALOMX_PARAM_MAPPING_D
+       mmal->set = omx->set;
+       mmal->display_num = omx->num;
+       mmal->fullscreen = omx->fullscreen;
+-      mmal->transform = omx->transform;
++      mmal->transform = (MMAL_DISPLAYTRANSFORM_T)omx->transform;
+       rect_to_mmal(&mmal->dest_rect, &omx->dest_rect);
+       rect_to_mmal(&mmal->src_rect, &omx->src_rect);
+       mmal->noaspect = omx->noaspect;
+-      mmal->mode = omx->mode;
++      mmal->mode = (MMAL_DISPLAYMODE_T)omx->mode;
+       mmal->pixel_x = omx->pixel_x;
+       mmal->pixel_y = omx->pixel_y;
+       mmal->layer = omx->layer;
+@@ -72,11 +72,11 @@ static MMAL_STATUS_T mmalomx_param_mapping_displayregion(MMALOMX_PARAM_MAPPING_D
+       omx->set        = mmal->set;
+       omx->num        = mmal->display_num;
+       omx->fullscreen = mmal->fullscreen;
+-      omx->transform  = mmal->transform;
++      omx->transform  = (OMX_DISPLAYTRANSFORMTYPE)mmal->transform;
+       rect_to_omx(&omx->dest_rect, &mmal->dest_rect);
+       rect_to_omx(&omx->src_rect, &mmal->src_rect);
+       omx->noaspect   = mmal->noaspect;
+-      omx->mode       = mmal->mode;
++      omx->mode       = (OMX_DISPLAYMODETYPE)mmal->mode;
+       omx->pixel_x    = mmal->pixel_x;
+       omx->pixel_y    = mmal->pixel_y;
+       omx->layer      = mmal->layer;
+-- 
+1.9.1
+
diff --git a/recipes-graphics/userland/userland/0016-define-PROJECT_APIVER.patch b/recipes-graphics/userland/userland/0016-define-PROJECT_APIVER.patch
deleted file mode 100644
index 63a35eb..0000000
--- a/recipes-graphics/userland/userland/0016-define-PROJECT_APIVER.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 56072d7282e7daf65f58fa897f1f76268ae88121 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sat, 6 Feb 2016 11:06:26 -0800
-Subject: [PATCH 16/16] define PROJECT_APIVER
-
-this helps in compiling components which use packageconfig to poke for
-library versions and requiring minimum supported version
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- CMakeLists.txt | 6 ++++++
- 1 file changed, 6 insertions(+)
-
-diff --git a/CMakeLists.txt b/CMakeLists.txt
-index b240ef6..aa5e14f 100644
---- a/CMakeLists.txt
-+++ b/CMakeLists.txt
-@@ -2,6 +2,12 @@ cmake_minimum_required(VERSION 2.8)
- 
- project(vmcs_host_apps)
- 
-+SET(PROJECT_VER_MAJOR 1)
-+SET(PROJECT_VER_MINOR 0)
-+SET(PROJECT_VER_PATCH 0)
-+SET(PROJECT_VER "${PROJECT_VER_MAJOR}.${PROJECT_VER_MINOR}.${PROJECT_VER_PATCH}")
-+SET(PROJECT_APIVER "${PROJECT_VER}")
-+
- set(BUILD_MMAL TRUE)
- set(BUILD_MMAL_APPS TRUE)
- set(vmcs_root ${PROJECT_SOURCE_DIR})
--- 
-2.7.0
-
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index c59b5f3..4eb67fe 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,27 +16,24 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "2a4af2192c0e161555fdb2a12e902b587166c4a6"
+SRCREV = "748b2ba6112435063352d72f48d1d6dcc124bd6f"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
     file://0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch \
-    file://0002-musl-inspired-fixed.patch \
-    file://0003-set-VMCS_INSTALL_PREFIX-to-usr.patch \
-    file://0004-cmake-generate-and-install-pkgconfig-files.patch \
-    file://0005-user-vcsm-Fix-build-with-clang.patch \
-    file://0006-Fix-enum-type-conversion-warnings.patch \
-    file://0007-vcos_platform_types-Dont-use-extern-inline-with-clan.patch \
-    file://0008-Allow-applications-to-set-next-resource-handle.patch \
-    file://0009-wayland-Add-support-for-the-Wayland-winsys.patch \
-    file://0010-wayland-Add-Wayland-example.patch \
-    file://0011-wayland-egl-Add-bcm_host-to-dependencies.patch \
-    file://0012-interface-remove-faulty-assert-to-make-weston-happy-.patch \
-    file://0013-zero-out-wl-buffers-in-egl_surface_free.patch \
-    file://0014-initialize-front-back-wayland-buffers.patch \
-    file://0015-Remove-RPC_FLUSH.patch \
-    file://0016-define-PROJECT_APIVER.patch \
-    file://0017-fix-cmake-dependency-race.patch \
+    file://0002-set-VMCS_INSTALL_PREFIX-to-usr.patch \
+    file://0003-cmake-generate-and-install-pkgconfig-files.patch \
+    file://0004-vcos_platform_types-Dont-use-extern-inline-with-clan.patch \
+    file://0005-Allow-applications-to-set-next-resource-handle.patch \
+    file://0006-wayland-Add-support-for-the-Wayland-winsys.patch \
+    file://0007-wayland-Add-Wayland-example.patch \
+    file://0008-wayland-egl-Add-bcm_host-to-dependencies.patch \
+    file://0009-interface-remove-faulty-assert-to-make-weston-happy-.patch \
+    file://0010-zero-out-wl-buffers-in-egl_surface_free.patch \
+    file://0011-initialize-front-back-wayland-buffers.patch \
+    file://0012-Remove-RPC_FLUSH.patch \
+    file://0013-fix-cmake-dependency-race.patch \
+    file://0014-Fix-enum-conversion-warnings.patch \
 "
 S = "${WORKDIR}/git"
 
-- 
1.9.1


