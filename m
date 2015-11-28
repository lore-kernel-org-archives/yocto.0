Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ADCFE00C0E; Fri, 27 Nov 2015 20:06:38 -0800 (PST)
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
	*      [209.85.214.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6476E00BFF
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 20:06:33 -0800 (PST)
Received: by obdgf3 with SMTP id gf3so94592042obd.3
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 20:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=r4VnYHaX247eJvENpePQBQoUWyB24+dZjxvr2TpkZl8=;
	b=rlzWF5jUpZqab9DH5nOUE5ctURGaWoGP+Q4uBhs6EoEGvc2wwjstLTdXJDzThj4U0g
	RhSf8OYldg4t4hRcJF3Q0XeIOhSttp5fCC2sh6rtEYII+mHQSekvRl83/1RZLZ2KPD8+
	KoLA2WiKDY0AUM9Ch5/LCAxCp1Ao4dcPm9b4FuOIZ2TAJ25HOad/0WfjDVjpe8cIUKnO
	hZhIOUQ/e34HPaYCjzxLBiXZlm7Pcx6lnx94c5IPyH/oCjoeA03GJj1FKSdP0Jan89Yi
	893DJA9yFWta7Ik5JH+FUH6WtIcEB5VzrH1KOJ/23BjlXyNgS8GiPAUXKZsE1vAljlYt
	m45A==
X-Received: by 10.60.61.5 with SMTP id l5mr12330352oer.35.1448683592896;
	Fri, 27 Nov 2015 20:06:32 -0800 (PST)
Received: from localhost.localdomain (75-163-220-91.clsp.qwest.net.
	[75.163.220.91])
	by smtp.gmail.com with ESMTPSA id u8sm16941139obf.5.2015.11.27.20.06.31
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 27 Nov 2015 20:06:31 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 27 Nov 2015 20:06:27 -0800
Message-Id: <1448683587-26563-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] nmap: package update to 7.0
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
X-List-Received-Date: Sat, 28 Nov 2015 04:06:38 -0000

removed integrated patch
Changed LIC_FILES_CHKSUM from generic OE to a file within the package
sources.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../nmap/files/add_aarch64_to_configure.patch      | 28 ----------------------
 .../nmap/{nmap_6.47.bb => nmap_7.00.bb}            | 11 ++++-----
 2 files changed, 5 insertions(+), 34 deletions(-)
 delete mode 100644 recipes-security/nmap/files/add_aarch64_to_configure.patch
 rename recipes-security/nmap/{nmap_6.47.bb => nmap_7.00.bb} (85%)

diff --git a/recipes-security/nmap/files/add_aarch64_to_configure.patch b/recipes-security/nmap/files/add_aarch64_to_configure.patch
deleted file mode 100644
index 27b3d76..0000000
--- a/recipes-security/nmap/files/add_aarch64_to_configure.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-nmap: Add support for aarch64* builds
-
-Upstream-Status: Submitted to nmap-dev
-
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
-Index: config.sub
-===================================================================
---- a/config.sub
-+++ b/config.sub
-@@ -249,7 +249,7 @@ case $basic_machine in
- 	| a29k \
- 	| alpha | alphaev[4-8] | alphaev56 | alphaev6[78] | alphapca5[67] \
- 	| alpha64 | alpha64ev[4-8] | alpha64ev56 | alpha64ev6[78] | alpha64pca5[67] \
--	| am33_2.0 \
-+	| am33_2.0 | aarch64 | aarch64be \
- 	| arc | arm | arm[bl]e | arme[lb] | armv[2345] | armv[345][lb] | avr | avr32 \
- 	| bfin \
- 	| c4x | clipper \
-@@ -343,7 +343,7 @@ case $basic_machine in
- 	| alpha64-* | alpha64ev[4-8]-* | alpha64ev56-* | alpha64ev6[78]-* \
- 	| alphapca5[67]-* | alpha64pca5[67]-* | arc-* \
- 	| arm-*  | armbe-* | armle-* | armeb-* | armv*-* \
--	| avr-* | avr32-* \
-+	| avr-* | avr32-* | aarch64-* | aarch64be-*\
- 	| bfin-* | bs2000-* \
- 	| c[123]* | c30-* | [cjt]90-* | c4x-* \
- 	| clipper-* | craynv-* | cydra-* \
diff --git a/recipes-security/nmap/nmap_6.47.bb b/recipes-security/nmap/nmap_7.00.bb
similarity index 85%
rename from recipes-security/nmap/nmap_6.47.bb
rename to recipes-security/nmap/nmap_7.00.bb
index e9ce1c9..0a4e310 100644
--- a/recipes-security/nmap/nmap_6.47.bb
+++ b/recipes-security/nmap/nmap_7.00.bb
@@ -3,13 +3,12 @@ DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utili
 SECTION = "security"
 LICENSE = "GPL-2.0"
 
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=51f7052ac85aaf1a2127f7803de1261e"
 
-SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2 \
-            file://add_aarch64_to_configure.patch"
+SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2"
 
-SRC_URI[md5sum] = "edfe81f6763223c0a29bfa15a8526e2a"
-SRC_URI[sha256sum] = "8fa11e9e203ce2d81a207db5ca4f110a525f6c01c1dd0018325a7112a51aa591"
+SRC_URI[md5sum] = "6cdf5d03cc3294b99d69dfca83f2f2ee"
+SRC_URI[sha256sum] = "9f442301c615c608a385831c3505cdfed9b0795cd100f1a258b04509802802ae"
 
 inherit autotools-brokensep pkgconfig distro_features_check
 
@@ -38,7 +37,7 @@ do_configure() {
 
 PACKAGES = "${PN} ${PN}-dbg ${PN}-doc"
 
-FILES_${PN} = "${bindir}/nmap ${datadir}/nmap/*"
+FILES_${PN} = "${bindir}/nmap ${datadir}/nmap/* ${bindir}/uninstall_ndiff"
 
 # append packages if enabled
 FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ncat", "${bindir}/ncat ${target_datadir}/ncat", "", d)}"
-- 
2.3.5


