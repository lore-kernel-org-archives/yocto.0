Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web12.29418.1613388069400965263
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=irYkPclb;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 914A63F8;
	Mon, 15 Feb 2021 06:21:08 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 15 Feb 2021 06:21:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=WYMz3amIf12LM
	lGOx5XqR92+8MYq0V0KBOyACGG+NS4=; b=irYkPclbDsrDaGgBtsgU2GJ/mJd3D
	EbldFRvPKLw5AuRuA8yCmS8WyRPLz7YrC1skz8Qrq0dzplOK0FzgXA8CeVj2l2wR
	L0MM5VCL819KO2vu1jYBIaZqTd06GuSrYDCnGMSXlkEiVVRzjnpCAscULBgG4DkQ
	P1csUN85lbWYk6Im4qH8OggJjUBt/dGvP/2TdyKr7RLNhnWJjKjiNAyfgialpGS2
	KxHTqhSGAyCL0kd2C6UkT7+DNKjYp8ypSTnCzbnz8pMm0h4fBt+Y+EAGgnZFEOJR
	/5eOWOCZYsR/h9DWBw9XJLJB/0w1J4KjLqCI0rNe/F5kj5Kt9hK+w94ng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=WYMz3amIf12LMlGOx5XqR92+8MYq0V0KBOyACGG+NS4=; b=CmEOugTz
	NsmlAo8C6ugfHV49Z0Hi+Kft8MmKs2sHGgpx3xvgYghxEFZgP4R8rTMIfsjumKSr
	xG/yugsB5RFadQRvjTnRRi0ufhZkWTEbbAUxmAE4nK4QhjgsJoiRKhYCv1bqiv7c
	qGRYDNLy2wrOpu0AyHSs1ioq03ekp0Zo85IY5eo23tdl4ayAugpdc81uGaQTE6AQ
	p7yuH0plteszs/TkIXeHq7LoDNlTFYP2cZnkz5qged7f4y752ZoVHKHqnxT3/fN+
	20n01MLq13FD1mSNaS5oeHOSrfkw6Iow8eGCWEWYtNuBsVrm1/abUtVM9DhWFkpL
	rZmORNHaU6erOA==
X-ME-Sender: <xms:JFkqYOfYAqPivy_fpB2AItL8J-fug0ORdlyiwoPl3KRZs3y8eH50Zg>
    <xme:JFkqYLfsh3L7ogYP-H_nKJOsKBgBvXzAybqogZL5CMAbowSBkxBzLKz9uJsUiqXxp
    qLO2q-HoApAmbrDCFU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:JFkqYI-3CrYhz8hTTQcBnmdm4m7-exOQYAI0ASlmKNKsWs5fQj7Wfg>
    <xmx:JFkqYHkdsMdg_HMbEbZ22uBwIruu5VmVN-qYkT3lU4coEDmAnDEG2w>
    <xmx:JFkqYK_DlGTKKp1h-nVwAfiDvNg15aCLKfFGWcdN_sv65G5DmL3V2A>
    <xmx:JFkqYPr9Vh56vHi01lCpO9yac6khTXz-B-NlR6-pvQkPB0HRlYE8iA>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id CD1F7108005C;
	Mon, 15 Feb 2021 06:21:07 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 06/14] zephyr-kernel-common.inc: Fix configuration CPPFLAGS warning
Date: Mon, 15 Feb 2021 11:19:55 +0000
Message-Id: <20210215112003.2025053-6-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Configure warns when CPPFLAGS is provided as environment variable and
expects its value to be passed to cmake. This patch does that to
surpress the warning.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 5313030..abc55ba 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -13,8 +13,7 @@ ZEPHYR_SYSROOT="${STAGING_DIR_TARGET}"
 
 ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
 
-
-EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto"
+EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto -DEXTRA_CPPFLAGS=${CPPFLAGS}"
 
 ZEPHYR_MODULES = ""
 ZEPHYR_MODULES_append_arm = "\;${S}/modules/cmsis"
@@ -26,7 +25,6 @@ EXTRA_OECMAKE_append = " -DZEPHYR_MODULES=${ZEPHYR_MODULES}"
 
 export ZEPHYR_BASE="${S}"
 
-
 DEPENDS += "gperf-native python3-pyelftools-native python3-pyyaml-native python3-pykwalify-native"
 CROSS_COMPILE = "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
 
@@ -51,3 +49,8 @@ OE_TERMINAL_EXPORTS += "ZEPHYR_SYSROOT"
 OE_TERMINAL_EXPORTS += "ZEPHYR_GCC_VARIANT"
 
 IMAGE_FSTYPES = "elf bin"
+
+do_configure_prepend() {
+    # Zephyr expects CPPFLAGS as cmake argument as and ignores env variables.
+    unset CPPFLAGS
+}
-- 
2.30.1

