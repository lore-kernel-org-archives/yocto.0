Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D7B2E00A18; Thu, 16 Feb 2017 03:05:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A7A4E00A0A
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 03:05:31 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id u63so2526156wmu.2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 03:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=N4maKfvDr38e7Q7NloJP4U6O0FSkScmGuG+lvUxnYlc=;
	b=L8hN+JUlHLC/eWWkNQI2Lx9L7OW444JkEQ2t3LgSpsk5C5ALXmLhBkFZ+Ii9gLYVaV
	Ujp+JBA3XoGO1IACyRZ9JKys+Inx7fodDVKXWqtENvPVpDlvWLRQLe+clpBh0kTW2Hbk
	isj+sE8MNPVz1u7mnvYQ9/GbyNO+wlyb9w0iHBPPCrNMO0qEUEgsH6vxI3oMkhv1NXHA
	jjopPZljY57hfBfgKvJ2O84lHITF8GuVTKbLhX7WSlxOsw6I9O9Enhez4fvNP6w0NyXl
	WPV7+E/c1SLO7oe/n84jMndSbZWTmR+wUF4u7pv8Fe055q5ZoY50BlHDkVu/tzzt1Hcy
	P3RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=N4maKfvDr38e7Q7NloJP4U6O0FSkScmGuG+lvUxnYlc=;
	b=bEbuXIsFnBTHmF5PakRRyCsobWY2rd3bTpFPZKvIP05EBAk8DYcYkp5Y73CStIgP0/
	qIjA9KeT6M/itNFekGw+bempPSoxEuvpkdRylMh3Cxz/82WT2frfUtjKtgNO05xE5mmv
	DtuPqnV0X3L8AXCTvu2MbeNkEef0IhC9oiMACmklAs7HG2jwZGfP+4WdfM9/xaH6LZCn
	eob2jJ4QeolYWEigL2eBi25m+CFXDC1HjoYnV5ES0bo/7APh87W6hWz3WTWWWNHRwTwF
	2SVruuN4uhPXpZJqz8r9/sEQ1G0yfGBH+rxTs2ko3+wl7ELGrIQPsw2sUv+3UJ5kDjf2
	kb7g==
X-Gm-Message-State: AMke39kNan98HAkjaGNUe78kRAbjx9oDVGRtH6JhB7uQv0iI/YVTw1zs4kZ8vm//1WnPEQ==
X-Received: by 10.28.92.193 with SMTP id q184mr12499185wmb.139.1487243131174; 
	Thu, 16 Feb 2017 03:05:31 -0800 (PST)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	y97sm2978477wmh.24.2017.02.16.03.05.29
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 16 Feb 2017 03:05:29 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 16 Feb 2017 12:05:32 +0100
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Message-ID: <20170216110532.GB3621@jama>
References: <DM5PR0101MB295324100DA9294101797F66B65A0@DM5PR0101MB2953.prod.exchangelabs.com>
	<CAMKF1sqq7W8TQYVRAWJuyP9eTs5Xyrkd=4a6n3kx4u1J0wSADQ@mail.gmail.com>
	<DM5PR0101MB2953489C05E784507F21F276B65A0@DM5PR0101MB2953.prod.exchangelabs.com>
MIME-Version: 1.0
In-Reply-To: <DM5PR0101MB2953489C05E784507F21F276B65A0@DM5PR0101MB2953.prod.exchangelabs.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-efl build?
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
X-List-Received-Date: Thu, 16 Feb 2017 11:05:34 -0000
X-Groupsio-MsgNum: 34515
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yEPQxsgoJgBvi8ip"
Content-Disposition: inline

--yEPQxsgoJgBvi8ip
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 16, 2017 at 07:48:33AM +0000, Takashi Matsuzawa wrote:
> Hello.
>=20
> Thank you very much for the pointer, but I think this image is x11 based..
>=20
> I can see EFL project has some pages mentioning about booting EFL on wayl=
and-only environment, but it is not yocto (or oe) based instruction.

I was always using meta-efl only in x11 builds.

There is wayland PACKAGECONFIG for efl:
recipes-efl/efl/efl.inc:PACKAGECONFIG ?=3D "egl opengl-es gstreamer1
pulseaudio luajit ${@bb.utils.contains('DISTRO_FEATURES', 'wayland',
'wayland', '', d)}"
recipes-efl/efl/efl.inc:PACKAGECONFIG[wayland] =3D "--enable-wayland
--enable-wayland-ivi-shell,--disable-wayland
--disable-wayland-ivi-shell,wayland"

but in e-wm which you were probably trying to build (it's not clear what
exactly you meant with "build EFL") there is indeed dependency on
libxcb.

So it will need few more changes and lot more testing to make it work on
wayland-only, patches are welcome, but EFL is in sad state in current
master branch and I'm not planing to spend much time on it now, because
I don't use it anymore (we officially let SHR distribution die last
month by stopping the build server) and with the switch to CMake in
upcoming release there will be again more work needed to build/package
new version.

Patches from people who are still using it (and able to test it
properly) are of course welcome.

Regards,

> ________________________________
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Thursday, February 16, 2017 11:53 AM
> To: Takashi Matsuzawa
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] meta-efl build?
>=20
> Takashi-san
>=20
> On Wed, Feb 15, 2017 at 6:35 PM, Takashi Matsuzawa <tmatsuzawa@xevo.com> =
wrote:
> > Hello, Yocto.
> >
> >
> > I am trying to build EFL on top of my mayland environment (krogoth base=
d).
> >
> > I thought it would be easy since there is meta-openembedded/meta-efl
> > recipes, but now I am stuck.
> >
> >
> > Specifically, I am experiencing x11 dependency (the recipes erquire x11=
 to
> > be in DISTRO_FEATURES here and elsewhere), but for my target I am settt=
ing
> > wayland only, no x11.
> >
> > (e.g. it says it needs libxcb, etc.)
> >
> >
> > Is it normal and I am failing to configure it properly?
> >
> >
> > I found below, but it does not talk much about the build errors I am fa=
cing,
> > and if the targets I am specifying is correct, etc.
> >
> >
> > https://www.enlightenment.org/distros/yocto-start
> Yocto - Enlightenment Main<https://www.enlightenment.org/distros/yocto-st=
art>
> www.enlightenment.org
> In Yocto, a meta-efl layer is provided by the meta-openembedded layer. It=
 contains EFL, Elementary, Enlightenment, Terminology and other recipes.
>=20
>=20
>=20
> >
> > If you are aware of any previous attempt, or, guide that I just overloo=
ked
> > for my laziness - I highly appreciate your pointers.
> >
>=20
> Using some preexisting image like angstrom one would be a good start
> for you e.g.
>=20
> https://github.com/Angstrom-distribution/meta-angstrom/blob/master/recipe=
s-images/angstrom/efl-nodm-image.bb
> meta-angstrom/efl-nodm-image.bb at master =B7 Angstrom-distribution/meta-=
angstrom =B7 GitHub<https://github.com/Angstrom-distribution/meta-angstrom/=
blob/master/recipes-images/angstrom/efl-nodm-image.bb>
> github.com
> meta-angstrom - MIrror of Angstrom metadata layer
>=20
>=20
>=20
>=20
> it should work if you were to use angstrom distribution but if you
> dont it should serve a good jump start.

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--yEPQxsgoJgBvi8ip
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWKWHewAKCRA3VSO3ZXaA
HLX5AKCzTCLRYH7kodijzilkrZLagW/CuQCfd3oGuA2EL/d5Mcfd4Z1GgmdwCX4=
=BHmN
-----END PGP SIGNATURE-----

--yEPQxsgoJgBvi8ip--
