Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64DDDE0078E; Fri, 29 Aug 2014 14:23:13 -0700 (PDT)
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
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07278E00563
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 14:23:11 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id fa1so7331973pad.40
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 14:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=0kto9LDmGMBuwH1Semrymkwufhcv1ZIg4W9anB/8ybs=;
	b=YTKUEs28WNozTaneF18jr4K8JK9yl3r7mjZH54Gti0yHI2AzHunqxLvhUHDtBWRMpd
	7C5ozZDMsVy6DYpV6WDRwBtCW0pAQ8Zzl+9OmsjBFcrqm5goQE4jBPs8mO9M7w3sHJdp
	neS0j5YOrVZBR9bnKK90wcuh9y/bsz4vwlkyu1Qeoxy22/56JksAI7frvAfQ1iW3onm0
	JJYLnE4IUUTYG5EMK+rVemFY3UOAbFGYIOko3yRky7RfOvXE2B+jJQcmngKgCAeeo7d1
	wzTJIj7gF1B0AVGwQrKIhyMBPBSJqLq0Ny/+FsX8AFqT/ocn8Ja8Ug1mI8z1/Tyu6ZYI
	0U7g==
X-Received: by 10.66.221.163 with SMTP id qf3mr18690708pac.37.1409347391148;
	Fri, 29 Aug 2014 14:23:11 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id j5sm1385153pdp.9.2014.08.29.14.23.09
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Aug 2014 14:23:10 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Aug 2014 14:23:07 -0700
Message-Id: <1409347387-10478-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] tripwire: ppc64 build failure.
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
X-List-Received-Date: Fri, 29 Aug 2014 21:23:13 -0000

| configure: error: /bin/sh ./config.sub powerpc64-poky-linux failed

config.sub did not understand the powerpc64 par.
this patch adds that understanding.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tripwire/files/tripwire_add_ppc64.patch        | 36 ++++++++++++++++++++++
 recipes-security/tripwire/tripwire_2.4.2.2.bb      |  1 +
 2 files changed, 37 insertions(+)
 create mode 100644 recipes-security/tripwire/files/tripwire_add_ppc64.patch

diff --git a/recipes-security/tripwire/files/tripwire_add_ppc64.patch b/recipes-security/tripwire/files/tripwire_add_ppc64.patch
new file mode 100644
index 0000000..374e9ed
--- /dev/null
+++ b/recipes-security/tripwire/files/tripwire_add_ppc64.patch
@@ -0,0 +1,36 @@
+tripwire:
+
+Powerpc64 is not supported in the current tripwier release.
+
+ configure: error: /bin/sh ./config.sub powerpc64-poky-linux failed
+ | Configure failed. The contents of all config.log files follows to aid debugging
+
+Submitted upstream to  Tripwire devel mailing list
+
+http://sourceforge.net/p/tripwire/mailman/message/32776415/
+
+Signed-off-By: Armin Kuster <akuster808@gmail.com>
+
+
+Index: tripwire-2.4.2.2-src/config.sub
+===================================================================
+--- tripwire-2.4.2.2-src.orig/config.sub
++++ tripwire-2.4.2.2-src/config.sub
+@@ -233,7 +233,7 @@ case $basic_machine in
+ 		| alpha | alphaev[4-8] | alphaev56 | alphapca5[67] \
+ 		| alphaev6[78] \
+ 		| we32k | ns16k | clipper | i370 | sh | sh[34] \
+-		| powerpc | powerpcle | 
++		| powerpc | powerpcle | powerpc64 \
+ 		| 1750a | dsp16xx | pdp10 | pdp11 \
+ 		| mips16 | mips64 | mipsel | mips64el \
+ 		| mips64orion | mips64orionel | mipstx39 | mipstx39el \
+@@ -280,7 +280,7 @@ case $basic_machine in
+ 	      | we32k-* | cydra-* | ns16k-* | pn-* | np1-* | xps100-* \
+ 	      | clipper-* | orion-* \
+ 	      | sparclite-* | pdp10-* | pdp11-* | sh-* | sh[34]-* | sh[34]eb-* \
+-	      | powerpc-* | powerpcle-* | sparc64-* | sparcv9-* | sparcv9b-* | sparc86x-* \
++	      | powerpc-* | powerpcle-* | powerpc64-* | sparc64-* | sparcv9-* | sparcv9b-* | sparc86x-* \
+ 	      | mips16-* | mips64-* | mipsel-* \
+ 	      | mips64el-* | mips64orion-* | mips64orionel-* \
+ 	      | mips64vr4100-* | mips64vr4100el-* | mips64vr4300-* | mips64vr4300el-* \
diff --git a/recipes-security/tripwire/tripwire_2.4.2.2.bb b/recipes-security/tripwire/tripwire_2.4.2.2.bb
index ad5363d..b9dc01c 100644
--- a/recipes-security/tripwire/tripwire_2.4.2.2.bb
+++ b/recipes-security/tripwire/tripwire_2.4.2.2.bb
@@ -13,6 +13,7 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/project/${BPN}/${BPN}-src/${BPN}-${PV}/${BPN}-$
 	   file://twcfg.txt \
 	   file://twinstall.sh \
 	   file://twpol-yocto.txt \
+       file://tripwire_add_ppc64.patch \
        "
 SRC_URI[md5sum] = "2462ea16fb0b5ae810471011ad2f2dd6"
 SRC_URI[sha256sum] = "e09a7bdca9302e704cc62067399e0b584488f825b0e58c82ad6d54cd2e899fad"
-- 
1.9.1


