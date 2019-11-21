Return-Path: <nick83ola@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 892ECE009D4; Thu, 21 Nov 2019 04:57:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nick83ola[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96E6BE007D4
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 04:57:32 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id t1so4308325wrv.4
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 04:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=FaNLk1yUf2OnIg00GVBpr1o2uvxC+VvIw8jmk5aDWe4=;
	b=kNpTQHyl9UdrmaugKOXQKJDXDW/MT5n5NfSTMpxq8Ln3Pm62GvdzPLfI+b6u28I8eI
	+QqnPwOBxcgEgJkcLN8wO0I9yU3nGtlYleu2R+aK7sVqZPArDlyRK4I5OnGFDCSegOaY
	Op/P9pry5teSRi5/oxC/aK4rzyVHpflPx4CYJ83BTGyxMzB8d3M9nTSinjMCA7w5O/jS
	OTMFyDR/j4XySQjNVR8USrizwDGVLWCc5qy572kVH4Ts3xAI80mri18ZabocAkLZOS4s
	aen9PHVwUg3QaRi3kPM1Mjwdu9UOA72/D2u7AkIU2LZ2XhUALf5LSNSqSUj1Gdc+ZChd
	iggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=FaNLk1yUf2OnIg00GVBpr1o2uvxC+VvIw8jmk5aDWe4=;
	b=kEeUuM9Y1f40Zt5K642zHx9jEq/iZOOZjEMFungKXv+AXZV1pDGg6ojduzQ/z3dt0x
	I7P/qfai3KhUg1kQIDVkcIaT4M/qoCofrQT45c6Inz+l+vqaEijHlEWwptOCOA/B+yJL
	FscFHdeOrML2PXgPMQSGORJ/0BvlmBL6S37JG6wQdHnM7zM5L2hhl7wslSShPl3rj4G3
	691GLpBJNyeFJZyBavvd8ooNy8TUKwu9F4822lzZxfsUN8pLpMmcyN4SEdi7JNw7vUWI
	BkvPZ7dO7uVoweqOT+ZCuJQp/oI5c4jPtle+9Ff+BwLQov9tqJbQK1AKZ5WmaA0J/Y4w
	VOgA==
X-Gm-Message-State: APjAAAWWwcD895iE06A1c7dYUIDpa4bw9iGMkAlwArYxtRJa8Vod18Vz
	iv2NnNYUiFvf2OeRwTZnOoTPuHDBqpY=
X-Google-Smtp-Source: APXvYqxPBowx2tnIrqAyuwiC0GkRJy0PnBMdoLzwAzSgTjloMzZDu+XF3EQb2GiX3mrB2g7sec0Clw==
X-Received: by 2002:adf:e803:: with SMTP id o3mr10543177wrm.326.1574341051138; 
	Thu, 21 Nov 2019 04:57:31 -0800 (PST)
Received: from nick-bbestie.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	b196sm2990425wmd.24.2019.11.21.04.57.30
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 21 Nov 2019 04:57:30 -0800 (PST)
From: Nicola Lunghi <nick83ola@gmail.com>
To: yocto@yoctoproject.org,
	Andre Draszik <git@andred.net>
Date: Thu, 21 Nov 2019 12:57:11 +0000
Message-Id: <20191121125711.32336-1-nick83ola@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH v3] diffutils: use mempcpy instead of __mempcpy
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
X-List-Received-Date: Thu, 21 Nov 2019 12:57:34 -0000
Content-Transfer-Encoding: 8bit

musl (like uclibc) doesn't define __mempcpy.
This patch will replace __mempcpy with mempcpy in the internal regex.c and
getopt.c implementation (similar to what is done in grep in this same repo
with the uclibc-fix.patch

This also render the line:

  EXTRA_OECONF_libc-uclibc = "--without-included-regex"

not needed anymore so it drops it.

Signed-off-by: Nicola Lunghi <nick83ola@gmail.com>
---
 ...included-libc-use-mempcpy-instead-of.patch | 56 +++++++++++++++++++
 recipes-extended/diffutils/diffutils.inc      |  7 ---
 recipes-extended/diffutils/diffutils_2.8.1.bb |  1 +
 3 files changed, 57 insertions(+), 7 deletions(-)
 create mode 100644 recipes-extended/diffutils/diffutils-2.8.1/0002-included-libc-use-mempcpy-instead-of.patch

diff --git a/recipes-extended/diffutils/diffutils-2.8.1/0002-included-libc-use-mempcpy-instead-of.patch b/recipes-extended/diffutils/diffutils-2.8.1/0002-included-libc-use-mempcpy-instead-of.patch
new file mode 100644
index 0000000..6994ec7
--- /dev/null
+++ b/recipes-extended/diffutils/diffutils-2.8.1/0002-included-libc-use-mempcpy-instead-of.patch
@@ -0,0 +1,56 @@
+From 61db4da387676690c0f731ef2eccc014d85c23a6 Mon Sep 17 00:00:00 2001
+From: Nicola Lunghi <nicola.lunghi@jci.com>
+Date: Wed, 20 Nov 2019 18:30:10 +0000
+Subject: [PATCH] included libc: use mempcpy instead of __mempcpy
+
+Fix to use mempcpy instead of __mempcpy. This is needed for uclibc and musl
+which doesn't define __mempcpy, only mempcpy. Since they all have
+mempcpy, we'll just use that instead.
+
+Signed-off-by: Nicola Lunghi <nick83ola@gmail.com>
+
+Patch source: OpenEmbedded (grep)
+Upstream-Status: Inappropriate [licensing]
+---
+ lib/getopt.c | 4 ++--
+ lib/regex.c  | 2 +-
+ 2 files changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/lib/getopt.c b/lib/getopt.c
+index ed32692..6626f5e 100644
+--- a/lib/getopt.c
++++ b/lib/getopt.c
+@@ -334,7 +334,7 @@ exchange (argv)
+ 	nonoption_flags_len = nonoption_flags_max_len = 0;
+       else
+ 	{
+-	  memset (__mempcpy (new_str, __getopt_nonoption_flags,
++	  memset (mempcpy (new_str, __getopt_nonoption_flags,
+ 			     nonoption_flags_max_len),
+ 		  '\0', top + 1 - nonoption_flags_max_len);
+ 	  nonoption_flags_max_len = top + 1;
+@@ -445,7 +445,7 @@ _getopt_initialize (argc, argv, optstring)
+ 	      if (__getopt_nonoption_flags == NULL)
+ 		nonoption_flags_max_len = -1;
+ 	      else
+-		memset (__mempcpy (__getopt_nonoption_flags, orig_str, len),
++		memset (mempcpy (__getopt_nonoption_flags, orig_str, len),
+ 			'\0', nonoption_flags_max_len - len);
+ 	    }
+ 	}
+diff --git a/lib/regex.c b/lib/regex.c
+index 6daec76..797b20a 100644
+--- a/lib/regex.c
++++ b/lib/regex.c
+@@ -8314,7 +8314,7 @@ regerror (errcode, preg, errbuf, errbuf_size)
+       if (msg_size > errbuf_size)
+         {
+ #if defined HAVE_MEMPCPY || defined _LIBC
+-	  *((char *) __mempcpy (errbuf, msg, errbuf_size - 1)) = '\0';
++	  *((char *) mempcpy (errbuf, msg, errbuf_size - 1)) = '\0';
+ #else
+           memcpy (errbuf, msg, errbuf_size - 1);
+           errbuf[errbuf_size - 1] = 0;
+-- 
+2.20.1
+
diff --git a/recipes-extended/diffutils/diffutils.inc b/recipes-extended/diffutils/diffutils.inc
index 243341a..c81348b 100644
--- a/recipes-extended/diffutils/diffutils.inc
+++ b/recipes-extended/diffutils/diffutils.inc
@@ -6,13 +6,6 @@ SECTION = "base"
 
 inherit autotools texinfo update-alternatives gettext
 
-# diffutils assumes non-glibc compilation with uclibc and
-# this causes it to generate its own implementations of
-# standard functionality.  regex.c actually breaks compilation
-# because it uses __mempcpy, there are other things (TBD:
-# see diffutils.mk in buildroot)
-EXTRA_OECONF_libc-uclibc = "--without-included-regex"
-
 ALTERNATIVE_${PN} = "diff cmp"
 ALTERNATIVE_PRIORITY = "100"
 
diff --git a/recipes-extended/diffutils/diffutils_2.8.1.bb b/recipes-extended/diffutils/diffutils_2.8.1.bb
index 466bf28..5a71c94 100644
--- a/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -9,6 +9,7 @@ SRC_URI = "${GNU_MIRROR}/diffutils/diffutils-${PV}.tar.gz \
            file://diffutils_fix_for_automake-1.12.patch \
            file://fix_gcc6.patch \
            file://0001-Make-it-build-with-compile-time-hardening-enabled.patch \
+           file://0002-included-libc-use-mempcpy-instead-of.patch \
            "
 
 SRC_URI[md5sum] = "71f9c5ae19b60608f6c7f162da86a428"
-- 
2.20.1


