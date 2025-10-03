Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 242AACAC5B0
	for <webhook@archiver.kernel.org>; Fri,  3 Oct 2025 08:14:19 +0000 (UTC)
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by mx.groups.io with SMTP id smtpd.web11.2836.1759479249627786374
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Oct 2025 01:14:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=ysSHp9PV;
 spf=pass (domain: bootlin.com, ip: 185.246.84.56, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 045951A10C1
	for <yocto@lists.yoctoproject.org>; Fri,  3 Oct 2025 08:14:08 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CDBB260683;
	Fri,  3 Oct 2025 08:14:07 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2355D102F1BFD;
	Fri,  3 Oct 2025 10:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1759479247; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=qVFsgbzcgBUxBhDVAD4hE240lqhez8W3Grlh0YA+QAA=;
	b=ysSHp9PVGZDVJ6YFR6KgSO9jb/XpGuEWSQmHYxw5A3Cg/Hj5LJjxG2m62DVpfWUjN8HUtS
	B6HTxYzF5ldWfgTWpNESQgn+IphEDpzUTYP6EFVPkZpUCF2CFWyA2cGrjENl8En9HtSr+O
	NxpElwta8Tf2j2zjnzvSo5wSr1uzyAX7NGJP5IJkSvlWbsejhQiQmfBqkWEoiVw5DnylVQ
	c+EiReX+fsE9qUIuJ/6UWshIanMKClh+JfTAbVjoD486PFIVu3AyBEYwdlfxetkw+FdarR
	S4uHzBTu5Mx8qFrtxYiL9++6NFPVm7OrS5drO2f3vWE3wXZt5bTAPfFOqv43VQ==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 03 Oct 2025 10:14:02 +0200
Message-Id: <DD8JC5G0UUBN.2UDWW2UZW0RII@bootlin.com>
Subject: Re: [yocto] Yocto builds and job server?
Cc: "Li, Changqing" <changqing.li@windriver.com>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: <yocto@lists.yoctoproject.org>, <randy.macleod@windriver.com>,
 =?utf-8?q?Martin_Hundeb=C3=B8ll?= <martin@geanix.com>
References: <b9b292dd-b366-4310-9f22-7ab015aba7e1@windriver.com>
 <3124209f7210c9e39608a9717fa6abc7f1c4bf8b.camel@geanix.com>
 <8daca69a-82ae-45af-8a04-b15ffd4aa2c7@windriver.com>
In-Reply-To: <8daca69a-82ae-45af-8a04-b15ffd4aa2c7@windriver.com>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Oct 2025 08:14:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65904

On Thu Oct 2, 2025 at 11:51 PM CEST, Randy MacLeod via lists.yoctoproject.o=
rg wrote:
> On 2025-09-29 8:54 a.m., Martin Hundeb=C3=B8ll wrote:
>> Hi Randy,
>>
>> On Tue, 2025-09-23 at 15:43 -0400, Randy MacLeod wrote:
>>> Hi Martin,
>>>
>>> Do you keep your job server patch up to date?
>>> If so, can you push it to poky-contrib or share it some other way?
>>>
>>> Now that we're closer to stabilizing the fall release, I'd like to
>>> work on and help get that merged=C2=A0early in the next development cyc=
le.
>>>
>> Yeah, just today, one of our internal shared builders with 16 cores /
>> 32 threads ran with a load of "204,19, 170,18, 106,53", so it
> Yikes, are you using BB_PRESSURE_* or limiting builds using
> the threads/jobs variables at all?
> https://docs.yoctoproject.org/dev-manual/speeding-up-build.html

You can also see:
https://docs.yoctoproject.org/dev/dev-manual/limiting-resources.html

it may help with these different variables.

Antonin

