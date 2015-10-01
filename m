Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2526E01077; Thu,  1 Oct 2015 11:22:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9F14E00FDB
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:21:27 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so1448535wic.0
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=ggxlSLH6fqyqWKUFvqGdixHtBMJEZyNKNbTMWBLeqhw=;
	b=M0XJnmIG8LE5jPeuWQIEJKMgDDA6F9Zvrv8ryxiO2UbnZIp0G9DuwbSt8TdbS1PkFI
	724dc4Pm0DIbmYS78kQyEi+Hg64Q2PBWwK+hpKReMsUdiZgl1061y7LRSwj491btwjHt
	PqXT1WajFLEqHihCCGSLn6f8GzY1jca5I2TDN2JW593gyYqebRczvn4FmjyyG2us4tun
	WyoZH2fj9LxlfpWgUAqpStDRNyUQouS7OroeRGfkiUfUKPB5ujgMDkcr2qsupseJSXqp
	+e08eAUlduz1+kZj66UCLpQIPss+rg3zUdBF+dcRkOES3qL6x+ahx4i9JtFs19VcWTsH
	c2eQ==
X-Received: by 10.180.92.230 with SMTP id cp6mr188650wib.80.1443723687068;
	Thu, 01 Oct 2015 11:21:27 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	gh9sm7369645wjb.27.2015.10.01.11.21.26 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:21:26 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <3610F19F-261F-46B9-85D8-4BDA95C15943@gmail.com>
Date: Thu, 1 Oct 2015 20:21:25 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 1/7][meta-java] Revert "Avoid parse time errors due to dependency on x11, for distros without x11"
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
X-List-Received-Date: Thu, 01 Oct 2015 18:22:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Since OpenJDK-8 builds find without x11 and icedtea does either (native
builds), the restriction is a bit to hasty.

This reverts commit 24b98ac3a6ca7fadfba24709aac8d0b71316e299.
---
 recipes-core/cacao/cacao_1.6.1.bb       | 4 +---
 recipes-core/classpath/classpath.inc    | 4 +---
 recipes-core/jamvm/jamvm.inc            | 4 +---
 recipes-core/openjdk/openjdk-common.inc | 4 +---
 4 files changed, 4 insertions(+), 12 deletions(-)

diff --git a/recipes-core/cacao/cacao_1.6.1.bb =
b/recipes-core/cacao/cacao_1.6.1.bb
index 564dd1e..65aaf93 100644
--- a/recipes-core/cacao/cacao_1.6.1.bb
+++ b/recipes-core/cacao/cacao_1.6.1.bb
@@ -15,9 +15,7 @@ SRC_URI =3D =
"http://www.complang.tuwien.ac.at/cacaojvm/download/cacao-${PV}/cacao-
 SRC_URI[md5sum] =3D "2c18478404afd1cffdd15ad1e9d85a57"
 SRC_URI[sha256sum] =3D =
"eecc8bd1b528a028f43d9d1d0c06b97855bbf1d40e03826d911ebbc0b6971e12"
=20
-inherit java autotools-brokensep update-alternatives pkgconfig =
distro_features_check
-
-REQUIRED_DISTRO_FEATURES =3D "x11"
+inherit java autotools-brokensep update-alternatives pkgconfig
=20
 EXTRA_OECONF_class-native =3D "\
     --enable-debug \
diff --git a/recipes-core/classpath/classpath.inc =
b/recipes-core/classpath/classpath.inc
index 0f760fe..1bdfd78 100644
--- a/recipes-core/classpath/classpath.inc
+++ b/recipes-core/classpath/classpath.inc
@@ -7,9 +7,7 @@ LICENSE =3D "Classpath"
=20
 PBN =3D "classpath"
=20
-inherit autotools java gettext distro_features_check
-
-REQUIRED_DISTRO_FEATURES =3D "x11"
+inherit autotools java gettext
=20
 DEPENDS =3D "virtual/javac-native fastjar-native zip-native gmp =
antlr-native gtk+ gconf libxtst file"
=20
diff --git a/recipes-core/jamvm/jamvm.inc b/recipes-core/jamvm/jamvm.inc
index e00813e..5893cbc 100644
--- a/recipes-core/jamvm/jamvm.inc
+++ b/recipes-core/jamvm/jamvm.inc
@@ -21,9 +21,7 @@ SRC_URI =3D =
"${SOURCEFORGE_MIRROR}/jamvm/jamvm-${PV}.tar.gz \
           "
=20
=20
-inherit java autotools update-alternatives pkgconfig =
distro_features_check
-
-REQUIRED_DISTRO_FEATURES =3D "x11"
+inherit java autotools update-alternatives pkgconfig
=20
 # This uses 32 bit arm, so force the instruction set to arm, not thumb
 ARM_INSTRUCTION_SET =3D "arm"
diff --git a/recipes-core/openjdk/openjdk-common.inc =
b/recipes-core/openjdk/openjdk-common.inc
index e3e597a..dc26522 100644
--- a/recipes-core/openjdk/openjdk-common.inc
+++ b/recipes-core/openjdk/openjdk-common.inc
@@ -17,9 +17,7 @@ DEPENDS_append_libc-uclibc =3D " virtual/libiconv "
 # because structure sizes and/or alignment may differ.
 DEPENDS_append =3D " qemu-native "
=20
-inherit java autotools gettext qemu pkgconfig distro_features_check
-
-REQUIRED_DISTRO_FEATURES =3D "x11"
+inherit java autotools gettext qemu pkgconfig
=20
 # OpenJDK uses slightly different names for certain arches. We need to =
know
 #	this to create some files which are expected by the build.
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


