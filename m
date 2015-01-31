Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD04EE00931; Sat, 31 Jan 2015 14:50:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70DC7E003D4
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 14:49:58 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id lj1so66537901pab.6
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 14:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=fYD2B4jC8tqiZrFLHoA8yIuxACBcRSjUtmDnf9D8MEg=;
	b=T30h3G/LrlRStCnu7BvHsiMEGwdXKsjJ0d3DDaH+C2stTKJXHQ91NHi0wJgc6Jm81Z
	qCVXNZqArsK8lepX5dgTpduI6Qhndo3KHnOXaeFe8Efvo4lAd1fXsCRxYX6tE8+MnERd
	ny5GUzJACqz7k3p+PjkyivYtvPCs/anTTasGWvZ06xs0+50VECFqY0mKsMZDiUdbjdsp
	vmpnZ/N1hZhdyUIdpGQ58pMy8vaTBtxi8XPjKYWxTBXmQvgBJAgt93skWpQRr5xiVV8b
	n2vlmG6zlb4DeivGwzMKkx+WB6qn0kYnMG/lnCdmw4q9wf1XMiCz7NhMUzZA4BMzMbVj
	+apw==
X-Received: by 10.70.100.73 with SMTP id ew9mr18653712pdb.95.1422744598224;
	Sat, 31 Jan 2015 14:49:58 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	a10sm14595329pdl.61.2015.01.31.14.49.56 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 31 Jan 2015 14:49:57 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 31 Jan 2015 14:49:50 -0800
Message-Id: <1422744590-31122-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1422744590-31122-1-git-send-email-akuster808@gmail.com>
References: <1422744590-31122-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] clamav: remove interal libmspack
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
X-List-Received-Date: Sat, 31 Jan 2015 22:50:07 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.98.5.bb | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/recipes-security/clamav/clamav_0.98.5.bb b/recipes-security/clamav/clamav_0.98.5.bb
index 73c9ab2..8f71654 100644
--- a/recipes-security/clamav/clamav_0.98.5.bb
+++ b/recipes-security/clamav/clamav_0.98.5.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "ClamAV is an open source antivirus engine for detecting trojans,
 HOMEPAGE = "http://www.clamav.net/index.html"
 SECTION = "security"
 LICENSE = "LGPL-2.1"
-DEPENDS = "libtool db openssl zlib ncurses bzip2"
+DEPENDS = "libtool db openssl zlib ncurses bzip2 libmspack"
 
 LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
 
@@ -14,13 +14,9 @@ SRC_URI = "${DEBIAN_MIRROR}/main/c/${BPN}/${BPN}_${PV}+dfsg.orig.tar.xz;name=arc
     file://0004-Fix-compiling-on-Hurd.patch \
     file://0005-Workaround-a-bug-in-libc-on-Hurd.patch \
     file://0006-remove-unnecessary-harmful-flags-from-libclamav.pc.patch \
-    file://0007-libclamav-use-libmspack.patch \
     file://0008-Add-upstream-systemd-support-for-clamav-daemon-and-c.patch \
     file://0009-fix-ssize_t-size_t-off_t-printf-modifier.patch \
     file://0010-hardcode-LLVM-linker-flag-because-llvm-config-return.patch \
-    file://0011-Add-libmspack-library-from-upstream-without-unnecess.patch \
-    file://0012-allow-to-use-internal-libmspack-if-the-external-is-n.patch \
-    file://0013-fix-autoreconf-with-embedded-libmspack.patch \
     file://0014-remove-AC_CONFIG_SRCDIR-llvm-configure-from-libclama.patch \
     file://0015-bb-10731-Allow-to-specificy-a-group-for-the-socket-o.patch \
     file://0016-clamav-milter-add-additinal-SMFIF_-flags-before-invo.patch \
@@ -35,23 +31,24 @@ SRC_URI = "${DEBIAN_MIRROR}/main/c/${BPN}/${BPN}_${PV}+dfsg.orig.tar.xz;name=arc
 SRC_URI[archive.md5sum] = "34d5e8698e57ce45c4a8c3c2cb211cf3"
 SRC_URI[archive.sha256sum] = "0e353f646a0add17ca42e75ccfc7edf4f8b7c1acc972a86c317543f6b365db2d"
 
-inherit autotools-brokensep pkgconfig useradd
+inherit autotools-brokensep pkgconfig useradd systemd
+
+UID = "clamav"
+GID = "clamav"
 
 S = "${WORKDIR}/${BPN}-${PV}+dfsg"
 
 PACKAGECONFIG ??= ""
 PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
+PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 PACKAGECONFIG[xml] = "--with-xml=${STAGING_LIBDIR}/.., --with-xml=no, libxml2,"
 PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json,"
 PACKAGECONFIG[curl] = "--with-libcurl=${STAGING_LIBDIR}, --without-libcurl, curl,"
 PACKAGECONFIG[ipv6] = "--enable-ipv6, --disable-ipv6"
-
-UID = "clamav"
-GID = "clamav"
+PACKAGECONFI[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/', '--without-systemdsystemunitdir', "
 
 EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
-            --without-libcheck-prefix \
-            --disable-unrar \
+            --without-libcheck-prefix --disable-unrar \
             --disable-llvm \
             --with-openssl=${STAGING_LIBDIR}/.. \
             --with-zlib=${STAGING_LIBDIR}/.. \
-- 
1.9.1


