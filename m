Return-Path: <B40290@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe010.messaging.microsoft.com [216.32.180.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B14E5E0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 00:54:37 -0700 (PDT)
Received: from mail258-va3-R.bigfish.com (10.7.14.241) by
	VA3EHSOBE006.bigfish.com (10.7.40.26) with Microsoft SMTP Server id
	14.1.225.23; Wed, 31 Oct 2012 07:54:36 +0000
Received: from mail258-va3 (localhost [127.0.0.1])	by
	mail258-va3-R.bigfish.com (Postfix) with ESMTP id 07635A80119;
	Wed, 31 Oct 2012 07:54:36 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(zz936eIzz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h1155h)
Received: from mail258-va3 (localhost.localdomain [127.0.0.1]) by mail258-va3
	(MessageSwitch) id 1351670074719974_14218;
	Wed, 31 Oct 2012 07:54:34 +0000 (UTC)
Received: from VA3EHSMHS023.bigfish.com (unknown [10.7.14.247])	by
	mail258-va3.bigfish.com (Postfix) with ESMTP id ADA7FD00065;
	Wed, 31 Oct 2012 07:54:34 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS023.bigfish.com
	(10.7.99.33) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 31 Oct 2012 07:54:34 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-001.039d.mgd.msft.net (10.84.1.13) with Microsoft SMTP
	Server (TLS) id 14.2.318.3; Wed, 31 Oct 2012 07:54:33 +0000
Received: from right.am.freescale.net (right.am.freescale.net [10.82.176.228])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	q9V7sUkg027248; Wed, 31 Oct 2012 00:54:33 -0700
From: <b40290@freescale.com>
To: <openembedded-devel@lists.openembedded.org>
Date: Wed, 31 Oct 2012 02:54:27 -0500
Message-ID: <1351670067-16507-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.9.7
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: yocto@yoctoproject.org, Chunrong Guo <b40290@freescale.com>
Subject: [meta-oe master] inetutils_1.8.bb:task do_configure and do_compile:failed
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
X-List-Received-Date: Wed, 31 Oct 2012 07:54:38 -0000
Content-Type: text/plain

From: Chunrong Guo <b40290@freescale.com>

    * fix the following error :
    configure.ac:572: error: automatic de-ANSI-fication support has been removed
    | /tmp/sysroots/x86_64-linux/usr/share/aclocal-1.12/protos.m4:10: AM_C_PROTOTYPES is expanded from...
    | configure.ac:572: the top level
    | autom4te: m4 failed with exit status: 1
    | aclocal: error: tmp/sysroots/x86_64-linux/usr/bin/autom4te failed with exit status: 1
    | autoreconf: aclocal failed with exit status: 1
    | ERROR: autoreconf execution failed.
    | ERROR: Function failed: do_configure (see inetutils-1.8-+fsl/temp/log.do_configure.23693 for further information)
     ERROR: meta-oe/recipes-connectivity/inetutils/inetutils_1.8.bb, do_configure) failed with exit code '1'
    *  automake 1.12 removes support for AM_C_PROTOTYPES.

Signed-off-by: Chunrong Guo <b40290@freescale.com>
---
 .../inetutils-1.8/disable-pre-ANSI-compilers.patch |   11 +++++++++++
 .../inetutils/inetutils-1.8/remove_gets.patch      |   13 +++++++++++++
 .../inetutils/inetutils_1.8.bb                     |    2 ++
 3 files changed, 26 insertions(+)
 create mode 100644 meta-oe/recipes-connectivity/inetutils/inetutils-1.8/disable-pre-ANSI-compilers.patch
 create mode 100644 meta-oe/recipes-connectivity/inetutils/inetutils-1.8/remove_gets.patch

diff --git a/meta-oe/recipes-connectivity/inetutils/inetutils-1.8/disable-pre-ANSI-compilers.patch b/meta-oe/recipes-connectivity/inetutils/inetutils-1.8/disable-pre-ANSI-compilers.patch
new file mode 100644
index 0000000..b945f3a
--- /dev/null
+++ b/meta-oe/recipes-connectivity/inetutils/inetutils-1.8/disable-pre-ANSI-compilers.patch
@@ -0,0 +1,11 @@
+--- inetutils-1.8.org/configure.ac	2012-10-23 02:05:20.516386701 -0500
++++ inetutils-1.8/configure.ac	2012-10-25 21:31:10.602591484 -0500
+@@ -569,7 +569,7 @@
+ IU_CHECK_MEMBERS([struct stat.st_blksize])
+ 
+ ### Checks for compiler characteristics.
+-AM_C_PROTOTYPES dnl FIXME: Does inetutils even compile on pre-ANSI compilers?
++#AM_C_PROTOTYPES dnl FIXME: Does inetutils even compile on pre-ANSI compilers?
+ AC_C_CONST
+ 
+ dnl See if `weak refs' are possible; these make it possible (with shared
diff --git a/meta-oe/recipes-connectivity/inetutils/inetutils-1.8/remove_gets.patch b/meta-oe/recipes-connectivity/inetutils/inetutils-1.8/remove_gets.patch
new file mode 100644
index 0000000..f8081a2
--- /dev/null
+++ b/meta-oe/recipes-connectivity/inetutils/inetutils-1.8/remove_gets.patch
@@ -0,0 +1,13 @@
+--- inetutils-1.8.org/lib/stdio.in.h	2010-05-15 06:35:16.000000000 -0500
++++ inetutils-1.8/lib/stdio.in.h	2012-10-25 22:56:43.198607472 -0500
+@@ -138,8 +138,10 @@
+ /* It is very rare that the developer ever has full control of stdin,
+    so any use of gets warrants an unconditional warning.  Assume it is
+    always declared, since it is required by C89.  */
++#if defined gets
+ #undef gets
+ _GL_WARN_ON_USE (gets, "gets is a security hole - use fgets instead");
++#endif
+ 
+ #if @GNULIB_FOPEN@
+ # if @REPLACE_FOPEN@
diff --git a/meta-oe/recipes-connectivity/inetutils/inetutils_1.8.bb b/meta-oe/recipes-connectivity/inetutils/inetutils_1.8.bb
index ce0df82..c02fe79 100644
--- a/meta-oe/recipes-connectivity/inetutils/inetutils_1.8.bb
+++ b/meta-oe/recipes-connectivity/inetutils/inetutils_1.8.bb
@@ -18,6 +18,8 @@ SRC_URI = "${GNU_MIRROR}/inetutils/inetutils-${PV}.tar.gz \
            file://inetutils-1.8-1004-detect-fork-support.patch \
            file://inetutils-1.8-1005-ftpd-add-daemon-D-nommu-support.patch \
            file://fix-disable-ipv6.patch \
+           file://disable-pre-ANSI-compilers.patch \
+           file://remove_gets.patch \
 " 
 SRC_URI[md5sum] = "ad8fdcdf1797b9ca258264a6b04e48fd"
 SRC_URI[sha256sum] = "c8500baee04b9ea408c9e65e24ad7f5b41e7d96d42fb1d29abf25b52b68311c7"
-- 
1.7.9.7



