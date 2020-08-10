Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.40628.1597046421492750796
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Aug 2020 01:00:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BQ7g63QvSz5tlR;
	Mon, 10 Aug 2020 10:00:18 +0200 (CEST)
Date: Mon, 10 Aug 2020 10:00:16 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Sergey Ivanov <icegood1980@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] yocto compile simple c++
Message-ID: <20200810080016.kwv4q2gk2y2dkz5a@qschulz>
References: <CAJCbrz4uDGFA4qe7SxLrKR4kDEzJDxgAp=EROAiDPtiORe2RXw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJCbrz4uDGFA4qe7SxLrKR4kDEzJDxgAp=EROAiDPtiORe2RXw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sergey,

On Sat, Aug 08, 2020 at 12:12:40PM +0300, Sergey Ivanov wrote:
> Hi there.
> I'm newbie ib yocto and (of course) nothing works for me from scratch.
> For testing purposes, i work with yocto 3.1 based on
> 5d47cdf448b6cff5bb7cc5b0ba0426b8235ec478 rev aka dunfell-23.0.0
> MACHINE ?=3D "qemuarm" and DISTRO ?=3D "poky" (btw i tried poky-tony as=
 well
> but machine didn't start properly under qemu)
>=20
> I created my new layer with next structure:
> .
> =E2=94=9C=E2=94=80=E2=94=80 conf
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 layer.conf
> =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
> =E2=94=9C=E2=94=80=E2=94=80 README
> =E2=94=94=E2=94=80=E2=94=80 recipes-ice
>     =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT

No need.

>     =E2=94=94=E2=94=80=E2=94=80 ice_helloworld
>         =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT

No need.

>         =E2=94=9C=E2=94=80=E2=94=80 files
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
>         =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ice_helloworld.cpp
>         =E2=94=94=E2=94=80=E2=94=80 ice_helloworld_0.1.bb
>=20
> (i copied COPYING.MIT to )every single place because of error below) an=
d i
> obtained:
>=20
> NOTE: Executing Tasks
> WARNING: ice_helloworld-helloworld-0.1 do_populate_lic: Could not copy
> license file
> /media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-li=
nux-gnueabi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/COPYI=
NG.MIT
> to
> /media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-li=
nux-gnueabi/ice_helloworld/helloworld-0.1/license-destdir/ice_helloworld/=
COPYING.MIT:
> [Errno 2] No such file or directory:
> '/media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-l=
inux-gnueabi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/COPY=
ING.MIT'
> ERROR: ice_helloworld-helloworld-0.1 do_populate_lic: QA Issue:
> ice_helloworld: LIC_FILES_CHKSUM points to an invalid file:
> /media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-li=
nux-gnueabi/ice_helloworld/helloworld-0.1/ice_helloworld-helloworld/COPYI=
NG.MIT
> [license-checksum]
> ERROR: ice_helloworld-helloworld-0.1 do_populate_lic: Fatal QA errors
> found, failing task.
> ERROR: Logfile of failure stored in:
> /media/ice/slow_ext4/yocto_poky/build/tmp/work/armv7vet2hf-neon-poky-li=
nux-gnueabi/ice_helloworld/helloworld-0.1/temp/log.do_populate_lic.133477
> ERROR: Task
> (/media/ice/slow_ext4/yocto_poky/meta-ice_layer/recipes-ice/ice_hellowo=
rld/ice_helloworld_0.1.bb:do_populate_lic)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 216 tasks of which 214 didn't need to be
> rerun and 1 failed.
>=20
>=20
>=20
>=20
> my bb file is:
>=20
> SUMMARY =3D "Recipe to build the 'helloworld' in cpp"
> SECTION =3D "ice"
> LICENSE=3D"MIT"
> #LICENSE_PATH +=3D "${LAYERDIR}"
>=20
> PN =3D "ice_helloworld"

No need, default is the name of the recipe file.

> PV =3D "0.1"
>=20

No need, default is the version in the recipe file (if there's one).

meta-ice_layer/recipes-ice/ice_helloworld/ice_helloworld_0.1.bb will
produce:
PN =3D "ice_helloworld"
PV =3D "0.1"

> SITE =3D "file://"
> PACKAGE_VERSION_MAJOR =3D "${@bb.data.getVar('PV',d,1).split('.')[0]}"
> PACKAGE_VERSION_MINOR =3D "${@bb.data.getVar('PV',d,1).split('.')[1]}"
>=20
> SRC_URI =3D "${SITE}${PN}.cpp"

SRC_URI =3D "${SITE}/${PN}.cpp"

> SRC_URI[md5sum] =3D "bc9dc64a44f9685d0310b94400a4631c"
> SRC_URI[sha256sum] =3D
> "789e60072ea96371a35d5653d664b4c4b91e80ce2ea6d523d6caedab06a07a2a"
> LIC_FILES_CHKSUM =3D "${SITE}COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b=
4de20420"
>=20

LIC_FILES_CHKSUM =3D "${SITE}/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4=
de20420"

> do_compile() {
>     ${CXX} ${PN}.cpp -o ${PN}
> }
>=20

Create a makefile/cmake instead, the logic of compiling your SW shouldn't=
 be
in a build system.

> do_install() {
>     install -d ${D}${bindir}
>     install -m 0755 ${PN} ${D}${bindir}
> }
>=20

Same, create an install target in your makefile. If you do this well,
you don't even need your do_compile and do_install, it'll be
"automagical".

> what could be wrong here?
> --=20

1. Missing / in your paths.

2. Also, **never** put uppercase letter or underscores in the name of
a recipe. So your recipe should be:
meta-ice_layer/recipes-ice/ice-helloworld/ice-helloworld_0.1.bb

The underscore is used in multiple places internally to separate
things so using an underscore is breaking some things in weird ways.

Fix 1 and 2 at least, create a makefile for added best practices.

Kind regards,
Quentin
