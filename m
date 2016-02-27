Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E5A5E00E05; Sat, 27 Feb 2016 07:27:31 -0800 (PST)
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
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB323E00DF5
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:22 -0800 (PST)
Received: by mail-qk0-f169.google.com with SMTP id s5so42378484qkd.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=xq6Yq3w4ZWwAkjHdz6Adp4RaEFbE6Mz61fTP+vZ/wbY=;
	b=apF5boqSNx8JNjkvbKGkMy54TB64atKRZs9gdy4rC9TcK5L1tDGl0BIVOdR2pFLq70
	V/b2EoF52ctf55QGvO9QOrwpnP/HRnbFZ7jgBuIhi9wVtwUnxcdPmSHixvssq5dN+xlU
	Agr0DG/2+YefvtPxXvYYviDuOs+NOYXXoHw4ehVvoWMNawqr5PawnE57/yVnu/Xzps0G
	kLR4cn0F8cAuBO4uyEHhiFx5cgx9Aa62VyKj1+oqp2Af6rBcGMArQkpmv4lALZ6d18+j
	LRcc/S7qgfXQsiC7PcT9TaSPTh1rJRn/1+wy3lgVl5vpXvdcUp2/OqsTNzQGxj8fUoTg
	+Uzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=xq6Yq3w4ZWwAkjHdz6Adp4RaEFbE6Mz61fTP+vZ/wbY=;
	b=VJMreGHWTaH1pVkPgjKgC29XDdJVmugdmawjihYXmU4SB4XAo4Lxr3o0zsHcgrtFqk
	CbMy6IA2g3AqC2zaqkPmWU0jISeCOLVJijZ2kGGJ7t3MQWBZj8OxGc06hCIuC4cv5hws
	mLmPVNxmHo29Yp1zxFcckRPNcGK2LSqrh5JGVPPxMLHFJqZkrdFBCmwwwfijVQnpP4L0
	mzRKnTqdSQnGU4SJOdXc6X4Urr9cgqxmRQuwCQ5gHbvpzSliGPitAW5u/kPt2BKi+3Ea
	Oy6VaRKD/NPhAq3eo5GFN409WPUT2jgRhSLWyCYwljZ+RuYmMjn18Ueh59NlO6TGXPkG
	K5zA==
X-Gm-Message-State: AD7BkJKJn6s0VoFe4gx68/Av6OTKIH0FIDavyCWOoXH99qRyH87aCRqW7TMrXec2Bv8GZg==
X-Received: by 10.55.197.207 with SMTP id k76mr9141954qkl.15.1456586841488;
	Sat, 27 Feb 2016 07:27:21 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:21 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:27:02 +0000
Message-Id: <1e09fc0f6f5dab169d4cbff6663cb224843a795b.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 23/23] userland: Drop extern inline patches
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:31 -0000

Not needed since the issues have been fixed differently upstream

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...LINE_DECL-to-not-use-extern-inlines-in-de.patch | 45 ------------
 ...rm_types-Dont-use-extern-inline-with-clan.patch | 84 ----------------------
 recipes-graphics/userland/userland_git.bb          |  2 -
 3 files changed, 131 deletions(-)
 delete mode 100644 recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch
 delete mode 100644 recipes-graphics/userland/userland/0004-vcos_platform_types-Dont-use-extern-inline-with-clan.patch

diff --git a/recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch b/recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch
deleted file mode 100644
index ebeefd3..0000000
--- a/recipes-graphics/userland/userland/0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch
+++ /dev/null
@@ -1,45 +0,0 @@
-From 58e03d60603baabf63137cdc81ed774cc94d26d6 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sat, 6 Feb 2016 11:00:25 -0800
-Subject: [PATCH 01/13] Fix VCOS_INLINE_DECL to not use extern inlines in
- declarations
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- interface/vcos/pthreads/vcos_platform_types.h | 2 +-
- interface/vcos/vcos_types.h                   | 4 ++--
- 2 files changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/interface/vcos/pthreads/vcos_platform_types.h b/interface/vcos/pthreads/vcos_platform_types.h
-index 17b422d..64fb381 100644
---- a/interface/vcos/pthreads/vcos_platform_types.h
-+++ b/interface/vcos/pthreads/vcos_platform_types.h
-@@ -61,7 +61,7 @@ vcos_pthreads_logging_assert(const char *file, const char *func, unsigned int li
- #define VCOS_ASSERT_MSG(...) ((VCOS_ASSERT_LOGGING && !VCOS_ASSERT_LOGGING_DISABLE) ? vcos_pthreads_logging_assert(__FILE__, __func__, __LINE__, __VA_ARGS__) : (void)0)
- 
- #define VCOS_INLINE_BODIES
--#define VCOS_INLINE_DECL extern __inline__
-+#define VCOS_INLINE_DECL extern
- #define VCOS_INLINE_IMPL static __inline__
- 
- #ifdef __cplusplus
-diff --git a/interface/vcos/vcos_types.h b/interface/vcos/vcos_types.h
-index 6feb4d2..e64fd99 100644
---- a/interface/vcos/vcos_types.h
-+++ b/interface/vcos/vcos_types.h
-@@ -121,10 +121,10 @@ typedef enum
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
--- 
-2.7.1
-
diff --git a/recipes-graphics/userland/userland/0004-vcos_platform_types-Dont-use-extern-inline-with-clan.patch b/recipes-graphics/userland/userland/0004-vcos_platform_types-Dont-use-extern-inline-with-clan.patch
deleted file mode 100644
index 4d508d2..0000000
--- a/recipes-graphics/userland/userland/0004-vcos_platform_types-Dont-use-extern-inline-with-clan.patch
+++ /dev/null
@@ -1,84 +0,0 @@
-From 7c07db6c640ec4dfc6baec23f86c7b312028c9c6 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sun, 23 Aug 2015 13:41:33 -0700
-Subject: [PATCH 04/13] vcos_platform_types: Dont use extern inline with clang
-
-Its very gcc specific implementation here in this code, we cant use
-it with clang as such, so we will use static inline instead which is
-common across gcc and clang starting c99 std onwards
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- interface/vcos/pthreads/vcos_platform_types.h | 4 ----
- interface/vcos/vcos_timer.h                   | 5 -----
- interface/vcos/vcos_types.h                   | 2 +-
- 3 files changed, 1 insertion(+), 10 deletions(-)
-
-diff --git a/interface/vcos/pthreads/vcos_platform_types.h b/interface/vcos/pthreads/vcos_platform_types.h
-index 64fb381..6ebcaad 100644
---- a/interface/vcos/pthreads/vcos_platform_types.h
-+++ b/interface/vcos/pthreads/vcos_platform_types.h
-@@ -60,10 +60,6 @@ vcos_pthreads_logging_assert(const char *file, const char *func, unsigned int li
- 
- #define VCOS_ASSERT_MSG(...) ((VCOS_ASSERT_LOGGING && !VCOS_ASSERT_LOGGING_DISABLE) ? vcos_pthreads_logging_assert(__FILE__, __func__, __LINE__, __VA_ARGS__) : (void)0)
- 
--#define VCOS_INLINE_BODIES
--#define VCOS_INLINE_DECL extern
--#define VCOS_INLINE_IMPL static __inline__
--
- #ifdef __cplusplus
- }
- #endif
-diff --git a/interface/vcos/vcos_timer.h b/interface/vcos/vcos_timer.h
-index bdfa657..1de2d46 100644
---- a/interface/vcos/vcos_timer.h
-+++ b/interface/vcos/vcos_timer.h
-@@ -76,7 +76,6 @@ VCOSPRE_ VCOS_STATUS_T VCOSPOST_ vcos_timer_init(void);
-   * @param context   context passed to expiration routine
-   *
-   */
--VCOS_INLINE_DECL
- VCOS_STATUS_T vcos_timer_create(VCOS_TIMER_T *timer,
-                                 const char *name,
-                                 void (*expiration_routine)(void *context),
-@@ -91,24 +90,20 @@ VCOS_STATUS_T vcos_timer_create(VCOS_TIMER_T *timer,
-   * @param timer     timer handle
-   * @param delay     Delay to wait for, in ms
-   */
--VCOS_INLINE_DECL
- void vcos_timer_set(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
- 
- /** Stop an already running timer.
-   *
-   * @param timer     timer handle
-   */
--VCOS_INLINE_DECL
- void vcos_timer_cancel(VCOS_TIMER_T *timer);
- 
- /** Stop a timer and restart it.
-   * @param timer     timer handle
-   * @param delay     delay in ms
-   */
--VCOS_INLINE_DECL
- void vcos_timer_reset(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
- 
--VCOS_INLINE_DECL
- void vcos_timer_delete(VCOS_TIMER_T *timer);
- 
- #ifdef __cplusplus
-diff --git a/interface/vcos/vcos_types.h b/interface/vcos/vcos_types.h
-index e64fd99..7d86742 100644
---- a/interface/vcos/vcos_types.h
-+++ b/interface/vcos/vcos_types.h
-@@ -120,7 +120,7 @@ typedef enum
- 
- #if defined(NDEBUG)
- 
--#ifdef __GNUC__
-+#if defined(__GNUC__) && !defined(__clang__)
- # define VCOS_INLINE_DECL extern
- # define VCOS_INLINE_IMPL static __inline__
- #else
--- 
-2.7.1
-
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 4eb67fe..accc707 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -20,10 +20,8 @@ SRCREV = "748b2ba6112435063352d72f48d1d6dcc124bd6f"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-    file://0001-Fix-VCOS_INLINE_DECL-to-not-use-extern-inlines-in-de.patch \
     file://0002-set-VMCS_INSTALL_PREFIX-to-usr.patch \
     file://0003-cmake-generate-and-install-pkgconfig-files.patch \
-    file://0004-vcos_platform_types-Dont-use-extern-inline-with-clan.patch \
     file://0005-Allow-applications-to-set-next-resource-handle.patch \
     file://0006-wayland-Add-support-for-the-Wayland-winsys.patch \
     file://0007-wayland-Add-Wayland-example.patch \
-- 
1.9.1


