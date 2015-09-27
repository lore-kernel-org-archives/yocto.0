Return-Path: <toolmmy@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B581E00CA4; Sun, 27 Sep 2015 06:34:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (toolmmy[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BB35E006EA
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2015 06:34:19 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so72810231wic.1
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2015 06:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=8jWwNlskGZbxm1T2+6dISga14Lm5Fvgy686IdVO5yzc=;
	b=ENHlkWO2rbvsv1IqzblIm3iI22cMouNyEBqrNqjQJ+herPTr6BtNqv8AvTTfRqX25G
	dNT6HIliNQGmmPhMXnwhMaWs7/chJ5VF4+17WQv7uY/6AyW5J3li1k5QqvREA021Cw3l
	dtegJqCwNG7OGtsQE4nnlRZQ6RGtXpZ20L37PsWzInC4lJeipykYwN5fNmcixV94KdbZ
	AomAjloRrAV0tv5NSIWic5YFr8ZSPyT1VY3yoyFgxuTBcRb56LHqjvZAU+3/X2UQkNQA
	JpzlbrWb02A4R5B1GtsJIoLge1AMLoXH6N4HcddfwxXk7CTrFmWRIByvEH908eVkIjof
	QG0g==
X-Received: by 10.180.102.169 with SMTP id fp9mr14192965wib.29.1443360858405; 
	Sun, 27 Sep 2015 06:34:18 -0700 (PDT)
Received: from localhost.localdomain
	(HSI-KBW-095-208-204-029.hsi5.kabel-badenwuerttemberg.de.
	[95.208.204.29]) by smtp.googlemail.com with ESMTPSA id
	fs2sm13117603wib.12.2015.09.27.06.34.17 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 27 Sep 2015 06:34:17 -0700 (PDT)
From: Tom Doehring <toolmmy@googlemail.com>
To: yocto@yoctoproject.org
Date: Sun, 27 Sep 2015 15:34:14 +0200
Message-Id: <1443360854-14668-1-git-send-email-toolmmy@googlemail.com>
X-Mailer: git-send-email 1.9.1
X-Mailman-Approved-At: Mon, 28 Sep 2015 08:01:28 -0700
Subject: [meta-raspberrypi][PATCH] userland: Fix multiple inline issues while building with gcc 5.x
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
X-List-Received-Date: Sun, 27 Sep 2015 13:34:23 -0000

Building userland source with gcc 5.x causes multiple issues such as:

vcos_thread.h:186:15: warning: inline function 'vcos_thread_get_affinity' declared but never defined
|  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);

The following patches fixes these issues and allows building userland on the current
poky master branch.

Signed-off-by: Tom Doehring <toolmmy@googlemail.com>
---
 .../userland/0001-Use-newer-POSIX-macro.patch      | 35 ----------------------
 .../userland/0001-fix-gcc-5.x-inlines.patch        | 26 ++++++++++++++++
 .../userland/userland/0002-fix-musl-build.patch    | 22 ++++++++++++++
 .../0003-fix-alloc-size-uninitialized.patch        | 13 ++++++++
 recipes-graphics/userland/userland_git.bb          | 13 +++++---
 5 files changed, 70 insertions(+), 39 deletions(-)
 delete mode 100644 recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
 create mode 100644 recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
 create mode 100644 recipes-graphics/userland/userland/0002-fix-musl-build.patch
 create mode 100644 recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch

diff --git a/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch b/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
deleted file mode 100644
index 2a092c2..0000000
--- a/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 12f7718bb0e08e2c06825c7ab7541b3c5bfe74c1 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sun, 9 Aug 2015 08:55:05 -0700
-Subject: [PATCH] Use newer POSIX macro
-
-Define _POSIX_C_SOURCE such that it demands correct
-posix interfaces, netdb.h declares interfaces such as
-getaddrinfo if __USE_POSIX, i.e. POSIX.1:1990 or later.
-However, these interfaces were new in the 2001 edition of POSIX
-therefore ask for Extension from POSIX.1:2001 since we use addrinfo
-structure here.
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
-Upstream-Status: Submitted
-
- containers/CMakeLists.txt | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/containers/CMakeLists.txt b/containers/CMakeLists.txt
-index a29a885..5570038 100644
---- a/containers/CMakeLists.txt
-+++ b/containers/CMakeLists.txt
-@@ -13,7 +13,7 @@ add_definitions(-DDL_PATH_PREFIX="${VMCS_PLUGIN_DIR}/")
- 
- SET( GCC_COMPILER_FLAGS -Wall -g -O2 -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wcast-qual -Wwrite-strings -Wundef )
- SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wextra )#-Wno-missing-field-initializers )
--SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -std=c99 -D_POSIX_C_SOURCE=199309L )
-+SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -std=c99 -D_POSIX_C_SOURCE=200112L )
- SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wno-missing-field-initializers )
- SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wno-unused-value )
- 
--- 
-2.1.4
-
diff --git a/recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch b/recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
new file mode 100644
index 0000000..57f3518
--- /dev/null
+++ b/recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
@@ -0,0 +1,26 @@
+--- userland-fb11b39d97371c076eef7c85bbcab5733883a41e.orig/interface/vcos/vcos_types.h
++++ userland-fb11b39d97371c076eef7c85bbcab5733883a41e/interface/vcos/vcos_types.h
+@@ -121,10 +121,10 @@
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
+--- userland-fb11b39d97371c076eef7c85bbcab5733883a41e.orig/interface/vcos/pthreads/vcos_platform_types.h
++++ userland-fb11b39d97371c076eef7c85bbcab5733883a41e/interface/vcos/pthreads/vcos_platform_types.h
+@@ -61,7 +61,7 @@
+ #define VCOS_ASSERT_MSG(...) ((VCOS_ASSERT_LOGGING && !VCOS_ASSERT_LOGGING_DISABLE) ? vcos_pthreads_logging_assert(__FILE__, __func__, __LINE__, __VA_ARGS__) : (void)0)
+ 
+ #define VCOS_INLINE_BODIES
+-#define VCOS_INLINE_DECL extern __inline__
++#define VCOS_INLINE_DECL extern
+ #define VCOS_INLINE_IMPL static __inline__
+ 
+ #ifdef __cplusplus
diff --git a/recipes-graphics/userland/userland/0002-fix-musl-build.patch b/recipes-graphics/userland/userland/0002-fix-musl-build.patch
new file mode 100644
index 0000000..2fb11e7
--- /dev/null
+++ b/recipes-graphics/userland/userland/0002-fix-musl-build.patch
@@ -0,0 +1,22 @@
+--- userland-d4aa617de3b196399bb8e2ce32e181768cb52179.orig/host_applications/linux/apps/raspicam/RaspiVidYUV.c
++++ userland-d4aa617de3b196399bb8e2ce32e181768cb52179/host_applications/linux/apps/raspicam/RaspiVidYUV.c
+@@ -106,8 +106,6 @@
+ /// Run/record forever
+ #define WAIT_METHOD_FOREVER        4
+ 
+-extern FILE *stderr, *stdout;
+-
+ int mmal_status_to_int(MMAL_STATUS_T status);
+ static void signal_handler(int signal_number);
+ 
+--- userland-d4aa617de3b196399bb8e2ce32e181768cb52179.orig/host_applications/linux/libs/debug_sym/debug_sym.c
++++ userland-d4aa617de3b196399bb8e2ce32e181768cb52179/host_applications/linux/libs/debug_sym/debug_sym.c
+@@ -67,6 +67,8 @@
+ # else
+ #  define PAGE_SIZE   4096
+ # endif
++#endif
++#ifndef PAGE_MASK
+ #define PAGE_MASK   (~(PAGE_SIZE - 1))
+ #endif
+ 
diff --git a/recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch b/recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
new file mode 100644
index 0000000..7dd6436
--- /dev/null
+++ b/recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
@@ -0,0 +1,13 @@
+diff --git a/host_applications/linux/apps/smem/smem.c b/host_applications/linux/apps/smem/smem.c
+index f780b79..618580e 100644
+--- a/host_applications/linux/apps/smem/smem.c
++++ b/host_applications/linux/apps/smem/smem.c
+@@ -192,7 +192,7 @@ int main( int argc, char **argv )
+    int  opt;
+    int  opt_alloc = 0;
+    int  opt_status = 0;
+-   uint32_t alloc_size;
++   uint32_t alloc_size = 0;
+    int  opt_pid = -1;
+    VCSM_STATUS_T status_mode = VCSM_STATUS_NONE;
+ 
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 2b3286a..e431077 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -9,15 +9,20 @@ PR = "r5"
 
 PROVIDES = "virtual/libgles2 \
             virtual/egl"
+
 COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "c2f27fb8e581f8e5af83bf28422553ade8f7a7c8"
+SRCREV = "cc92dfd6c4e8e2d90c3903dccfe77f7274b8d1b7"
+
+SRC_URI = "\
+    git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
+    file://0001-fix-gcc-5.x-inlines.patch \
+    file://0002-fix-musl-build.patch \
+    file://0003-fix-alloc-size-uninitialized.patch \
+    "
 
-SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-           file://0001-Use-newer-POSIX-macro.patch \
-          "
 S = "${WORKDIR}/git"
 
 inherit cmake
-- 
1.9.1


