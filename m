Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web08.30048.1613388071831601660
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=fdKB6tEE;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 1ACBF71B;
	Mon, 15 Feb 2021 06:21:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Mon, 15 Feb 2021 06:21:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=RhX5UGZmtzhbx
	mvTo41gFVJpnIUyAZ03JliSOarXaiI=; b=fdKB6tEEwXXmRXm/+PlYoPljopopV
	zzhZUSylm+lS4bmOkVkMCIvOIaLyD2kasVZwQ0Gy7j883NSka/eDJGwo8Pr9qCEq
	2TXp1RCmLJeLY8daRmRIaYxXDykwrmXf2QTLEAzdfQZ3YyjHc6Olqt6ApPQyTfju
	yQbSd92XXnvV5xN7xFQ1ZwpfJtKD587J71Gf2j3AQbUvgOyFmaWrXqfUSdUOjQtz
	gDjhADRzNJ+WGdAaBLxii/V8YhbsFo4poOXkMTm8FraRRM/+0oy90z60IZRSlHPp
	kpRT+tB+021q29Jhcm4LOVXt4ZL8JfgG/a7SmUHUnbU1r/3kjSG3rg0MQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=RhX5UGZmtzhbxmvTo41gFVJpnIUyAZ03JliSOarXaiI=; b=qtC+wT5S
	MUBqrA1uu8FBuOPLEc0aVllrAiFA2gZPJMEAushbd95utEKMq59kMSKN6i7dWUuW
	pw3Ertf5ckFECyJSauo3fXS7AE6vA3t0oUpzhG8RNrnqmqHtZ32RLmuojbkKtKbd
	m73KFEX5TdeWRZQGzquUwm21PH0eo/T3ZeHEaWZegT1HI687gV/HRkSAnBWgsfQA
	+0lw5i5/5G7mi++/UBbmUwRLfBfD1CoKrnsUKjGnFuAKX8ZkpQBSZESMGDtFXkwe
	USL6kHoP8+GsROnHuAS3YThBXxBYXI332cE7qfwhiLUQM/PxyVoWVmAPeudnrPZB
	0wLRJ3BMwgYWAw==
X-ME-Sender: <xms:JlkqYPGYA3Fd2rbi2u0e_Mb2CVeruiTAHOV6MXZoXbML6EMJvrbY0Q>
    <xme:JlkqYKKyPC9y4EwhPFKUQQme6wjd_0EkHAJUsTWGKiPrX8xUBigQzgot1zzykhLEt
    vnJj4o29ZUbrlklh-M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:JlkqYLnQ7ns8QMtBV31xtOcotmxXSE0nP1FPANWJ0b6glAnCsI2yzw>
    <xmx:JlkqYKRiV3u2uiKC1TA-fDzFafnIC8QC2DC8D9OOuyh__YjYz4bFWA>
    <xmx:JlkqYFJr77XQ-9Cr4AWsxgnOni48BpVlpErvi6BF4TxxUA6Z9F0vbw>
    <xmx:JlkqYEmlNZXPxCtuwVvyFkjIm_CX_LsTBC__c5bAXc3Ub9-Vc-V0aA>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 002B8108005C;
	Mon, 15 Feb 2021 06:21:09 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 10/14] zephyr-peripheral-hr: Add recipe for BT HR sample
Date: Mon, 15 Feb 2021 11:19:59 +0000
Message-Id: <20210215112003.2025053-10-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb b/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb
new file mode 100644
index 0000000..e6ef7b8
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-peripheral-hr.bb
@@ -0,0 +1,5 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR = "${S}/samples/bluetooth/peripheral_hr"
+
+ZEPHYR_MODULES_append = "\;${S}/modules/crypto/tinycrypt"
-- 
2.30.1

