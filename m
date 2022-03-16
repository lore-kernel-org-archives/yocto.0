Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7662EC433F5
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 07:02:01 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web12.21828.1647414119794960799
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 00:02:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=ZVUw+5WR;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.28, mailfrom: manwag@fastmail.fm)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id EC65D5C0189
	for <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 03:01:56 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute2.internal (MEProxy); Wed, 16 Mar 2022 03:01:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm3; bh=u
	/446hwmAEew2g+PF/PTRSLgXEJH1LwPuf9Ccta8RQE=; b=ZVUw+5WRaiW5IDJKF
	iwD3hppCI8mxAB+0G015ZbMBZUCraEIwMge4r2SOlGzeoH6xkYE769ozQAzMlHIb
	MgFldWkNrV6sy7R8Sq58beMjWrEo/IiV1jWHaGBUjf9E94TEWGNTZqwLl8KEErjG
	oXuCfTWsN0aupyUnonYe1r8DDGxLFgj9KE0SouYj9xyhBOvrxz2fieD9jKUeVcT1
	l3bBxnKiguPM/rBTKAZmcR5IdLtAjJid5y3pLv27rV8iJUyhcIO59Y8FbFzVSdGy
	qjViNZdwrMtfTkg3Gg8MLX5wUcgssZVTizxsHuN+EltD9LfK8Zw5KPcg7YtuqZXA
	/ijQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; bh=u/446hwmAEew2g+PF/PTRSLgXEJH1LwPuf9Ccta8R
	QE=; b=gnofFRkd0NVN5viBBpQcWdNy/OEUAjNkMRIUndWXTkKL48oJMkVucNqPw
	wh4AspkmYoQmKK0Jv8OcwICatN4l1A1sGBS12JYzGR8E+JMcEUSSVNKW9DtF3l7A
	47MQZNxDvZGzZnfVmYs+pbJWjR4F1R+jEyMvy+4diVwdDuaVi9ehJX1TAofPhItI
	iTcPNGse6PLMkNLdkFPiiisGGmgolluWnnXdftW/+CBDnn4s7Q2hVyqYWiHtpLpI
	aRktKYSBDYztj257OAkbmgOrWcRhhN0RNvrfBWe0A1NAnSRXN0gGBlAerNV6wH51
	TMdrsW+aRglwK2aCQQiovPoDR6ijQ==
X-ME-Sender: <xms:ZIsxYkTTSrCh_i2bETJI5NRgbpexfQEHXhs7sJ6extGaim7INqvY5w>
    <xme:ZIsxYhwoUUwUhzRdhvUoSjxNPTE_-uMuT3bj7JSWPbLW8ny5HKpagvCTjH0RNECbj
    yrQEnJGAjCykOtS>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudefuddguddtudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtre
    dtreertdenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoefo
    rghnhggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepfefghfeuve
    ekgeejveeigeeuudefffdtfefggffgteehgfeukedtueevtdffvedunecuffhomhgrihhn
    peihohgtthhophhrohhjvggtthdrohhrghdpohhpvghnvghmsggvugguvggurdhorhhgne
    cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepofgrnhgh
    rghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:ZIsxYh2Ux6GWu88vdU6jMhm4m6W1c4r3tB2e6x3dZAaXyLZ6fwjqoQ>
    <xmx:ZIsxYoCKqybeARA8vs-vYBidHUTQdvM4YrD1uLqtu5pxTCEzU18tyg>
    <xmx:ZIsxYti8vH-VrxG8JYj5BdyBVZ3SSzN7P1ysY1wFdY2ICqGVmCFb4w>
    <xmx:ZIsxYoviAIRXriKQELOAtthmazjVKbZxBbjGpctJPcyp65SYt53Bjg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 6CA763C0146; Wed, 16 Mar 2022 03:01:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4907-g25ce6f34a9-fm-20220311.001-g25ce6f34
Mime-Version: 1.0
Message-Id: <43ad16aa-6986-4790-a4fa-86cdd8fcb6e3@www.fastmail.com>
Date: Wed, 16 Mar 2022 08:01:35 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Still affected by recent pkgconfig-native issue
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 07:02:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56454

Hi all,

my dunfell build for a NVIDIA Jetson TX2 (support from meta-tegra) is failing in the way described here:

    https://lists.yoctoproject.org/g/yocto/topic/86571641#55134.

As per a comment of Richard Purdie, it should already be fixed. I seem still affected, though.

I digged into it and suspect I might have to backport [3] to the glibc version used in dunfell, which is 2.31. I would still like to hear your thoughts about this. There should be quite a few people affected by this, rather than just me. Hence I'm likely miss something to the complete story.

The bug ticket ( https://bugzilla.yoctoproject.org/show_bug.cgi?id=14519 ) explains that the bug got introduced with [1], and is fixed with [2] and [3].

    [1] https://git.openembedded.org/openembedded-core/commit/?id=4aa4dcd5f31657073f2207a9a4a43247322c7eb1
    [2] https://git.openembedded.org/openembedded-core/commit/?id=06d55ee67ef81a9f9da178b06bb797cc62881643
    [3] https://git.openembedded.org/openembedded-core/commit/?id=234a3e84640c1bb6df5fa4d3d7089a854b19d108

Poky dunfell contains [1] as 83b827e3d6835ef62cb2db3fc7505679ae727529 and [2] as a28d37580a1ae34d6c170490be420c7812d2b3e6 but not [3]. [3] patches glibc 2.34, while poky dunfell contains 2.31.

Best regards,
Manuel

