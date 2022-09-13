Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68FEC54EE9
	for <webhook@archiver.kernel.org>; Tue, 13 Sep 2022 21:22:38 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web11.781.1663104155816369575
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 14:22:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=A1tk/+V+;
 spf=pass (domain: gherzan.com, ip: 64.147.123.19,
 mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 0F2253200953;
	Tue, 13 Sep 2022 17:22:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Tue, 13 Sep 2022 17:22:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1663104154; x=1663190554; bh=Tf
	pr8eDd198Y2A+H1kzKIUcJjDxqiMGsWpxsloZvoB0=; b=A1tk/+V+pellMbDFSz
	IiUtIoiHQiRvtdwJVu+SPP/oBL2y20ZJKXI7E6l+vAO1ZavnndLrzqZnsuYDEMNW
	tCtagRHuQzFRM8jPCOn0r5c0JbcL5vD2rtI3NOHH///n+QspiHHKw9Hy5v60Crr0
	TLPFzpQz+xkodvUfTVtyeoLBj0XU/fu1aoUSOCwGr6MPQw1no6CxwDVjCw9Z5wZf
	6HFH9EbVS4pwppalaje/5RSeP/+Kf3qjpiPPLUwpIweoXvFOYuAOgvPc/wJ6hEUr
	m90orQ4EMjbNq3FTpBv9dlHdJV0VMTYxZ2m0PiCKh6jWdQ/ugZciv7+Xw1xEEe8S
	K2hQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1663104154; x=1663190554; bh=Tfpr8eDd198Y2
	A+H1kzKIUcJjDxqiMGsWpxsloZvoB0=; b=vBisEo0KCk/3bz+W0T1YpZny6x27e
	2q2zMmzv9SgBHcfS4ylk7k/ZpWId46x4BGVwMBb7BZyF8Ekje6z2nLcV0K3YeQZ/
	h2KIjlAto6ic5G0wzY1xZ3UANSh/z1q5c0sV544VW/W+oTwq19X2Ab+kKyY5EcS9
	kRkJbyAKrfH8AyeLybHss+VfQ3eDbQtNUxuzBBnU8KAPzXyHhQOdMrKkwhZSL652
	D2AFd8hlu2ERq04hhseEo7lMq2us8vVjBYGl2MTFIwZJ7Ba5I9E7XAdcBmtC50Ld
	U3Ox/xsLYwxQO51NBFRQWcfvthD/IrOy8ETGVjILnSQ3mvvms0rnfSvTg==
X-ME-Sender: <xms:mvQgYw6tOKDOtQto9MzsF77dj8yIvBLd5Z7S9UAwZg31pCQ6uKHmzg>
    <xme:mvQgYx5fehjLNM26gBOymozOVLJVR7HvDVM3QU324tydWC3N9ge7Qn7g_PVxYmVsi
    FxAVSHTW-8S_ZCs70c>
X-ME-Received: 
 <xmr:mvQgY_fLlwhzYkGkNGav2IIGb80_HUtiZxvHNXQP4ULC-vElI7iSAVMnu1T4AS-wMX7G3U9apfoX3iO4SHKpR81rJpTx79pbyBHroBCk8uxZVIR9FJVJgC9d>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedugedgudeifecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestd
    ekredtredttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghi
    sehghhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeejhfevhfeggfffjeegle
    ekjeelieffjefggfekgefgfffgffeifeefgeehhfdtffenucevlhhushhtvghrufhiiigv
    pedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtg
    homh
X-ME-Proxy: <xmx:mvQgY1IueYgzdvscepXOpKsL1DMvbT7M3HWylcYy5H38EWfw1DS0Iw>
    <xmx:mvQgY0IpEgeBaqCHUBR90wniWefvgB3G80AXHZJ-H7KODrHhBmzcJA>
    <xmx:mvQgY2x5ixmWZSLie3hqiiERiSDyq3mPd7dov4xESfsLZiA9eB4zZQ>
    <xmx:mvQgY-jxlJZLNuux4YPOPOeIxGasCfcl9yeyqqxCBKaX8nzPpYLQOA>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Sep 2022 17:22:33 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH v2 5/7] ci: Add raspberrypi-armv7 to the
 build matrix
Date: Tue, 13 Sep 2022 23:22:02 +0200
Message-Id: <20220913212204.3210494-6-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913212204.3210494-1-andrei@gherzan.com>
References: <20220913212204.3210494-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Sep 2022 21:22:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58034

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 .github/workflows/yocto-builds.yml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.github/workflows/yocto-builds.yml b/.github/workflows/yocto-builds.yml
index 824745c..8644b13 100644
--- a/.github/workflows/yocto-builds.yml
+++ b/.github/workflows/yocto-builds.yml
@@ -27,6 +27,7 @@ jobs:
           - raspberrypi4
           - raspberrypi-cm3
           - raspberrypi-cm
+          - raspberrypi-armv7
         image: [rpi-test-image]
         distro: [poky]
     runs-on: [self-hosted, Linux]
-- 
2.25.1


