Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF566E00CB0; Fri, 25 Aug 2017 17:50:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB356E00B1B
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 17:50:25 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id 83so1797469pgb.3
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 17:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=vnWDa0LxrzBWLOIUXlj0bK/ff+w0bshGuWcto74o4DY=;
	b=rMX4zxHDSMR/7DS3gaBI9bq9Oj42UyQhjHun3QXit0ogtYZBM5xcJQSSD8HU1dlp12
	obp/e4e4Bmh3ZyAVtvrEBYHNSdlBo+JF/WE6jnmv89e6JPjMkGzDpfBD2+eyZ+BMd4wH
	GvfetMdAtM0003c1a75lRamk0gfJOdUAtkfYrLXnA4Xk5Iij4pO843gnUbu8UwzeoflG
	UjRq0t8Ohu/9r+/kZnVPqrp7/7Cqv9gw2o2tddLbmvDOYkjNDtWxJKSKHKsSbtxc0DxV
	aOF8p6vlWG1njIibtPbzbm5N7XYOYFI0w4LMnDGcSqLEd+MY0vrjV8RFL5ZebNu8kyb9
	022g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=vnWDa0LxrzBWLOIUXlj0bK/ff+w0bshGuWcto74o4DY=;
	b=c/pcTYof850xBHgR40r2C3c6zd2wZ2cgTEaS+RGw95Ztm87Y2xCzLGgvn3lkzY5DgI
	XtoZmEZCwWgKH+7vKIXm1jcRGmcbWjbG0SnLxsR1kanvCRwPRkU4+XThLFAEc+/PlTmG
	xM1OrpV+m7Z2Gy4VOJg+2o0LwJUrh6oD3MvGgv4A+fxbIv5IO+H/JuRTO3UyQuMQItN4
	I7Weo+xM746c18Vpjqm+et3sh3qV7XFbham86roIGbTQkpFjPVanbdBO3lJexF8kI1zf
	D0/fxIYXw4++QD2C0cu3SIBspsqhVOeetaDeO7GUq9PEzY/E0ZOoXAyVh5DGbcGKCPp/
	cKKw==
X-Gm-Message-State: AHYfb5jHjpAtyRob61zbFyITwnCFSW4Vxx9MLTLnVCeGh48wSvzhvLXY
	quRtwGo25oALSLv0
X-Received: by 10.84.211.66 with SMTP id b60mr317169pli.150.1503708624753;
	Fri, 25 Aug 2017 17:50:24 -0700 (PDT)
Received: from e6520.guest-wifi.scl.liberty.com ([4.16.80.121])
	by smtp.gmail.com with ESMTPSA id
	l190sm6104063pfl.156.2017.08.25.17.50.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 25 Aug 2017 17:50:23 -0700 (PDT)
From: Andre McCurdy <armccurdy@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 25 Aug 2017 17:50:16 -0700
Message-Id: <1503708616-11645-1-git-send-email-armccurdy@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-gplv2][PATCH] gmp_4.2.1: prevent calls to mpn_add_nc() if HAVE_NATIVE_mpn_sub_nc is false
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
X-List-Received-Date: Sat, 26 Aug 2017 00:50:26 -0000

When building for aarch64 (ie relying only on generic C code rather
than asm) libgmp.so contains undefined references to __gmpn_add_nc
and __gmpn_sub_nc which causes attempts to link with -lgmp to fail:

 | .../usr/lib/libgmp.so: undefined reference to `__gmpn_sub_nc'
 | .../usr/lib/libgmp.so: undefined reference to `__gmpn_add_nc'

Solution based on a historical patch posted to the gmp mailing list:

  https://gmplib.org/list-archives/gmp-discuss/2006-May/002344.html

Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
---
 ...ls-to-mpn_add_nc-if-HAVE_NATIVE_mpn_sub_n.patch | 78 ++++++++++++++++++++++
 recipes-support/gmp/gmp_4.2.1.bb                   |  1 +
 2 files changed, 79 insertions(+)
 create mode 100644 recipes-support/gmp/gmp-4.2.1/prevent-calls-to-mpn_add_nc-if-HAVE_NATIVE_mpn_sub_n.patch

diff --git a/recipes-support/gmp/gmp-4.2.1/prevent-calls-to-mpn_add_nc-if-HAVE_NATIVE_mpn_sub_n.patch b/recipes-support/gmp/gmp-4.2.1/prevent-calls-to-mpn_add_nc-if-HAVE_NATIVE_mpn_sub_n.patch
new file mode 100644
index 0000000..7b879c3
--- /dev/null
+++ b/recipes-support/gmp/gmp-4.2.1/prevent-calls-to-mpn_add_nc-if-HAVE_NATIVE_mpn_sub_n.patch
@@ -0,0 +1,78 @@
+From d4f3542fabe0797cf2d60afd957585862bd9a29b Mon Sep 17 00:00:00 2001
+From: Andre McCurdy <armccurdy@gmail.com>
+Date: Fri, 25 Aug 2017 16:16:06 -0700
+Subject: [PATCH] prevent calls to mpn_add_nc() if HAVE_NATIVE_mpn_sub_nc is false
+
+When building for aarch64 (ie relying only on generic C code rather
+than asm) libgmp.so contains undefined references to __gmpn_add_nc
+and __gmpn_sub_nc which causes attempts to link with -lgmp to fail:
+
+ | .../usr/lib/libgmp.so: undefined reference to `__gmpn_sub_nc'
+ | .../usr/lib/libgmp.so: undefined reference to `__gmpn_add_nc'
+
+Solution based on a historical patch posted to the gmp mailing list:
+
+  https://gmplib.org/list-archives/gmp-discuss/2006-May/002344.html
+
+Upstream-Status: Inappropriate [Fixed in current versions]
+
+Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
+---
+ mpn/generic/addsub_n.c | 12 ++++++------
+ 1 file changed, 6 insertions(+), 6 deletions(-)
+
+diff --git a/mpn/generic/addsub_n.c b/mpn/generic/addsub_n.c
+index 27b2c08..0ff7ca0 100644
+--- a/mpn/generic/addsub_n.c
++++ b/mpn/generic/addsub_n.c
+@@ -58,13 +58,13 @@ mpn_addsub_n (mp_ptr r1p, mp_ptr r2p, mp_srcptr s1p, mp_srcptr s2p, mp_size_t n)
+       for (off = 0; off < n; off += PART_SIZE)
+ 	{
+ 	  this_n = MIN (n - off, PART_SIZE);
+-#if HAVE_NATIVE_mpn_add_nc || !HAVE_NATIVE_mpn_add_n
++#if HAVE_NATIVE_mpn_add_nc
+ 	  acyo = mpn_add_nc (r1p + off, s1p + off, s2p + off, this_n, acyo);
+ #else
+ 	  acyn = mpn_add_n (r1p + off, s1p + off, s2p + off, this_n);
+ 	  acyo = acyn + mpn_add_1 (r1p + off, r1p + off, this_n, acyo);
+ #endif
+-#if HAVE_NATIVE_mpn_sub_nc || !HAVE_NATIVE_mpn_sub_n
++#if HAVE_NATIVE_mpn_sub_nc
+ 	  scyo = mpn_sub_nc (r2p + off, s1p + off, s2p + off, this_n, scyo);
+ #else
+ 	  scyn = mpn_sub_n (r2p + off, s1p + off, s2p + off, this_n);
+@@ -81,13 +81,13 @@ mpn_addsub_n (mp_ptr r1p, mp_ptr r2p, mp_srcptr s1p, mp_srcptr s2p, mp_size_t n)
+       for (off = 0; off < n; off += PART_SIZE)
+ 	{
+ 	  this_n = MIN (n - off, PART_SIZE);
+-#if HAVE_NATIVE_mpn_sub_nc || !HAVE_NATIVE_mpn_sub_n
++#if HAVE_NATIVE_mpn_sub_nc
+ 	  scyo = mpn_sub_nc (r2p + off, s1p + off, s2p + off, this_n, scyo);
+ #else
+ 	  scyn = mpn_sub_n (r2p + off, s1p + off, s2p + off, this_n);
+ 	  scyo = scyn + mpn_sub_1 (r2p + off, r2p + off, this_n, scyo);
+ #endif
+-#if HAVE_NATIVE_mpn_add_nc || !HAVE_NATIVE_mpn_add_n
++#if HAVE_NATIVE_mpn_add_nc
+ 	  acyo = mpn_add_nc (r1p + off, s1p + off, s2p + off, this_n, acyo);
+ #else
+ 	  acyn = mpn_add_n (r1p + off, s1p + off, s2p + off, this_n);
+@@ -105,13 +105,13 @@ mpn_addsub_n (mp_ptr r1p, mp_ptr r2p, mp_srcptr s1p, mp_srcptr s2p, mp_size_t n)
+       for (off = 0; off < n; off += PART_SIZE)
+ 	{
+ 	  this_n = MIN (n - off, PART_SIZE);
+-#if HAVE_NATIVE_mpn_add_nc || !HAVE_NATIVE_mpn_add_n
++#if HAVE_NATIVE_mpn_add_nc
+ 	  acyo = mpn_add_nc (tp, s1p + off, s2p + off, this_n, acyo);
+ #else
+ 	  acyn = mpn_add_n (tp, s1p + off, s2p + off, this_n);
+ 	  acyo = acyn + mpn_add_1 (tp, tp, this_n, acyo);
+ #endif
+-#if HAVE_NATIVE_mpn_sub_nc || !HAVE_NATIVE_mpn_sub_n
++#if HAVE_NATIVE_mpn_sub_nc
+ 	  scyo = mpn_sub_nc (r2p + off, s1p + off, s2p + off, this_n, scyo);
+ #else
+ 	  scyn = mpn_sub_n (r2p + off, s1p + off, s2p + off, this_n);
+-- 
+1.9.1
+
diff --git a/recipes-support/gmp/gmp_4.2.1.bb b/recipes-support/gmp/gmp_4.2.1.bb
index 5e8ee29..029e728 100644
--- a/recipes-support/gmp/gmp_4.2.1.bb
+++ b/recipes-support/gmp/gmp_4.2.1.bb
@@ -11,6 +11,7 @@ SRC_URI = "https://gmplib.org/download/${BPN}/archive/${BP}.tar.bz2 \
            file://Use-__gnu_inline__-attribute.patch \
            file://gmp_fix_for_automake-1.12.patch \
            file://avoid-h-asm-constraint-for-MIPS.patch \
+           file://prevent-calls-to-mpn_add_nc-if-HAVE_NATIVE_mpn_sub_n.patch \
 "
 
 SRC_URI[md5sum] = "091c56e0e1cca6b09b17b69d47ef18e3"
-- 
1.9.1


