Return-Path: <ejo@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CE9ACDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 12:01:16 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
 by mx.groups.io with SMTP id smtpd.web11.279496.1697630469705406616
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 05:01:10 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: pengutronix.de, ip: 185.203.201.7, mailfrom: ejo@pengutronix.de)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1qt5EZ-00072J-2z; Wed, 18 Oct 2023 14:01:07 +0200
Message-ID: <ddc6c58d4e31e77c1bc3012e7b3458369a046edc.camel@pengutronix.de>
Subject: Re: [yocto] Remove packagegroup from image recipes
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Ivan Stojanovic <ivastojanovic@gmail.com>, yocto@lists.yoctoproject.org,
  ejo <ejo@pengutronix.de>
Date: Wed, 18 Oct 2023 14:01:06 +0200
In-Reply-To: <CANNYZj_F7EaLSkxupsWXfbZ4HC_NmXMXWEoWOxjtuRtBohyPLw@mail.gmail.com>
References: 
	<CANNYZj8P62x8q5TP59Xhajq6XNS6--Ox-G+N2pEH9hnr=Hoo=A@mail.gmail.com>
	 <30180.1697619630482083755@lists.yoctoproject.org>
	 <CANNYZj8Rj08B4vvQ8EC6v3S31U9ZAWoxdmJzh43T6CpoK5bqww@mail.gmail.com>
	 <ecc7db27039d38992b6423f17bbfdd44e1967249.camel@pengutronix.de>
	 <CANNYZj_scVXe2iPwTcrt-xDy2rN9ObJFo5qJmQG0ix+=J7R61w@mail.gmail.com>
	 <2520ab418aa18b4b96b0fcdad4fb2364c1e8e930.camel@pengutronix.de>
	 <178F2D5AFBF324AF.14388@lists.yoctoproject.org>
	 <CANNYZj_F7EaLSkxupsWXfbZ4HC_NmXMXWEoWOxjtuRtBohyPLw@mail.gmail.com>
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
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 12:01:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61397

Am Mittwoch, dem 18.10.2023 um 12:50 +0200 schrieb Alexander Kanavin:
> On Wed, 18 Oct 2023 at 12:37, Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> >=20
> > On Wed, 18 Oct 2023 at 12:24, Enrico J=C3=B6rns <ejo@pengutronix.de> wr=
ote:
> > > In how is this different to the default packagegroup handling in oe-c=
ore where package 'force
> > > themself' into images based on specific DISTRO_FEATURE or MACHINE_FEA=
TURE settings?
> > >=20
> > > Thus this is a mechanism that is explicitly designed to be used by oe=
-core exclusively?
> >=20
> > I see that as something of a historical mis-feature. I would take
> > those things out of the packagegroup recipe and into a class used by
> > images if I had a bit of time (core-image.bbclass most likely).
> >=20
> > That's what you could do as well, define a class that pulls in rauc
> > for those images that inherit it.
>=20
> You can see how core-image-weston.bb does it:
>=20
> IMAGE_FEATURES +=3D "splash package-management ssh-server-dropbear
> hwcodecs weston"
>=20
> and then in core-image class:
>=20
> FEATURE_PACKAGES_weston =3D "packagegroup-core-weston"
> ... etc

Oh yes, I came across this feature a few weeks ago for the first time.

Before I had never noticed that the FEATURE_PACKAGES mechanism exists.

Maybe this could be an alternative to 'hacking' rauc into the base packageg=
roup.
Thanks for the hint.

My original intention was to reduce the number of manual variable switches =
required for building a
rauc-compatible image. But maybe this sort of 'over-optimized'.


Enrico

> Alex
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

