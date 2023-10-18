Return-Path: <ejo@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7A78CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 10:24:45 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
 by mx.groups.io with SMTP id smtpd.web10.278532.1697624674850473458
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 03:24:35 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: pengutronix.de, ip: 185.203.201.7, mailfrom: ejo@pengutronix.de)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1qt3j6-00064W-JY; Wed, 18 Oct 2023 12:24:32 +0200
Message-ID: <2520ab418aa18b4b96b0fcdad4fb2364c1e8e930.camel@pengutronix.de>
Subject: Re: [yocto] Remove packagegroup from image recipes
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Ivan Stojanovic <ivastojanovic@gmail.com>, yocto@lists.yoctoproject.org,
  ejo <ejo@pengutronix.de>
Date: Wed, 18 Oct 2023 12:24:31 +0200
In-Reply-To: <CANNYZj_scVXe2iPwTcrt-xDy2rN9ObJFo5qJmQG0ix+=J7R61w@mail.gmail.com>
References: 
	<CANNYZj8P62x8q5TP59Xhajq6XNS6--Ox-G+N2pEH9hnr=Hoo=A@mail.gmail.com>
	 <30180.1697619630482083755@lists.yoctoproject.org>
	 <CANNYZj8Rj08B4vvQ8EC6v3S31U9ZAWoxdmJzh43T6CpoK5bqww@mail.gmail.com>
	 <ecc7db27039d38992b6423f17bbfdd44e1967249.camel@pengutronix.de>
	 <CANNYZj_scVXe2iPwTcrt-xDy2rN9ObJFo5qJmQG0ix+=J7R61w@mail.gmail.com>
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
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 10:24:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61394

Hi Alex,

Am Mittwoch, dem 18.10.2023 um 12:09 +0200 schrieb Alexander Kanavin:
> On Wed, 18 Oct 2023 at 11:57, Enrico J=C3=B6rns <ejo@pengutronix.de> wrot=
e:
> > it's not really that it's 'forced' into all image. The .bbappend just s=
ays:
> >=20
> > > require ${@bb.utils.contains('DISTRO_FEATURES', 'rauc', '${BPN}_rauc.=
inc', '', d)}
> > The assumption was that if you have 'rauc' in you DISTRO_FEATURES, you =
want to install it.
> > And this was just the best way I saw to automatically end up in base im=
ages for this case while
> > ensuring that we do not modify the base packagegroup unconditionally.
>=20
> You should provide a packagegroup-rauc recipe, a sample rauc-image
> recipe (or set of recipes) that uses that packagegroup, and leave it
> at that. Users of meta-rauc will figure out the rest, particularly
> when and how they want to install rauc. You've just seen a specific
> case where it is *not* wanted in some images.
>=20
> Forcing your way into base packagegroups from oe-core via bbappends is
> really not the right way to go about things.

In how is this different to the default packagegroup handling in oe-core wh=
ere package 'force
themself' into images based on specific DISTRO_FEATURE or MACHINE_FEATURE s=
ettings?

Thus this is a mechanism that is explicitly designed to be used by oe-core =
exclusively?


Regards, Enrico

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

