Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A60A3E00D6A; Mon, 18 Dec 2017 14:08:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FF7FE00D03
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:08:35 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id y89so10276209pfk.0
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=EzIVd3loKMFQi7ruNkxx0dVgU1qTowL45YTEAog1WHQ=;
	b=ezAR3QuisuVBAGWO0qnjwx3z4vh2H8AcUY1wllJ3K/mLkFyzJ1SyLF6Uzo+8a9bWGF
	VDCZ0LxdWIpyE409EQDqgDWce1QaImH2XPUx9XUAneIxjCg5Y1DxzFHTG8FZby28U3kE
	suReqrhhFbyeO3fhLjcuUm2UjXp12ElEBSlpsg9qG6ABFsOWWI3Jqvxr/C3/IRuT3OEx
	7rNgQeUNbXorz6oRzX89XIJVF3IfdRwY6tkEARteE2HN0dTIqCGdoSn55NiK8rk9Wd/e
	2P93vvkVeqXTfaE3KaHU41EokKP6UIeN9+GDK3d8S2dC6a6nteYm1n490wzABaQK7cBO
	319A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=EzIVd3loKMFQi7ruNkxx0dVgU1qTowL45YTEAog1WHQ=;
	b=au+ITLF6VAuBLRMlUi4lRFD8+SnK7sDLg0LU72XAr0pYGJhkvsAMkaUXS/hQfBMiOP
	qF1wGZ6rym77M77xOC9YbEG5zN/jjx8KVO316SpNOXvl6wvEovjaW2ieWxTvaYygwvY0
	EDzIZ+bOqaf2HhzRvETzjvhr2eoRennxqHnr01uwEFvidOKYedArWYAL1XaBOrLzgfAF
	w/cD9Z0ovc+0nTq9QQNQCKUElBBKHwyt8XpRSyyS/99wj8E8jTJTe4BuaHSgVORKqAvO
	/aR50dwQwGdZJFyzTio5rLU8aL19cQVRTfU6Ao9p4g9hQDIBzaavcILE0+qxw5vVskqA
	87hg==
X-Gm-Message-State: AKGB3mJdxF23YzVRx0xc2pxD1vgW+JLti+sYC3DUCnV52zBOttbyEJpB
	Pab8d1ECPiTTKrIHeWEha73mWg==
X-Google-Smtp-Source: ACJfBosLPrN/zuFcN5f1jfKLCBvRgpBRL0PE1ZTdThu2iWMOhT7pQlRV0HupoXLRhxUKRcyi8Or5YQ==
X-Received: by 10.101.89.78 with SMTP id g14mr962412pgu.29.1513634914496;
	Mon, 18 Dec 2017 14:08:34 -0800 (PST)
Received: from e6520.cablelabs.com ([4.16.80.121])
	by smtp.gmail.com with ESMTPSA id
	f7sm25602904pfa.133.2017.12.18.14.08.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 18 Dec 2017 14:08:33 -0800 (PST)
From: Andre McCurdy <armccurdy@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Dec 2017 14:08:07 -0800
Message-Id: <1513634888-32057-3-git-send-email-armccurdy@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1513634888-32057-1-git-send-email-armccurdy@gmail.com>
References: <1513634888-32057-1-git-send-email-armccurdy@gmail.com>
Subject: [meta-gplv2][PATCH 2/3] elfutils_0.148: musl build fixes
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
X-List-Received-Date: Mon, 18 Dec 2017 22:08:36 -0000

Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
---
 .../musl-support-for-elfutils-0.148.patch          | 133 +++++++++++++++++++++
 recipes-devtools/elfutils/elfutils_0.148.bb        |   9 +-
 2 files changed, 140 insertions(+), 2 deletions(-)
 create mode 100644 recipes-devtools/elfutils/elfutils-0.148/musl-support-for-elfutils-0.148.patch

diff --git a/recipes-devtools/elfutils/elfutils-0.148/musl-support-for-elfutils-0.148.patch b/recipes-devtools/elfutils/elfutils-0.148/musl-support-for-elfutils-0.148.patch
new file mode 100644
index 0000000..5a52d6d
--- /dev/null
+++ b/recipes-devtools/elfutils/elfutils-0.148/musl-support-for-elfutils-0.148.patch
@@ -0,0 +1,133 @@
+From 8a6cefcd35fb0ba6e12afc6611cfeb600865ca17 Mon Sep 17 00:00:00 2001
+From: Andre McCurdy <armccurdy@gmail.com>
+Date: Wed, 27 Sep 2017 21:32:27 -0700
+Subject: [PATCH] musl build fixes
+
+Upstream-Status: Inappropriate [legacy version]
+
+Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
+---
+ lib/fixedsizehash.h   |  4 ++--
+ lib/system.h          | 11 +++++++++++
+ libelf/elf.h          |  8 ++++++--
+ libelf/elf_begin.c    |  4 ++--
+ libelf/elf_getarsym.c |  2 +-
+ libelf/libelf.h       |  1 +
+ 6 files changed, 23 insertions(+), 7 deletions(-)
+
+diff --git a/lib/fixedsizehash.h b/lib/fixedsizehash.h
+index a686051..3118954 100644
+--- a/lib/fixedsizehash.h
++++ b/lib/fixedsizehash.h
+@@ -51,12 +51,12 @@
+ #include <errno.h>
+ #include <stdlib.h>
+ #include <string.h>
+-#include <sys/cdefs.h>
+ #include <sys/param.h>
+ 
+ #include <system.h>
+ 
+-#define CONCAT(t1,t2) __CONCAT (t1,t2)
++#define CONCAT1(x,y) x##y
++#define CONCAT(x,y) CONCAT1(x,y)
+ 
+ /* Before including this file the following macros must be defined:
+ 
+diff --git a/lib/system.h b/lib/system.h
+index 10b4734..a9cb35e 100644
+--- a/lib/system.h
++++ b/lib/system.h
+@@ -52,6 +52,17 @@
+ #include <stddef.h>
+ #include <stdint.h>
+ 
++#ifndef TEMP_FAILURE_RETRY
++#define TEMP_FAILURE_RETRY(expression)			\
++  (__extension__					\
++    ({ long int __result;				\
++       do __result = (long int) (expression);		\
++       while (__result == -1L && errno == EINTR);	\
++       __result; }))
++#endif
++
++#define error(status, errno, ...) err(status, __VA_ARGS__)
++
+ extern void *xmalloc (size_t) __attribute__ ((__malloc__));
+ extern void *xcalloc (size_t, size_t) __attribute__ ((__malloc__));
+ extern void *xrealloc (void *, size_t) __attribute__ ((__malloc__));
+diff --git a/libelf/elf.h b/libelf/elf.h
+index 4158764..6d9af96 100644
+--- a/libelf/elf.h
++++ b/libelf/elf.h
+@@ -23,7 +23,9 @@
+ 
+ #include <features.h>
+ 
+-__BEGIN_DECLS
++#ifdef __cplusplus
++extern "C" {
++#endif
+ 
+ /* Standard ELF types.  */
+ 
+@@ -2909,6 +2911,8 @@ typedef Elf32_Addr Elf32_Conflict;
+ #define R_M32R_NUM		256	/* Keep this the last entry. */
+ 
+ 
+-__END_DECLS
++#ifdef __cplusplus
++}
++#endif
+ 
+ #endif	/* elf.h */
+diff --git a/libelf/elf_begin.c b/libelf/elf_begin.c
+index 0b38991..9083736 100644
+--- a/libelf/elf_begin.c
++++ b/libelf/elf_begin.c
+@@ -819,7 +819,7 @@ __libelf_next_arhdr_wrlock (elf)
+     }
+ 
+   /* Copy the raw name over to a NUL terminated buffer.  */
+-  *((char *) __mempcpy (elf->state.ar.raw_name, ar_hdr->ar_name, 16)) = '\0';
++  *((char *) mempcpy (elf->state.ar.raw_name, ar_hdr->ar_name, 16)) = '\0';
+ 
+   elf_ar_hdr = &elf->state.ar.elf_ar_hdr;
+ 
+@@ -911,7 +911,7 @@ __libelf_next_arhdr_wrlock (elf)
+       const char *string = ar_hdr->FIELD;				      \
+       if (ar_hdr->FIELD[sizeof (ar_hdr->FIELD) - 1] != ' ')		      \
+ 	{								      \
+-	  *((char *) __mempcpy (buf, ar_hdr->FIELD, sizeof (ar_hdr->FIELD)))  \
++	  *((char *) mempcpy (buf, ar_hdr->FIELD, sizeof (ar_hdr->FIELD)))    \
+ 	    = '\0';							      \
+ 	  string = buf;							      \
+ 	}								      \
+diff --git a/libelf/elf_getarsym.c b/libelf/elf_getarsym.c
+index 9ff7f29..74339ce 100644
+--- a/libelf/elf_getarsym.c
++++ b/libelf/elf_getarsym.c
+@@ -257,7 +257,7 @@ elf_getarsym (elf, ptr)
+ 	      else
+ 		arsym[cnt].as_off = file_data[cnt];
+ 	      arsym[cnt].as_hash = _dl_elf_hash (str_data);
+-	      str_data = rawmemchr (str_data, '\0') + 1;
++	      str_data = memchr (str_data, '\0', SIZE_MAX) + 1;
+ 	    }
+ 	  /* At the end a special entry.  */
+ 	  arsym[n].as_name = NULL;
+diff --git a/libelf/libelf.h b/libelf/libelf.h
+index b0b3a8d..ec15c43 100644
+--- a/libelf/libelf.h
++++ b/libelf/libelf.h
+@@ -50,6 +50,7 @@
+ #ifndef _LIBELF_H
+ #define _LIBELF_H 1
+ 
++#include <fcntl.h>
+ #include <sys/types.h>
+ 
+ /* Get the ELF types.  */
+-- 
+1.9.1
+
diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
index 892a523..a03b74e 100644
--- a/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -40,6 +40,10 @@ SRC_URI += "\
         file://0001-Make-it-compile-with-GCC-7.patch \
         file://0002-Make-it-build-with-GCC-7-and-compile-time-hardening-.patch \
 "
+
+# Only apply when building musl based target recipe
+SRC_URI_append_libc-musl = " file://musl-support-for-elfutils-0.148.patch"
+
 # Only apply when building uclibc based target recipe
 SRC_URI_append_libc-uclibc = " file://uclibc-support-for-elfutils-0.148.patch"
 
@@ -63,10 +67,11 @@ do_configure_prepend() {
     cp ${WORKDIR}/*dis.h ${S}/libcpu
 }
 
-# we can not build complete elfutils when using uclibc
+# we can not build complete elfutils when using uclibc or musl
 # but some recipes e.g. gcc 4.5 depends on libelf so we
-# build only libelf for uclibc case
+# build only libelf for uclibc and musl cases
 
+EXTRA_OEMAKE_libc-musl = "-C libelf"
 EXTRA_OEMAKE_libc-uclibc = "-C libelf"
 EXTRA_OEMAKE_class-native = ""
 EXTRA_OEMAKE_class-nativesdk = ""
-- 
1.9.1


