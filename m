Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3A78E00BCE; Sat, 13 Apr 2019 10:29:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E64D3E00BAB
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2019 10:29:42 -0700 (PDT)
Received: by mail-pl1-f177.google.com with SMTP id cv12so6605484plb.9
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2019 10:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=bd8aeBw13OTcn0coCslonM3s+BdRZHkHR1FVfMxtYzk=;
	b=F7nBaRkzGE5ARM6v1nm90yJymukJgRStkFxcig0OKT6cUdTNerVrSwf8aYiuaVaTMM
	ohnn92gP90o8Mz+vIy95a1rTYXHNPShDtfh5naGNtiyAsmmSG9egQCzStKGso+Do0COv
	fmVIHS6nRjOKSaBNdCwR2ys6eWmsTD6tUYnDn5RALT+Qo+WBwxf+wDkVbYPRJpixQ2b0
	gNr/7y6Z4qsOrT2tRIBl6nM//SA4SEG8LHNvHAUvSKmwhePo003m8K9eVQSe+2ZWCmni
	LxkIcdz7C3Q8DA26mXBAmRar7QLPjHOhEh7yBg8ymlfk/1DddxiG/GvnVO49JPwiiBar
	yKpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=bd8aeBw13OTcn0coCslonM3s+BdRZHkHR1FVfMxtYzk=;
	b=Q4LP0oRuL8HeuwinZfBf2mhjyYXCO280oa0x0tV7lyIRJeV3gL//xQVMQ56s68kFxM
	S+6C+5r4oN7AK3KogrEA9v3G1wDBF0SL1DWleqWKGVtvhttkEgsjn+BxZ9l8TEoUcqJK
	A1i5knw+q2L1SJBhgjwakMU+3zs01e8b+cnXTYrvdWAAgTRM+W4g62PFGThXm7OGxESt
	Qi79kJYgt0nCZhAJidbhczcGBJ9O3BAeuFChFveNMhd8LUBUmGw+yJTagfVXOq03cSQr
	Z1I4q0LSJczNQ1IvIOiwU+0w1+1JqcK/lXkGjgccuxaHfqCdff/FYbjd7aQRWoYOyJax
	7Mkw==
X-Gm-Message-State: APjAAAWLPD6KSciwyUl4ks0+CK+Mj9TlNdkjX+H7x5WnDTDGHcqmBu1n
	yT/4L1bTamTEtatTSVtjBoMTXcMz
X-Google-Smtp-Source: APXvYqw+30GptqXBCrSgfO+R69wOdmJtwoFeg6wnQqRhjzNfnCQxrDCZyw/f6zii7PeQQ73owAcTQg==
X-Received: by 2002:a17:902:bc85:: with SMTP id
	bb5mr38331395plb.310.1555176581868; 
	Sat, 13 Apr 2019 10:29:41 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j20sm31417570pfn.84.2019.04.13.10.29.40 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 13 Apr 2019 10:29:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 13 Apr 2019 10:29:39 -0700
Message-Id: <20190413172939.15121-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] clamav-native: fix new build issue
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
X-List-Received-Date: Sat, 13 Apr 2019 17:29:43 -0000

re-arch the reciped to build properly.

Fixed /var/lib/clamav dir issue

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.4.bb | 41 +++++++++++-------------
 1 file changed, 19 insertions(+), 22 deletions(-)

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
index 32dc59c..7d8767e 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -4,8 +4,8 @@ HOMEPAGE = "http://www.clamav.net/index.html"
 SECTION = "security"
 LICENSE = "LGPL-2.1"
 
-DEPENDS = "libtool db libmspack chrpath-replacement-native clamav-native"
-DEPENDS_class-native = "db-native"
+DEPENDS = "libtool db libmspack openssl zlib llvm chrpath-replacement-native clamav-native"
+DEPENDS_class-native = "db-native openssl-native zlib-native"
  
 LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
 
@@ -36,39 +36,35 @@ INSTALL_CLAMAV_CVD ?= "1"
 # disable the internal one. This is a known issue
 # If you want LLVM support, use the one in core
 
-PACKAGECONFIG ?= "ncurses openssl bz2 zlib llvm"
-PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
-PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
+CLAMAV_USR_DIR = "${STAGING_DIR_NATIVE}/usr"
+CLAMAV_USR_DIR_class-target = "${STAGING_DIR_HOST}/usr"
 
-PACKAGECONFIG[llvm] = "--with-system-llvm --with-llvm-linking=dynamic --disable-llvm, ,llvm"
+PACKAGECONFIG_class-target ?= "ncurses bz2"
+PACKAGECONFIG_class-target += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
+PACKAGECONFIG_class-target += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
 PACKAGECONFIG[pcre] = "--with-pcre=${STAGING_LIBDIR},  --without-pcre, libpcre"
-PACKAGECONFIG[xml] = "--with-xml=${STAGING_LIBDIR}/.., --with-xml=no, libxml2,"
+PACKAGECONFIG[xml] = "--with-xml=${CLAMAV_USR_DIR}, --disable-xml, libxml2,"
 PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json,"
 PACKAGECONFIG[curl] = "--with-libcurl=${STAGING_LIBDIR}, --without-libcurl, curl,"
 PACKAGECONFIG[ipv6] = "--enable-ipv6, --disable-ipv6"
-PACKAGECONFIG[openssl] = "--with-openssl=${STAGING_DIR_HOST}/usr, --without-openssl, openssl, openssl"
-PACKAGECONFIG[zlib] = "--with-zlib=${STAGING_DIR_HOST}/usr --disable-zlib-vcheck , --without-zlib, zlib, "
-PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${STAGING_LIBDIR}/.., --without-libbz2-prefix, "
-PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${STAGING_LIBDIR}/.., --without-libncurses-prefix, ncurses, "
+PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${CLAMAV_USR_DIR}, --without-libbz2-prefix, "
+PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${CLAMAV_USR_DIR}, --without-libncurses-prefix, ncurses, "
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/, --without-systemdsystemunitdir, "
 
-EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
-            --without-libcheck-prefix --disable-unrar \
-            --disable-mempool \
-            --program-prefix="" \
-            --disable-yara \
-            --disable-rpath \
-            "
-
-EXTRA_OECONF_class-native += "--without-libcheck-prefix --disable-unrar \
+EXTRA_OECONF_CLAMAV = "--without-libcheck-prefix --disable-unrar \
             --with-system-llvm --with-llvm-linking=dynamic --disable-llvm \
             --disable-mempool \
             --program-prefix="" \
             --disable-yara \
-            --without-libbz2-prefix --without-zlib \
+            --disable-xml \
+            --with-openssl=${CLAMAV_USR_DIR} \
+            --with-zlib=${CLAMAV_USR_DIR} --disable-zlib-vcheck \
             "
 
+EXTRA_OECONF_class-native += "${EXTRA_OECONF_CLAMAV}"
+EXTRA_OECONF_class-target += "--with-user=${UID}  --with-group=${GID} --disable-rpath ${EXTRA_OECONF_CLAMAV}"
+
 do_configure () {
     cd ${S}
     ./configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
@@ -117,6 +113,7 @@ pkg_postinst_ontarget_${PN} () {
     if [ -e /etc/init.d/populate-volatile.sh ] ; then
         ${sysconfdir}/init.d/populate-volatile.sh update
     fi
+    mkdir -p ${localstatedir}/lib/clamav
     chown -R ${UID}:${GID} ${localstatedir}/lib/clamav
 }
 
@@ -177,7 +174,7 @@ RREPLACES_${PN} += "${PN}-systemd"
 RCONFLICTS_${PN} += "${PN}-systemd"
 SYSTEMD_SERVICE_${PN} = "${BPN}.service"
 
-RDEPENDS_${PN} += "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav"
+RDEPENDS_${PN} = "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav"
 RDEPENDS_${PN}_class-native = ""
 
 BBCLASSEXTEND = "native"
-- 
2.17.1


