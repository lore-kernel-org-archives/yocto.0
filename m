Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web12.29419.1613388069708580268
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=ZJwsX2cs;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 20A494A4;
	Mon, 15 Feb 2021 06:21:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 15 Feb 2021 06:21:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=cnCbREo+ZBzH8
	5RD3s1mN8QmE59uJ4FMEZYTBbTEYuY=; b=ZJwsX2csDL7TJlvMuKIk/NFaOipqs
	00hFy3DX1/t8/BT0K3S0WmLFTaSDASFMPTFEq43Nx6J+Kr4SpGaELmQPUHTBL15I
	a5BRQUi3C1b/jsQHXsJaZ5NOPUuErBsBrwOzsGpKMb1BI0hR0ASUa5EdGR0lAHZv
	MyJ2Xo+iTfUQgqzQOP1UhbVQy/jhgaLAmRQm51UquRy52BYJHa/IKjN1tvNInJ24
	KNHRXb97Qz6aAMpYAObjoRG/rtFK6oTPKE6tghaNDM7GEZ5qSSwNnBiV+evI7aX6
	cKRT/W9lSRKXJnox/3bFJCyqp2629uqVGix45zdaTNxckSTaWM4gkVG3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=cnCbREo+ZBzH85RD3s1mN8QmE59uJ4FMEZYTBbTEYuY=; b=enYbO2VM
	WrEVf9MU2yu0X5s9iietevCT4P6nmV/LehTTo2D00/dEzmYKBs/7JfmesxNSQfLP
	ykyaJptB5mvwK3w8g7otExodaAZrFxQN1RB0f3XsWdQuspPWQ61caVTiCWrjlU1J
	KSNjen48g9ZMkGUZARVnuubWtqABmhBpNaOA/woI2RP6tEWRa0fktTVtJfYn7m6W
	WSqs3EKa6wnA5P3xnLCYyaAXs3odUMhz0riPYStBU/UXDFsl4ycuYxkt72g1oyxL
	wUCaVFajlqjkS1ubSCJ6TQIi7DCxuBaLz1ncql1gM79rQWactYcHbOnu4rbS5QJP
	SzCIq0gZR5mMaQ==
X-ME-Sender: <xms:JFkqYAhvICokMEqVo7_-KEg1vvMDjeN_7OkayGtO0ilzTCxmYH5ing>
    <xme:JFkqYI_3ZccE_TUvRQcYrHa_jtoX6xQKARcpONe_L5efBttH7ba8xVUA04eTmVCtV
    7GKl2E-vSKBCJi5V70>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:JFkqYE_XzV13z288Ka0gu6vlcihfi2OeDHLYs2V8FPFBa9xvRiVhlA>
    <xmx:JFkqYJCTlKDmclTgL6URuKm-J65UCbzU5Cd-emk-BjhfSONeXKCW1A>
    <xmx:JFkqYMw9ldPY5WPWGwvHMDXcFeL95PVHc8ZV7b-lQJdwe_4s8P4_5A>
    <xmx:JFkqYELYNoOCR48AbDgFf3sHeX3-MkyjcMcrR36e61kaLAelLfYTYw>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5BE521080066;
	Mon, 15 Feb 2021 06:21:08 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 07/14] zephyr-kernel-common.inc: Reformat EXTRA_OECMAKE
Date: Mon, 15 Feb 2021 11:19:56 +0000
Message-Id: <20210215112003.2025053-7-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

This will improve diffs readability in the future.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index abc55ba..330fe59 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -13,7 +13,16 @@ ZEPHYR_SYSROOT="${STAGING_DIR_TARGET}"
 
 ZEPHYR_MAKE_OUTPUT = "zephyr.elf"
 
-EXTRA_OECMAKE = " -DZEPHYR_BASE=${S} -DZEPHYR_GCC_VARIANT=yocto -DBOARD=${BOARD} -DARCH=${ARCH} -DCROSS_COMPILE=${CROSS_COMPILE} -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} -DZEPHYR_TOOLCHAIN_VARIANT=yocto -DEXTRA_CPPFLAGS=${CPPFLAGS}"
+EXTRA_OECMAKE = "\
+    -DZEPHYR_BASE=${S} \
+    -DZEPHYR_GCC_VARIANT=yocto \
+    -DBOARD=${BOARD} \
+    -DARCH=${ARCH} \
+    -DCROSS_COMPILE=${CROSS_COMPILE} \
+    -DZEPHYR_SYSROOT=${ZEPHYR_SYSROOT} \
+    -DZEPHYR_TOOLCHAIN_VARIANT=yocto \
+    -DEXTRA_CPPFLAGS=${CPPFLAGS} \
+    "
 
 ZEPHYR_MODULES = ""
 ZEPHYR_MODULES_append_arm = "\;${S}/modules/cmsis"
-- 
2.30.1

