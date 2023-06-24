Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24E96EB64DA
	for <webhook@archiver.kernel.org>; Sat, 24 Jun 2023 14:47:30 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
 by mx.groups.io with SMTP id smtpd.web11.18027.1687618042292449261
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Jun 2023 07:47:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@fastmail.fm header.s=fm2 header.b=NM52u/qH;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.27, mailfrom: manwag@fastmail.fm)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 60DFB5C0084;
	Sat, 24 Jun 2023 10:47:19 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute5.internal (MEProxy); Sat, 24 Jun 2023 10:47:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1687618039; x=1687704439; bh=jLQC9yBHzjmJSxUA9P7J20et/bduseH9Gab
	CGZ8ZmpQ=; b=NM52u/qHhvK3so6iiUrM/pVhpjbN/IvX4xVg/sFzwc2Uc6PDMUm
	Du/VmBvSX2w+4X14EKy7V4smAZfeFqZ3v7RoFcJTleWdbjYVKW7Yo8NslQ7WTxA+
	8g4AevoFejwpa3dSTFD6gSjt5p2UfU6lyUmS093t303UV3SDytBmykxLATOIUQmr
	z0YlJ7UY8DM01wZIVojaif4uFRI1sZ4y45sqfTPAEjkS4SCS2Wdl2H9UA78k/GrL
	rLrHAcC5ubNcVFBoVzT/fltQGawXfoLrxrU956tx1dIdT8EGNyGNrsM34/rvDKFK
	GBGGG00sVUWJuoLyNwW7HXSnpU6OSC8UBng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1687618039; x=1687704439; bh=jLQC9yBHzjmJSxUA9P7J20et/bduseH9Gab
	CGZ8ZmpQ=; b=cPU1vER8VKuh1a49vurf0WuCzTunTz+PfHGpRtExq8F0evaxsrq
	uTlc6DML9uU0WTu+wkyr0gtVNVEeu2UTHZ/02FdYxjctC2OtJQixkMUK7MNqKLUc
	xopXC1Y9fYVkoAmpxVt8neFe2p1l+8L7kOh+RjFp3Oxi660zSuJ0h5vSxJi62jy8
	p54mLgaOH9GN/1WZQhWjNvY/417dxwqs9gQ7yKxi1ecY6+deARSQdkAY8HL4loSp
	2/RzOfTrpKB2H0KtIHj98giCw+r8WDO+ZOln5Vq4hNsWw6+FSDX3DesXXdAnpWWS
	4trYG1FnQ/Ohzd8qCsqYkKv8+Z/4fmX/u9g==
X-ME-Sender: <xms:9wGXZCrFN-AAwPNQPgwdaTqIhbwgkyR8n46Ldcs9ZB8fxp1m6k-S3Q>
    <xme:9wGXZArLkAn6hnaBGLPk8VyKi3OmudrYTCm7jGpD-6QY2L0dDGqjiYZo_ll_uwrZ_
    rs0q10Fb08bPW2I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeegjedgkedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdfo
    rghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghnhggrgheshfgrshhtofgrih
    hlrdfhofeqnecuggftrfgrthhtvghrnhepteehudefjedvhfdugfejheekkeeigffgvdek
    hfdtgfehheduieeitddtvdeugfehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:9wGXZHPHqfkk7Qw-k3rVYstOAmsgzHakUd2H8f4PsdOj2bt5mLjtNw>
    <xmx:9wGXZB6qYrPzdGLoOMhw8jXOI0GrjzPRcVjUMdt1J-AF126-FnNE_A>
    <xmx:9wGXZB4nxRkn2us1QuFgLHK16Iyb9uvMKawTBEWdlYkCTJ94fvpl-w>
    <xmx:9wGXZCWV-ye8jIOuIs-7lGnLHK6tB_EUL2ldw3nHIVKoDTQmKLI-ww>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 184B02D40087; Sat, 24 Jun 2023 10:47:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-499-gf27bbf33e2-fm-20230619.001-gf27bbf33
Mime-Version: 1.0
Message-Id: <4ea51f16-6c49-47c8-8750-1db4a4b3733c@app.fastmail.com>
In-Reply-To: 
 <CAMKF1srAV6j9DU=-6y_Qtv+bJY8Mqt1cbfX0v+EDzMvEGBGfpA@mail.gmail.com>
References: <d80d7dc4-d01e-49c1-b5b6-91140087fc7f@app.fastmail.com>
 <CAMKF1srAV6j9DU=-6y_Qtv+bJY8Mqt1cbfX0v+EDzMvEGBGfpA@mail.gmail.com>
Date: Sat, 24 Jun 2023 16:46:58 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Khem Raj" <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Jun 2023 14:47:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60423

Am Sa, 24. Jun 2023, um 00:04, schrieb Khem Raj:
> On Fri, Jun 23, 2023 at 2:39=E2=80=AFPM Manuel Wagesreither <ManWag@fa=
stmail.fm> wrote:
>>
>> Hi users of meta-raspberrypi,
>>
>> I'd like to ask around if for you people vc4-kms-v3d (opposed to vc4-=
fkms-v3d) *really* is the working way to get vc4 support on a Raspberry =
Pi 4 Model B.
>>
>> Both on master and kirkstone, vc4-kms-v3d is the default. It's define=
d in /conf/machine/raspberrypi4-64.conf:
>>
>> VC4DTBO ?=3D "vc4-kms-v3d"
>>
>> I was mildly surprised to find this, because on my system (running Ki=
rkstone) I can get the screen to work only if I specify vc4-fkms-v3d.
>>
>> Commit a6fa6b3aec36b92c3750852dd6788af9d2ce08f6 [1] broke my build. T=
he commit message further suggests that vc4-Fkms-v3d is broken, while vc=
4-kms-v3d is not. So I'm wondering:hy is it exactly the other way round =
on my machine?
>>
>>     raspberrypi4: Use full kms (vc4-kms-v3d) DT overlay
>>
>>     With latest 5.10 kernel fkms version fails to bring up VC4 and we=
 do not
>>     get dri device initialized ( /dev/dri ) is empty, which means we =
can not
>>     launch wayland componsitors.
>>
>
> We have moved away from 5.10 kernel to 5.15 and then 6.1, so its
> possible that fkms is working fine again.
> If you test it with both vc4graphics and userland graphics do both wor=
k ?

The meta-raspberrypi commit I'm on (a6fa6b3aec36b92c3750852dd6788af9d2ce=
08f6) has recipes for Linux 5.10.110 and 5.15.34 and on both of them vc4=
-fkms-v3d works while vc4-kms-v3d does not.

* When using vc4-kms-v3d, the screen goes dark very early in the boot pr=
ocess.
* When using vc4-kms-v3d, kmscube and weston-wayland both work.


