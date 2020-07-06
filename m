Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.53756.1594025512004188549
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jul 2020 01:51:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4B0fSh0MYvz5tlW;
	Mon,  6 Jul 2020 10:51:47 +0200 (CEST)
Date: Mon, 6 Jul 2020 10:51:46 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: gary@missionsecure.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Help creating zeek recipe #yocto
Message-ID: <20200706085146.hyrjcozgvxmuvj45@qschulz>
References: <cqNm.1593811360865000924.aM66@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <cqNm.1593811360865000924.aM66@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Gary,

On Fri, Jul 03, 2020 at 02:22:40PM -0700, gary via lists.yoctoproject.org=
 wrote:
> I would like to create a recipe for zeek (a network security monitoring=
 tool, https://zeek.org/). It fails while compiling because it cannot fin=
d a executable that it needs to install called binpac.=A0 binpac is inclu=
ded in the zeek repo and is normally built as part of the zeek build.=A0 =
I've created a recipe for binpac and included the native class and includ=
ed binpac-native in the zeek recipe.=A0 The binpac-native builds.
>=20
> binpac_git.bb
>=20
> SUMMARY =3D "BinPAC is a high level language for describing protocol pa=
rsers and generates C++ code."
> HOMEPAGE =3D "https://github.com/zeek/binpac"
>=20
> LICENSE =3D "Unknown"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D5139995cafc8b5273b85dd8bab50=
9855"
>=20
> SRC_URI =3D "git://git@github.com/zeek/binpac.git;protocol=3Dssh"
>=20
> # Modify these as desired
> PV =3D "0.55-8+git${SRCPV}"
> SRCREV =3D "9c3211ff121ddc677d0ed8bd3a85783f87921cce"
>=20
> BBCLASSEXTEND =3D "native"
>=20
> DEPENDS +=3D "bison-native \
> flex-native \
> "
> S =3D "${WORKDIR}/git"
>=20
> inherit distutils
>=20

I'm not sure setup.py is supported for the project as it's empty? So
distutils does not look correct to me.

You have a makefile (inherit no classes, that;s the default) or
Cmakelists (inherit cmake) or ./configure (inherit autotools, though it
expects a configure.ac and not a configure directly).

Then, what you want to check is that your binpac binary is installed in
${WORKDIR}/sysroot-dirs. If it's not, you've to find where the binary is
installed (if it is) and fix the Cmake/autotools scripts to install in
the correct directory (one of the directories in STAGING_DIRS as a
"subdirectory" of ${D}) or add said directory to the ones installed in
other recipes' sysroot (STAGING_DIRS).

Quentin
