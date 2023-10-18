Return-Path: <ejo@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4048CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 09:57:45 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
 by mx.groups.io with SMTP id smtpd.web11.277595.1697623055223755743
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 02:57:35 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: pengutronix.de, ip: 185.203.201.7, mailfrom: ejo@pengutronix.de)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1qt3Iy-0001Ko-Tg; Wed, 18 Oct 2023 11:57:32 +0200
Message-ID: <ecc7db27039d38992b6423f17bbfdd44e1967249.camel@pengutronix.de>
Subject: Re: [yocto] Remove packagegroup from image recipes
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: Ivan Stojanovic <ivastojanovic@gmail.com>, Alexander Kanavin
	 <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Wed, 18 Oct 2023 11:57:31 +0200
In-Reply-To: <CANNYZj8Rj08B4vvQ8EC6v3S31U9ZAWoxdmJzh43T6CpoK5bqww@mail.gmail.com>
References: 
	<CANNYZj8P62x8q5TP59Xhajq6XNS6--Ox-G+N2pEH9hnr=Hoo=A@mail.gmail.com>
	 <30180.1697619630482083755@lists.yoctoproject.org>
	 <CANNYZj8Rj08B4vvQ8EC6v3S31U9ZAWoxdmJzh43T6CpoK5bqww@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 09:57:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61392

Hi,

Am Mittwoch, dem 18.10.2023 um 11:08 +0200 schrieb Alexander Kanavin:
> Ugh, that's a really ugly hack in meta-rauc. They shouldn't force
> themselves into all images that way. You should file a ticket.

it's not really that it's 'forced' into all image. The .bbappend just says:

> require ${@bb.utils.contains('DISTRO_FEATURES', 'rauc', '${BPN}_rauc.inc'=
, '', d)}

The assumption was that if you have 'rauc' in you DISTRO_FEATURES, you want=
 to install it.
And this was just the best way I saw to automatically end up in base images=
 for this case while
ensuring that we do not modify the base packagegroup unconditionally.

A step back: I would expect that a recovery image is exactly where you woul=
d want RAUC to be
available to recover you rootfs by installing a valid bundle, or?

Anyway, feel free to file an issue or a discussion at

https://github.com/rauc/meta-rauc =F0=9F=99=82

Regards, Enrico

> I would suggest either dropping rauc from DISTRO_FEATURES globally
> (that may have unwanted side effects though and you should check what
> else that affects), or using BBMASK as shown in reference manual to
> blacklist the offending bbappend, e.g. something like:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 BBMASK +=3D "/meta-ti/re=
cipes-misc/ meta-ti/recipes-ti/packagegroup/"
>=20
>=20
> Alex
>=20
> On Wed, 18 Oct 2023 at 11:00, Ivan Stojanovic <ivastojanovic@gmail.com> w=
rote:
> >=20
> > We have 2 images, adios-image-standard and adios-image-recovery.
> > In adios-image-standard, I want to have rauc.
> > In adios-image-recovery due to lack of space, I want to remove it. It i=
s a part of it since it
> > is in DISTRO_FEATURES.
> >=20
> > In meta-rauc layer, they add rauc to pacakgegroup-base:
> > https://github.com/rauc/meta-rauc/blob/kirkstone/recipes-core/packagegr=
oups/packagegroup-base.bbappend
> > =C2=A0via
> > https://github.com/rauc/meta-rauc/blob/kirkstone/recipes-core/packagegr=
oups/packagegroup-base_rauc.inc
> > .
> >=20
> > I tried removing it with PACKAGE_EXCLUDE:
> > PACKAGE_EXCLUDE =3D "\
> > =C2=A0 packagegroup-base-rauc \
> > "
> > as well as
> > PACKAGE_EXCLUDE =3D "\
> > =C2=A0 rauc \
> > =C2=A0 rauc-mark-good \
> > =C2=A0 rauc-service \
> > "
> > I also tried with:
> > RDEPENDS:packagegroup-base:remove "packagegroup-base-rauc"
> >=20
> > But in both cases I get that error.
> > I do not have any idea how I could remove it from DISTRO_FEATURES for t=
hat image. I think that
> > is not possible.
> >=20
> > If I remove it "manually" using ROOTFS_POSTPROCESS_COMMAND, I have to t=
ake care of all
> > dependencies as well and it would be still be visible in .manifest file=
 that it is there
> > although it is not.
> >=20
> > That is why I am looking for a more elegant way to achive it.
> >=20
> > Thanks!
> >=20
> >=20
> >=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61391): https://lists.yoctoproject.org/g/yocto/messag=
e/61391
> Mute This Topic: https://lists.yoctoproject.org/mt/102035396/3616721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[ejo@pengu=
tronix.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Pengutronix e.K.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| Enrico J=C3=B6rns=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|
Embedded Linux Consulting & Support=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0| https://www.pengutronix.de/ |
Steuerwalder Str. 21=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0| Phone: +49-5121-206917-180=C2=A0=C2=A0|
31137 Hildesheim, Germany=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| Fax:=C2=A0=C2=
=A0=C2=A0+49-5121-206917-9=C2=A0=C2=A0=C2=A0=C2=A0|

