Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
 by mx.groups.io with SMTP id smtpd.web12.59.1624477105633305164
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 12:38:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@free.fr header.s=smtp-20201208 header.b=CdNXDDOg;
 spf=pass (domain: free.fr, ip: 212.27.42.2, mailfrom: ydirson@free.fr)
Received: from zimbra39-e7.priv.proxad.net (unknown [172.20.243.189])
	by smtp2-g21.free.fr (Postfix) with ESMTP id B99C920036C;
	Wed, 23 Jun 2021 21:38:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1624477103;
	bh=SpoTotRa8IkXfBOWTohV5vcsdM4HoqhzL0As/oYNbgo=;
	h=Date:From:To:Cc:In-Reply-To:Subject:From;
	b=CdNXDDOgtqJWXZc6ntM6iU10hfOVSJ61WuFad4z92+WRFL+LlPuhXU+IzsKRoT5ec
	 yzmMHLrkQ0c6ecjdlYukdInLPiY787E4XMoqAdOOqsvGZF2WAffbLajGNi5zsxXDCU
	 QQCHRiGjmX8Me5ig3wbEUr+bGxYgbnKssPR6F9Bhdqem1oIcSWJirlDHAZZ3jeyNMa
	 8nbrlY1+8/nVb3RRPy/PfS6LE/0VaATX84LoM+BLXs76oz7SZT77tjTzsF2MjuMsNC
	 U49AS8WnDRHbJTrtRByQtjou9+LE5ExCjz+UFomsRqPPC4kuv4gGVDF3KvzWYoMTiz
	 qGxJWNSYaZhDA==
Date: Wed, 23 Jun 2021 21:38:23 +0200 (CEST)
From: "Yann Dirson" <ydirson@free.fr>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Message-ID: <588488616.865322321.1624477103694.JavaMail.root@zimbra39-e7>
In-Reply-To: <20210623185139.GA13329@localhost>
Subject: Re: [yocto] [meta-rockchip][PATCH 1/4] centralize console settings
MIME-Version: 1.0
X-Originating-IP: [88.120.44.86]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - FF3.0 (Linux)/7.2.0-GA2598)
X-Authenticated-User: ydirson@free.fr
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> De: "Trevor Woerner" <twoerner@gmail.com>
> =C3=80: ydirson@free.fr
> Cc: "Khem Raj" <raj.khem@gmail.com>, "Yocto-mailing-list" <yocto@lists.yo=
ctoproject.org>
> Envoy=C3=A9: Mercredi 23 Juin 2021 14:51:39
> Objet: Re: [yocto] [meta-rockchip][PATCH 1/4] centralize console settings
>=20
> On Wed 2021-06-23 @ 08:10:07 PM, ydirson@free.fr wrote:
> > > De: "Khem Raj" <raj.khem@gmail.com>
> > > =C3=80: "Trevor Woerner" <twoerner@gmail.com>
> > > Cc: "Yocto-mailing-list" <yocto@lists.yoctoproject.org>
> > > Envoy=C3=A9: Mercredi 23 Juin 2021 11:32:57
> > > Objet: Re: [yocto] [meta-rockchip][PATCH 1/4] centralize console
> > > settings
>=20
> > > > +RK_CONSOLE_BAUD =3D "115200"
> > > > +RK_CONSOLE_DEVICE =3D "ttyFIQ0"
> > >=20
> > > while I appreciate this change, it does have an effect of
> > > removing
> > > the
> > > users away from
> > > BSP variables that core metadata layers have, e.g.
> > > SERIAL_CONSOLES is
> > > a well defined
> > > and documented variable and if we synthesize it then its hidden
> > > which
> > > is fine if we document
> > > the new variables equally well although that means every BSP will
> > > invent these kind of
> > > variables so if a person was doing RPI and comes to work on
> > > rockchip
> > > boards he has more
> > > learnings to do.
>=20
> Good point, thanks for mentioning it.
>=20
> > What about making this change at the poky level, then ?
>=20
> I suspect it would break things in all sorts of unimaginable ways ;-)
>=20
> For example, SERIAL_CONSOLES (note: plural) can contain more than one
> baud+device pair so if we try to break out the baud and device then
> we'd need
> an array (?) so we could break out multiple baud and device pairs
> (?), and
> then that would get messy...  ugh!

Damned that makes things more complicated :)

That could push us along the following lines ?

 CONSOLE_DEVICES =3D "/dev/ttyS2 /dev/tty1"
 CONSOLE_BAUD_ttyS2 =3D "1500000"
 CONSOLE_BAUD_tty1 =3D "115200"

(well, with /dev/ being what it is, CONSOLE_DEVICES =3D "ttyS2 tty1" could
even be decided as sufficient, removing any possibility for syntactic
ambiguities)

or maybe even this ?

 CONSOLE_BAUD =3D <default value>
 CONSOLE_BAUD[/dev/ttyS2] =3D <overriden value>
