Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCB0BE005A9; Wed,  7 Jan 2015 10:14:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.217.128.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g2t2353.austin.hp.com (g2t2353.austin.hp.com [15.217.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE880E002F9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 10:14:17 -0800 (PST)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2353.austin.hp.com (Postfix) with ESMTPS id CE5A8FB;
	Wed,  7 Jan 2015 18:14:16 +0000 (UTC)
Received: from G1W5784.americas.hpqcorp.net (16.193.26.2) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Wed, 7 Jan 2015 18:13:05 +0000
Received: from G2W2533.americas.hpqcorp.net ([169.254.6.187]) by
	G1W5784.americas.hpqcorp.net ([16.193.26.2]) with mapi id
	14.03.0169.001; Wed, 7 Jan 2015 18:13:05 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] do_rootfs missing package (ipk) or not found in base
	feeds (rpm)
Thread-Index: AQHQKqOYPU9ygM4FMUmYJjmKB44nV5y09DFQ
Date: Wed, 7 Jan 2015 18:13:04 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A8054A03DF@G2W2533.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A8054A02C5@G2W2533.americas.hpqcorp.net>
	<32292029.y9KGllpEqX@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <32292029.y9KGllpEqX@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.29]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_rootfs missing package (ipk) or not found in base feeds (rpm)
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
X-List-Received-Date: Wed, 07 Jan 2015 18:14:21 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for the fast reply, yes, the packages-split/libutil is empty.  As st=
ated, I produce a .so, a .a and some headers, it appears that bitbake.conf =
will treat those as libutil-dev and libutil-staticdev, leaving my libutil e=
mpty.  You say I must fix that, but I am unclear how.  Basically, if I look=
 at the logic it seems ok, shared/static libs are "-dev" stuff and I do not=
 mind, but then if I change IMAGE_INSTALL_append to use libutil-dev I still=
 get an error:

	error: Can't install libutil-dev-1.0.0-r0@i586: no package provides libuti=
l =3D 1.0.0-r0

I looked at libpcap as an example, I see no override of FILES_ or PACKAGES,=
 and yet the libpcap package exists.  Ha! Think I got it, libpcap.so is act=
ually libpcap.so.1, so likely the issue is that my lib is libutil.so, I wil=
l rename it to libutil.so.1 and should get same results then.

Ok, that would explain it, thanks a lot!

--
Yannick Koehler

-----Message d'origine-----
De=A0: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Envoy=E9=A0: January-07-15 12:59 PM
=C0=A0: Koehler, Yannick (HP Networking)
Cc=A0: yocto@yoctoproject.org
Objet=A0: Re: [yocto] do_rootfs missing package (ipk) or not found in base =
feeds (rpm)

Hi Yannick,

On Wednesday 07 January 2015 17:20:08 Koehler, Yannick wrote:
>   I created my second recipe in Yocto, it is a shared library.
>=20
> --
> SUMMARY =3D "libutil"
>=20
> LICENSE =3D "LGPLv2.1+"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D2d5025d4aa3495befef8f17206a5b0=
a1"
>=20
> SRC_URI =3D "file://libutil-${PV}-Source.tar.bz2"
> SRC_URI[md5sum] =3D "???"
> SRC_URI[sha256sum] =3D "???"
>=20
> S =3D "${WORKDIR}/libutil-${PV}-Source"
>=20
> DEPENDS =3D "libpcap"
>=20
> inherit cmake
> --
>=20
>   I added to conf/distro/poky.conf the following
>=20
> --
> IMAGE_INSTALL_append =3D " libutil"
> --
>=20
>    It build nicely and install some headers and a shared library. =20
> Yet, when Yocto calls the do_rootfs, it fails and claim that the=20
> package is not found.
>=20
>    I did a "find tmp -name libutil*" and see that  I have the following:
>=20
> ../build/tmp/deploy/rpm/i586/libutil-staticdev-1.0.0-r0.i586.rpm
> ../build/tmp/deploy/rpm/i586/libutil-dev-1.0.0-r0.i586.rpm
> ../build/tmp/deploy/rpm/i586/libutil-dbg-1.0.0-r0.i586.rpm
> ../build/tmp/deploy/ipk/i586/libutil-dbg_1.0.0-r0_i586.ipk
> ../build/tmp/deploy/ipk/i586/libutil-staticdev_1.0.0-r0_i586.ipk
> ../build/tmp/deploy/ipk/i586/libutil-dev_1.0.0-r0_i586.ipk
>=20
>   I am unclear what triggered the package to be named -dev or=20
> -staticdev and actually having no package named=20
> libutil-1.0.0-r0.i586.rpm as it seems that do_rootfs is looking for.
>=20
>   I have tried with both ipk and rpm without success.  I searched=20
> google for some answer but could not get a solution to this problem. =20
> My
> libutil-1.0.0-Source.tar.bz2 generate a libutil.so, libutil-static.a=20
> and headers, all of which is install properly when using=20
> cmake/make/make install. I am using a local copy of Yocto "Dizzy".

What's almost certainly happening is your main libutil package is ending up=
 empty; by default packages are not actually written out if they are empty =
(the -dev, -dbg and -staticdev are always written out). You can verify this=
 by looking under packages-split under the workdir for the recipe (tmp/work=
/<architecture>/libutil/1.0.0-r0/). Either this is because files you want i=
n the main package aren't actually being built, or they are ending up in on=
e of the other packages. During do_package, the build system looks through =
packages in the order they are mentioned in the PACKAGES variable, and the =
first package whose FILES value matches the file gets the file (you can see=
 the default values of PACKAGES and FILES in meta/conf/bitbake.conf). So ei=
ther you need to fix it so that the right files are being produced/installe=
d, or adjust PACKAGES / FILES as appropriate.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

