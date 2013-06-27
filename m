Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C4FCE0144E
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 05:50:26 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 27 Jun 2013 08:50:24 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Thu, 27 Jun 2013 08:50:23 -0400
Thread-Topic: [yocto] Kernel patch is unpacked but not applied
Thread-Index: Ac5y9pOWsteZz5ElRDyOX8PrS5ebVwAORFtA
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4013B9129209C@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4013B91292051@pluto.melinkcorp.local>
	<51CBB4A8.80200@windriver.com> <51CBCC7C.3080107@windriver.com>
In-Reply-To: <51CBCC7C.3080107@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 003B510D004A70003B525A
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel patch is unpacked but not applied
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
X-List-Received-Date: Thu, 27 Jun 2013 12:50:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Thursday, June 27, 2013 1:24 AM
> To: Bryan Evenson
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Kernel patch is unpacked but not applied
>=20
> On 13-06-26 11:42 PM, Bruce Ashfield wrote:
> > On 13-06-26 11:08 PM, Bryan Evenson wrote:
> >> I am building a custom Linux kernel under poky-dylan and I am having
> >> an issue with patches being unpacked but not applied.  I have two
> >> layers that have a bbappend file for the kernel.  Generally, this is
> >> what each bbappend file looks like:
> >>
> >> #First .bbappend
> >>
> >> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >> COMPATIBLE_MACHINE_mach1 =3D "mach1"
> >> COMPATIBLE_MACHINE_mach2 =3D "mach2"
> >> SRC_URI_append_mach2 =3D " file://${MACHINE}/${KBRANCH}/0001-
> blah.patch \
> >>      file://${MACHINE}/${KBRANCH}/0002-blah.patch \
> >>      "
> >>
> >> # Increment the recipe revision
> >> PRINC :=3D "${@int(PRINC) + 1}"
> >>
> >> # Second .bbappend
> >>
> >> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >> COMPATIBLE_MACHINE_mach1 =3D "mach1"
> >> COMPATIBLE_MACHINE_mach2 =3D "mach2"
> >> SRC_URI_append_mach2 =3D " file://${MACHINE}/${KBRANCH}/0003-
> blah.patch \
> >>      file://${MACHINE}/${KBRANCH}/0004-blah.patch \
> >>      "
> >>
> >> # Increment the recipe revision
> >> PRINC :=3D "${@int(PRINC) + 1}"
> >>
> >> All of the patch files are properly unpacked, but the last two
> >> patches are not being applied.  If I open the devshell for the
> kernel
> >> (bitbake -c devshell linux-yocto-custom) I can see in the git log
> >> that the first patch set was applied.  The second patch set exists
> >> but is not applied.  If I call "guilt push" repeatedly from the
> >> devshell, the patches from the second set are cleanly applied.  My
> >> guess is that something doesn't like the second SRC_URI_append call.
> >> Any ideas on how to fix it?
> >
> > It shouldn't matter. Let me try and set up something that reproduces
> > the problem and get back to you.
> >
> > Strangely .. I'm actively debugging something similar here already,
> so
> > I may be able to re-use it.
> >
> > Stay tuned.
> >
> > Out of curiosity, have you tried this on master ?
>=20

I have not tried this on master.  Here is the relevant build information:

Build Configuration:
BB_VERSION        =3D "1.18.0"
BUILD_SYS         =3D "i686-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "at91sam9x5ek"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4.1"
TUNE_FEATURES     =3D "armv5 thumb dsp arm926ejs"
TARGET_FPU        =3D "soft"
meta-melink       =3D "dylan:e4a0a4c5e419154a34710a1b6c28d4180c6304c3"
meta-atmel        =3D "master:b2a9c072730b0f6b2a669a8de613e5e1d59453e6"
meta             =20
meta-yocto       =20
meta-yocto-bsp    =3D "dylan:e4a0a4c5e419154a34710a1b6c28d4180c6304c3"
meta-oe           =3D "dylan:13ae5105ee30410136beeae66ec41ee4a8a2e2b0"

So I'm at the HEAD of the Dylan branch for both poky and meta-oe.
The kernel patches are in both the meta-atmel layer and the meta-melink
Layter.  Ignore that version string for meta-melink; it's not a git
repository so it's just grabbing the info from poky.

> So I tried to recreate this on master, and things worked for me. Which
> I figured would happen, since this will make it harder to fix ... and
> that's how it always works out.
>=20
> I created two layers, with four patches to the main linux Makefile.
> They all add something to the description:
>=20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> SRC_URI_append =3D " file://0001-makefile-one.patch \
>                     file://0002-makefile-two.patch"
>=20
>=20
>=20
> PRINC :=3D "${@int(PRINC) + 1}"
>=20
> and
>=20
>=20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> SRC_URI_append =3D " file://0003-makefile-three.patch \
>                     file://0004-makefile-four.patch"
>=20
>=20
>=20
> PRINC :=3D "${@int(PRINC) + 1}"
>=20
> .. and alas, the all were applied:
>=20
>  > grep NAME Makefile
> NAME =3D Displaced Humerus Anterior one two three four
>=20
> ....
>=20
> Can you send me the exact names of your patches ? I'm wondering if an
> already applied check is triggering and preventing the auto push.
>=20

Here are the patch names in the first layer (meta-atmel):

" file://${MACHINE}/${KBRANCH}/UBI.cfg \
    file://${MACHINE}/${KBRANCH}/dma.cfg \
    file://${MACHINE}/${KBRANCH}/usb-c.patch \
    file://${MACHINE}/${KBRANCH}/usart3.patch \
    file://${MACHINE}/${KBRANCH}/rtc.patch \
    file://${MACHINE}/${KBRANCH}/serial_dma.patch \
    ${@base_contains("MACHINE_FEATURES", "watchdog", "file://${MACHINE}/${K=
BRANCH}/watchdog.patch", " ", d)} \
    "

If you're wondering about that last line, I added a watchdog
feature to the meta-atmel layer to enable or disable the watchdog
for the kernel, U-Boot and the AT91Bootstrap.

And here are the patch names for the second layer (meta-melink):

SRC_URI_append_at91sam9x5ek =3D " file://${MACHINE}/${KBRANCH}/mq.cfg \
    file://${MACHINE}/${KBRANCH}/gpio.cfg \
    file://${MACHINE}/${KBRANCH}/ad5446.cfg \
    file://${MACHINE}/${KBRANCH}/rs485.patch;apply=3Dyes \
    file://${MACHINE}/${KBRANCH}/usart1.patch;apply=3Dyes \
    file://${MACHINE}/${KBRANCH}/mmc.patch;apply=3Dyes \
    file://${MACHINE}/${KBRANCH}/one-wire.patch;apply=3Dyes \
    "

I tried adding the "apply=3Dyes" to the second layer patches, and they stil=
l
were not applied.  Incidentally, the configuration changes (.cfg files)
*are* being applied.  So if I understand correctly, do_unpack is getting
the correct files, do_patch is not applying all the patches, but
do_configure is applying all the configuration changes.

If it helps, the meta-atmel layer I am using is available here:
https://github.com/evensonbryan/meta-atmel.  I just pushed an update a few
minutes ago, so it has what I am using.

I'll let you know if I discover anything new.

Thanks,
Bryan=20

> Bruce
>=20
> >
> > Cheers,
> >
> > Bruce
> >
> >>
> >> Thanks,
> >> Bryan
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto


