Return-Path: <martin@geanix.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BC8EC83F11
	for <webhook@archiver.kernel.org>; Mon, 28 Aug 2023 12:56:29 +0000 (UTC)
Received: from www530.your-server.de (www530.your-server.de [188.40.30.78])
 by mx.groups.io with SMTP id smtpd.web10.12787.1693227386696206253
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Aug 2023 05:56:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@geanix.com header.s=default2211 header.b=s+c8yNnu;
 spf=pass (domain: geanix.com, ip: 188.40.30.78, mailfrom: martin@geanix.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=geanix.com;
	s=default2211; h=MIME-Version:Content-Transfer-Encoding:Content-Type:
	References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=d0tb1ljUvcP7OnF4l0yhJjZaxbrG1QP2kYmJztEV6Ao=; b=s+c8yNnumpngOtDIvBQlm7x1Xg
	M2pRNOWitvzNN+7U2Di140NQRSAGba+k76DVN7oVC0KtqwPvOzJ26G8n9RuvRobKKIEePnj+JGfXM
	Jk0FUUKwghWByhG/VJmuhaXz2S6lA2CRBH7cyN2hzNluHl3EahMvFNhn0rmofZVL9BkjSyo0vQi3W
	DjnRGARtMZk6mzZziMraS9pe9aP4xtb0tY3fBfpnMYnzdHv/PhdBLxoWQaCBCMKbWzG8D12a+0YkO
	fHaccd5b7f6B9jKTzEM2PWHwjwj4OWKIoCW6HnXEEvFkdTtyMAmA0K3tiJQm+k1pimCc3yfqCDXmk
	xOL9GLMA==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www530.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <martin@geanix.com>)
	id 1qabn5-000ANW-DX; Mon, 28 Aug 2023 14:56:23 +0200
Received: from [85.184.138.13] (helo=[192.168.8.20])
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <martin@geanix.com>)
	id 1qabn3-000CLE-Nw; Mon, 28 Aug 2023 14:56:21 +0200
Message-ID: <2d13ad15af4678acd280b126633552684a115bfc.camel@geanix.com>
Subject: Re: [yocto] bitbake controlling memory use
From: Martin =?ISO-8859-1?Q?Hundeb=F8ll?= <martin@geanix.com>
To: Ferry Toth <fntoth@gmail.com>, Randy MacLeod
 <randy.macleod@windriver.com>,  Alexander Kanavin <alex.kanavin@gmail.com>,
 contrib@zhengqiu.net
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>, Quentin Schulz
	 <quentin.schulz@theobroma-systems.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>, richard.purdie@linuxfoundation.org, 
	martin.jansa@gmail.com, Trevor Gamblin <tvgamblin@gmail.com>
Date: Mon, 28 Aug 2023 14:56:20 +0200
In-Reply-To: <ff270ff7-1014-78eb-55e3-cc5c8ced050d@gmail.com>
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
	 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
	 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
	 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
	 <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
	 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
	 <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
	 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com>
	 <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
	 <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com>
	 <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
	 <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
	 <033d7443-7da9-38e8-ef36-2a87cad5ff8d@gmail.com>
	 <CANNYZj9wACHywe6CVpzv9Ty6XV-QVSu6J4zrr5RqD+10cFuK7w@mail.gmail.com>
	 <4359a2c6-1e7d-3bc4-b1db-b8809a72adc6@gmail.com>
	 <87492ec1-f053-90b4-f86a-70150dfc8b6a@windriver.com>
	 <77731899-2e25-e55b-e7c9-0eec0a0c6ed1@gmail.com>
	 <ff270ff7-1014-78eb-55e3-cc5c8ced050d@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
MIME-Version: 1.0
X-Authenticated-Sender: martin@geanix.com
X-Virus-Scanned: Clear (ClamAV 0.103.8/27014/Mon Aug 28 09:38:26 2023)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 12:56:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60903

On Sat, 2023-01-14 at 23:33 +0100, Ferry Toth wrote:
> Hi,
>=20
> Op 10-01-2023 om 10:24 schreef Ferry Toth:
> > Hi,
> >=20
> > On 10-01-2023 02:57, Randy MacLeod wrote:
> > > Add Zheng.
> > > Switch to Trevor's gmail since he might still be interested in
> > > this.
> > >=20
> > > On 2023-01-09 05:49, Ferry Toth via lists.yoctoproject.org wrote:
> > > > Hi
> > > >=20
> > > > On 09-01-2023 11:39, Alexander Kanavin wrote:
> > > > > On Sun, 8 Jan 2023 at 23:13, Ferry Toth <fntoth@gmail.com>
> > > > > wrote:
> > > > >=20
> > > > > > Now it works I'm not sure what to do. Richard marked the
> > > > > > original=20
> > > > > > patch
> > > > > > as WIP. Maybe it's not appropriate for including into poky?
> > > > > > If so I
> > > > > > wouldn't mind carrying it in meta-intel-edison.
> > > > > >=20
> > > > > > Or may be with a little work (from me) and a run on the CI
> > > > > > servers we
> > > > > > could make it go in?
> > > > > I'd rather teach make/ninja upstream to watch memory
> > > > > consumption
> > > > > and/or host pressure directly (e.g. similar to how it handles
> > > > > -l). And
> > > > > offer any resulting patches to upstream first.
> > >=20
> As there is already a clone of ninja available with jobserver support
> available I added another patch to update to that version and make an
> intercept to actually pass the named pipe to ninja.
>=20
> Find it here: https://github.com/htot/poky/commits/kirkstone
>=20
> This makes both make and ninja threads running from a shared thread=20
> pool. As cmake relies on ninja recipies are covered as well.
>=20
> I guess this takes care of the majority of recipes.
>=20
> In my case this new patch shaves no more then 1 minutes from my image
> build time (1h46) as the recipes built using ninja are not consuming=20
> that much memory (like nodejs). I hope others will benefit more.
>=20
> Todo: location of the pipe as mentioned by Richard

Hi Ferry et al.,

I've reworked the patches (once again...) into a global class that sets
up the jobserver configuration:
https://lore.kernel.org/openembedded-core/20230828124834.376779-1-martin@ge=
anix.com/T/#t

Since it's "just" a class, it can be carried in custom meta layers.
Also, it supports an external jobserver, which can be handy when
building multiple yocto confifgurations on i.e. a CI server...

// Martin

> > > Zheng and I *started* on that for make over the Xmas holiday.
> > > See the (poorly formatted) thread:
> > > =C2=A0 Add support for limiting CPU pressure, contrib, 2022/12/20
> > > in:
> > > https://lists.gnu.org/archive/html/bug-make/2022-12/threads.html
> > >=20
> > > There were mixed reviews upstream with the maintainer, Paul
> > > Smith,
> > > seeming to prefer that we investigate the job server approach and
> > > the=20
> > > current
> > > load averaging. I'll happily try to find time to play with
> > > Ferry's=20
> > > job server work.
> > >=20
> > The work is actually Richard's. I only fixed what broke over time.
> > > I've been thinking about the various workflows and as Richard
> > > said,=20
> > > it seems
> > > that for many people who only do one build at a time, the job
> > > server=20
> > > and maybe
> > > a little linker restraint, would be all that's needed. For
> > > activities=20
> > > such
> > > as YP AB, we could teach the main job server to also look at=20
> > > /proc/pressure
> > > as a way to limit the pool size we could make a meta-jobserver
> > > for=20
> > > those who don't
> > > want/need to worry about non-compile tasks such as tests and
> > > build=20
> > > clean-up.
> > >=20
> > >=20
> > > Note that cargo has the notion of a job server:
> > > =C2=A0=C2=A0 https://github.com/rust-lang/cargo/issues/1744
> > > =C2=A0=C2=A0 https://github.com/rust-lang/cargo/pull/4110
> > >=20
> > >=20
> > > and ninja has an open issue:
> > > =C2=A0=C2=A0 https://github.com/ninja-build/ninja/issues/1139
> > > and an initial implementation:
> > > =C2=A0=C2=A0 https://github.com/stefanb2/ninja/tree/topic-jobserver-f=
ifo
> > >=20
> > > What other build tools are in need of regulation and/or job
> > > server=20
> > > patches?
> > >=20
> > What I read, gcc has already -flto=3Djobserver.
> >=20
> > Other (single threaded CPU intensive) might just be started from=20
> > jobclient?
> >=20
> > > ../Randy
> > >=20
> > >=20
> > > > >=20
> > > > > Alex
> > > >=20
> > > > Yeah, I'd rather teach the kernel to consider thrashing when=20
> > > > scheduling jobs. As is now any user process can slow down any
> > > > other=20
> > > > users process and even the kernel itself to a standstill.
> > > >=20
> > > > But kernel developers consider those issues "orthogonal" (i.e.
> > > > they=20
> > > > don't want to make the scheduler aware of io).
> > > >=20
> > > >=20
> > > >=20
> > > >=20
> > > >=20
> > >=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58988):
> https://lists.yoctoproject.org/g/yocto/message/58988
> Mute This Topic: https://lists.yoctoproject.org/mt/82015730/3618414
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[martin@geanix.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


