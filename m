Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 916DBE00E3D; Mon, 12 Feb 2018 00:00:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B809E00DA9
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 00:00:43 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id m19so2017752pgn.1
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 00:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Q6kSQnppv1GzZBOfyB3oLEwtwWMv4TDCylW4tRaAn+s=;
	b=vgfPkc+VGW6iP0YqozMCwyWsVK8A+dSs4Aea7dNRrlqS/qbDyb2400eCe5sH2+b5Gg
	5iMYiM80MwxGrrWW6AKcAWSRZRAI8RuPOK/8jdDer8WNTbNOgojsDXat+8Imfp4aRk5q
	BMRBQYqLjVaaZRnmzoV9ceuBs1LYYGoUYfuH2quv4D5gIxbNxCVjuxreRnHC4VprYp4+
	iT0z+sHLwGJaD+T8s6I4b9pN6qRGESeA2uS5EZkpuo3yFBxbvezMGdQz43Jx+mDeZdgR
	e+HA1f3RCNeUYZsZWxC821ngBIsJXOlvg///dkuFNx1eo1vAYnJRRs14DXmUdn6NeBAq
	PEXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Q6kSQnppv1GzZBOfyB3oLEwtwWMv4TDCylW4tRaAn+s=;
	b=Gz44qTBW9GkQ4WmNOrlrpAFoYW2DyLSuukMf6SUz06Du/xNFGrkTueTQUWufZf4wvm
	OGMU3qJtwivSLKCxMjD16+IHOts2r3zmW15WkLRbfQwLuGi+jb9epBzKEJCRh+R3RoHR
	AuIcOJDJ+oz1y8ofay7Nbf60SoBs+pH0HWuPx8bEKAwcwIBq/G2RKejTPR2S4IZ57pFp
	+yqMcdLw7U/ZajaQ7IV5EPlcd9bdmfHUNzk4uvCtx/WTkDnjrBhY2u7sAetIc09nKExz
	tmUsBVcgDngQZH5KANTLtDFJ3M0J+J+TAU99BeFHgTWOljr5HZu14c3g5bbhNiahQPy0
	/M1w==
X-Gm-Message-State: APf1xPDHd/WNA7N3Jrpk8e1HRY9URr/Yj++kehGZh1pgm+M0lt9+krD9
	MN+W2/askIioeeerxhNZBojzyA==
X-Google-Smtp-Source: AH8x2256C0zXy9dUXqBOj248cEe7gECwa6Si1983rgLcp8EwFplJqlvuPz4iJfa+kprQs4uaOtLvoQ==
X-Received: by 10.98.36.81 with SMTP id r78mr10873307pfj.196.1518422442572;
	Mon, 12 Feb 2018 00:00:42 -0800 (PST)
Received: from localhost.localdomain ([2601:646:8880:466c::c193])
	by smtp.gmail.com with ESMTPSA id
	e23sm29671630pfk.114.2018.02.12.00.00.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Feb 2018 00:00:41 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Feb 2018 00:00:29 -0800
Message-Id: <20180212080029.17559-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.16.1
Subject: [meta-gplv2][PATCH] make: Do not assume glibc glob internals
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
X-List-Received-Date: Mon, 12 Feb 2018 08:00:46 -0000

glibc 2.27 hides them

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...2-glob-Do-not-assume-glibc-glob-internals.patch | 36 ++++++++++++++++++++++
 recipes-devtools/make/make_3.81.bb                 |  1 +
 2 files changed, 37 insertions(+)
 create mode 100644 recipes-devtools/make/make-3.81/0002-glob-Do-not-assume-glibc-glob-internals.patch

diff --git a/recipes-devtools/make/make-3.81/0002-glob-Do-not-assume-glibc-glob-internals.patch b/recipes-devtools/make/make-3.81/0002-glob-Do-not-assume-glibc-glob-internals.patch
new file mode 100644
index 0000000..755be0b
--- /dev/null
+++ b/recipes-devtools/make/make-3.81/0002-glob-Do-not-assume-glibc-glob-internals.patch
@@ -0,0 +1,36 @@
+From 9858702dbd1e137262c06765919937660879f63c Mon Sep 17 00:00:00 2001
+From: Paul Eggert <eggert@cs.ucla.edu>
+Date: Sun, 24 Sep 2017 09:12:58 -0400
+Subject: [PATCH 2/2] glob: Do not assume glibc glob internals.
+
+It has been proposed that glibc glob start using gl_lstat,
+which the API allows it to do.  GNU 'make' should not get in
+the way of this.  See:
+https://sourceware.org/ml/libc-alpha/2017-09/msg00409.html
+
+* dir.c (local_lstat): New function, like local_stat.
+(dir_setup_glob): Use it to initialize gl_lstat too, as the API
+requires.
+---
+Upstream-Status: Backport
+which is so small that it's effectively public domain.
+
+ configure.ac | 3 +--
+ 1 file changed, 1 insertion(+), 2 deletions(-)
+
+Index: make-3.81/configure.in
+===================================================================
+--- make-3.81.orig/configure.in
++++ make-3.81/configure.in
+@@ -348,10 +348,9 @@ AC_CACHE_VAL(make_cv_sys_gnu_glob, [
+ #include <glob.h>
+ #include <fnmatch.h>
+ 
+-#define GLOB_INTERFACE_VERSION 1
+ #if !defined _LIBC && defined __GNU_LIBRARY__ && __GNU_LIBRARY__ > 1
+ # include <gnu-versions.h>
+-# if _GNU_GLOB_INTERFACE_VERSION == GLOB_INTERFACE_VERSION
++if _GNU_GLOB_INTERFACE_VERSION == 1 || _GNU_GLOB_INTERFACE_VERSION == 2
+    gnu glob
+ # endif
+ #endif
diff --git a/recipes-devtools/make/make_3.81.bb b/recipes-devtools/make/make_3.81.bb
index b8a79b0..9fe22a8 100644
--- a/recipes-devtools/make/make_3.81.bb
+++ b/recipes-devtools/make/make_3.81.bb
@@ -9,6 +9,7 @@ require make.inc
 
 SRC_URI += "file://make_fix_for_automake-1.12.patch"
 SRC_URI += "file://makeinfo.patch"
+SRC_URI += "file://0002-glob-Do-not-assume-glibc-glob-internals.patch"
 
 SRC_URI[md5sum] = "354853e0b2da90c527e35aabb8d6f1e6"
 SRC_URI[sha256sum] = "f3e69023771e23908f5d5592954d8271d3d6af09693cecfd29cee6fde8550dc8"
-- 
2.16.1


