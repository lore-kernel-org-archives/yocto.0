Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D74C1E01405
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 05:25:28 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id c50so262911eek.4
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 05:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=YjntMSG+5tDE2w1tlgQLX31+D+BBQBrnV7zo8+OuAuQ=;
	b=P44PgwTNC39/O2XN4yvPGqByrBE/pCvaD5QWI/LP+Gxsav6ue/XR5TTj5bIocbVkgz
	z5l+t+0vw9C/q+dv/c6euRuiLdfF7sBGmXjo4ZC9sox02OyLlUKf1wVSpT8ugu8hyhfK
	VfQTnxKNJ9rhrPViOWpmiYaVdp6j9Zpc2u3ohGCgdYqsQrjA4PB9zfZFyy//axf8bQDr
	k6rrngMyIqC49FY+87FG6JerL9RNx1Vs74g2ZXXrUxcGlNE/06sEfA9kRfR6fdfVrVMl
	aMmhL4nG7+x70EfEyxzbI1CJ4oHgNAksnEAkneV9hpNpSoNGLg56AE2KXJMu01vtpL6R
	Wy6A==
X-Received: by 10.14.221.7 with SMTP id q7mr519190eep.78.1377260727039;
	Fri, 23 Aug 2013 05:25:27 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	bn13sm24418847eeb.11.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 23 Aug 2013 05:25:25 -0700 (PDT)
Date: Fri, 23 Aug 2013 14:26:32 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20130823122632.GD3544@jama>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
	<1377018158-2983-7-git-send-email-andrei@gherzan.ro>
	<CANyK_8fT9cf__rs36niVD5mkhXySbioVT16653Zr0tQvwJkh3w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANyK_8fT9cf__rs36niVD5mkhXySbioVT16653Zr0tQvwJkh3w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 07/11] mesa: Use libgl from mesa for raspberrypi
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
X-List-Received-Date: Fri, 23 Aug 2013 12:25:31 -0000
X-Groupsio-MsgNum: 15627
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bajzpZikUji1w+G9"
Content-Disposition: inline

--bajzpZikUji1w+G9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 23, 2013 at 11:59:10AM +0100, Paul Barker wrote:
> On 20 August 2013 18:02, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > +python __anonymous () {
> > +    import re
> > +
> > +    # Remove egl and gles2 configure options
> > +    extra_oeconf =3D d.getVar('EXTRA_OECONF', True).split()
> > +    take_out =3D ['--enable-egl', '--enable-gles2', '--enable-gles1']
> > +    put_in =3D ['--disable-egl', '--disable-gles2', '--disable-gles1']
> > +    pattern =3D re.compile("--with-egl-platforms")
> > +    new_extra_oeconf =3D []
> > +    for i in extra_oeconf:
> > +        if i not in take_out and not pattern.match(i):
> > +            new_extra_oeconf.append(i)
> > +    for i in put_in:
> > +        new_extra_oeconf.append(i)
> > +    d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
> > +
> > +    # Remove egl and gles2 from provides
> > +    provides =3D d.getVar('PROVIDES', True).split()
> > +    take_out =3D ['virtual/libgles2', 'virtual/egl', 'virtual/libgles1=
']
> > +    new_provides =3D []
> > +    for i in provides:
> > +        if i not in take_out:
> > +            new_provides.append(i)
> > +    d.setVar('PROVIDES', ' '.join(new_provides))
> > +
> > +    # We are now machine specific
> > +    d.setVar('PACKAGE_ARCH', d.getVar('MACHINE_ARCH'))
> > +}
>=20
> This really needs to check whether MACHINE=3D"raspberrypi" before
> changing anything. I keep the same stack of layers and just change
> MACHINE when building for raspberrypi and beagleboard.

Be aware that it would make mesa (and everything depending on mesa)
effectively MACHINE_ARCH.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--bajzpZikUji1w+G9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.21 (GNU/Linux)

iEYEARECAAYFAlIXVPgACgkQN1Ujt2V2gByhhwCdG3NCogTefpP1B8W30bWQRopu
i+0An3FhnmeWuCDbxuaKDnR6HoVH57gV
=L5Ps
-----END PGP SIGNATURE-----

--bajzpZikUji1w+G9--
