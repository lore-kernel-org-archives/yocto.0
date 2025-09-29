Return-Path: <martin@geanix.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33971CAC5B0
	for <webhook@archiver.kernel.org>; Mon, 29 Sep 2025 12:54:25 +0000 (UTC)
Received: from mail-24420.protonmail.ch (mail-24420.protonmail.ch [109.224.244.20])
 by mx.groups.io with SMTP id smtpd.web10.52975.1759150460169653629
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Sep 2025 05:54:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@geanix.com header.s=protonmail2 header.b=TDxK7FYt;
 spf=pass (domain: geanix.com, ip: 109.224.244.20, mailfrom: martin@geanix.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail2; t=1759150457; x=1759409657;
	bh=HXXCMn4NQjGMBrrPOw+icO9B+z8NTiUYVJRUd0Bjg90=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=TDxK7FYtvnzG0Ja8eYkHCb/9nHJXHLNlKs7X8ProgdUT4Qg+zyxP3qcYstfOLbq5I
	 5/+Mlp3ZV4wBVFvuudrtKKxbBeml3yqbS7UWJHgxmHLGbaLdWG6ZqxFS7uO0/D64U0
	 vsKIOrQnaskV0SQsyDbW5Q4gDiZIjFMfFkOBmnvpyzCqqz0rGri8V1dvY+XCOt0Gol
	 nguMn9qSJ1WFMAIoUZkF/0HxxDPBoHS2+tZMtqHfH/GneAzZxeqSodjc30uk3aitee
	 HLdJ9KnmcStp9jkoCvWqhziyOVp+6yP574CGl5pTXMEWPu1Ah8fSPVvu5rj41KooG1
	 qPpuNANTWhggg==
Date: Mon, 29 Sep 2025 12:54:12 +0000
To: Randy MacLeod <randy.macleod@windriver.com>
From: =?utf-8?Q?Martin_Hundeb=C3=B8ll?= <martin@geanix.com>
Cc: "Li, Changqing" <changqing.li@windriver.com>, "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: Yocto builds and job server?
Message-ID: <3124209f7210c9e39608a9717fa6abc7f1c4bf8b.camel@geanix.com>
In-Reply-To: <b9b292dd-b366-4310-9f22-7ab015aba7e1@windriver.com>
References: <b9b292dd-b366-4310-9f22-7ab015aba7e1@windriver.com>
Feedback-ID: 134068524:user:proton
X-Pm-Message-ID: 99351b4631c85eb20816119f0fd1cda11c58ebf0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 12:54:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65887

Hi Randy,

On Tue, 2025-09-23 at 15:43 -0400, Randy MacLeod wrote:
> Hi Martin,
>=20
> Do you keep your job server patch up to date?=20
> If so, can you push it to poky-contrib or share it some other way?
>=20
> Now that we're closer to stabilizing the fall release, I'd like to
> work on and help get that merged=C2=A0early in the next development cycle=
.
>=20

Yeah, just today, one of our internal shared builders with 16 cores /
32 threads ran with a load of "204,19, 170,18, 106,53", so it
definitely makes sense to dig out the jobserver patches.

I will give it a spin in one of the coming weeks. Thanks for reminding
me!

// Martin


> =C2=A0
> =C2=A0Context for those interested:
> =C2=A0=C2=A0=C2=A0
> https://lore.kernel.org/openembedded-core/9844556f-5016-47fa-a3ac-ceaaca1=
e7d57@windriver.com
> /
> =C2=A0
> =C2=A0
> ../Randy
> =C2=A0
> =C2=A0
> --
> # Randy MacLeod
> # Wind River Linux
> =C2=A0


