Return-Path: <B40290@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe002.messaging.microsoft.com [216.32.180.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B08E0133F
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 23:56:04 -0700 (PDT)
Received: from mail180-va3-R.bigfish.com (10.7.14.250) by
	VA3EHSOBE005.bigfish.com (10.7.40.25) with Microsoft SMTP Server id
	14.1.225.23; Tue, 30 Oct 2012 06:56:04 +0000
Received: from mail180-va3 (localhost [127.0.0.1])	by
	mail180-va3-R.bigfish.com (Postfix) with ESMTP id 0D7182E016C	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 06:56:04 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(zz936eIzz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h1155h)
Received: from mail180-va3 (localhost.localdomain [127.0.0.1]) by mail180-va3
	(MessageSwitch) id 1351580161524666_30532;
	Tue, 30 Oct 2012 06:56:01 +0000 (UTC)
Received: from VA3EHSMHS041.bigfish.com (unknown [10.7.14.252])	by
	mail180-va3.bigfish.com (Postfix) with ESMTP id 72C2620070	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 06:56:01 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS041.bigfish.com
	(10.7.99.51) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 30 Oct 2012 06:56:01 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-004.039d.mgd.msft.net (10.84.1.14) with Microsoft SMTP
	Server (TLS) id 14.2.318.3; Tue, 30 Oct 2012 06:56:00 +0000
Received: from right.am.freescale.net (right.am.freescale.net [10.82.176.228])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	q9U6tx82032764; Mon, 29 Oct 2012 23:56:00 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Tue, 30 Oct 2012 01:55:58 -0500
Message-ID: <1351580158-13467-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.9.7
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Chunrong Guo <b40290@freescale.com>
Subject: [meta-fsl-ppc master] inetutils_1.8.bbappend:task do_configure and do_compile:failed
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
X-List-Received-Date: Tue, 30 Oct 2012 06:56:05 -0000
Content-Type: text/plain

From: Chunrong Guo <b40290@freescale.com>

     fix inetutils task do_configure:failed and
                   task do_compile:failed

Signed-off-by: Chunrong Guo <b40290@freescale.com>
---
 .../files/disable-pre-ANSI-compilers.patch         |   11 +++++++++++
 recipes-append/inetutils/files/remove_gets.patch   |   13 +++++++++++++
 recipes-append/inetutils/inetutils_1.8.bbappend    |    8 ++++++++
 3 files changed, 32 insertions(+)
 create mode 100644 recipes-append/inetutils/files/disable-pre-ANSI-compilers.patch
 create mode 100644 recipes-append/inetutils/files/remove_gets.patch
 create mode 100644 recipes-append/inetutils/inetutils_1.8.bbappend

diff --git a/recipes-append/inetutils/files/disable-pre-ANSI-compilers.patch b/recipes-append/inetutils/files/disable-pre-ANSI-compilers.patch
new file mode 100644
index 0000000..b945f3a
--- /dev/null
+++ b/recipes-append/inetutils/files/disable-pre-ANSI-compilers.patch
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
diff --git a/recipes-append/inetutils/files/remove_gets.patch b/recipes-append/inetutils/files/remove_gets.patch
new file mode 100644
index 0000000..f8081a2
--- /dev/null
+++ b/recipes-append/inetutils/files/remove_gets.patch
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
diff --git a/recipes-append/inetutils/inetutils_1.8.bbappend b/recipes-append/inetutils/inetutils_1.8.bbappend
new file mode 100644
index 0000000..c64f8cf
--- /dev/null
+++ b/recipes-append/inetutils/inetutils_1.8.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend_fsl := "${THISDIR}/files:"
+
+SRC_URI_append_fsl += "file://disable-pre-ANSI-compilers.patch \
+                       file://remove_gets.patch \
+                        "
+
+PR_fsl .= "+${DISTRO}"
+
-- 
1.7.9.7



