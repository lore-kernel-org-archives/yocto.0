Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 544ECE00D8C; Sun,  5 Jun 2016 17:07:44 -0700 (PDT)
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
	*      [209.85.220.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BCC4E00CB2
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 17:07:40 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id gp3so10442764pac.2
	for <yocto@yoctoproject.org>; Sun, 05 Jun 2016 17:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=xvyXfU29oj/yk1pHZILPib07qEZtNppTCq7NSHSqvK4=;
	b=E2MiRgylb+EephBaisi3a8wfk+PT9HC78jEgIzR1mlg0cuakprNwRIVPQdV/8i9xB5
	qCQLXzhsCB+u3GYKwy/uw4jArPbyvpnSHBpqnAr92lYJPiD0lUqqy9VkK+L2hEszSHYZ
	/TXPh3Ww20632I0fFzg3TZDPX5YuMP7fIFZi0ekNgrLxEHjNpm5Jq6eQ9OWvfzJdMTux
	cfAAX2G54oSmVKjUwt75gowrJyAwIMu6nK+DYNJW8evqOhItfjRrwoI3kK7KGGY9Wzkk
	KQFuGoLGq/eUW+gl0nApdBoj75BlHeSWxZ0vkRYRBP48H7sgaAn3RlmooO+CXBT3ifwa
	6drA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=xvyXfU29oj/yk1pHZILPib07qEZtNppTCq7NSHSqvK4=;
	b=JVB8vG9tij1d9l+2VPLh+AIAPInRxNO/7eKWYR+aZC7yPeH3E9vwibLCAs3697RmBL
	a3aWjVj2jx5TS5iI+TADFMHTiYlCHWIeafO3G+z5PZmi+U1BRTlrICx5h1PWwggAFlHA
	NIX0MGn2Ojj9GgkFwoIACs3iBkiTbNJUbX41kKv1nHzywxCblzxTnvVs/LkvT+oKwEpI
	Y1Cy5e6HXBKZ7hCmVkDrSbhhZF1dvmT6FDcA8aOjYvhTRgFqYZLnRo99uZ+kCeEXqBwE
	aRaduwUS/ilOHMGFSSs6hyFU9G3Spj6jRxcmFB3IZSj5v5vUk0GlY97jCf2VsJy9cQCY
	BUmA==
X-Gm-Message-State: ALyK8tKUFmJbEWx4lBOH6LoW8xOMd3aIkFu3lMKGeTpXmq74nQMPKSZ0IlfTwcsoemQ3+A==
X-Received: by 10.66.54.35 with SMTP id g3mr21420473pap.30.1465171660076;
	Sun, 05 Jun 2016 17:07:40 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id r7sm2854110pfb.79.2016.06.05.17.07.37
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 05 Jun 2016 17:07:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  5 Jun 2016 17:07:32 -0700
Message-Id: <1465171652-27598-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] tripwire: update to 2.4.3.1
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
X-List-Received-Date: Mon, 06 Jun 2016 00:07:44 -0000

this also fixes clang and gcc 5.3 build issues

remove merged patches

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/tripwire_add_aarch64_to_configure.patch  | 29 -----------------
 .../tripwire/files/tripwire_add_ppc64.patch        | 35 --------------------
 .../{tripwire_2.4.2.2.bb => tripwire_2.4.3.1.bb}   | 38 +++++++---------------
 3 files changed, 12 insertions(+), 90 deletions(-)
 delete mode 100644 recipes-security/tripwire/files/tripwire_add_aarch64_to_configure.patch
 delete mode 100644 recipes-security/tripwire/files/tripwire_add_ppc64.patch
 rename recipes-security/tripwire/{tripwire_2.4.2.2.bb => tripwire_2.4.3.1.bb} (69%)

diff --git a/recipes-security/tripwire/files/tripwire_add_aarch64_to_configure.patch b/recipes-security/tripwire/files/tripwire_add_aarch64_to_configure.patch
deleted file mode 100644
index fdaa494..0000000
--- a/recipes-security/tripwire/files/tripwire_add_aarch64_to_configure.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-tripwire: Add aach64 support
-
-Upstream-Status: Submitted to tripwire-dev
-
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
-
-Index: config.sub
-===================================================================
---- a/config.sub
-+++ b/config.sub
-@@ -223,7 +223,7 @@ esac
- case $basic_machine in
- 	# Recognize the basic CPU types without company name.
- 	# Some are omitted here because they have special meanings below.
--	tahoe | i860 | ia64 | m32r | m68k | m68000 | m88k | ns32k | arc \
-+	tahoe | i860 | ia64 | m32r | m68k | m68000 | m88k | ns32k | aarch64 | aarch64be |arc \
- 	        | arm | arme[lb] | arm[bl]e | armv[2345] | armv[345][lb] | strongarm | xscale \
- 		| pyramid | mn10200 | mn10300 | tron | a29k \
- 		| 580 | i960 | h8300 \
-@@ -267,7 +267,7 @@ case $basic_machine in
- 	# Recognize the basic CPU types with company name.
- 	# FIXME: clean up the formatting here.
- 	vax-* | tahoe-* | i*86-* | i860-* | ia64-* | m32r-* | m68k-* | m68000-* \
--	      | m88k-* | sparc-* | ns32k-* | fx80-* | arc-* | c[123]* \
-+	      | m88k-* | sparc-* | ns32k-* | fx80-* | arc-* | c[123]* | aarch64-* | aarch64be-*  \
- 	      | arm-*  | armbe-* | armle-* | armv*-* | strongarm-* | xscale-* \
- 	      | mips-* | pyramid-* | tron-* | a29k-* | romp-* | rs6000-* \
- 	      | power-* | none-* | 580-* | cray2-* | h8300-* | h8500-* | i960-* \
diff --git a/recipes-security/tripwire/files/tripwire_add_ppc64.patch b/recipes-security/tripwire/files/tripwire_add_ppc64.patch
deleted file mode 100644
index 0f43017..0000000
--- a/recipes-security/tripwire/files/tripwire_add_ppc64.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-tripwire:
-
-Powerpc64 is not supported in the current tripwier release.
-
- configure: error: /bin/sh ./config.sub powerpc64-poky-linux failed
- | Configure failed. The contents of all config.log files follows to aid debugging
-
-Submitted upstream to  Tripwire devel mailing list
-
-http://sourceforge.net/p/tripwire/mailman/message/32776415/
-
-Signed-off-By: Armin Kuster <akuster808@gmail.com>
-
-Index: tripwire-2.4.2.2-src/config.sub
-===================================================================
---- tripwire-2.4.2.2-src.orig/config.sub
-+++ tripwire-2.4.2.2-src/config.sub
-@@ -233,7 +233,7 @@ case $basic_machine in
- 		| alpha | alphaev[4-8] | alphaev56 | alphapca5[67] \
- 		| alphaev6[78] \
- 		| we32k | ns16k | clipper | i370 | sh | sh[34] \
--		| powerpc | powerpcle \
-+		| powerpc | powerpcle | powerpc64 \
- 		| 1750a | dsp16xx | pdp10 | pdp11 \
- 		| mips16 | mips64 | mipsel | mips64el \
- 		| mips64orion | mips64orionel | mipstx39 | mipstx39el \
-@@ -280,7 +280,7 @@ case $basic_machine in
- 	      | we32k-* | cydra-* | ns16k-* | pn-* | np1-* | xps100-* \
- 	      | clipper-* | orion-* \
- 	      | sparclite-* | pdp10-* | pdp11-* | sh-* | sh[34]-* | sh[34]eb-* \
--	      | powerpc-* | powerpcle-* | sparc64-* | sparcv9-* | sparcv9b-* | sparc86x-* \
-+	      | powerpc-* | powerpcle-* | powerpc64-* | sparc64-* | sparcv9-* | sparcv9b-* | sparc86x-* \
- 	      | mips16-* | mips64-* | mipsel-* \
- 	      | mips64el-* | mips64orion-* | mips64orionel-* \
- 	      | mips64vr4100-* | mips64vr4100el-* | mips64vr4300-* | mips64vr4300el-* \
diff --git a/recipes-security/tripwire/tripwire_2.4.2.2.bb b/recipes-security/tripwire/tripwire_2.4.3.1.bb
similarity index 69%
rename from recipes-security/tripwire/tripwire_2.4.2.2.bb
rename to recipes-security/tripwire/tripwire_2.4.3.1.bb
index 55c4013..3ea0806 100644
--- a/recipes-security/tripwire/tripwire_2.4.2.2.bb
+++ b/recipes-security/tripwire/tripwire_2.4.3.1.bb
@@ -6,21 +6,20 @@ SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=1c069be8dbbe48e89b580ab4ed86c127"
 
-SRC_URI = "${SOURCEFORGE_MIRROR}/project/${BPN}/${BPN}-src/${BPN}-${PV}/${BPN}-${PV}-src.tar.bz2 \
-	   file://tripwire.cron \
-	   file://tripwire.sh \
-	   file://tripwire.txt \
-	   file://twcfg.txt \
-	   file://twinstall.sh \
-	   file://twpol-yocto.txt \
-	   file://tripwire_add_ppc64.patch \
-       file://tripwire_add_aarch64_to_configure.patch \
-       file://add_armeb_arch.patch \
+SRCREV = "210a394b1ce63da7ac51a866ac2e68d439308701"
+
+SRC_URI = "\
+	git://github.com/Tripwire/tripwire-open-source.git \
+	file://tripwire.cron \
+	file://tripwire.sh \
+	file://tripwire.txt \
+	file://twcfg.txt \
+	file://twinstall.sh \
+	file://twpol-yocto.txt \
        "
-SRC_URI[md5sum] = "2462ea16fb0b5ae810471011ad2f2dd6"
-SRC_URI[sha256sum] = "e09a7bdca9302e704cc62067399e0b584488f825b0e58c82ad6d54cd2e899fad"
+#PV = "2.4.3.1+git${SRCPV}"
 
-S = "${WORKDIR}/tripwire-${PV}-src"
+S = "${WORKDIR}/git"
 
 inherit autotools-brokensep update-rc.d
 
@@ -32,18 +31,6 @@ TRIPWIRE_TARGET = "${TARGET_SYS}"
 CXXFLAGS += "-fno-strict-aliasing"
 EXTRA_OECONF = "--disable-openssl  --enable-static --sysconfdir=/etc/tripwire"
 
-do_configure () {
-    #
-    # sed bits taken from http://www.linuxfromscratch.org/blfs/view/svn/postlfs/tripwire.html
-    #
-    sed -i -e 's/!Equal/!this->Equal/' src/cryptlib/algebra.h                &&
-    sed -i -e '/stdtwadmin.h/i#include <unistd.h>' src/twadmin/twadmincl.cpp &&
-    sed -i -e 's/eArchiveOpen e\([^)]*)\)/throw ( eArchiveOpen\1 )/' \
-    -e '/throw e;/d' src/core/archive.cpp                             &&
-
-    oe_runconf
-}
-
 do_install () {
     install -d ${D}${libdir} ${D}${datadir} ${D}${base_libdir}
     install -d ${D}${sysconfdir} ${D}${mandir} ${D}${sbindir}
@@ -77,5 +64,4 @@ FILES_${PN} += "${libdir} ${docdir}/${PN}/*"
 FILES_${PN}-dbg += "${sysconfdir}/${PN}/.debug"
 FILES_${PN}-staticdev += "${localstatedir}/lib/${PN}/lib*.a"
 
-
 RDEPENDS_${PN} += " perl nano msmtp cronie"
-- 
1.9.1


