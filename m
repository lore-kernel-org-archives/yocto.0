Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC927C6FA8A
	for <webhook@archiver.kernel.org>; Tue, 13 Sep 2022 21:22:48 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web11.784.1663104159875670901
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 14:22:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=K2HwG0cs;
 spf=pass (domain: gherzan.com, ip: 64.147.123.19,
 mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 1F35F3200946;
	Tue, 13 Sep 2022 17:22:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 13 Sep 2022 17:22:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1663104158; x=1663190558; bh=8i
	3QDwoFLbn+9leSLCWwNvkKmQh9JGmE4IB4CnL0iP8=; b=K2HwG0csVf/kvgaPyE
	Un+ZDknUC4mIwimC/NtHvQPX77zAfH/CfbzCxskIPCcsnOeRtQcVIl+VXXr2wOcQ
	zBy9h1W8N+RGw95YOIHpfvu99MNJ9TK07pG9W3OHGWOUccd5CM8RtMo4fVBqUV1S
	2M4ozRhYYrcGM2c7s1+PaqbUSCClVv47VjDSWTgNKwoRBvgXN1l7Z21AJV/mv8Tp
	Ls8rjfW6L9eEX3dZJ+ylDwiLpwPXbSqoG0UEfTbVdbOjTMo6zbRk9HiLCL7mTkZ1
	GpC3SAwBIMz8c2WTKXHqLF94LxWPJhgNiCrh1XDz8mDT1dwMhvn8DSpH/Wmf12ib
	Ly/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1663104158; x=1663190558; bh=8i3QDwoFLbn+9
	leSLCWwNvkKmQh9JGmE4IB4CnL0iP8=; b=eritwXRVdBqg+vsg0DHxTuf18OaIr
	spmqHnKERAOCOUexJhxBmpj3Nm378hV5HMUP6I7vLsMQeB+uwdd0CZb3FF/L/8im
	B6qxUVMkjCYhyOb4xc4z/ZMB8qR4uyezG5vSzSu9Ibll7IjOtbm5THGmBQbzE95V
	qFCq9dxN0p99eVc8SqM/ED7yhD/7PD36ubAe+5la6Hn9EU5fjLOMKsLtNYWH1h2s
	wmRYJjNN58cxRMQJk/Uu84gVCkM2euqxk3Fp3ehzVUUmr5sz1kGjauesRLXwLAha
	hVo/ASHv8TEHHaA3qBiD03w6Th5jIkjRjVxEr+dNEjK6uZJvGjCAsbkfA==
X-ME-Sender: <xms:nfQgY9qYke1MDAxO9pXR1LiFd7X5CedFNDt4wdmHf15m7IrxQuHPRA>
    <xme:nfQgY_oMQDPjEjyIkmBgBG-KMU-e9F40Ztmccy77GPxZrFG0EYmW5azzr4NJ58Mc2
    Dx5AE7l8cBmVVNEKs8>
X-ME-Received: 
 <xmr:nfQgY6N6xhca7Kb1ItWddGbj8QIE_7uyfSu7nmrNl3ZN8WVlc5s_xIvxxVKdZ6d5fpTlD34ctiV1lyZ_DpcdgKjEzmdrIwc3imxdh1vmZ0QMMqGpttb7SmsA>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedugedgudeigecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestd
    ekredtredttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghi
    sehghhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeejhfevhfeggfffjeegle
    ekjeelieffjefggfekgefgfffgffeifeefgeehhfdtffenucevlhhushhtvghrufhiiigv
    peefnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtg
    homh
X-ME-Proxy: <xmx:nvQgY44V2B7dmLm-SbW_2tRIQP-GqPWXpbNp25z1P1W0UacGpPnSjQ>
    <xmx:nvQgY86FioT1dkdRvnHo6sJdfmvl_iBITZY7dKjF6aDhHBJVOBZcQw>
    <xmx:nvQgYwipAGI1wXZccwDD9y9rvyRBNxZ8aIbDM_JR90L-giy5BJm-IA>
    <xmx:nvQgY6QEG5r0emWSecW2e0njzBHydVU4I8UvJpDEa9CxZfkaYMjnlQ>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Sep 2022 17:22:37 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH v2 7/7] ci: Add raspberrypi-armv8 to the
 build matrix
Date: Tue, 13 Sep 2022 23:22:04 +0200
Message-Id: <20220913212204.3210494-8-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913212204.3210494-1-andrei@gherzan.com>
References: <20220913212204.3210494-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Sep 2022 21:22:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58036

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 .github/workflows/yocto-builds.yml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.github/workflows/yocto-builds.yml b/.github/workflows/yocto-builds.yml
index 8644b13..3f21242 100644
--- a/.github/workflows/yocto-builds.yml
+++ b/.github/workflows/yocto-builds.yml
@@ -28,6 +28,7 @@ jobs:
           - raspberrypi-cm3
           - raspberrypi-cm
           - raspberrypi-armv7
+          - raspberrypi-armv8
         image: [rpi-test-image]
         distro: [poky]
     runs-on: [self-hosted, Linux]
-- 
2.25.1


