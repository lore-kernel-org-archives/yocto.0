Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE006.bigfish.com (tx2ehsobe003.messaging.microsoft.com
	[65.55.88.13])
	by mx1.pokylinux.org (Postfix) with ESMTP id B42E14C800A3
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2011 13:33:16 -0500 (CDT)
Received: from mail158-tx2-R.bigfish.com (10.9.14.245) by
	TX2EHSOBE006.bigfish.com (10.9.40.26) with Microsoft SMTP Server id
	14.1.225.22; Wed, 20 Jul 2011 18:33:16 +0000
Received: from mail158-tx2 (localhost.localdomain [127.0.0.1])	by
	mail158-tx2-R.bigfish.com (Postfix) with ESMTP id E2B533C81B2	for
	<yocto@yoctoproject.org>; Wed, 20 Jul 2011 18:33:15 +0000 (UTC)
X-SpamScore: 0
X-BigFish: VS0(zzbb2dK936eKc8kzz1202h1082kzz8275bhz2dh2a8h668h839h63h)
X-Spam-TCS-SCL: 2:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail158-tx2 (localhost.localdomain [127.0.0.1]) by mail158-tx2
	(MessageSwitch) id 1311186795653538_11784;
	Wed, 20 Jul 2011 18:33:15 +0000 (UTC)
Received: from TX2EHSMHS045.bigfish.com (unknown [10.9.14.250])	by
	mail158-tx2.bigfish.com (Postfix) with ESMTP id 916B813B804B	for
	<yocto@yoctoproject.org>; Wed, 20 Jul 2011 18:33:15 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS045.bigfish.com
	(10.9.99.145) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 20 Jul 2011 18:33:15 +0000
Received: from az33smr02.freescale.net (10.64.34.200) by
	039-SN1MMR1-001.039d.mgd.msft.net (10.84.1.13) with Microsoft SMTP
	Server id 14.1.289.8; Wed, 20 Jul 2011 13:33:14 -0500
Received: from right.am.freescale.net (right.am.freescale.net [10.82.193.13])
	by az33smr02.freescale.net (8.13.1/8.13.0) with ESMTP id
	p6KIXDkK021095; Wed, 20 Jul 2011 13:33:14 -0500 (CDT)
From: Matthew McClintock <msm@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 20 Jul 2011 13:33:12 -0500
Message-ID: <1311186792-24257-1-git-send-email-msm@freescale.com>
X-Mailer: git-send-email 1.7.5
In-Reply-To: <CAEsOVNfZ-Bsom3yq1Oo_0GS7zbv0Cm1XNKmv-+P63zB4uYFkVg@mail.gmail.com>
References: <CAEsOVNfZ-Bsom3yq1Oo_0GS7zbv0Cm1XNKmv-+P63zB4uYFkVg@mail.gmail.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-Mailman-Approved-At: Wed, 20 Jul 2011 15:43:53 -0500
Cc: Matthew McClintock <msm@freescale.com>
Subject: [PATCH v2] Add endianess macros used by previous endian-ness_handling.patch
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Jul 2011 18:33:18 -0000
Content-Type: text/plain

Some distro's don't include these macros in /usr/include/endian.h
so we include them via this patch

Signed-off-by: Matthew McClintock <msm@freescale.com>
---
v2: Added conditional check for macros already being defined, added
    commentary to the patch itself, and added a signed-of-by line

 .../ldconfig-native-2.12.1/endianess-header.patch  |  113 ++++++++++++++++++++
 meta/recipes-core/eglibc/ldconfig-native_2.12.1.bb |    5 +-
 2 files changed, 116 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-core/eglibc/ldconfig-native-2.12.1/endianess-header.patch

diff --git a/meta/recipes-core/eglibc/ldconfig-native-2.12.1/endianess-header.patch b/meta/recipes-core/eglibc/ldconfig-native-2.12.1/endianess-header.patch
new file mode 100644
index 0000000..a18b2c2
--- /dev/null
+++ b/meta/recipes-core/eglibc/ldconfig-native-2.12.1/endianess-header.patch
@@ -0,0 +1,113 @@
+Upstream-Status: Inappropriate [fix poky patch]
+
+This patch fixes build issues with a previous endian-ness_handling.patch on
+distros that don't have macros referenced
+
+7/20/2011
+Matthew McClintock <msm@freescale.com>
+
+diff -purN ldconfig-native-2.12.1.orig/endian_extra.h ldconfig-native-2.12.1/endian_extra.h
+--- ldconfig-native-2.12.1.orig/endian_extra.h	1969-12-31 18:00:00.000000000 -0600
++++ ldconfig-native-2.12.1/endian_extra.h	2011-07-19 18:09:14.323048417 -0500
+@@ -0,0 +1,64 @@
++/* Copyright (C) 1992, 1996, 1997, 2000, 2008 Free Software Foundation, Inc.
++   This file is part of the GNU C Library.
++
++   The GNU C Library is free software; you can redistribute it and/or
++   modify it under the terms of the GNU Lesser General Public
++   License as published by the Free Software Foundation; either
++   version 2.1 of the License, or (at your option) any later version.
++
++   The GNU C Library is distributed in the hope that it will be useful,
++   but WITHOUT ANY WARRANTY; without even the implied warranty of
++   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
++   Lesser General Public License for more details.
++
++   You should have received a copy of the GNU Lesser General Public
++   License along with the GNU C Library; if not, write to the Free
++   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
++   02111-1307 USA.  */
++
++#include <endian.h>
++
++#ifndef	_ENDIAN_EXTRA_H
++#define	_ENDIAN_EXTRA_H	1
++
++/* Don't redefine these macros if they already exist */
++#ifndef htobe16
++#ifdef __USE_BSD
++/* Conversion interfaces.  */
++# include <byteswap.h>
++
++# if __BYTE_ORDER == __LITTLE_ENDIAN
++#  define htobe16(x) __bswap_16 (x)
++#  define htole16(x) (x)
++#  define be16toh(x) __bswap_16 (x)
++#  define le16toh(x) (x)
++
++#  define htobe32(x) __bswap_32 (x)
++#  define htole32(x) (x)
++#  define be32toh(x) __bswap_32 (x)
++#  define le32toh(x) (x)
++
++#  define htobe64(x) __bswap_64 (x)
++#  define htole64(x) (x)
++#  define be64toh(x) __bswap_64 (x)
++#  define le64toh(x) (x)
++# else
++#  define htobe16(x) (x)
++#  define htole16(x) __bswap_16 (x)
++#  define be16toh(x) (x)
++#  define le16toh(x) __bswap_16 (x)
++
++#  define htobe32(x) (x)
++#  define htole32(x) __bswap_32 (x)
++#  define be32toh(x) (x)
++#  define le32toh(x) __bswap_32 (x)
++
++#  define htobe64(x) (x)
++#  define htole64(x) __bswap_64 (x)
++#  define be64toh(x) (x)
++#  define le64toh(x) __bswap_64 (x)
++# endif
++#endif
++#endif
++
++#endif	/* endian_extra.h */
+diff -purN ldconfig-native-2.12.1.orig/cache.c ldconfig-native-2.12.1/cache.c
+--- ldconfig-native-2.12.1.orig/cache.c	2011-07-19 18:21:28.347041301 -0500
++++ ldconfig-native-2.12.1/cache.c	2011-07-19 18:22:54.118048064 -0500
+@@ -39,6 +39,8 @@
+ # define N_(msgid)  msgid
+ #define _(msg) msg
+ 
++#include "endian_extra.h"
++
+ extern int be;
+ 
+ static uint16_t write16(uint16_t x, int be)
+diff -purN ldconfig-native-2.12.1.orig/readelflib.c ldconfig-native-2.12.1/readelflib.c
+--- ldconfig-native-2.12.1.orig/readelflib.c	2011-07-19 18:21:28.346041593 -0500
++++ ldconfig-native-2.12.1/readelflib.c	2011-07-19 18:23:05.324059875 -0500
+@@ -25,6 +25,9 @@
+ 
+ /* check_ptr checks that a pointer is in the mmaped file and doesn't
+    point outside it.  */
++
++#include "endian_extra.h"
++
+ #undef check_ptr
+ #define check_ptr(ptr)						\
+ do								\
+diff -purN ldconfig-native-2.12.1.orig/readlib.c ldconfig-native-2.12.1/readlib.c
+--- ldconfig-native-2.12.1.orig/readlib.c	2011-07-19 18:21:28.346041593 -0500
++++ ldconfig-native-2.12.1/readlib.c	2011-07-19 18:23:23.877046210 -0500
+@@ -40,6 +40,8 @@
+ 
+ #include "ldconfig.h"
+ 
++#include "endian_extra.h"
++
+ #define _(msg) msg
+ 
+ #define Elf32_CLASS ELFCLASS32
diff --git a/meta/recipes-core/eglibc/ldconfig-native_2.12.1.bb b/meta/recipes-core/eglibc/ldconfig-native_2.12.1.bb
index bacf9f8..00edb6e 100644
--- a/meta/recipes-core/eglibc/ldconfig-native_2.12.1.bb
+++ b/meta/recipes-core/eglibc/ldconfig-native_2.12.1.bb
@@ -9,9 +9,10 @@ SRC_URI = "file://ldconfig-native-2.12.1.tar.bz2 \
            file://ldconfig_aux-cache_path_fix.patch \
            file://32and64bit.patch \
            file://endian-ness_handling.patch \
-           file://flag_fix.patch "
+           file://flag_fix.patch \
+           file://endianess-header.patch"
 
-PR = "r0"
+PR = "r1"
 
 inherit native
 
-- 
1.7.5



