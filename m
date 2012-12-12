Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5920DE00348
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 11:54:23 -0800 (PST)
Received: by mail-ee0-f48.google.com with SMTP id b57so784088eek.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 11:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=GicqB1N6qBDTWgYAhOfC3i/gikrNHvRctP1OHmcSxWU=;
	b=gDgjSLr9Te/WmlZXK4S4QwoerxJAKEkrEIdGqwItmA7krFh9avlxsAPi8cWGND9siJ
	HgiUHct9mczwshASwy1cZYUgxuV0ctr03ica76C6pKfJHd2PsQRnl5zhjEWk61lO37jH
	c9usE2LHbf6SbVljd+9NUKqXCcx3Eh6G29Kj25o/Xc11MYN1H7e33bwfjwG/H0Ae0Jca
	2HFwrpOAllGPN2d2DRczm/CPfdnvMFS2KGg+xA5TfBV+MaJgcum98h/Llk4ghnRBwiVq
	ozIJ/wROB3aSwA7xS9ga0N4VnUXsNyQLJmM/u3ifbBhb8yOUqCxP3AMhlAOWpGv0iR0S
	lSxg==
Received: by 10.14.194.195 with SMTP id m43mr5556566een.44.1355342061479;
	Wed, 12 Dec 2012 11:54:21 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id w44sm32935566eep.6.2012.12.12.11.54.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Dec 2012 11:54:20 -0800 (PST)
Date: Wed, 12 Dec 2012 20:54:34 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Tim Bird <tim.bird@am.sony.com>
Message-ID: <20121212195434.GC1756@jama.jama.net>
References: <alpine.DEB.2.02.1212121421340.13445@oneiric>
	<50C8DE31.6000703@am.sony.com>
MIME-Version: 1.0
In-Reply-To: <50C8DE31.6000703@am.sony.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: might it be worth explaining BBMASK more comprehensively?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Dec 2012 19:54:23 -0000
X-Groupsio-MsgNum: 11050
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qtZFehHsKgwS5rPz"
Content-Disposition: inline

--qtZFehHsKgwS5rPz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 12, 2012 at 11:42:41AM -0800, Tim Bird wrote:
> On 12/12/2012 11:27 AM, Robert P. J. Day wrote:
> >=20
> >   a bit more pedantry, but is there a more complete example of the use
> > of BBMASK than the trivial example in the ref and dev manuals?
> >=20
> >   the ref manual provides this example by way of explanation:
> >=20
> > BBMASK =3D ".*/meta-ti/recipes-misc/"
> >=20
> > well, ok, except you occasinally find slight variations like:
> >=20
> > BBMASK =3D "meta-ti/recipes-misc/"
> >=20
> > or
> >=20
> > BBMASK =3D "meta-ti/recipes-misc"
> >=20
> >   given that there are places where a trailing slash is significant,
> > are all of the above exactly equivalent?  if so, that's worth noting.
> >=20
> >   also, what about an example showing masking out a couple
> > directories, or perhaps a single recipe from a layer, and so on?  at
> > the moment, the manuals suggest you can mask multiple recipes but
> > nowhere do i see the reader being given an actual example of how to do
> > that.
>=20
> Indeed.  These would be good clarifications.  The manual says that
> this is a single python regular expression.  Hence, when masking multiple
> directories or recipes, you use a vertical bar to separate the regex frag=
ments.
>=20
> Here's a particularly complex case I used once:
> BBMASK =3D "meta-ti/recipes-misc|meta-ti/recipes-ti/packagegroup"
> BBMASK .=3D "|.*meta-oe/recipes-support"
> #BBMASK .=3D "|.*openldap"
> #BBMASK .=3D "|.*opencv"
> #BBMASK .=3D "|.*lzma"
> BBMASK .=3D "|meta-oe/recipes-core/packagegroups"
> BBMASK .=3D "|meta-oe/recipes-devtools"
> BBMASK .=3D "|meta-oe/recipes-extended"
> BBMASK .=3D "|meta-oe/recipes-multimedia"
> BBMASK .=3D "|meta-oe/recipes-navigation"
> BBMASK .=3D "|meta-oe/recipes-connectivity"
> BBMASK .=3D "|meta-oe/recipes-graphics"
> BBMASK .=3D "|meta-oe/recipes-qt"
>=20
> I don't know if the .=3D with leading bar is the optimal
> way to append on to BBMASK, but it seems fairly straightforward

Yes because +=3D would add extra space and break regexp (_append should
probably work too).

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--qtZFehHsKgwS5rPz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlDI4PoACgkQN1Ujt2V2gBwI7wCfYQvYMWl3qpfBsg7qujFzRXG4
iw8AoIkC0cqQAxuf5kQ3h+C5C1qNpt7P
=wt9/
-----END PGP SIGNATURE-----

--qtZFehHsKgwS5rPz--
