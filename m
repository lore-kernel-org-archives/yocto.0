Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E0DAC433F5
	for <webhook@archiver.kernel.org>; Mon, 24 Jan 2022 12:43:41 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web11.3075.1643028220111342239
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Jan 2022 04:43:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=eoGoP+5c;
 spf=pass (domain: gherzan.com, ip: 66.111.4.26, mailfrom: andrei@gherzan.com)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 6577F5C00DF;
	Mon, 24 Jan 2022 07:43:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Mon, 24 Jan 2022 07:43:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm1; bh=rGc5t2pjtMk1ux/e/U+04JWKgA9qUrYFD93CbdkSAW0=; b=eoGoP
	+5cX/L2EuQy2H2vOp4A+BpMkxRka8vr/Px+Svfbr3/iujnA9Ro+Y2eShtB+8g6kn
	87se79gDhQ4Ir3IoAY/8kM5yOs5nAJcaXxtvQp6orhokajVWRGD3sRAEjZdPKuF/
	nojR8XMgCyp4xrkb2xiFsB458s9a7FS/ee48+CMftwnCBAxxGCOdRSHt8IAKEIDq
	RAsxw8TK0HxPIwndoRbsp54WuwfP64yBiwBt28jBdClEM6jQOC2eM4+yD/umrz6j
	PpWlTFpxW25MGP2IgHl/cqa2bgA5UKhiQIYT/Ff3bQ5S1+U12TVQQPOlORBuuY6i
	yBDftjjbKzUu2+dhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=rGc5t2pjtMk1ux/e/U+04JWKgA9qU
	rYFD93CbdkSAW0=; b=dzeLBnwPq9D9yDVk3eoxwbz58vWARj5/sJ06e10O8MO82
	P++NuHRJPFIitikm3z0YG1eAlStQTqu2Hk0Kt2ziJvbQxi/BocGSUEJD6mdv/Moh
	vEZPm6rLZLSlVo1Iq6Je1+rm+xBRPAhYHZJEpddcfJJaTI0WJPUGarIgdcb4yUdU
	OXYkjYuU3U6artdndGGDvuOsBe9KSOwIVdWTQBHxT/aRmwtsFS3W/v//09qUeCi8
	XoWuTdsm3IrEdMSaB2EKnel+kqFBPch+ZKkGXujbZAYewuwV0k1jAC9CU98u4F1O
	7Hh/qvq7XwartEeHugWtTw6pHsK9k54QogSIFTE6g==
X-ME-Sender: <xms:-p7uYWFKzM-8bpH5QZJIhNTOOd57uKhw-KxsVvV8hppnMV963uCsTg>
    <xme:-p7uYXXtMPzQ6gD2W-rfbHzCTKO2SgZbmmidAT3BmpQQxOXML-WZdmbqrrwJA2uF7
    KvAwviz3UuegFUCz04>
X-ME-Received: 
 <xmr:-p7uYQKRaKu5c4gRSb3ez8H-AplDat3EzSsjjZLaKUdz7_OdQlw4hSB8F00wcCPvL5iONVtDxyK2D6D65ejuyBMl5WvrC_Bhl1nuaslFizr6bcg6bxTs56Pn>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrvdeigdeggecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughrvghiucfi
    hhgvrhiirghnuceorghnughrvghisehghhgvrhiirghnrdgtohhmqeenucggtffrrghtth
    gvrhhnpedvleefteetkeekvdfgheelteekjeeuueetgfetvdfhjeetvdekhfekledthffg
    teenucffohhmrghinhepghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtohhm
X-ME-Proxy: <xmx:-p7uYQH2iJzU5rYkqISuc1HAiErhax3zyz9jgjAjepavl0FQypTBPw>
    <xmx:-p7uYcVohZYHZJTDvB4Q2eb7twW_gPX5Iewi300_hhuKetvzjd2VOw>
    <xmx:-p7uYTM2cd_Um89SekPEWmX8iAvacUaqdrU04X4hWRyQrVco7BWS5g>
    <xmx:-57uYZjpiH-iopZsgE6ruBtbpZ4_OnFINGaqLG27Z295jTEtH6qHcw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 24 Jan 2022 07:43:38 -0500 (EST)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Stefan Schmidt <stefan.schmidt@huawei.com>,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH 1/2] bossa-native: Add Arduino variant of the
 bossa flashing tool
Date: Mon, 24 Jan 2022 13:43:03 +0100
Message-Id: <20220124124304.2492266-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Jan 2022 12:43:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55953

From: Stefan Schmidt <stefan.schmidt@huawei.com>

This native recipe will be used to streamline the flashing of out
Arduino Nano 33 BLE target. Until now we have pointed to the full
Arduino IDE to get it installed and setting the PATH correctly before
any flashing would work. Having the tool supplied under the hood for
flashing will simplify documentation and support.

Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 .../bossa/bossa-native_git.bb                 | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 meta-zephyr-core/recipes-devtools/bossa/bossa-native_git.bb

diff --git a/meta-zephyr-core/recipes-devtools/bossa/bossa-native_git.bb b/meta-zephyr-core/recipes-devtools/bossa/bossa-native_git.bb
new file mode 100644
index 0000000..b645ecf
--- /dev/null
+++ b/meta-zephyr-core/recipes-devtools/bossa/bossa-native_git.bb
@@ -0,0 +1,23 @@
+SUMMARY = "Arduino variant of the BOSSA flashing tool"
+HOMEPAGE = "https://github.com/arduino/BOSSA"
+SECTION = "devel"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=bcf9399f7b9b96149837290bcdc3ad39"
+
+SRC_URI = "git://github.com/arduino/BOSSA.git;protocol=https;branch=nrf"
+
+PV = "1.9.1+git${SRCPV}"
+SRCREV = "89f3556a761833522cd93c199581265ad689310b"
+
+S = "${WORKDIR}/git"
+
+inherit native
+
+do_compile() {
+    # We only compile the bossac commandline tool, not the graphical version.
+    oe_runmake bossac
+}
+
+do_install() {
+    install -D -m 0755 ${B}/bin/bossac ${D}${bindir}/bossac
+}
-- 
2.25.1


