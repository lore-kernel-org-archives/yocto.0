Return-Path: <ml@embed.me.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23CACC433EF
	for <webhook@archiver.kernel.org>; Tue,  3 May 2022 12:45:45 +0000 (UTC)
Received: from outbound.soverin.net (outbound.soverin.net [116.202.126.228])
 by mx.groups.io with SMTP id smtpd.web11.10506.1651581936432450902
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 05:45:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: embed.me.uk, ip: 116.202.126.228, mailfrom: ml@embed.me.uk)
Received: from smtp.soverin.net (unknown [10.10.3.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by outbound.soverin.net (Postfix) with ESMTPS id 66BC2291;
	Tue,  3 May 2022 12:45:33 +0000 (UTC)
Received: from smtp.soverin.net (smtp.soverin.net [10.10.4.100]) by
 soverin.net
Message-ID: <7b779221-1ec6-f03d-bc95-6b58c2f45e71@embed.me.uk>
Date: Tue, 3 May 2022 13:45:29 +0100
MIME-Version: 1.0
Subject: Re: [yocto] Adding systemd to yocto
Content-Language: en-US-large
To: Edgar Mobile <heideggm@hotmail.com>,
 Scott Murray <scott.murray@konsulko.com>
Cc: Joel Winarske <joel.winarske@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CABKMkPLwm1e_S+pdqw4j_J-oVokVWphdXiMAkiaME3MZvnyg3Q@mail.gmail.com>
 <5c7ccb89-5af6-78f8-f6b5-416d8e83369@spiteful.org>
 <DM8PR16MB4357D696EB8115CD320E035BC7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
 <DM8PR16MB43575294B7F770E74634A9D1C7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
 <ff0fbda-7955-d0f1-4dc7-a78f34359768@spiteful.org>
 <DM8PR16MB435760E81DEDC46DA1B570B9C7C09@DM8PR16MB4357.namprd16.prod.outlook.com>
From: Jack Mitchell <ml@embed.me.uk>
In-Reply-To: 
 <DM8PR16MB435760E81DEDC46DA1B570B9C7C09@DM8PR16MB4357.namprd16.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 May 2022 12:45:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56976

On 03/05/2022 11:57, Edgar Mobile wrote:
> Apparently, this is not enough:
>=20
> bitbake core-image-weston
> /usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't
> resolve package from __spec__ or __package__, falling back on __name__
> and __path__
> =C2=A0 return f(*args, **kwds)
> Loading cache: 100% |############################################| Time=
:
> 0:00:00
> Loaded 1472 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'pam' (but
> /media/user/SSD1TB/yoctoqemu/poky/meta/recipes-graphics/images/core-ima=
ge-weston.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'pam' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['pam']
> ERROR: Required build target 'core-image-weston' has no buildable provi=
ders.
> Missing or unbuildable dependency chain was: ['core-image-weston', 'pam=
']
>=20
> These are my current additions to local.conf:
>=20
> INIT_MANAGER=3D"systemd"
> CORE_IMAGE_EXTRA_INSTALL +=3D " mesa-demos gdb"
> IMAGE_INSTALL:append +=3D " pam"

pam is a DISTRO_FEATURE as below, not a package as you've added above.

> DISTRO_FEATURES:append =3D " systemd wayland pam x11"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"=C2=A0
> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D
> "sysvinit"VIRTUAL-RUNTIME_initscripts =3D ""
> IMAGE_ROOTFS_EXTRA_SPACE =3D "38048576"
>=20
>=20
> -----------------------------------------------------------------------=
-
> *From:* Scott Murray <scott.murray@konsulko.com>
> *Sent:* Monday, May 2, 2022 2:32 PM
> *To:* Edgar Mobile <heideggm@hotmail.com>
> *Cc:* Joel Winarske <joel.winarske@gmail.com>; Yocto-mailing-list
> <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Adding systemd to yocto
> =C2=A0
> On Mon, 2 May 2022, Edgar Mobile wrote:
>=20
>> Ok, correction: I complains about pam missing.
>=20
> My apologies, I'd forgotten that wrinkle as we'd been sidestepping it f=
or
> a while in AGL with some custom Weston startup.=C2=A0 There are a few r=
ecipes
> in the Weston stuff that explicitly mark pam as a required feature when
> using systemd, so you'll also need to have:
>=20
> DISTRO_FEATURES:append =3D " pam"
>=20
> Scott
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56975): https://lists.yoctoproject.org/g/yocto/mess=
age/56975
> Mute This Topic: https://lists.yoctoproject.org/mt/90758452/3618454
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ml@embed.me.=
uk]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Jack Mitchell, Consultant
https://www.tuxable.co.uk

