Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62768E009E6; Mon, 20 Jul 2015 21:43:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52F15E00973
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 21:42:59 -0700 (PDT)
Received: by pabkd10 with SMTP id kd10so40392634pab.2
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 21:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=eliyjs6ASO/b7xK+VMIMcs1JyQcEdBNY+mKy4i/fIa0=;
	b=J2ozcCFRsreuSaUzDm3lHgfHfuGZAu2CG4xtXGFlLcPCECfjrzw65fS8O1A9vSD3Ut
	tzYhC6ZtL93FR95QyAXdP/CwZT24DcBppaNpy3ST7jA3Uun7bLo2iEr1WztjSvUi/bDL
	2UQSiuZj2ANodSRPyiMew3A5KnAUUraSBOHjMF4XRnlFdK7D/4S6zIkkP5L0BwtsbAic
	Tg2HIPDbcXytjjUDPPi0XpAcz6f0t4lddJ+uhBhOvgryxpLaR01m3FRB7zNTbqxhT4/y
	1WvGMpVQRRLr5YdwvpD3TC4UuP1W24EjBq4i3/r3HV0oBc5Fq1u6GUQ05FGlNdykKcqu
	Fb4w==
X-Received: by 10.70.43.225 with SMTP id z1mr67790866pdl.45.1437453779291;
	Mon, 20 Jul 2015 21:42:59 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	mk6sm24731433pab.9.2015.07.20.21.42.55 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 20 Jul 2015 21:42:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 20 Jul 2015 21:42:47 -0700
Message-Id: <1437453767-5953-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] samhain-client: update to 4.0.0
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
X-List-Received-Date: Tue, 21 Jul 2015 04:43:10 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/files/add_aarch64_to_configure.patch   | 34 ----------------------
 ...ain-client_3.1.5.bb => samhain-client_4.0.0.bb} |  0
 ...ain-server_3.1.5.bb => samhain-server_4.0.0.bb} |  2 +-
 recipes-security/samhain/samhain.inc               |  5 ++--
 4 files changed, 3 insertions(+), 38 deletions(-)
 delete mode 100644 recipes-security/samhain/files/add_aarch64_to_configure.patch
 rename recipes-security/samhain/{samhain-client_3.1.5.bb => samhain-client_4.0.0.bb} (100%)
 rename recipes-security/samhain/{samhain-server_3.1.5.bb => samhain-server_4.0.0.bb} (97%)

diff --git a/recipes-security/samhain/files/add_aarch64_to_configure.patch b/recipes-security/samhain/files/add_aarch64_to_configure.patch
deleted file mode 100644
index 05f4413..0000000
--- a/recipes-security/samhain/files/add_aarch64_to_configure.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-Index: samhain-3.1.3/config.sub
-===================================================================
---- samhain-3.1.3.orig/config.sub
-+++ samhain-3.1.3/config.sub
-@@ -250,6 +250,7 @@ case $basic_machine in
- 	| alpha64 | alpha64ev[4-8] | alpha64ev56 | alpha64ev6[78] | alpha64pca5[67] \
- 	| am33_2.0 \
- 	| arc | arm | arm[bl]e | arme[lb] | armv[2345] | armv[345][lb] | avr | avr32 \
-+    | aarch64 | aarch64be \
- 	| bfin \
- 	| c4x | clipper \
- 	| d10v | d30v | dlx | dsp16xx \
-@@ -332,6 +333,7 @@ case $basic_machine in
- 	| alpha64-* | alpha64ev[4-8]-* | alpha64ev56-* | alpha64ev6[78]-* \
- 	| alphapca5[67]-* | alpha64pca5[67]-* | arc-* \
- 	| arm-*  | armbe-* | armle-* | armeb-* | armv*-* \
-+    | aarch64-* | aarch64be-* \
- 	| avr-* | avr32-* \
- 	| bfin-* | bs2000-* \
- 	| c[123]* | c30-* | [cjt]90-* | c4x-* | c54x-* | c55x-* | c6x-* \
-Index: samhain-3.1.3/config.guess
-===================================================================
---- samhain-3.1.3.orig/config.guess
-+++ samhain-3.1.3/config.guess
-@@ -882,6 +882,9 @@ EOF
- 	    echo ${UNAME_MACHINE}-unknown-linux-gnueabi
- 	fi
- 	exit ;;
-+    aarch64*:Linux:*:*)
-+	echo ${UNAME_MACHINE}-unknown-linux-gnu
-+	exit ;;
-     avr32*:Linux:*:*)
- 	echo ${UNAME_MACHINE}-unknown-linux-gnu
- 	exit ;;
diff --git a/recipes-security/samhain/samhain-client_3.1.5.bb b/recipes-security/samhain/samhain-client_4.0.0.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_3.1.5.bb
rename to recipes-security/samhain/samhain-client_4.0.0.bb
diff --git a/recipes-security/samhain/samhain-server_3.1.5.bb b/recipes-security/samhain/samhain-server_4.0.0.bb
similarity index 97%
rename from recipes-security/samhain/samhain-server_3.1.5.bb
rename to recipes-security/samhain/samhain-server_4.0.0.bb
index b8ea248..41646e6 100644
--- a/recipes-security/samhain/samhain-server_3.1.5.bb
+++ b/recipes-security/samhain/samhain-server_4.0.0.bb
@@ -47,4 +47,4 @@ FILES_${PN}-dbg += " \
     ${sbindir}/.debug/* \
     "
 
-RDEPENDS_${PN} += "gmp bash"
+RDEPENDS_${PN} += "gmp bash perl"
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 869e959..e33182f 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -7,11 +7,10 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.init \
 	   file://${INITSCRIPT_NAME}.default \
-       file://add_aarch64_to_configure.patch \
 	  "
 
-SRC_URI[md5sum] = "b72b526c6ee504317981e6dba1673b9d"
-SRC_URI[sha256sum] = "2d7d93992d1737b72ff7c835b4c90a2d4d46e448d9265c0c3341544f6b1ffcdb"
+SRC_URI[md5sum] = "2144383cc5452b9b80c7e4e4c991ad4a"
+SRC_URI[sha256sum] = "5a841708f78c6d9b4731970fa39151dff366885de08ecddc382e8c45a2c1b4e2"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
2.3.5


