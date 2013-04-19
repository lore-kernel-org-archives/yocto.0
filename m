Return-Path: <martin.jansa@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3478E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:29:58 -0700 (PDT)
Received: by mail-pd0-f180.google.com with SMTP id q11so2269742pdj.25
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=CGenx2Fp2weMcmiIVipDZRGFM+GhjmjZI0H+tZ7jbJM=;
	b=M6S5LUVIuQcTxMe4pmgzMky81ue3bg8M1cgXpUZLxHFaGV4rCVvdnwukWIqyj89TPk
	PN7Y0HyrelGuPgTvtvlRFJsFb7m9hj0vh5ID7EEV1X5oyymM8j9JSXuLI26CYGVS4pAv
	ZXHjejet89mvYU6/UZhK1ZI5h747gFwUTyNj3jYsm+1Llj1yyxctC+jKEDoSahPyQAf9
	6d9jBVBbr7EVD16Ouu7vTK5zwdXGAV9AxTG47W5nhSUdYJGtygLRaHjo4BeRrXY3V1bK
	HR0wDpIBoRzRKJhBK62WiBWpqBAgNOD2Ne0DV/1JTHdeMhOTv+9bXC51Eo9TjMFVS9z7
	/qSQ==
X-Received: by 10.68.172.65 with SMTP id ba1mr20016973pbc.166.1366381798673;
	Fri, 19 Apr 2013 07:29:58 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id tx9sm3792919pab.5.2013.04.19.07.29.55
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 19 Apr 2013 07:29:57 -0700 (PDT)
Date: Fri, 19 Apr 2013 16:29:58 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20130419142958.GK2489@jama>
References: <alpine.DEB.2.02.1304190945410.5102@oneiric>
	<CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
	<517151AF.3030301@r-finger.com>
	<alpine.DEB.2.02.1304191019470.5475@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1304191019470.5475@oneiric>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: any point in a single machine recipe using a machine-specific file?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Apr 2013 14:29:59 -0000
X-Groupsio-MsgNum: 13288
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+svXpSx+RSEd8UhP"
Content-Disposition: inline

--+svXpSx+RSEd8UhP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2013 at 10:23:01AM -0400, Robert P. J. Day wrote:
> On Fri, 19 Apr 2013, Tomas Frydrych wrote:
>=20
> > On 19/04/13 15:02, Burton, Ross wrote:
> > > On 19 April 2013 14:49, Robert P. J. Day <rpjday@crashcourse.ca> wrot=
e:
> > >>   but in the case of the rpi, is there any value in putting the
> > >> files under a machine-named subdirectory? of course it won't
> > >> hurt, but is there any point to it?
> > >
> > > You could argue the clarity that it will bring if another machine
> > > is added to the BSP - the maintainer will be forced to decide if
> > > it's common across all machines that the BSP will service, or
> > > truly is specific to a particular machine.
> >
> > No, no, no, this has nothing to do with clarity, it's the only way
> > in which it can be done without breaking other machines. As Martin
> > said, multiple BSP layers often are included at the same time, and
> > if a config file pulled in by a BSP bbappend is not made machine
> > specific (which is what the machine specific directory means), it
> > will be installed for any machine that does not come with a higher
> > priority bbappend that also overrides this file.
>=20
>   ok, now we're getting somewhere -- so it would be *strongly*
> *encouraged* to make all of these bbappend files machine-specific?
> that is, if you want to avoid potential confusion down the road. i'm
> still a bit queasy on the idea that you'd include so many layers that
> this might be an issue but ... whatever. i mean, if i wasn't
> specifically building for an rpi, i can't imagine why i'd include the
> meta-rpi layer.

This is my typical layer list

meta-jama         =3D "master:33e48de8cf588c9df80025339d7883e25a3e3fb8"
meta-shr
meta-aurora
meta-fso
meta-android      =3D "webOS-ports/master:0fe4b5559335d24764260d47d3f60d68d=
e502a61"
meta-oe
meta-efl
meta-gnome
meta-gpe
meta-multimedia
meta-networking
meta-initramfs
meta-systemd      =3D "jansa/test:a5c0447694ddacab285f192e1d8e425f6899d6e3"
meta-osmocombb
meta-nokia
meta-htc
meta-palm
meta-openmoko
meta-samsung      =3D "webOS-ports/master:0fe4b5559335d24764260d47d3f60d68d=
e502a61"
meta-browser      =3D "jansa/test:359cdae903c3772796b4658dd3129742d9a76d05"
meta-handheld     =3D "jansa/spitz:68177884e36e08cb76f11048bdf8ee3435b75ea3"
meta              =3D "jansa/test:2ac95cf4581c963ae49bc6f7af430a05228c34bc"

so I have at least 6 different BSPs with +=3D 10 MACHINEs all these BSPs ar=
e=20
playing nice together and that's how it should be..

IIRC Angstorm includes even more BSPs..

>=20
> > As an additional point, the 'interfaces' file should not be included
> > in a netbase bbappend, it's not part of the netbase base package ...
> > I opened a bug against meta-yocto-bsp for this, but seems this is
> > more wide spread.
>=20
>   huh, you're right, i'd never noticed that.
>=20
> rday
>=20
> --=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>=20
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--+svXpSx+RSEd8UhP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFxVOYACgkQN1Ujt2V2gBxmTwCgtrf9Iub519Q7+OGJJTGdJ0Mm
RbgAn15jj6A3Ttc54wLh0LPJ+FFoyXIq
=gBHC
-----END PGP SIGNATURE-----

--+svXpSx+RSEd8UhP--
