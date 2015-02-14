Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52A9AE002AC; Fri, 13 Feb 2015 16:38:06 -0800 (PST)
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
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06465E00288
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 16:38:01 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id fa1so22245554pad.2
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 16:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=344PerTtIJhff3P2Sgn59nBKC5sGnDFg8useUzeR3zc=;
	b=R9+l/fhefAfFqRTww0FbQjdNoyphK76DQH2YWMGcVFcFAJaPRqcvo8CnI9MjdlxcCm
	NZKMO8vKvf5GA5AfpYEdsmekr27pVXgKMv3eqM/f3bh54gXDoDHbYOG4JADSvJh5WSRO
	VroHZPqOrhjcO9J/KOQNSzeweCNOWVAeqP5in7kIvnjnzZ8soMdEMCdM3aBu/5FtaUxw
	iuZ4hkVFifdUX3zQ38gWbC0pWpsEvXNTkkN0CyU55z582GTPpQNf3nDg3mlH8F45piWs
	6kQApyry2n6zHJ02P9jWHnvPpElcXd2UA1TXpOMMdSa4hWBKFMOJf+wjj5KTo3ER1NcX
	zt8Q==
X-Received: by 10.66.66.7 with SMTP id b7mr2947815pat.9.1423874280404;
	Fri, 13 Feb 2015 16:38:00 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id qq6sm7830849pbb.20.2015.02.13.16.37.58
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 13 Feb 2015 16:37:59 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Feb 2015 16:37:48 -0800
Message-Id: <1423874268-18592-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] tripwire: Add aarch64 support to config.sub
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
X-List-Received-Date: Sat, 14 Feb 2015 00:38:06 -0000

this fixes a build issue on arm64.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/tripwire_add_aarch64_to_configure.patch  | 29 ++++++++++++++++++++++
 recipes-security/tripwire/tripwire_2.4.2.2.bb      |  1 +
 2 files changed, 30 insertions(+)
 create mode 100644 recipes-security/tripwire/files/tripwire_add_aarch64_to_configure.patch

diff --git a/recipes-security/tripwire/files/tripwire_add_aarch64_to_configure.patch b/recipes-security/tripwire/files/tripwire_add_aarch64_to_configure.patch
new file mode 100644
index 0000000..fdaa494
--- /dev/null
+++ b/recipes-security/tripwire/files/tripwire_add_aarch64_to_configure.patch
@@ -0,0 +1,29 @@
+tripwire: Add aach64 support
+
+Upstream-Status: Submitted to tripwire-dev
+
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+
+Index: config.sub
+===================================================================
+--- a/config.sub
++++ b/config.sub
+@@ -223,7 +223,7 @@ esac
+ case $basic_machine in
+ 	# Recognize the basic CPU types without company name.
+ 	# Some are omitted here because they have special meanings below.
+-	tahoe | i860 | ia64 | m32r | m68k | m68000 | m88k | ns32k | arc \
++	tahoe | i860 | ia64 | m32r | m68k | m68000 | m88k | ns32k | aarch64 | aarch64be |arc \
+ 	        | arm | arme[lb] | arm[bl]e | armv[2345] | armv[345][lb] | strongarm | xscale \
+ 		| pyramid | mn10200 | mn10300 | tron | a29k \
+ 		| 580 | i960 | h8300 \
+@@ -267,7 +267,7 @@ case $basic_machine in
+ 	# Recognize the basic CPU types with company name.
+ 	# FIXME: clean up the formatting here.
+ 	vax-* | tahoe-* | i*86-* | i860-* | ia64-* | m32r-* | m68k-* | m68000-* \
+-	      | m88k-* | sparc-* | ns32k-* | fx80-* | arc-* | c[123]* \
++	      | m88k-* | sparc-* | ns32k-* | fx80-* | arc-* | c[123]* | aarch64-* | aarch64be-*  \
+ 	      | arm-*  | armbe-* | armle-* | armv*-* | strongarm-* | xscale-* \
+ 	      | mips-* | pyramid-* | tron-* | a29k-* | romp-* | rs6000-* \
+ 	      | power-* | none-* | 580-* | cray2-* | h8300-* | h8500-* | i960-* \
diff --git a/recipes-security/tripwire/tripwire_2.4.2.2.bb b/recipes-security/tripwire/tripwire_2.4.2.2.bb
index a64edb9..6fc6759 100644
--- a/recipes-security/tripwire/tripwire_2.4.2.2.bb
+++ b/recipes-security/tripwire/tripwire_2.4.2.2.bb
@@ -14,6 +14,7 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/project/${BPN}/${BPN}-src/${BPN}-${PV}/${BPN}-$
 	   file://twinstall.sh \
 	   file://twpol-yocto.txt \
 	   file://tripwire_add_ppc64.patch \
+       file://tripwire_add_aarch64_to_configure.patch \
        "
 SRC_URI[md5sum] = "2462ea16fb0b5ae810471011ad2f2dd6"
 SRC_URI[sha256sum] = "e09a7bdca9302e704cc62067399e0b584488f825b0e58c82ad6d54cd2e899fad"
-- 
1.9.1


