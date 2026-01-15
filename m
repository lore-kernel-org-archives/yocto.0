Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 362ABD44C5E
	for <webhook@archiver.kernel.org>; Thu, 15 Jan 2026 14:54:34 +0000 (UTC)
Received: from fhigh-a7-smtp.messagingengine.com (fhigh-a7-smtp.messagingengine.com [103.168.172.158])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.37540.1768488872784386101
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jan 2026 06:54:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm2 header.b=Ph3MmAsv;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=felEBAWa;
 spf=pass (domain: fastmail.fm, ip: 103.168.172.158, mailfrom: manwag@fastmail.fm)
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.phl.internal (Postfix) with ESMTP id F212A14001CC
	for <yocto@lists.yoctoproject.org>; Thu, 15 Jan 2026 09:54:31 -0500 (EST)
Received: from phl-imap-12 ([10.202.2.86])
  by phl-compute-03.internal (MEProxy); Thu, 15 Jan 2026 09:54:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1768488871; x=1768575271; bh=GhrcO1If4A
	SpOPdUT7l55NnlIvhklOxFqUmgBCutZ7g=; b=Ph3MmAsvS6UwYWknPhdDKxSIq9
	jQawmR6qWkqsDATtgnZA9MJkLA49n9qq0qa221HixX3wAuB3IDy58eOoJlZrVWM1
	DOieUWxW+k7peEeggodsZDVYfMZjH5DUiQcmUVMnbwF1LWEnNA2DSqtj/3CPl9tu
	tbOwpx0mPzLVsVbP5snDtZOngasDmRd5ZVd4hC8t132E8JHwDJID8asIcLY7kjOd
	UIw1idvnQR8IBQibZPOLtXvpMIYM2vynQQ7tL776BnDKBnQXLnCjFapNkKVkeKHU
	8CSxSGPRlv9iK/JEH2bQe8k1t+RJpDXUpvhkx0imOpTlWwhrhyP3iiH0aWBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1768488871; x=1768575271; bh=GhrcO1If4ASpOPdUT7l55NnlIvhklOxFqUm
	gBCutZ7g=; b=felEBAWa0yQSTrIAn4oIUKtOJzOnBQQaF9MgZOdLPdxs8wjxDOL
	cULNgtFRq/8HnvHI032TjeCAecGlKGjn3uaGfJ6E1AvgCE5g1mM32WbF3j9aSdKT
	0d3IwOP8hgCK8dxruuQq5fARw48Hn3hJSll2hbekjDdLKX4BujfiOltYNDI/esDo
	A+ApkEOyreausjZMzFH01BBRwoLjf2+lenChtfePm23amngZMAC6pYFNI6nHBLE7
	u+cJOumCh5B9BfstSoNOUakFoKVbrrQMfPpNGtZTzy3N6DYonWrhOmztN0CZJFX9
	j3gcLq/TeGDF8L+5D687oRk6HbHBWyQfHOA==
X-ME-Sender: <xms:p_9oaYtpMgMLGKhsZT0OXIojHHanANunK7MHsAxAVtgwWT_N1KEVMQ>
    <xme:p_9oaQSm_Fjl3fwxrCmdk9ID_hrdsaMahdF05NIsuNqtoBBLYF-hDy0YOfgmzjref
    ipWq32IpaDnfHbKqXWYl8s1x8WQOeWeOOGfcVwofGkJKoDyHpnF9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduvdeifeehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofggfffhvffkufgtgfesthejredtredttdenucfhrhhomhepfdforghnuhgvlhcu
    hggrghgvshhrvghithhhvghrfdcuoeforghnhggrgheshfgrshhtofgrihhlrdfhofeqne
    cuggftrfgrthhtvghrnhepjeetheefheffueekvddvheffieeiueeitdevvdffffeiuedu
    jeeghfevveeuffelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffopdhnsggprhgtphhtthhopedu
    pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihoh
    gtthhophhrohhjvggtthdrohhrgh
X-ME-Proxy: <xmx:p_9oaTe2ApkG5r7If6fckcdAt4dU8QB5RJbbkFPzYZF4WsQJTqDK6Q>
    <xmx:p_9oaZKABquokdarYNIpmTX8kdKSgTDYQ-_Et2DVIqkXcJucQsXXbA>
    <xmx:p_9oaZbfBG3n0heXrBGxwE1VW9dVhPxrj-HVuEnG4Zf6p2gasQE1mA>
    <xmx:p_9oacvj5r9HdfTTvUTjrQasj3tU2ac2a6GdR-VKGOLz74gcnlpjsA>
    <xmx:p_9oae3ll-I-_2WrCfMsoSEqozfnX05hrlgvQ9hkyKGsjVcPJDupgOoT>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id CE03A1060065; Thu, 15 Jan 2026 09:54:31 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Thu, 15 Jan 2026 15:52:40 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Message-Id: <7b5cf64b-cac2-4346-a038-2ac334162651@app.fastmail.com>
Subject: Want to select a SoC with good Yocto support, please advise
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jan 2026 14:54:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66151

Hello everyone,

I'm looking for SoCs that can read 3 MIPI CSI-2 virtual channels (768x576x60fps), do (preferably hardware-accelerated) Lens Distortion Correction (= de-fisheye) and encode the streams to h.264/h.265 or VP8/VP9. I'm not yet sure if I need hardware-assisted auto-exposure control loops via V4L2 and I2C to the camera sensor. Might very well be.

Based on my research, the following SoCs qualify. I don't yet have any practical experience with any of them, and would like to consider the quality of their Yocto support in my decision finding process. In other words: I don't want to shoot myself in the foot by selecting a chip that is a pain to work with or is lazy in updating newer Yocto versions.

* Texas Instruments AM62x
* NXP i.MX9
* MediaTek Genio

I'd appreciate any comments or advice on these and other SoCs that you think would be worth considering.

Warm regards,
Manuel

