Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0E32E00CAA; Sat, 27 Feb 2016 07:27:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FB3DE00CAA
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:10 -0800 (PST)
Received: by mail-qg0-f41.google.com with SMTP id y89so86673467qge.2
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=3gT6ZRxO/+rKGvjJ3+a1ro/QOjj8jTz7yB4cKn2Ma+c=;
	b=s3XXxxIuZ6mNnuhHB6RR/XipMRvcQQSSW35aYXVat7kjntOZbPhEC/jMTd+H/SIYbE
	eJ29HumJLUxTAn6fkhQX6A9j1Oq33yNMN11pvRN92S3fGvisjgDj+wnkT5sWrEdoF7P7
	VwMsRcTS7b2j932fMCsdlIJXj/UKhnUeUJckDGFEqGN9mEgDCIZcCxjyR0FMle1mfdgb
	YSev7jaqmfDlnHRAar6raTwPgSDzsTCPqKs9BDcCUsDWdkvGOhj8VN2qtfyqtBSUfwUx
	V1NESAHNww5DheoM6/f3XsPQXRJmnbn8w8eTQbITd2nZFgfbPoHanSLNuHE0JhlxJb4e
	tQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=3gT6ZRxO/+rKGvjJ3+a1ro/QOjj8jTz7yB4cKn2Ma+c=;
	b=jFMkEgm/aJzN9FR8ko2o7lV5ruOmiJ4AoXC38Ue8nLRVGRcK5EdmCYQnfXkgVzfbV7
	r36K1uWQOshSyYrP5dsxEd/107jF4zAlpihzn9dJBagtR+heN90TMXoJErVyLDLlquvn
	gxHX4E1W3SsDH7/YEq0cdjT6fjpFxby4h9zSvFuUF+xLVX/Cw4KvHKCV5D0MfT9q+cXB
	mcPIJ/KkajtYHKmXH/z/u6nFwW/4jIqbjiPgU1/ZXFwJLxT1VCk6iu7QEI5WKaA+Hisg
	AaMC2g2kTTGVsIRerH2exoSdTMQthO5/l4MjxWcBNreEF0ejc7StKcWyPAZpkeqsBS9W
	zDjA==
X-Gm-Message-State: AD7BkJIsjPmDkrGJE0F10aTchDK30e/+NcEWH6b08GBYA7E2K6CGPXjp0afaXP91T57RIA==
X-Received: by 10.140.249.6 with SMTP id u6mr9517970qhc.83.1456586829549;
	Sat, 27 Feb 2016 07:27:09 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:09 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:40 +0000
Message-Id: <8bd597bf17b7a457fba00ff80887b83302fa5c73.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 01/23] userland: Upgrade to latest git master
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:21 -0000

Drop upstreamed patches
0002-fix-musl-build.patch was partially upstreamed
git'ify the remaining patches

Change license field to BSD 3 clause, since thats what
the licence it with BCM and RPI Copyrights

Licence changed from Broadcom to Raspberry Pi Ltd

see commit 0863709b9fb90ee1204b7fe52f69535830d3c111
Author: popcornmix <popcornmix@gmail.com>
Date:   Mon Feb 1 21:07:02 2016 +0000

    Update copyright

diff --git a/LICENCE b/LICENCE
index 2582681..dea4c26 100644
--- a/LICENCE
+++ b/LICENCE
@@ -1,4 +1,5 @@
 Copyright (c) 2012, Broadcom Europe Ltd
+Copyright (c) 2015, Raspberry Pi (Trading) Ltd
 All rights reserved.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...LINE_DECL-to-not-use-extern-inlines-in-de.patch | 45 ++++++++++++++++++++++
 .../userland/0001-fix-gcc-5.x-inlines.patch        | 26 -------------
 .../userland/userland/0002-fix-musl-build.patch    | 22 -----------
 .../userland/0002-musl-inspired-fixed.patch        | 29 ++++++++++++++
 .../0003-fix-alloc-size-uninitialized.patch        | 13 -------
 ...h => 0003-set-VMCS_INSTALL_PREFIX-to-usr.patch} |  7 ++--
 ...ake-generate-and-install-pkgconfig-files.patch} | 20 +++++-----
 recipes-graphics/userland/userland_git.bb          | 15 ++++----
 8 files changed, 94 insertions(+), 83 deletions(-)
 create mode 100644 recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch
 delete mode 100644 recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
 delete mode 100644 recipes-graphics/userland/userland/0002-fix-musl-build.patch
 create mode 100644 recipes-graphics/userland/userland/0002-musl-inspired-fixed.patch
 delete mode 100644 recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
 rename recipes-graphics/userland/userland/{0002-set-VMCS_INSTALL_PREFIX-to-usr.patch => 0003-set-VMCS_INSTALL_PREFIX-to-usr.patch} (85%)
 rename recipes-graphics/userland/userland/{0003-cmake-generate-and-install-pkgconfig-files.patch => 0004-cmake-generate-and-install-pkgconfig-files.patch} (87%)

diff --git a/recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch b/recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch
new file mode 100644
index 0000000..4824d1a
--- /dev/null
+++ b/recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch
@@ -0,0 +1,45 @@
+From d0b146e6571585989e7149a512533fcd6532545a Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 6 Feb 2016 11:00:25 -0800
+Subject: [PATCH 01/16] Fix VCOS_INLINE_DECL to not use extern inlines in
+ declarations
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ interface/vcos/pthreads/vcos_platform_types.h | 2 +-
+ interface/vcos/vcos_types.h                   | 4 ++--
+ 2 files changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/interface/vcos/pthreads/vcos_platform_types.h b/interface/vcos/pthreads/vcos_platform_types.h
+index 17b422d..64fb381 100644
+--- a/interface/vcos/pthreads/vcos_platform_types.h
++++ b/interface/vcos/pthreads/vcos_platform_types.h
+@@ -61,7 +61,7 @@ vcos_pthreads_logging_assert(const char *file, const char *func, unsigned int li
+ #define VCOS_ASSERT_MSG(...) ((VCOS_ASSERT_LOGGING && !VCOS_ASSERT_LOGGING_DISABLE) ? vcos_pthreads_logging_assert(__FILE__, __func__, __LINE__, __VA_ARGS__) : (void)0)
+ 
+ #define VCOS_INLINE_BODIES
+-#define VCOS_INLINE_DECL extern __inline__
++#define VCOS_INLINE_DECL extern
+ #define VCOS_INLINE_IMPL static __inline__
+ 
+ #ifdef __cplusplus
+diff --git a/interface/vcos/vcos_types.h b/interface/vcos/vcos_types.h
+index 6feb4d2..e64fd99 100644
+--- a/interface/vcos/vcos_types.h
++++ b/interface/vcos/vcos_types.h
+@@ -121,10 +121,10 @@ typedef enum
+ #if defined(NDEBUG)
+ 
+ #ifdef __GNUC__
+-# define VCOS_INLINE_DECL extern __inline__
++# define VCOS_INLINE_DECL extern
+ # define VCOS_INLINE_IMPL static __inline__
+ #else
+-# define VCOS_INLINE_DECL static _VCOS_INLINE   /* declare a func */
++# define VCOS_INLINE_DECL extern
+ # define VCOS_INLINE_IMPL static _VCOS_INLINE   /* implement a func inline */
+ #endif
+ 
+-- 
+2.7.0
+
diff --git a/recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch b/recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
deleted file mode 100644
index 57f3518..0000000
--- a/recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
+++ /dev/null
@@ -1,26 +0,0 @@
---- userland-fb11b39d97371c076eef7c85bbcab5733883a41e.orig/interface/vcos/vcos_types.h
-+++ userland-fb11b39d97371c076eef7c85bbcab5733883a41e/interface/vcos/vcos_types.h
-@@ -121,10 +121,10 @@
- #if defined(NDEBUG)
- 
- #ifdef __GNUC__
--# define VCOS_INLINE_DECL extern __inline__
-+# define VCOS_INLINE_DECL extern
- # define VCOS_INLINE_IMPL static __inline__
- #else
--# define VCOS_INLINE_DECL static _VCOS_INLINE   /* declare a func */
-+# define VCOS_INLINE_DECL extern
- # define VCOS_INLINE_IMPL static _VCOS_INLINE   /* implement a func inline */
- #endif
- 
---- userland-fb11b39d97371c076eef7c85bbcab5733883a41e.orig/interface/vcos/pthreads/vcos_platform_types.h
-+++ userland-fb11b39d97371c076eef7c85bbcab5733883a41e/interface/vcos/pthreads/vcos_platform_types.h
-@@ -61,7 +61,7 @@
- #define VCOS_ASSERT_MSG(...) ((VCOS_ASSERT_LOGGING && !VCOS_ASSERT_LOGGING_DISABLE) ? vcos_pthreads_logging_assert(__FILE__, __func__, __LINE__, __VA_ARGS__) : (void)0)
- 
- #define VCOS_INLINE_BODIES
--#define VCOS_INLINE_DECL extern __inline__
-+#define VCOS_INLINE_DECL extern
- #define VCOS_INLINE_IMPL static __inline__
- 
- #ifdef __cplusplus
diff --git a/recipes-graphics/userland/userland/0002-fix-musl-build.patch b/recipes-graphics/userland/userland/0002-fix-musl-build.patch
deleted file mode 100644
index 2fb11e7..0000000
--- a/recipes-graphics/userland/userland/0002-fix-musl-build.patch
+++ /dev/null
@@ -1,22 +0,0 @@
---- userland-d4aa617de3b196399bb8e2ce32e181768cb52179.orig/host_applications/linux/apps/raspicam/RaspiVidYUV.c
-+++ userland-d4aa617de3b196399bb8e2ce32e181768cb52179/host_applications/linux/apps/raspicam/RaspiVidYUV.c
-@@ -106,8 +106,6 @@
- /// Run/record forever
- #define WAIT_METHOD_FOREVER        4
- 
--extern FILE *stderr, *stdout;
--
- int mmal_status_to_int(MMAL_STATUS_T status);
- static void signal_handler(int signal_number);
- 
---- userland-d4aa617de3b196399bb8e2ce32e181768cb52179.orig/host_applications/linux/libs/debug_sym/debug_sym.c
-+++ userland-d4aa617de3b196399bb8e2ce32e181768cb52179/host_applications/linux/libs/debug_sym/debug_sym.c
-@@ -67,6 +67,8 @@
- # else
- #  define PAGE_SIZE   4096
- # endif
-+#endif
-+#ifndef PAGE_MASK
- #define PAGE_MASK   (~(PAGE_SIZE - 1))
- #endif
- 
diff --git a/recipes-graphics/userland/userland/0002-musl-inspired-fixed.patch b/recipes-graphics/userland/userland/0002-musl-inspired-fixed.patch
new file mode 100644
index 0000000..bbb670d
--- /dev/null
+++ b/recipes-graphics/userland/userland/0002-musl-inspired-fixed.patch
@@ -0,0 +1,29 @@
+From 9856330f54c181e388df6f261c705e01500cf0bb Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 6 Feb 2016 11:03:10 -0800
+Subject: [PATCH 02/16] musl inspired fixed
+
+stderr and stdout are not FILE pointers as per standards
+define PAGE_MASK if its not defined already
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ host_applications/linux/libs/debug_sym/debug_sym.c | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/host_applications/linux/libs/debug_sym/debug_sym.c b/host_applications/linux/libs/debug_sym/debug_sym.c
+index 8886f99..c7ace37 100755
+--- a/host_applications/linux/libs/debug_sym/debug_sym.c
++++ b/host_applications/linux/libs/debug_sym/debug_sym.c
+@@ -67,6 +67,8 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ # else
+ #  define PAGE_SIZE   4096
+ # endif
++#endif
++#ifndef PAGE_MASK
+ #define PAGE_MASK   (~(PAGE_SIZE - 1))
+ #endif
+ 
+-- 
+2.7.0
+
diff --git a/recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch b/recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
deleted file mode 100644
index 7dd6436..0000000
--- a/recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
+++ /dev/null
@@ -1,13 +0,0 @@
-diff --git a/host_applications/linux/apps/smem/smem.c b/host_applications/linux/apps/smem/smem.c
-index f780b79..618580e 100644
---- a/host_applications/linux/apps/smem/smem.c
-+++ b/host_applications/linux/apps/smem/smem.c
-@@ -192,7 +192,7 @@ int main( int argc, char **argv )
-    int  opt;
-    int  opt_alloc = 0;
-    int  opt_status = 0;
--   uint32_t alloc_size;
-+   uint32_t alloc_size = 0;
-    int  opt_pid = -1;
-    VCSM_STATUS_T status_mode = VCSM_STATUS_NONE;
- 
diff --git a/recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch b/recipes-graphics/userland/userland/0003-set-VMCS_INSTALL_PREFIX-to-usr.patch
similarity index 85%
rename from recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch
rename to recipes-graphics/userland/userland/0003-set-VMCS_INSTALL_PREFIX-to-usr.patch
index 1c981af..2829196 100644
--- a/recipes-graphics/userland/userland/0002-set-VMCS_INSTALL_PREFIX-to-usr.patch
+++ b/recipes-graphics/userland/userland/0003-set-VMCS_INSTALL_PREFIX-to-usr.patch
@@ -1,13 +1,12 @@
-From 05554d8486050546efc3c0605015786c8b267d19 Mon Sep 17 00:00:00 2001
+From 8792a3645822c3ee2cea74def2a48e3e7f247ee1 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sun, 9 Aug 2015 23:58:17 -0700
-Subject: [PATCH 1/2] set VMCS_INSTALL_PREFIX to /usr
+Subject: [PATCH 03/16] set VMCS_INSTALL_PREFIX to /usr
 
 in OE we dont use /opt/vc but standard prefix
 
 Signed-off-by: Khem Raj <raj.khem@gmail.com>
 ---
-Upstream-Status: Submitted
  makefiles/cmake/vmcs.cmake | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
@@ -25,5 +24,5 @@ index 0f8641b..e9d576d 100644
  
  SET(CMAKE_INSTALL_PREFIX "${VMCS_INSTALL_PREFIX}" CACHE INTERNAL "Prefix
 -- 
-2.1.4
+2.7.0
 
diff --git a/recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch b/recipes-graphics/userland/userland/0004-cmake-generate-and-install-pkgconfig-files.patch
similarity index 87%
rename from recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch
rename to recipes-graphics/userland/userland/0004-cmake-generate-and-install-pkgconfig-files.patch
index c644d52..aa209b2 100644
--- a/recipes-graphics/userland/userland/0003-cmake-generate-and-install-pkgconfig-files.patch
+++ b/recipes-graphics/userland/userland/0004-cmake-generate-and-install-pkgconfig-files.patch
@@ -1,20 +1,19 @@
-From ef43e09c2d13b88c2e92cffc94b68003afcb1f13 Mon Sep 17 00:00:00 2001
+From 59fd98d2ee9076c08d020167e5176e2e3e669917 Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Sun, 9 Aug 2015 23:59:32 -0700
-Subject: [PATCH 2/2] cmake: generate and install pkgconfig files
+Subject: [PATCH 04/17] cmake: generate and install pkgconfig files
 
 many packages expect packageconfig support especially for detecting EGL
 libraries. This patch helps in compiling those packages on RPi
 
 Signed-off-by: Khem Raj <raj.khem@gmail.com>
 ---
-Upstream-Status: Submitted
  CMakeLists.txt           | 10 +++++++++-
  pkgconfig/bcm_host.pc.in | 10 ++++++++++
- pkgconfig/egl.pc.in      | 12 ++++++++++++
+ pkgconfig/egl.pc.in      | 13 +++++++++++++
  pkgconfig/glesv2.pc.in   | 12 ++++++++++++
  pkgconfig/vg.pc.in       | 11 +++++++++++
- 5 files changed, 54 insertions(+), 1 deletion(-)
+ 5 files changed, 55 insertions(+), 1 deletion(-)
  create mode 100644 pkgconfig/bcm_host.pc.in
  create mode 100644 pkgconfig/egl.pc.in
  create mode 100644 pkgconfig/glesv2.pc.in
@@ -58,10 +57,10 @@ index 0000000..c7237c5
 +Cflags: -I${includedir} -I${includedir}/interface/vmcs_host/linux -I${includedir}/interface/vcos/pthreads -DUSE_VCHIQ_ARM
 diff --git a/pkgconfig/egl.pc.in b/pkgconfig/egl.pc.in
 new file mode 100644
-index 0000000..4e3d6ac
+index 0000000..27a6236
 --- /dev/null
 +++ b/pkgconfig/egl.pc.in
-@@ -0,0 +1,12 @@
+@@ -0,0 +1,13 @@
 +prefix=@CMAKE_INSTALL_PREFIX@
 +exec_prefix=${prefix}
 +libdir=${exec_prefix}/lib
@@ -71,8 +70,9 @@ index 0000000..4e3d6ac
 +Description: Fake EGL package for RPi
 +Version: 10
 +Requires: bcm_host
-+Libs: -L${libdir} -lEGL
-+Cflags: -I${includedir}
++Libs: -L${libdir} -lEGL -lGLESv2 -lbcm_host -lvchostif
++Cflags: -I${includedir} -I${includedir}/interface/vmcs_host/linux \
++        -I${includedir}/interface/vcos/pthreads
 +
 diff --git a/pkgconfig/glesv2.pc.in b/pkgconfig/glesv2.pc.in
 new file mode 100644
@@ -110,5 +110,5 @@ index 0000000..8c39c98
 +Libs: -L${libdir} -lOpenVG
 +Cflags: -I${includedir}
 -- 
-2.1.4
+2.7.1
 
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 5bf4dda..4323228 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -2,8 +2,8 @@ DESCRIPTION = "This repository contains the source code for the ARM side \
 libraries used on Raspberry Pi. These typically are installed in /opt/vc/lib \
 and includes source for the ARM side code to interface to: EGL, mmal, GLESv2,\
 vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
-LICENSE = "Broadcom"
-LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENCE;md5=0448d6488ef8cc380632b1569ee6d196"
 
 PR = "r5"
 
@@ -14,15 +14,14 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "40e377862410371a9962db79b81fd4f0f266430a"
+SRCREV = "2a4af2192c0e161555fdb2a12e902b587166c4a6"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-    file://0001-fix-gcc-5.x-inlines.patch \
-    file://0002-fix-musl-build.patch \
-    file://0003-fix-alloc-size-uninitialized.patch \
-    file://0002-set-VMCS_INSTALL_PREFIX-to-usr.patch \
-    file://0003-cmake-generate-and-install-pkgconfig-files.patch \
+    file://0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch \
+    file://0002-musl-inspired-fixed.patch \
+    file://0003-set-VMCS_INSTALL_PREFIX-to-usr.patch \
+    file://0004-cmake-generate-and-install-pkgconfig-files.patch \
     "
 
 S = "${WORKDIR}/git"
-- 
1.9.1


