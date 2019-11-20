Return-Path: <nick83ola@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46F72E00B5E; Wed, 20 Nov 2019 10:59:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D2D0E00B5E
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 10:59:17 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id b18so1173391wrj.8
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 10:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=DRkbfzDeoIbLAqy4sjqvwNbIFBqHapmpir/DlOFCbrU=;
	b=I3H2KiEZr8INqlXLUFg/4JGv0z6ae4T6bYqo6pGkfnhTYTG0bxu44uppodSRYoNV3T
	K4CghjBbfR5JCW19C/ZToiEvGz0RiSlBQzix+dDSld9zOukxgRv7R+yvtbcsXEVtvZJ2
	CaoOV+juxz+zfFBFd3g17dkX55LBLgJPT4bZ2XHVznoWm2uBQW6SABiLJ73cc9h9Wqn5
	Srr+uW0J8jtABIkOylHxckt1neDhmtxL/ysyFPEZ1XTVy5I5Wv0EAs/hWnqfPftmIzOD
	2pXciyoYOtGQnQ1D2DiHRcozMCiT9+ohCQWYD/9YG2VKGJ89+xmhT8+6vkQlCWxK0ToD
	6KLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=DRkbfzDeoIbLAqy4sjqvwNbIFBqHapmpir/DlOFCbrU=;
	b=bSRSjCWWFpuODJXZ7Ghqueu4U2BCCo/MVRu/bTm/wJAusrbXIsfcvZHVJInA7jkYnu
	nuydBA3jtv+sVFZ0EDe0/I/hDz16mtYJ6jTYAUiEW60S12ZxxwJC19Xunv05R/I2+E89
	k6k9aC3h8VK5HFlW0JqaOa0+c2jsu7XlGsO4eP+/ZngOQNkGyE0MWIhuILTXvtb8B2WY
	UAfoMDFLa0LnFIfX9bnUe5SrFb2GERvDfhTpwPTQe70J6p2EEuCjRbiXYf2UvMiYKhGf
	kDuZCdT1IjmU906XLvmEi1wxuBxChAqpNLgixtAlmQiOMWSt6xcnT/LiuWTymkX5R1zf
	11lA==
X-Gm-Message-State: APjAAAXaphCWC9qAcCaUhjeoe55Uu9dlnmd9yik93wL6qsWXk0efXtBO
	NLdKdC0lLxXT68mGxml0cj3lKjryEiY=
X-Google-Smtp-Source: APXvYqwvOA9GkrLGYw6P5yeaHlIId+TdiDtO1iKWCLb6N/0RXMG9eY8T7vmM2FrNw/0mb09NUZ65Kg==
X-Received: by 2002:adf:d4d0:: with SMTP id w16mr5629295wrk.184.1574276355943; 
	Wed, 20 Nov 2019 10:59:15 -0800 (PST)
Received: from nick-bbestie.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id x7sm251118wrg.63.2019.11.20.10.59.14
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 20 Nov 2019 10:59:14 -0800 (PST)
From: Nicola Lunghi <nick83ola@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Nov 2019 18:59:10 +0000
Message-Id: <20191120185910.39228-1-nick83ola@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH] diffutils: fix the build with musl
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
X-List-Received-Date: Wed, 20 Nov 2019 18:59:21 -0000
Content-Transfer-Encoding: 8bit

This patch fixes the build with musl using the included regex library.
It follows a similar patch applied to grep (uclibc-fix.patch)

Signed-off-by: Nicola Lunghi <nick83ola@gmail.com>
---
 .../0002-uclibc-use-mempcpy-instead-of.patch  | 53 +++++++++++++++++++
 recipes-extended/diffutils/diffutils.inc      |  8 ---
 recipes-extended/diffutils/diffutils_2.8.1.bb |  4 ++
 3 files changed, 57 insertions(+), 8 deletions(-)
 create mode 100644 recipes-extended/diffutils/diffutils-2.8.1/0002-uclibc-use-mempcpy-instead-of.patch

diff --git a/recipes-extended/diffutils/diffutils-2.8.1/0002-uclibc-use-mempcpy-instead-of.patch b/recipes-extended/diffutils/diffutils-2.8.1/0002-uclibc-use-mempcpy-instead-of.patch
new file mode 100644
index 0000000..a07fec7
--- /dev/null
+++ b/recipes-extended/diffutils/diffutils-2.8.1/0002-uclibc-use-mempcpy-instead-of.patch
@@ -0,0 +1,53 @@
+From 61db4da387676690c0f731ef2eccc014d85c23a6 Mon Sep 17 00:00:00 2001
+From: Nicola Lunghi <nicola.lunghi@jci.com>
+Date: Wed, 20 Nov 2019 18:30:10 +0000
+Subject: [PATCH] uclibc: use mempcpy instead of __mempcpy
+
+Fix to use mempcpy instead of __mempcpy. This is needed for uclibc which
+doesn't define __mempcpy, only mempcpy. Since both uclibc and glibc have
+mempcpy, we'll just use that instead.
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
index 243341a..5e82b81 100644
--- a/recipes-extended/diffutils/diffutils.inc
+++ b/recipes-extended/diffutils/diffutils.inc
@@ -6,13 +6,5 @@ SECTION = "base"
 
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
-
diff --git a/recipes-extended/diffutils/diffutils_2.8.1.bb b/recipes-extended/diffutils/diffutils_2.8.1.bb
index 466bf28..931c973 100644
--- a/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -9,11 +9,15 @@ SRC_URI = "${GNU_MIRROR}/diffutils/diffutils-${PV}.tar.gz \
            file://diffutils_fix_for_automake-1.12.patch \
            file://fix_gcc6.patch \
            file://0001-Make-it-build-with-compile-time-hardening-enabled.patch \
+           file://0002-uclibc-use-mempcpy-instead-of.patch \
            "
 
 SRC_URI[md5sum] = "71f9c5ae19b60608f6c7f162da86a428"
 SRC_URI[sha256sum] = "c5001748b069224dd98bf1bb9ee877321c7de8b332c8aad5af3e2a7372d23f5a"
 
+EXTRA_OECONF = "--without-included-regex"
+EXTRA_OECONF_libc-musl = "--with-included-regex"
+
 do_configure_prepend () {
 	chmod u+w ${S}/po/Makefile.in.in
 }
-- 
2.20.1


