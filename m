Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68C8EE0140D
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 16:33:18 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id c4so6454879eek.15
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 16:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=EZmOTrovBDxBj0jikHyU1D3JSgbQd9PAXV4EoM89Jjw=;
	b=jKPBu52VUMKtftv85pHsb1X3+Xjzqq4RsoQbsK86ao3wz/XuAi4zNuzzQg+wxAfuce
	g4lq4zCtO32E9dJ5QsbAtxhKI9yUK2XyH3WxT62AMhacl7OJx8ou9EAPAEiIQLHRZ2BU
	HQMjeXSQgjcS4syHQ6vUlx1r+EBJNuKu/ERIJXitxOVtvpf8fqvsdUw3r/xyuP0cBl+o
	km0vySEopAA/66rDzeZ3Gt5Mn0iVtks3ezBVetJnWMRbc/7010FL1u3XEfvyxFEnTE59
	UaF4MjoZva38MDYFYlY/7QLIJ3dkW3bY5fSYGS4g+Ewhs1ZNaK7Jc8WKAmDVGic9hrYx
	VFAQ==
X-Received: by 10.14.53.75 with SMTP id f51mr49762031eec.30.1373671997443;
	Fri, 12 Jul 2013 16:33:17 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	bj46sm82708657eeb.13.2013.07.12.16.33.16 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 12 Jul 2013 16:33:16 -0700 (PDT)
Date: Sat, 13 Jul 2013 01:33:29 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jeff Osier-Mixon <jefro@jefro.net>
Message-ID: <20130712233329.GO3288@jama>
References: <CAF0cEJTK9Y-HZaYev37a82v9Ys9BqukCcfK4hqvCHtL7bcSzzA@mail.gmail.com>
	<CAF0cEJQOHYwO1eiyoyCbsSbw929DD=2jjOB2Ses5ejzZk+wSyA@mail.gmail.com>
	<CA+YB3rYsaB8=B2YZb454yqvJo0GcdV-V=D+Hp=QjQk=VZ1XeZQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+YB3rYsaB8=B2YZb454yqvJo0GcdV-V=D+Hp=QjQk=VZ1XeZQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: DO PACKAGE QA error during compilation of FireFox OS on Raspberry Pi
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
X-List-Received-Date: Fri, 12 Jul 2013 23:33:19 -0000
X-Groupsio-MsgNum: 14945
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xFawzEZLoq+g1Byu"
Content-Disposition: inline

--xFawzEZLoq+g1Byu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 12, 2013 at 04:16:51PM -0700, Jeff Osier-Mixon wrote:
> Hi Piotr - thanks for posting, I hope we can help.
>=20
> I see this error in the log that might be a clue to the problem:
>=20
> ERROR: QA Issue: ntp: Files/directories were installed but not shipped
>   /lib/systemd/system/ntpd.service
>   /lib/systemd/system/sntp.service
>=20
> I'm not sure I have seen this before. Can anyone help?

Check this thread
http://lists.openembedded.org/pipermail/openembedded-devel/2013-July/091342=
=2Ehtml

And change installed-vs-shipped QA check from ERROR_QA to WARN_QA
unless you want to improve oe-core's systemd.bbclass

> On Fri, Jul 12, 2013 at 12:57 AM, Piotr Ziomacki
> <ziomackipiotr@gmail.com> wrote:
> > Hi,
> >
> > I try to compile source code for FF OS released by Philipp Wagner at
> > http://www.philipp-wagner.com/blog/2013/04/firefox-os-for-raspberry-pi-=
now-available/#more-251.
> > Unfortunately i get error during compilation. I was suggested that it s=
eems
> > like anOpenEmbedded/Yocto issue so I'm sending post it here. I attached=
 the
> > log file for this. Can someone please help me get rid of this error?
> >
> > Regards,
> > Piotr Ziomacki
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>=20
>=20
>=20
> --=20
> Jeff Osier-Mixon http://jefro.net/blog
> Yocto Project Community Manager @Intel http://yoctoproject.org
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--xFawzEZLoq+g1Byu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlHgkkkACgkQN1Ujt2V2gByH3gCfUx/dp/ACD+zj5/28UwUQPSfB
YW8AoKl5V2W5kVP7eaz/80yy0nixiO09
=BV8U
-----END PGP SIGNATURE-----

--xFawzEZLoq+g1Byu--
