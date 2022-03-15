Return-Path: <cJ-yocto@zougloub.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70EB3C433EF
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 03:34:23 +0000 (UTC)
Received: from zougloub.eu (zougloub.eu [69.70.16.42])
 by mx.groups.io with SMTP id smtpd.web11.6676.1647315261994417319
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 20:34:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zougloub.eu header.s=zougloub.eu header.b=yMRsFoms;
 spf=pass (domain: zougloub.eu, ip: 69.70.16.42,
 mailfrom: cj-yocto@zougloub.eu)
Received: from pouet.cJ (exmakhina.com [69.70.16.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
 server-digest SHA256)
	(No client certificate requested)
	by zougloub.eu (Postfix) with ESMTPSA id DEE491A10176;
	Mon, 14 Mar 2022 23:34:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zougloub.eu;
	s=zougloub.eu; t=1647315260;
	bh=1oDzFdreti9puR5iDT3777APexFyINNe/WFqRV5ShiE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=yMRsFomsa2zVS+Yq3P7XxdCOiEx9Fg7aSfxUZ+jRYXFi92EoH4s56ox4qcaDZDg9M
	 MOHSV7uFUv3VpiaF26+NLDC9ghbuiMv4bVUmZ3J6LsB4PZduOn/znUcqGzJn8/vuh8
	 szwnCGkESgzD85vlQvomq1x2D/5B0gRSkf92C2lA=
Date: Mon, 14 Mar 2022 23:34:19 -0400
From: =?UTF-8?B?SsOpcsO0bWU=?= Carretero <cJ-yocto@zougloub.eu>
To: "Mingrui Ren" <jiladahe1997@gmail.com>,
 richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org, bitbake-devel@lists.openembedded.org,
 poky@lists.yoctoproject.org, ross.burton@arm.com
Subject: Re: [yocto] [PATCH v2] bitbake/fetch2: Add a new variable
 'BB_FETCH_ENV' to export Fetcher env
Message-ID: <20220314233413.76f85dc0@pouet.cJ>
In-Reply-To: <7ba30db0-c7db-b1c0-5243-86d5df789f17@gmail.com>
References: <2021082315183802113213@gmail.com>
	<92b1ba20b320376227c3003c53784de67ae01505.camel@linuxfoundation.org>
	<7ba30db0-c7db-b1c0-5243-86d5df789f17@gmail.com>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 03:34:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56438

Hi Mingrui, Richard,


On Sat, 11 Sep 2021 11:42:44 +0800
"Mingrui Ren" <jiladahe1997@gmail.com> wrote:

> On 06/09/2021 17:41, Richard Purdie wrote:
> [...]
> > Why is this a problem? You need to state what the problem is
> [...]
> I think it's a good a feature if we could add custom variables into=20
> fetcher. For example,
> we could fetch private code by adding username or password, or we could=20
> adding custom
> proxy tools.

I have found myself using a sed one-liner to alter that variable list
in the fetcher code in order to pass through to git the
GIT_CONFIG_GLOBAL environment variable, the goal being to do git URL
rewrites via the git configuration (to pass HTTP credentials, or to use
a local repo because I didn't want to bother keeping obscure VPNs
online); it was the shortest way I could think of to achieve this.
Alternatively I could have used a PATH modification with a host tool
wrapper.
Ideally I would prefer adding a KEY +=3D value line to a site.conf.


Best regards,

--=20
J=C3=A9r=C3=B4me

