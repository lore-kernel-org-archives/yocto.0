Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A2BCE0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:25:10 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id fa11so2313726pad.41
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=YQecT8oMrQwsqk3fK5URcZvnvIzhWs8CU2v/LnEg3OU=;
	b=cn8wvEtovtP5wjmtd1mtEGoJTAI0RslvExd7RW7MFhLr4BWllBc4vVYiop76JUfP+u
	G+vKB8y5lg2D0lhwHx/X+zp6BTSOzz2PJYyCusmK4S+Zh663Zlid8v7qBenRbZnWII8t
	a7aOi7D1m9edwRmroewB40GV35gS+PNOJd2TVuLc/C6UhOar+rBLN4WgUM5abZk/RQWH
	msOCnsyfYpEWPy+idjALEoRadOPBvtwh6c+q1QaQMVfvI1hl6gAyvYQMNJ73ay6CxhGK
	UUlCIZJcumiHw0FBBaWwdxzM4JWlVyMqpyK5sm2lIKU6NRCZQABGmgoAdXXIKyW6FnBz
	aEKg==
X-Received: by 10.68.172.65 with SMTP id ba1mr19982580pbc.166.1366381509745;
	Fri, 19 Apr 2013 07:25:09 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id uy3sm13628747pbc.7.2013.04.19.07.25.06
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 19 Apr 2013 07:25:08 -0700 (PDT)
Date: Fri, 19 Apr 2013 16:25:09 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20130419142509.GJ2489@jama>
References: <alpine.DEB.2.02.1304190932010.4968@oneiric>
	<20130419135843.GH2489@jama>
	<alpine.DEB.2.02.1304191016030.5451@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1304191016030.5451@oneiric>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Fix FILESEXTRAPATHS, dir is "netbase-5.0"
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
X-List-Received-Date: Fri, 19 Apr 2013 14:25:10 -0000
X-Groupsio-MsgNum: 13287
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yr6OvWOSyJed8q4v"
Content-Disposition: inline

--yr6OvWOSyJed8q4v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2013 at 10:17:10AM -0400, Robert P. J. Day wrote:
> On Fri, 19 Apr 2013, Martin Jansa wrote:
>=20
> > On Fri, Apr 19, 2013 at 09:35:18AM -0400, Robert P. J. Day wrote:
> > >
> > > The actual files subdirectory name is "netbase-5.0", not "netbase".
> > >
> > > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> > >
> > > ---
> > >
> > >   same fix was once applied to exactly the same recipe bbappend file
> > > under meta-ti layer.
> > >
> > > diff --git a/recipes-core/netbase/netbase_5.0.bbappend b/recipes-core=
/netbase/netbase_5.0.bbappend
> > > index 36432f5..a3fbd33 100644
> > > --- a/recipes-core/netbase/netbase_5.0.bbappend
> > > +++ b/recipes-core/netbase/netbase_5.0.bbappend
> > > @@ -1,3 +1,3 @@
> > > -FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> > > +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
> > >  # Don't forget to bump PRINC if you update the extra files.
> > >  PRINC =3D "1"
> >
> > that's P or use BP, and fix PRINC when you're there..
>=20
>   ok, pedantic question -- the comment suggests you're supposed to
> increment PRINC "if you update the extra files". but i didn't, i just
> made sure they're now being included. i guess that still counts, yes?

I was talking about PRINC :=3D "${@int(PRINC) + 1}"

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--yr6OvWOSyJed8q4v
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFxU8UACgkQN1Ujt2V2gBzC4ACfWcJsuVfShuEB8AlfzZvSnGNk
XbcAoLhHMaiOFp74y8j/G9oHLOqQrfIK
=KHC8
-----END PGP SIGNATURE-----

--yr6OvWOSyJed8q4v--
