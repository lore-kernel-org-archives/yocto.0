Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07AD2E0076F; Tue, 24 Feb 2015 20:26:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB361E0074C
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 20:26:24 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id l13so32519040iga.5
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 20:26:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=ABI5UIOAmnYM2P9sSOs5QM/Y0nk7dOJ1OAgyTPRHaA0=;
	b=hpGpFGwqWx7d4JGBO8N5u+OoIDzU6IxLexVKHyWUb4ikHYotVq3tB/O2gnayqdomsT
	utRqSa8ghAE0dEEGdT2Giy29spYAB3ic5DmBlUxYiP+0UgV7nw0abTm6lAnvJE51aG3E
	ZSmwY8NQ0cXdYamvFp90d4HyZZBR+eAfiKaB2mocVrIGkOAlxQKciV7gX/QUvZizQoTv
	Tp6b0Ql6YtMyB+Qvnj5qiBN/j5UsuYlgFJyAnolDlrfHoooBn+bkOItAg+3YX4jSuDCU
	IslppuxFKopMbcexBd7Yt73R89T6H06vBhB/ZVF3bXxTKZCDjxCscKCv/1eowOR4GCnE
	4cfA==
X-Gm-Message-State: ALoCoQkTTyEtC5Gpxrfu1Ul+hQNHSq3eHa1aPFKUcefJ52KRDWCxh1yaEXazSh53oxavxvKjx66/
X-Received: by 10.50.36.103 with SMTP id p7mr25117745igj.20.1424838383595;
	Tue, 24 Feb 2015 20:26:23 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id a31sm9227334ioj.42.2015.02.24.20.26.22
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 24 Feb 2015 20:26:22 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Feb 2015 23:27:20 -0500
Message-Id: <1424838440-1441-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] libpcap: add pkg-config support
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
X-List-Received-Date: Wed, 25 Feb 2015 04:26:33 -0000

libpcap was not previously installing a pkg-config file.  Add a basic one
that will allow using 'pkg-config --libs libpcap', for example, in recipes
rather than 'pcap-config', which frequently returns incorrect information.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---

I'm not convinced that this is necessary, but when I tried to convert the ptpd
recipe in meta-networking to stop failing by using pcap-config it seems like
libpcap was never actually installing a reasonable .pc file.  The only other
example I could find in meta-networking switched from using pcap-config to an
internal pcap library, rather than using the oe-core version, so maybe it really
isn't working for anyone right now.  I created something that at least gets ptpd
to stop blowing up, but if there's a proper way to do this for ptpd, I'd be
happy to adopt that instead.

-J.

 meta/recipes-connectivity/libpcap/libpcap.inc      |  2 +-
 .../libpcap/libpcap-pkgconfig-support.patch        | 71 ++++++++++++++++++++++
 meta/recipes-connectivity/libpcap/libpcap_1.6.2.bb |  6 +-
 3 files changed, 77 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-connectivity/libpcap/libpcap/libpcap-pkgconfig-support.patch

diff --git a/meta/recipes-connectivity/libpcap/libpcap.inc b/meta/recipes-connectivity/libpcap/libpcap.inc
index 979665c..0c608b5 100644
--- a/meta/recipes-connectivity/libpcap/libpcap.inc
+++ b/meta/recipes-connectivity/libpcap/libpcap.inc
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=1d4b0366557951c84a94fabe3529f867 \
                     file://pcap.h;beginline=1;endline=32;md5=39af3510e011f34b8872f120b1dc31d2"
 DEPENDS = "flex-native bison-native"
 
-inherit bluetooth
+inherit bluetooth pkgconfig
 
 PACKAGECONFIG ??= "${@bb.utils.contains('DISTRO_FEATURES', 'bluetooth', '${BLUEZ}', '', d)}"
 PACKAGECONFIG[bluez4] = "--enable-bluetooth,--disable-bluetooth,bluez4"
diff --git a/meta/recipes-connectivity/libpcap/libpcap/libpcap-pkgconfig-support.patch b/meta/recipes-connectivity/libpcap/libpcap/libpcap-pkgconfig-support.patch
new file mode 100644
index 0000000..9cfb9df
--- /dev/null
+++ b/meta/recipes-connectivity/libpcap/libpcap/libpcap-pkgconfig-support.patch
@@ -0,0 +1,71 @@
+From 8887132e85892a72a84ca3878e60f254ad2ce939 Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe_macdonald@mentor.com>
+Date: Tue, 24 Feb 2015 15:56:06 -0500
+Subject: [PATCH] libpcap: pkgconfig support
+
+Adding basic structure to support pkg-config.
+
+Upstream-status: Inappropriate [embedded specific]
+
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+---
+ Makefile.in   |  5 +++++
+ configure.in  |  1 +
+ libpcap.pc.in | 10 ++++++++++
+ 3 files changed, 16 insertions(+)
+ create mode 100644 libpcap.pc.in
+
+diff --git a/Makefile.in b/Makefile.in
+index 1c2d745..1f25faf 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -60,6 +60,10 @@ V_RPATH_OPT = @V_RPATH_OPT@
+ DEPENDENCY_CFLAG = @DEPENDENCY_CFLAG@
+ PROG=libpcap
+ 
++# pkgconfig support
++pkgconfigdir = $(libdir)/pkgconfig
++pkgconfig_DATA = libpcap.pc
++
+ # Standard CFLAGS
+ FULL_CFLAGS = $(CCOPT) $(INCLS) $(DEFS) $(CFLAGS)
+ 
+@@ -275,6 +279,7 @@ EXTRA_DIST = \
+ 	lbl/os-solaris2.h \
+ 	lbl/os-sunos4.h \
+ 	lbl/os-ultrix4.h \
++	libpcap.pc \
+ 	missing/snprintf.c \
+ 	mkdep \
+ 	msdos/bin2c.c \
+diff --git a/configure.in b/configure.in
+index 8f5c86b..fb51b35 100644
+--- a/configure.in
++++ b/configure.in
+@@ -1700,6 +1700,7 @@ esac
+ AC_PROG_INSTALL
+ 
+ AC_CONFIG_HEADER(config.h)
++AC_CONFIG_FILES([libpcap.pc])
+ 
+ AC_OUTPUT_COMMANDS([if test -f .devel; then
+ 	echo timestamp > stamp-h
+diff --git a/libpcap.pc.in b/libpcap.pc.in
+new file mode 100644
+index 0000000..4f78ad8
+--- /dev/null
++++ b/libpcap.pc.in
+@@ -0,0 +1,10 @@
++prefix=@prefix@
++exec_prefix=@exec_prefix@
++libdir=@libdir@
++includedir=@includedir@
++
++Name: libpcap
++Description: System-independent interface for user-level packet capture.
++Version: @VERSION@
++Libs: -L${libdir} -lpcap
++Cflags: -I${includedir}
+-- 
+1.9.1
+
diff --git a/meta/recipes-connectivity/libpcap/libpcap_1.6.2.bb b/meta/recipes-connectivity/libpcap/libpcap_1.6.2.bb
index a2d5ef4..611543e 100644
--- a/meta/recipes-connectivity/libpcap/libpcap_1.6.2.bb
+++ b/meta/recipes-connectivity/libpcap/libpcap_1.6.2.bb
@@ -1,6 +1,8 @@
 require libpcap.inc
 
-SRC_URI += "file://aclocal.patch"
+SRC_URI += "file://aclocal.patch \
+            file://libpcap-pkgconfig-support.patch \
+           "
 SRC_URI[md5sum] = "5f14191c1a684a75532c739c2c4059fa"
 SRC_URI[sha256sum] = "5db3e2998f1eeba2c76da55da5d474248fe19c44f49e15cac8a796a2c7e19690"
 
@@ -19,4 +21,6 @@ do_install_prepend () {
     install -d ${D}${bindir}
     oe_runmake install-shared DESTDIR=${D}
     oe_libinstall -a -so libpcap ${D}${libdir}
+    sed "s|@VERSION@|${PV}|" -i ${B}/libpcap.pc
+    install -D -m 0644 libpcap.pc ${D}${libdir}/pkgconfig/libpcap.pc
 }
-- 
1.9.1


