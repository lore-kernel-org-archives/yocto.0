Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9137DE00D36; Sat, 20 Feb 2016 16:48:24 -0800 (PST)
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
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3720DE00CF2
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2016 16:48:22 -0800 (PST)
Received: by mail-pa0-f52.google.com with SMTP id yy13so70678988pab.3
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2016 16:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=o2iokCN80SFGfLocoBXsRjvlxGfib+lfY9puRX3pJt0=;
	b=BW/EwYxnl9qYFCTwNuxm07vqoFg9oatYRzXMoLxG8LIxpuaQvj0QGqdtPzY9mb6bO6
	7+g7TppHah8XYwRVzySsdO5AvDdug4KNDzRi73fEf01Ea0vyrj4QVZPY+Kp+Aij1MCR4
	dmbj7R2wcbjGLywzeUb3MiukwCI8Dz7cOsSTg2UcHL4whSHNji8oO/je07U4hhoyhTN8
	J8+AzH4szoFsF8HthjwS9Wg0gf1bpfXkhtAXEFZQDJ5dcBF9NWuQ1ZXmgoT+VXvmDpUg
	LqQM2tpKeGWSygS/kZTDjKHYZBWIlsBgsx0tJrS1d1+8Aabnu258msqskYa7i9l2DTLT
	1BGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=o2iokCN80SFGfLocoBXsRjvlxGfib+lfY9puRX3pJt0=;
	b=cmZj+Z/sVwqUqbt/pmnFZFWnoTwe/xOZy4SPvSbSuQ13tWjTktUU2SY4G/Nd/RW+VF
	tHPVWeJO9YrYENJIV29yHjHnZBCI/DD+IZpbrErKyh+DyZqYA+/o0CwrJOsencdmiOaf
	0B9iT0IeRPyCh7pjfixTl1IyrQZRe5Nim3yeZQk3QluTls6cYrUv+1terqvUsxqIyuJs
	8VzYN5FOwEXQmkNEGHZpnPck5QBEl5JQPT4wG+xda+xdvq4/j2QXHkVeD24t5X1qgdsb
	aAsVtQ1w0Pv6mvEMMJYMN30iHXhbd+EcN5UvAb6SyqUwfEneSKMdUfNiF8XQJus3f+W6
	gwOw==
X-Gm-Message-State: AG10YOQSIpxZ6dTBbDMrkVJwW0PiSoTzlFxEZ8Kh8VbRMy3Bs6j2x+cbdVKU4EDx1tRiew==
X-Received: by 10.66.237.38 with SMTP id uz6mr28447355pac.136.1456015702065;
	Sat, 20 Feb 2016 16:48:22 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	fn3sm27129972pab.20.2016.02.20.16.48.19 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 20 Feb 2016 16:48:20 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 20 Feb 2016 16:48:16 -0800
Message-Id: <1456015696-27034-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] tripwire: Fix build issue for armeb
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
X-List-Received-Date: Sun, 21 Feb 2016 00:48:24 -0000

add config parama for armeb

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/tripwire/files/add_armeb_arch.patch | 18 ++++++++++++++++++
 recipes-security/tripwire/tripwire_2.4.2.2.bb        |  1 +
 2 files changed, 19 insertions(+)
 create mode 100644 recipes-security/tripwire/files/add_armeb_arch.patch

diff --git a/recipes-security/tripwire/files/add_armeb_arch.patch b/recipes-security/tripwire/files/add_armeb_arch.patch
new file mode 100644
index 0000000..2379d66
--- /dev/null
+++ b/recipes-security/tripwire/files/add_armeb_arch.patch
@@ -0,0 +1,18 @@
+tripwire: Add armeb support
+
+Upstream-Status: Submitted to tripwire-dev
+
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+diff -Naurp tripwire-2.4.2.2-src_org/config.sub tripwire-2.4.2.2-src/config.sub
+--- tripwire-2.4.2.2-src_org/config.sub	2015-07-20 15:03:04.161452573 +0530
++++ tripwire-2.4.2.2-src/config.sub	2015-07-20 15:06:07.077673139 +0530
+@@ -268,7 +268,7 @@ case $basic_machine in
+ 	# FIXME: clean up the formatting here.
+ 	vax-* | tahoe-* | i*86-* | i860-* | ia64-* | m32r-* | m68k-* | m68000-* \
+ 	      | m88k-* | sparc-* | ns32k-* | fx80-* | arc-* | c[123]* | aarch64-* | aarch64be-*  \
+-	      | arm-*  | armbe-* | armle-* | armv*-* | strongarm-* | xscale-* \
++	      | arm-*  | armeb-* | armbe-* | armle-* | armv*-* | strongarm-* | xscale-* \
+ 	      | mips-* | pyramid-* | tron-* | a29k-* | romp-* | rs6000-* \
+ 	      | power-* | none-* | 580-* | cray2-* | h8300-* | h8500-* | i960-* \
+ 	      | xmp-* | ymp-* \
diff --git a/recipes-security/tripwire/tripwire_2.4.2.2.bb b/recipes-security/tripwire/tripwire_2.4.2.2.bb
index 6fc6759..55c4013 100644
--- a/recipes-security/tripwire/tripwire_2.4.2.2.bb
+++ b/recipes-security/tripwire/tripwire_2.4.2.2.bb
@@ -15,6 +15,7 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/project/${BPN}/${BPN}-src/${BPN}-${PV}/${BPN}-$
 	   file://twpol-yocto.txt \
 	   file://tripwire_add_ppc64.patch \
        file://tripwire_add_aarch64_to_configure.patch \
+       file://add_armeb_arch.patch \
        "
 SRC_URI[md5sum] = "2462ea16fb0b5ae810471011ad2f2dd6"
 SRC_URI[sha256sum] = "e09a7bdca9302e704cc62067399e0b584488f825b0e58c82ad6d54cd2e899fad"
-- 
2.3.5


