Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 531A0D2D8DE
	for <webhook@archiver.kernel.org>; Tue, 27 Jan 2026 09:52:48 +0000 (UTC)
Received: from fhigh-a6-smtp.messagingengine.com (fhigh-a6-smtp.messagingengine.com [103.168.172.157])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7254.1769507559532234594
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jan 2026 01:52:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=L2GTSyJ5;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=xdYt6Yd4;
 spf=pass (domain: fastmail.fm, ip: 103.168.172.157, mailfrom: manwag@fastmail.fm)
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.phl.internal (Postfix) with ESMTP id BF76D140015E;
	Tue, 27 Jan 2026 04:52:38 -0500 (EST)
Received: from phl-imap-12 ([10.202.2.86])
  by phl-compute-03.internal (MEProxy); Tue, 27 Jan 2026 04:52:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1769507558;
	 x=1769593958; bh=vA4VngIwLC6VkaThXjvmrj92Nv5v1drg28fIpwH2ByI=; b=
	L2GTSyJ5VgOrXFwkDyOm5HRaNkLqvMiI7cOBP6kKN+B7yKvTlMbZQ43w1svS1Q/t
	JyQr4dWYdEG9CafeX/WtjRMQLXVk5lKU5sRUUrGUaukNj9aF+BpinqXrAr+F8bxX
	odTmZvu6OGrMgzWWq/l48OgVGI9RPH7F/DdAsQtsuKgP4fJ2weaT2l8O17R2xb2l
	5czc+9MV3TEf09rDdHBCVaEs97JDSD9lvqgdDIRRx/1FhmYQtunZ0yuc0SD3HET1
	2ubIgLIyKwL/dGGJo5evM9OPsv3C4njaGhMfYV1eZEvjHIthv1pr0jtlKynFCmvB
	QQD8Nc7BYCXRj1xOq0WFdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1769507558; x=1769593958; bh=v
	A4VngIwLC6VkaThXjvmrj92Nv5v1drg28fIpwH2ByI=; b=xdYt6Yd4z4V0sY5eS
	1M3EtbktYmlItq95RihrDRYEMeoH5PNZOWahzZ6BNNPjyV8+VCE5a+aPeKCRJVaJ
	c1w08Rj1/avCx+cezzUCIHUSz3CcM1mzqMTxltqhpGq03+28Pim4IEV/YHt9Kv1/
	7oSPg0FlnMW/WlkYLnI25T2CBIro9UPncZMUrFZ0Q4hwN6gqyY+HYRT+GagXnxuk
	2OgpIz5U2zdiTU8aDk7Wor93jz6bt6Emz5IlBuIbvW1WPaOs51QuuA5bnp5Acakt
	T5xjXGFmoAns9GVmmf4XTkYdkuxA9uDB9f2pRwzYt2LANKs/8XipYWexhn2sfvLy
	ebRKA==
X-ME-Sender: <xms:5op4aeUm4zUnJdymI8wnwiDVqZoNfThQQCMwkm6CkpG36kt-I8gFBQ>
    <xme:5op4aVYhVFOIAJAenHCKFVLCH3mczM0-beqQkmIL61eK1B5JxO8vxGaZmbZje5zHG
    m9kGs0h1IuUZ55Wpja_-NrXH0lEmsZ7iXQMJCELWqFDKSk2X8y->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduiedtvddvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefoggffhffvkfgjfhfutgfgsehtjeertd
    ertddtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeeuffekueevtd
    eghffgtedvheehffehhfdtgedtledvudeguddtteekffduheduieenucffohhmrghinhep
    hihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffopdhnsggp
    rhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehquhgvnhhtih
    hnrdhstghhuhhliiestghhvghrrhihrdguvgdprhgtphhtthhopeihohgtthhosehlihhs
    thhsrdihohgtthhophhrohhjvggtthdrohhrgh
X-ME-Proxy: <xmx:5op4aVARCfABy3uZ84vV1AFt9w1Psx-RazNkGUawZPGx6xEfvdaXDg>
    <xmx:5op4aReIBNcrT8I9rZAA6dnJRBWwvb3th_sNPI1OVY0cJh-_XXl5Ag>
    <xmx:5op4aYIZLfB4zcMQV9G8-mcEADTTQ3CPgSweyYbHeL1V73Omb5jAPg>
    <xmx:5op4aceTjqVuFb5ETHW7XwSoa66fuBxhtdP4XsUftUT4LWYBOx6xFw>
    <xmx:5op4acKwUbsFVZSWQaUKS1DV5mzWtzRzsvml-rqAuKFjU_4cS_MvPi65>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 676251060065; Tue, 27 Jan 2026 04:52:38 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AJFTZxgdnNvw
Date: Tue, 27 Jan 2026 10:52:17 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org, quentin.schulz@cherry.de
Message-Id: <b1931f03-6196-4f03-a0dc-b935c9508035@app.fastmail.com>
In-Reply-To: <e00755f9-f60d-4a95-9307-99485e2c0449@cherry.de>
References: <7b5cf64b-cac2-4346-a038-2ac334162651@app.fastmail.com>
 <e00755f9-f60d-4a95-9307-99485e2c0449@cherry.de>
Subject: Re: [yocto] Want to select a SoC with good Yocto support, please advise
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jan 2026 09:52:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66195

Hi Quentin,

Am Fr, 16. Jan 2026, um 12:07, schrieb Quentin Schulz via lists.yoctoproject.org:
> Hi Manuel,
>
> On 1/15/26 3:52 PM, Manuel Wagesreither via lists.yoctoproject.org wrote:
>> Hello everyone,
>> 
>> I'm looking for SoCs that can read 3 MIPI CSI-2 virtual channels (768x576x60fps), do (preferably hardware-accelerated) Lens Distortion Correction (= de-fisheye) and encode the streams to h.264/h.265 or VP8/VP9. I'm not yet sure if I need hardware-assisted auto-exposure control loops via V4L2 and I2C to the camera sensor. Might very well be.
>> 
>> Based on my research, the following SoCs qualify. I don't yet have any practical experience with any of them, and would like to consider the quality of their Yocto support in my decision finding process. In other words: I don't want to shoot myself in the foot by selecting a chip that is a pain to work with or is lazy in updating newer Yocto versions.
>> 
>
> I think you're getting your priorities backwards. People always think 
> they are stuck with whatever vendor BSP layer they get. You're not. You 
> can always port the recipes to newer versions of Yocto. It's not THAT 
> difficult most of the time (I've had extremely cursed BSP layers that I 
> would call BitBake compatible rather than OE-Core/Yocto compatible).
>
> As a matter of fact, the first thing I always do is get rid of the 
> vendor BSP layer and write my own, so I don't get all their crap.
>
> What should matter to you is the actual software support. Kernel support 
> (is it fully upstreamed? if not, is everything you want to use 
> upstreamed? does the vendor participate in efforts in upstreaming (or 
> have a known consulting company doing it for them)). If only downstream, 
> how ugly is it, how much effort would it be for you to port to upstream 
> so you get security and bug fixes without relying on your vendor, U-Boot 
> (or any bootloader), same questions. TF-A, OP-TEE OS, etc... Is there 
> upstream support for the video encoder, if so with which userspace stack 
> (ffmpeg, gstreamer, their own (looking at you Rockchip MPP)). Is it 
> supported upstream or in a fork? If you're planning on selling/operating 
> in the EU, think how much work CRA compliance will be for you if you 
> have to support everything in BSP dowstream forks yourself.
>
> Also be extremely wary of marketing claims. It's not because they say 
> "up to X" that this is actually even achievable in theory. I believe 
> they most of the time just copy whatever the IP vendor tells them and 
> then don't even bother checking if they can actually reach it once 
> integrated in the silicon. Then you have silicon errata where something 
> may not even be achievable (CAN-FD on Rockchip for example from what 
> I've heard), so check those as well.
>
> Rockchip has an FEC (Fish-Eye Correction) ISP, but I don't think they 
> even have software support in their downstream kernel, so you need to 
> check that as well if the selected SoC has actual support for it.
>
> Writing recipes isn't always straight-forward, but compared to patching 
> the kernel, bootloader, userspace video stacks, it's probably a walk in 
> the park.

That's a lot of input and much of it things I didn't consider before. I'll bookmark your mail and come back to it once I have sufficient data to check all the things you mentioned. In the mean time I'll go with Texas Instruments to set up a prototype and gain some actual experience.

Thanks Quentin!

Regards, Manuel

