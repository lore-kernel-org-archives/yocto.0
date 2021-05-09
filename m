Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.13764.1620523523515089471
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 May 2021 18:25:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: redrectangle.org, ip: 198.145.29.25, mailfrom: robert.joslyn@redrectangle.org)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 33BE638C0559
	for <yocto@yoctoproject.org>; Sun,  9 May 2021 01:25:22 +0000 (UTC)
X-Originating-IP: 134.49.229.69
Received: from [192.168.0.127] (unknown [134.49.229.69])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1B43820006;
	Sun,  9 May 2021 01:25:16 +0000 (UTC)
Message-ID: <e49949bfa2083a76e9c0c977e0b64828362e8446.camel@redrectangle.org>
Subject: Re: [yocto] Recipe Grep'ing
From: "Robert Joslyn" <robert.joslyn@redrectangle.org>
To: Khem Raj <raj.khem@gmail.com>, Chuck Wolber <chuckwolber@gmail.com>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Date: Sat, 08 May 2021 18:25:09 -0700
In-Reply-To: <55052749-a440-214d-84b7-4b3e5923ee72@gmail.com>
References: 
	<CAB=6tBTGiMBH+g-uy3sr1jKA-j1EkSDt0B+8DLb4_iMSaMax6Q@mail.gmail.com>
	 <55052749-a440-214d-84b7-4b3e5923ee72@gmail.com>
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2021-05-05 at 17:50 -0700, Khem Raj wrote:
>=20
>=20
> On 5/5/21 5:41 PM, Chuck Wolber wrote:
> > I was pondering putting some work in to a fairly large patch set
> > aimed=20
> > at making recipes easier to grep through, and wanted to get some=20
> > feedback before I put time and effort into it.
> >=20
> > "what" and the "why" when grep'ing through recipes to search for
> > things:
> >=20
> > FOO +=3D "item1"
> > FOO +=3D "item2"
> >=20
> > Whereas this pattern gives us the "what", but not the "why":
> >=20
> > FOO =3D "item1 \
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 item2 \
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 "
> >=20
> > After discussing this with Richard Purdie on IRC, I also understand
> > that=20
> > the latter pattern benefits some forms of build output. In addition,
> > for=20
> > SRC_URI, the "why" is normally fairly obvious from context clues.
> >=20
> > So, is there any interest in accepting a patch set of that nature for
> > Yocto and OE repositories? If so, what variables and situations
> > should=20
> > be considered "off limits" to a change like that?
>=20
> nice to have a linter, which can do such checks and perhaps we can=20
> enable this in autobuilders so we can keep such cleansups maintained

There is the oe-stylize.py script that attempts to format recipes
according to the style guide:
https://git.openembedded.org/meta-openembedded/tree/contrib/oe-stylize.py

Last time I played with it, I was a bit disappointed with some of the
changes it makes, some of which are different than what devtool does.
When I need to introduce new developers to bitbake, I'd love to be able
to hand them oe-stylize or something similar and just tell them to run
it before committing to make sure everything is formatted consistently.

I've had updating oe-stylize.py on my TODO list for a while, but more
important things always come up.

Robert=20
>=20

