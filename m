Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B30C6FA89
	for <webhook@archiver.kernel.org>; Sat, 10 Sep 2022 23:05:58 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web11.4838.1662851155421578794
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Sep 2022 16:05:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=rlEKn2o5;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21,
 mailfrom: andrei@gherzan.com)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id A6EA9320079B;
	Sat, 10 Sep 2022 19:05:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sat, 10 Sep 2022 19:05:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1662851154; x=1662937554; bh=Tf
	pr8eDd198Y2A+H1kzKIUcJjDxqiMGsWpxsloZvoB0=; b=rlEKn2o5gpWkspYWGS
	Crr4MmNAbR4NLLhlnkwhVHbGVd2Ngu2U4SGvgc9IsO/vOfGUKi3iX/wP29x63GWp
	ox5kLjo+wAw6iInamzl//Gaq7PFypUqxO2ktOSaaNEkQluTbhiWLxkGNAoC96HiM
	fzw6oU2LGREHm5CYxLkZv1CstT/BD19Biaxz34eLFhOruOyOV9WGfTtOjqkFCkct
	aa4r1Bt8nw6EFNRL3J6G4UncxHTvlh+a3DQNoYjWPcEDsFnK/Ir0yw9M412Ua0Ua
	oVNdkUWIkWH5eLhTM4tKilbEmmnwRaUTWd69T2p1NmGJYiGWzbUy2uj+9okqb6xL
	2P2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1662851154; x=1662937554; bh=Tfpr8eDd198Y2
	A+H1kzKIUcJjDxqiMGsWpxsloZvoB0=; b=fKQQgUhhQ7riIX4YR5CgwNoG9dIIX
	cxdkQDe7ZlXAyEibUT+Xiu/VFR6mi7N10JQv271RuiFBsEQXbRRENS5KWei8jWCl
	Zui8dI5tWE9gFc9YhifNZeTUKvS4g/4GJIQJ/h0gxWdx2swEiljk+cVF70lYku3A
	1e6hDIHgVjCptWvPShvJ/icn9s/8aqgM92EiGqK2Pxc1tOQsNSsV8UOn00XeBS39
	c6qLu5rSjAqmj3j7SdS9wzqv7hwBNlVatcDM4gtn2GiqvGobn1cgB3tpdyDjLWka
	r8QF3U03SlBiMHO841N4RLJS/aaFvN9hMfPoyTYjKktu29pC2MpSHPXyQ==
X-ME-Sender: <xms:URgdYxhI2cKPrr4sC_YZQdkGCisJMAbmNEImrXFZ9iSPgbwmSXRZZQ>
    <xme:URgdY2BeX7vxKL12A4ttAeNV9U8LNiiG0WxKhT95NuMT-OipOVYddLgtuZfUDTKUK
    PeXSUMYchn4A58QwnU>
X-ME-Received: 
 <xmr:URgdYxHHRa6QaZsMAe6uYzBuUqvpXi2js6-YAlPXV1PiELbLYPGrYYrOPeK1y1xMT8XnChwaUZVsZ81ryoEiBQVewLvaZT34Wu7g10yVGEM_gVpihfPO0pUw>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtkedgudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihes
    ghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepjefhvefhgefgffejgeelke
    ejleeiffejgffgkeeggfffgfffieeffeeghefhtdffnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtoh
    hm
X-ME-Proxy: <xmx:URgdY2R0HmtYFdYTNP7tIVlDKvI3oUYwBnQNCRUjMKLTFllme-qs9A>
    <xmx:URgdY-wq_TgU55VpBtbwrjOHPdS8wj84gflNrtxyFTtyQorM2a9b3A>
    <xmx:URgdY87q0XKbuI4IiPncbfsuyD1b41e6RKJzdtQQsiI8JCvAVdFUqw>
    <xmx:UhgdYzooAsNPvAhYVochNNJYFZoi3jZeVbI3rILAbGC2s1MBTwcqMw>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 Sep 2022 19:05:53 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 5/5] ci: Add raspberrypi-armv7 to the build
 matrix
Date: Sun, 11 Sep 2022 01:05:31 +0200
Message-Id: <20220910230531.4084156-6-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220910230531.4084156-1-andrei@gherzan.com>
References: <20220910230531.4084156-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Sep 2022 23:05:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58017

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


