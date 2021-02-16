Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web09.9521.1613489646101490730
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=MBB3f0xA;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 971C3B43;
	Tue, 16 Feb 2021 10:34:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=m9jeaILOUZ2d4
	2LYvSw+ZabPdDE7YmY9v/JipmwQBW8=; b=MBB3f0xA+zlDDYkKcETGzizOd3U//
	5wf6hluFsz2hao/tCoohQ1u9XnmP3XlXndind4vDfbV3kV4bUAOXeadXpY31pI6o
	mvtf3EJL8K58ZmMlGvSLF4mApIrms+RwWOnnnMHykZM7efyuGSHa38Zw2AKgj+dg
	/iNsS7bnN4w4mrL4fsyG4o9XPikDgQOqKbpGay9NRgfvhgn8+vnPXk7HvWWePDUs
	iX9zS9lhhfyuviT6yoZYsmeqNaqoe9IN2XAeS3BmgEjOysi10/CNwmKX7oZvJRCu
	B+b63LM0ZdfXMe+a5jqMb4Uq0jPiyjz+YGop8SKVL/cG340bv6pC8DWnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=m9jeaILOUZ2d42LYvSw+ZabPdDE7YmY9v/JipmwQBW8=; b=J9g8rB3K
	/ycTGUSH+05lgU4uTDnFgGj+tAa8IyyHx8yf6b0b6LopH7qrNK6HSBaoEc4SlrWR
	nKc5wHbSKiejHTL4ZcCGEovnDwf5YsasTbjeLPZNRm4YydJoGE3IvFyi6kTqMACD
	vzhTBDMUJJ9hhw20hCBtYFoSljRkOqvvaxIvso2wmKCID60fRYUU8ReE1eAJqsrN
	QuFPCL/1CjS3gl9AQVrgZIeJeSkzUuV0ii+DHVRPvn99E90vWymCceAvWU+TroE3
	0M15qEAV8uNFY7llSxymbG4IeoJjxTOrHsM4teVhyP/kXPFeyLZ55SmL5asGzdrg
	QlwJ5tVPKCEO9Q==
X-ME-Sender: <xms:7eUrYHLPhNJqZ9-TpfWRhcRk8o0BnMAMo_KiRung-xBEK6a2al3hlw>
    <xme:7eUrYLLb-lXvTiA2C1C8baAmT8PvLTuYc1SMu6tYnfPSCRnKP6E_7uYxaLijyturz
    sQc9jTRtVZR7TnK5CQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepleeliefhvedvvdejgfeuueekge
    ffieevhffgleduhfdugeegffdutdelfeeugeeunecuffhomhgrihhnpehgihhthhhusgdr
    tghomhenucfkphepkeeirddufedtrddugeeirddutddvnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgt
    ohhm
X-ME-Proxy: <xmx:7eUrYPvOqdjNEp1YMH3CD2es7Erp7GSYY-cER-mtV-Y2xxjZTDhgig>
    <xmx:7eUrYAYPio6kF5bFcQ8Nq8QYgq8rOQzCNms9lt16Hwn55AhmcKF0hQ>
    <xmx:7eUrYOaNEwTSBgQPabPiE0ovtbVSwiKsO-Qx1XRA-DAraGu3slrMtA>
    <xmx:7eUrYM0SSKKHvtGLC93sWYaLcVzVDvc7G3LIJrlnAc7OUL3EUu9VLQ>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 8E26A1080067;
	Tue, 16 Feb 2021 10:34:03 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 04/15] zephyr-kernel-src: Restructure recipe
Date: Tue, 16 Feb 2021 15:32:59 +0000
Message-Id: <20210216153310.79138-4-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
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

