Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84CB1E00E06; Sun,  4 Sep 2016 20:43:57 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49F73E00DF0
	for <yocto@yoctoproject.org>; Sun,  4 Sep 2016 20:43:53 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id a143so5730094pfa.3
	for <yocto@yoctoproject.org>; Sun, 04 Sep 2016 20:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=PEhT8p7fzRT58AMo1JNSZojaALMDNCYha6vBZE4n1CU=;
	b=rQAjnV3UoG82MDUO4Qc9x/JYFDFE2oS73ujGXUserv54mLUGoLHiyQodsne/qonK/o
	NcVtWmhaZdFxNgPtR5eR0CF3JEr3kAqm0xjRMrLphBJD/M6a+CpcsFiKVgC0ozRs9fam
	On4l765+OuPPNEW7XlCRKv0wBrOSi/N3c10+l5a6BUp67yYFkyypBH77fk2+7f/ldTRF
	sEzwhWMIViGY+xab8gQwhquoo7fqLWwetFnNrExDcvPqohHLiZDN3l0rYrdUL2HH7Bpb
	mAr6LP2Ymtwy1+QJnGhka9X/PTaEd8WZBaIyUc8GvoDSDgi9BvLSyMB5LMMuezFydrT7
	emhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=PEhT8p7fzRT58AMo1JNSZojaALMDNCYha6vBZE4n1CU=;
	b=QmJln6ixHKSC6sXf2zI0ooBkphGP9A4WnzSvDck1uX41yOdikTX+F1+1sAH70DXMF5
	1JnjWkLlffVj/l6KmOFQtP+1mUNxscoLzliNuSVA2KrctwOZYvNKj9N9GZdLa1+5lpuM
	nM7a0dW5c4Zk9nZTxtBOaB5YQxBYM8QU8mZSeftm6g1OQWppk6qawLmU9gG7N8uJ2DZG
	spjUV+A/Ssr4QtLgWMMLVGU2U7TW86EHr8EnMLzfBzq39pGczRgPCfyD1BsA5k/304Fh
	4yDlpriS9bY7utZgY02FwCKpcZ530SAZrotNBixvh4xaWya0saGzPQQe9yQs/IIFoYjL
	rGLw==
X-Gm-Message-State: AE9vXwMAhE6jDB1ZxuOw06U+rieytZ+cDsl6VTDcTnfuLYXvLxl8wCmOoJgCFqgDHaxl5A==
X-Received: by 10.98.89.91 with SMTP id n88mr27491745pfb.119.1473047032816;
	Sun, 04 Sep 2016 20:43:52 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:f54a:22d8:ba7e:d57c])
	by smtp.gmail.com with ESMTPSA id
	r10sm29873710pfk.84.2016.09.04.20.43.51 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 04 Sep 2016 20:43:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  4 Sep 2016 20:43:49 -0700
Message-Id: <1473047029-28460-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][v2][PATCH] clamav: fix gcc 6.x build failure.
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
X-List-Received-Date: Mon, 05 Sep 2016 03:43:57 -0000

V2: refactored patch to use meta-oe llvm.

./llvm/include/llvm/Support/AlignOf.h:57:24: error: expected unqualified-id before 'alignof'
 static inline unsigned alignof() { return AlignOf<T>::Alignment; }
                        ^~~~~~~

configure --with-system-llvm --with-llvm-linking=dynamic.
defined use with meta-oe LLVM3.3 via config option

switched to git fetch.
Fix typo for systemd PACKAGECONFIG

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.2.bb | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.2.bb
index 184d605..d1a4cde 100644
--- a/recipes-security/clamav/clamav_0.99.2.bb
+++ b/recipes-security/clamav/clamav_0.99.2.bb
@@ -8,7 +8,9 @@ DEPENDS = "libtool db libmspack chrpath-replacement-native"
 
 LIC_FILES_CHKSUM = "file://COPYING.LGPL;beginline=2;endline=3;md5=4b89c05acc71195e9a06edfa2fa7d092"
 
-SRC_URI = "http://www.clamav.net/downloads/production/${BPN}-${PV}.tar.gz \
+SRCREV = "5ceae552829ee65c9ecff8ff303b1f2ddfd11576"
+
+SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=${PV} \
     file://clamd.conf \
     file://freshclam.conf \
     file://volatiles.03_clamav \
@@ -17,6 +19,8 @@ SRC_URI = "http://www.clamav.net/downloads/production/${BPN}-${PV}.tar.gz \
 SRC_URI[md5sum] = "61b51a04619aeafd965892a53f86d192"
 SRC_URI[sha256sum] = "167bd6a13e05ece326b968fdb539b05c2ffcfef6018a274a10aeda85c2c0027a"
 
+S = "${WORKDIR}/git"
+
 LEAD_SONAME = "libclamav.so"
 SO_VER = "7.1.1"
 
@@ -27,9 +31,21 @@ inherit autotools-brokensep pkgconfig useradd systemd
 UID = "clamav"
 GID = "clamav"
 
-PACKAGECONFIG ?= "ncurses openssl bz2 zlib "
+# Clamav has a built llvm version 2 but does not build with gcc 6.x,
+# disable the internal one. This is a known issue
+# If you want LLVM support, use meta-oe llvm3.3 to build for GCC 6.X,
+# as defined below
+
+CLAMAV_LLVM ?= "oellvm"
+CLAMAV_LLVM_RELEASE ?= "3.3"
+
+PACKAGECONFIG ?= "ncurses openssl bz2 zlib ${CLAMAV_LLVM}"
 PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
+
+PACKAGECONFIG[oellvm] = "--with-system-llvm --with-llvm-linking=dynamic --disable-llvm, ,llvm${CLAMAV_LLVM_RELEASE}"
+#export WANT_LLVM_RELEASE = "${CLAMAV_LLVM_RELEASE"
+
 PACKAGECONFIG[pcre] = "--with-pcre=${STAGING_LIBDIR},  --without-pcre, libpcre"
 PACKAGECONFIG[xml] = "--with-xml=${STAGING_LIBDIR}/.., --with-xml=no, libxml2,"
 PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json,"
@@ -39,8 +55,7 @@ PACKAGECONFIG[openssl] = "--with-openssl=${STAGING_DIR_HOST}/usr, --without-open
 PACKAGECONFIG[zlib] = "--with-zlib=${STAGING_DIR_HOST}/usr, --without-zlib, zlib, "
 PACKAGECONFIG[bz2] = "--with-libbz2-prefix=${STAGING_LIBDIR}/.., --without-libbz2-prefix, "
 PACKAGECONFIG[ncurses] = "--with-libncurses-prefix=${STAGING_LIBDIR}/.., --without-libncurses-prefix, ncurses, "
-
-PACKAGECONFI[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/', '--without-systemdsystemunitdir', "
+PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_unitdir}/system/', '--without-systemdsystemunitdir', "
 
 EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
             --without-libcheck-prefix --disable-unrar \
@@ -48,6 +63,7 @@ EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
             --program-prefix="" \
             --disable-yara \
             --disable-rpath \
+	    --disable-llvm \
             "
 
 do_configure () {
-- 
2.7.4


