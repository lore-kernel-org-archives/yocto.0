Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web12.29417.1613388068105141009
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=js671RyO;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 81F452E3;
	Mon, 15 Feb 2021 06:21:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 15 Feb 2021 06:21:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=m9jeaILOUZ2d4
	2LYvSw+ZabPdDE7YmY9v/JipmwQBW8=; b=js671RyOHtJWxMQ+ebAY5koYHeUdo
	UlDAcFho8S4evaTCBYCXhrEtmO8XKC+zW6gyH8RmNSwYpT9hNskeevDQhI55gLE7
	8T+LnGMx3mkREBuM2B/AfTy482NuDARP2sRQetDc03uYaZkQTB38pdm9RNEJL5j3
	fdhskNdi7+ls+CMLVknkgC72JA69L+xcvqPlDi/7kKtgJNccjXXmG/tEJ2+VirKa
	WGR9prxZ3aMngiCiZpmDvPgQmj+sEl9O9CA/uvdsitw+nuFi+gNoIXD8/4VltRbd
	mYNAkRcHvSAjzaukwdfOhgS6+NxeMs7EVKpj0nE0w5XscHIp1UM7HmhRg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=m9jeaILOUZ2d42LYvSw+ZabPdDE7YmY9v/JipmwQBW8=; b=JqgukDc6
	qRpglr7larr3sPaau7rutPTzlFK3wmQwXidD1V2CTBqBbhDTFivk7H42TmrQSA+j
	FosmssuLmayrDfTXSnOIst2HQPQoN0dCIZhCsjRAfA9NnGjimtVIjr337U3fyITc
	qe/Y2juBd5g+cHVJYwHiTAKtTJ3Eltz9r2TRG6YoCo7Xq3L5b6qElBUvQ3FAhX8J
	VpZxbx9V30EB+OPG8i75KWgUZt4JFcWotg2gMU8xOyKFFy6TR3UIbRJawGAovjv4
	VDuh9oeBGGSrxfFEJn2hqWnShYKg32t8dlSrsQU1UJXNEwvTFgsnjLJtwmUWwiX0
	X62Gv014f3tFtg==
X-ME-Sender: <xms:I1kqYEsVERadvQ3SpZlDosUxOwLOHPCuxsHYflGxu0WVN5leorqayg>
    <xme:I1kqYFtosArXu868v6tKCmDOZpZylqBuSM2vKegypPisyNHcnpUfP_cOnrH4OUDJx
    AblDRbpHKml-S7APRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepleeliefhvedvvdejgfeuueekge
    ffieevhffgleduhfdugeegffdutdelfeeugeeunecuffhomhgrihhnpehgihhthhhusgdr
    tghomhenucfkphepkeeirddufedtrddugeeirddutddvnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgt
    ohhm
X-ME-Proxy: <xmx:I1kqYKwdbeo3Wiz32CAtaav2BnCSe6UwvXJwkQ-KqWGmDACvfdT2dw>
    <xmx:I1kqYLgzrWrPlCGmWvHJRifNZATP1n2-Nyhi9NhpqReUjExCd_zk7w>
    <xmx:I1kqYOD0aR4hPXzGavoTsUWS0MtTzU-oEm9Rgbi4k7BP8RX1LHbicw>
    <xmx:I1kqYGg5GQW_OA4EAdJjUUtPDFXlTWRhTKDbNXBnlcBE9EHAfToCKw>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id BDD61108006D;
	Mon, 15 Feb 2021 06:21:06 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 04/14] zephyr-kernel-src: Restructure recipe
Date: Mon, 15 Feb 2021 11:19:53 +0000
Message-Id: <20210215112003.2025053-4-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

* Restructure recipe to use include files as opposed to a bbclass. The
  latter is unnatural when defining versions, sources etc.
* Make the zephyr-kernel-src follow the version as defined by
  PREFERRED_VERSION_zephyr-kernel.
* Make the setup of the zephyr-kernel-src.inc extensible for multiple
  versions.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/zephyr-kernel-src.bbclass             | 37 -------------------
 .../zephyr-kernel/zephyr-kernel-src-2.4.0.inc | 10 +++++
 ...kernel-src_2.4.bb => zephyr-kernel-src.bb} |  9 +----
 .../zephyr-kernel/zephyr-kernel-src.inc       | 20 ++++++++++
 4 files changed, 32 insertions(+), 44 deletions(-)
 delete mode 100644 classes/zephyr-kernel-src.bbclass
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc
 rename recipes-kernel/zephyr-kernel/{zephyr-kernel-src_2.4.bb => zephyr-kernel-src.bb} (80%)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
deleted file mode 100644
index c6c8d61..0000000
--- a/classes/zephyr-kernel-src.bbclass
+++ /dev/null
@@ -1,37 +0,0 @@
-#Set relevant variables based on Zephyr kernel version
-
-PREFERRED_VERSION_zephyr-kernel ??= "2.4.0"
-
-SRCREV_FORMAT = "default_cmsis"
-SRCREV_default = "7a3b253ced7333f5c0269387a7f3ed1dee69739d"
-SRCREV_cmsis = "542b2296e6d515b265e25c6b7208e8fea3014f90"
-SRCREV_nordic = "d8a6ea9695ddf792bb18bb6035c13b1daac5d79c"
-SRCREV_stm32 = "f0e11398128ac9abdff713da5d3035e6c96e9b86"
-SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
-SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
-SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
-
-SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v2.4-branch;name=default \
-           git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
-           git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
-           git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
-           git://github.com/zephyrproject-rtos/open-amp.git;protocol=https;destsuffix=git/modules/lib/open-amp;name=open-amp \
-           git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
-           git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
-           file://0001-cmake-add-yocto-toolchain.patch \
-          "
-
-PV = "2.4.0+git${SRCPV}"
-
-LICENSE = "Apache-2.0"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
-
-ZEPHYR_TEST_SRCDIR = "tests/legacy/kernel/"
-
-python () {
-    src_pn = d.getVar('PREFERRED_VERSION_zephyr-kernel', True)
-    if src_pn == '2.4.0':
-        return
-    else:
-        bb.error("Unsupported Zephyr kernel version requested")
-}
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc
new file mode 100644
index 0000000..d1ef80e
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.4.0.inc
@@ -0,0 +1,10 @@
+SRCREV_FORMAT = "default_cmsis"
+SRCREV_default = "7a3b253ced7333f5c0269387a7f3ed1dee69739d"
+SRCREV_cmsis = "542b2296e6d515b265e25c6b7208e8fea3014f90"
+SRCREV_nordic = "d8a6ea9695ddf792bb18bb6035c13b1daac5d79c"
+SRCREV_stm32 = "f0e11398128ac9abdff713da5d3035e6c96e9b86"
+SRCREV_open-amp = "de1b85a13032a2de1d8b6695ae5f800b613e739d"
+SRCREV_libmetal = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94"
+SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+
+PV = "2.4.0+git${SRCPV}"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.4.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.bb
similarity index 80%
rename from recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.4.bb
rename to recipes-kernel/zephyr-kernel/zephyr-kernel-src.bb
index 8e8b5b8..210cfa7 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_2.4.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.bb
@@ -1,16 +1,12 @@
+include zephyr-kernel-src.inc
 
-inherit zephyr-kernel-src
-inherit cmake
-
-S = "${WORKDIR}/git"
+ZEPHYR_TEST_SRCDIR = "tests/legacy/kernel/"
 
 IMAGE_NO_MANIFEST = "1"
 INHIBIT_DEFAULT_DEPS = "1"
 
 do_configure[noexec] = "1"
 do_compile[noexec] = "1"
-
-
 do_install () {
     kerneldir=${D}/usr/src/zephyr
     install -d $kerneldir
@@ -21,4 +17,3 @@ PACKAGES = "${PN}"
 FILES_${PN} = "/usr/src/zephyr"
 
 SYSROOT_DIRS += "/usr/src/zephyr"
-
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
new file mode 100644
index 0000000..2dcde74
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -0,0 +1,20 @@
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
+
+# Default to a stable version
+PREFERRED_VERSION_zephyr-kernel ??= "2.4.0"
+include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
+
+inherit cmake
+
+SRC_URI = "\
+    git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=master;name=default \
+    git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
+    git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
+    git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
+    git://github.com/zephyrproject-rtos/open-amp.git;protocol=https;destsuffix=git/modules/lib/open-amp;name=open-amp \
+    git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
+    git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
+    file://0001-cmake-add-yocto-toolchain.patch \
+    "
+S = "${WORKDIR}/git"
-- 
2.30.1

