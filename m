Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E882E00874; Fri, 30 Jan 2015 21:02:39 -0800 (PST)
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
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5556BE0086F
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 21:02:30 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id bj1so60338046pad.1
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 21:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=BODOvTftNNHQxhNTqF9lqvauFZs7dESSkL78PnstRzc=;
	b=GJgtWEnxe2B5POpAumFGM/qEBBGY01YLZmc20GMwqcmjPeRep3IhMX/ETTREVdNEo+
	w5fqKnlmxbyW1nXLHl5m1NXem93TPYFV3n3/NiOCLdzVU1J1WJIoedfJXYadtycet4Kr
	ZGckzNf8n+uPRxgZou024EBLVSFJ5rYaTRAt79FP+n7ubNWWYE7IPSDyhgrBB9dS5nIK
	srpNgE4H2SofoLjCEcCg5cGyf8nIUDRq8I3MEA6fu75vYDoUwfFQaJpUCQz4fn6WoLNo
	65lg3wAdNHO9Q4QEfMdWUQ4T8x/FEIpmICtbWbBzS79F8Lf2ANnDHElY5HZ/aW9CkqyI
	L9oQ==
X-Received: by 10.68.221.165 with SMTP id qf5mr13407564pbc.101.1422680550435; 
	Fri, 30 Jan 2015 21:02:30 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	ms5sm12288934pbb.59.2015.01.30.21.02.28 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 30 Jan 2015 21:02:29 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Jan 2015 21:02:24 -0800
Message-Id: <1422680544-15839-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] samhain: fix aarch64 build issues
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
X-List-Received-Date: Sat, 31 Jan 2015 05:02:39 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/files/add_aarch64_to_configure.patch   | 34 ++++++++++++++++++++++
 recipes-security/samhain/samhain.inc               |  5 ++++
 2 files changed, 39 insertions(+)
 create mode 100644 recipes-security/samhain/files/add_aarch64_to_configure.patch

diff --git a/recipes-security/samhain/files/add_aarch64_to_configure.patch b/recipes-security/samhain/files/add_aarch64_to_configure.patch
new file mode 100644
index 0000000..05f4413
--- /dev/null
+++ b/recipes-security/samhain/files/add_aarch64_to_configure.patch
@@ -0,0 +1,34 @@
+Index: samhain-3.1.3/config.sub
+===================================================================
+--- samhain-3.1.3.orig/config.sub
++++ samhain-3.1.3/config.sub
+@@ -250,6 +250,7 @@ case $basic_machine in
+ 	| alpha64 | alpha64ev[4-8] | alpha64ev56 | alpha64ev6[78] | alpha64pca5[67] \
+ 	| am33_2.0 \
+ 	| arc | arm | arm[bl]e | arme[lb] | armv[2345] | armv[345][lb] | avr | avr32 \
++    | aarch64 | aarch64be \
+ 	| bfin \
+ 	| c4x | clipper \
+ 	| d10v | d30v | dlx | dsp16xx \
+@@ -332,6 +333,7 @@ case $basic_machine in
+ 	| alpha64-* | alpha64ev[4-8]-* | alpha64ev56-* | alpha64ev6[78]-* \
+ 	| alphapca5[67]-* | alpha64pca5[67]-* | arc-* \
+ 	| arm-*  | armbe-* | armle-* | armeb-* | armv*-* \
++    | aarch64-* | aarch64be-* \
+ 	| avr-* | avr32-* \
+ 	| bfin-* | bs2000-* \
+ 	| c[123]* | c30-* | [cjt]90-* | c4x-* | c54x-* | c55x-* | c6x-* \
+Index: samhain-3.1.3/config.guess
+===================================================================
+--- samhain-3.1.3.orig/config.guess
++++ samhain-3.1.3/config.guess
+@@ -882,6 +882,9 @@ EOF
+ 	    echo ${UNAME_MACHINE}-unknown-linux-gnueabi
+ 	fi
+ 	exit ;;
++    aarch64*:Linux:*:*)
++	echo ${UNAME_MACHINE}-unknown-linux-gnu
++	exit ;;
+     avr32*:Linux:*:*)
+ 	echo ${UNAME_MACHINE}-unknown-linux-gnu
+ 	exit ;;
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index b914cb1..3c54c28 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -7,6 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.init \
 	   file://${INITSCRIPT_NAME}.default \
+       file://add_aarch64_to_configure.patch \
 	  "
 
 SRC_URI[md5sum] = "64572a4dbfdc8065d6e9f7ca0eab0a34"
@@ -41,6 +42,10 @@ do_configure_prepend_arm() {
     export sh_cv___va_copy=yes
 }
 
+do_configure_prepend_aarch64() {
+    export sh_cv___va_copy=yes
+}
+
 # If we use oe_runconf in do_configure() it will by default
 # use the prefix --oldincludedir=/usr/include which is not
 # recognized by Samhain's configure script and would invariably
-- 
1.9.1


