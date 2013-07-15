Return-Path: <kristofer.hansson-aspman@pelagicore.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA0CEE01422
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 04:01:01 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id t13so9368283lbd.15
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 04:01:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=eW2m+bMK61xu1Mx5y8+6+j5NmwZS3TYiCE9I3M1E674=;
	b=KKzGC39Xqzf1xCKcab32m5fTsmYQNnEswD6cpSijPvYCAMAMWPsyVt8Z4p7ca4Q1J2
	Zz+6fQBZmRNLKnANqE2/sOj828wpuPx6Ooo3WJB7E4octzktg5UROufFC36Snpp3mF70
	E+Tg4B7sXkgZ9vMNGElxTsarn2vdlGduRyrgPSdloVl8vVjgjcLwzM7f2pbVcAsSLSGD
	m8MhipjQF8MEyB9FZFTazlOCnRCDdNuLsl9/AlEJBahtQCsaVwCLVXzTr/17t/c7w188
	dVKviS1O/uTP1lNxIu1lny29n15cpheBkPlpNqw1fOoYP37aF8fpjSCRaBTKwgM2fs6a
	GUvQ==
X-Received: by 10.152.42.171 with SMTP id p11mr24384471lal.79.1373886059783;
	Mon, 15 Jul 2013 04:00:59 -0700 (PDT)
Received: from K-Ubuntu-13.office.pelagicore.net
	(194-237-7-146.customer.telia.com. [194.237.7.146])
	by mx.google.com with ESMTPSA id rx1sm18245649lbb.0.2013.07.15.04.00.58
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 15 Jul 2013 04:00:58 -0700 (PDT)
From: Kristofer Hansson Aspman <kristofer.hansson-aspman@pelagicore.com>
To: holger.behrens@windriver.com
Date: Mon, 15 Jul 2013 12:59:52 +0200
Message-Id: <1373885992-21863-1-git-send-email-kristofer.hansson-aspman@pelagicore.com>
X-Mailer: git-send-email 1.8.1.2
X-Gm-Message-State: ALoCoQmIzSj0fjj1d1MVdHgFBx+cgQt1hnPKPK7kw7l4Bg0tAkQdWsSF1V4C3eLrr5GQpaeYoIAK
Cc: yocto@yoctoproject.org,
	Kristofer Hansson Aspman <kristofer.hansson-aspman@pelagicore.com>
Subject: [meta-ivi][PATCH] eglibc: Added AF-bus patch and bbappend for eglibc_2.18.
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
X-List-Received-Date: Mon, 15 Jul 2013 11:01:07 -0000

The patch for eglibc_2.16 could not be applied directly to eglibc_2.18 as
libc/sysdeps/unix/sysv/linux/bits/socket.h has a minor change.

Signed-off-by: Kristofer Hansson Aspman <kristofer.hansson-aspman@pelagicore.com>
---
 .../eglibc/eglibc_2.18_add_af_bus_support.patch    | 130 +++++++++++++++++++++
 recipes-core-ivi/eglibc/eglibc_2.18.bbappend       |   9 ++
 2 files changed, 139 insertions(+)
 create mode 100644 recipes-core-ivi/eglibc/eglibc/eglibc_2.18_add_af_bus_support.patch
 create mode 100644 recipes-core-ivi/eglibc/eglibc_2.18.bbappend

diff --git a/recipes-core-ivi/eglibc/eglibc/eglibc_2.18_add_af_bus_support.patch b/recipes-core-ivi/eglibc/eglibc/eglibc_2.18_add_af_bus_support.patch
new file mode 100644
index 0000000..48e8f5c
--- /dev/null
+++ b/recipes-core-ivi/eglibc/eglibc/eglibc_2.18_add_af_bus_support.patch
@@ -0,0 +1,130 @@
+Index: libc/Makefile
+===================================================================
+--- libc.orig/Makefile
++++ libc/Makefile
+@@ -317,7 +317,7 @@ installed-headers = argp/argp.h assert/a
+ 		    resource/sys/vtimes.h resource/ulimit.h rt/aio.h \
+ 		    rt/mqueue.h setjmp/setjmp.h shadow/shadow.h \
+ 		    signal/signal.h signal/sys/signal.h socket/sys/socket.h \
+-		    socket/sys/un.h stdio-common/printf.h \
++		    socket/sys/un.h socket/sys/bus.h stdio-common/printf.h \
+ 		    stdio-common/stdio_ext.h stdlib/stdlib.h stdlib/alloca.h \
+ 		    stdlib/monetary.h stdlib/fmtmsg.h stdlib/ucontext.h \
+ 		    sysdeps/generic/inttypes.h sysdeps/generic/stdint.h \
+Index: libc/include/sys/bus.h
+===================================================================
+--- /dev/null
++++ libc/include/sys/bus.h
+@@ -0,0 +1 @@
++#include <socket/sys/bus.h>
+Index: libc/socket/Makefile
+===================================================================
+--- libc.orig/socket/Makefile
++++ libc/socket/Makefile
+@@ -21,7 +21,7 @@
+ #
+ subdir	:= socket
+ 
+-headers	:= sys/socket.h sys/un.h bits/sockaddr.h bits/socket.h \
++headers	:= sys/socket.h sys/bus.h sys/un.h bits/sockaddr.h bits/socket.h \
+ 	   bits/socket2.h sys/socketvar.h net/if.h
+ 
+ routines := accept bind connect getpeername getsockname getsockopt	\
+Index: libc/socket/sys/bus.h
+===================================================================
+--- /dev/null
++++ libc/socket/sys/bus.h
+@@ -0,0 +1,57 @@
++/* Copyright (C) 1991, 1995, 1996, 2001 Free Software Foundation, Inc.
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
++   License along with the GNU C Library; if not, see
++   <http://www.gnu.org/licenses/>.  */
++
++#ifndef _SYS_BUS_H
++#define _SYS_BUS_H      1
++
++#include <sys/cdefs.h>
++
++/* Get the definition of the macro to define the common sockaddr members.  */
++#include <bits/sockaddr.h>
++
++__BEGIN_DECLS
++
++/* 'protocol' to use in socket(AF_BUS, SOCK_SEQPACKET, protocol) */
++#define BUS_PROTO_NONE  0
++#define BUS_PROTO_DBUS  1
++#define BUS_PROTO_MAX   1
++
++/* setsockopt() operations */
++#define SOL_BUS         280
++#define BUS_ADD_ADDR        1
++#define BUS_JOIN_BUS        2
++#define BUS_DEL_ADDR        3
++#define BUS_SET_EAVESDROP   4
++#define BUS_UNSET_EAVESDROP 5
++
++/* Bus address */
++struct bus_addr
++  {
++    __uint64_t s_addr; /* 16-bit prefix + 48-bit client address */
++  };
++
++/* Structure describing an AF_BUS socket address. */
++struct sockaddr_bus
++  {
++    __SOCKADDR_COMMON (sbus_);    /* AF_BUS */
++    struct bus_addr    sbus_addr; /* bus address */
++    char sbus_path[108];          /* pathname */
++  };
++
++__END_DECLS
++
++#endif /* sys/bus.h */
+Index: libc/socket/sys/socket.h
+===================================================================
+--- libc.orig/socket/sys/socket.h
++++ libc/socket/sys/socket.h
+@@ -86,7 +86,8 @@ enum
+   __SOCKADDR_ONETYPE (sockaddr_iso) \
+   __SOCKADDR_ONETYPE (sockaddr_ns) \
+   __SOCKADDR_ONETYPE (sockaddr_un) \
+-  __SOCKADDR_ONETYPE (sockaddr_x25)
++  __SOCKADDR_ONETYPE (sockaddr_x25) \
++  __SOCKADDR_ONETYPE (sockaddr_bus)
+ 
+ # define __SOCKADDR_ONETYPE(type) struct type *__restrict __##type##__;
+ typedef union { __SOCKADDR_ALLTYPES
+Index: libc/sysdeps/unix/sysv/linux/bits/socket.h
+===================================================================
+--- libc.orig/sysdeps/unix/sysv/linux/bits/socket.h
++++ libc/sysdeps/unix/sysv/linux/bits/socket.h
+@@ -80,7 +80,8 @@
+ #define PF_ALG		38	/* Algorithm sockets.  */
+ #define PF_NFC		39	/* NFC sockets.  */
+ #define PF_VSOCK	40	/* vSockets.  */
+-#define	PF_MAX		41	/* For now..  */
++#define PF_BUS		41	/* AF_BUS sockets */
++#define	PF_MAX		42	/* For now..  */
+ 
+ /* Address families.  */
+ #define	AF_UNSPEC	PF_UNSPEC
+@@ -125,6 +126,7 @@
+ #define AF_ALG		PF_ALG
+ #define AF_NFC		PF_NFC
+ #define AF_VSOCK	PF_VSOCK
++#define AF_BUS		PF_BUS
+ #define	AF_MAX		PF_MAX
+ 
+ /* Socket level values.  Others are defined in the appropriate headers.
diff --git a/recipes-core-ivi/eglibc/eglibc_2.18.bbappend b/recipes-core-ivi/eglibc/eglibc_2.18.bbappend
new file mode 100644
index 0000000..547fdb8
--- /dev/null
+++ b/recipes-core-ivi/eglibc/eglibc_2.18.bbappend
@@ -0,0 +1,9 @@
+# Use local $PN directory
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+PRINC := "${@int(PRINC) + 1}"
+
+# Add patch to avoid overwriting libc_cv_rootsbindir
+SRC_URI += " \
+    file://eglibc_2.18_add_af_bus_support.patch \
+    "
-- 
1.8.1.2


