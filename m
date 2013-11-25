Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D031FE006AD
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 05:51:21 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 25 Nov 2013 08:51:20 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Michael Fainstein <Michael.Fainstein@ecitele.com>
Date: Mon, 25 Nov 2013 08:48:03 -0500
Thread-Topic: [yocto] Compile on recipe works the second time
Thread-Index: Ac7lL0/O+LQ58zHlRNSE9luea/qKcv///RaAgAAI4QD//MlI8P/zbIhA
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153C1155FD4@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153BB2BE35F@pluto.melinkcorp.local>
	<1458984.Xc2zfu3l73@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153BB2BE43A@pluto.melinkcorp.local>
	<62673661A504604B856269DAADA8BC285F4E81C7@ILPTWPVEXMB01.ecitele.com>
In-Reply-To: <62673661A504604B856269DAADA8BC285F4E81C7@ILPTWPVEXMB01.ecitele.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compile on recipe works the second time
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
X-List-Received-Date: Mon, 25 Nov 2013 13:51:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="windows-1255"
Content-Transfer-Encoding: quoted-printable

Michael,

Sorry for the delayed response; was distracted with another task and wasn't=
 able to try things out for the last few days.  Response below.

> -----Original Message-----
> From: Michael Fainstein [mailto:Michael.Fainstein@ecitele.com]
> Sent: Thursday, November 21, 2013 10:33 AM
> To: Bryan Evenson
> Cc: yocto@yoctoproject.org
> Subject: RE: [yocto] Compile on recipe works the second time
>=20
>=20
>=20
> See below
>=20
> Michael
>=20
>=20
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> > Sent: =E9=E5=ED=A0=E2 19 =F0=E5=E1=EE=E1=F8 2013 18:19
> > To: Paul Eggleton
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Compile on recipe works the second time
> >
> > Paul,
> >
> > > -----Original Message-----
> > > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > > Sent: Tuesday, November 19, 2013 10:47 AM
> > > To: Bryan Evenson
> > > Cc: yocto@yoctoproject.org
> > > Subject: Re: [yocto] Compile on recipe works the second time
> > >
> > > Hi Bryan,
> > >
> > > On Tuesday 19 November 2013 08:57:40 Bryan Evenson wrote:
> > > > I'm on poky/dylan-9.0.1 and I've created a layer for a separate
> > > > open source project to include in my image.  The layer is at
> > > > https://github.com/evensonbryan/meta-bacnet for those of you who
> > want
> > > > to try and duplicate my results.  Just add this layer to your
> > > > setup and build the recipe "bacnet-stack".
> > > >
> > > > I have a very odd build issue.  The first time I build the
> recipe,
> > > the
> > > > build fails during the compile step.  However, if I then build
> the
> > > > recipe again, the compile completes without errors.  For example:
> > > >
> > > > 1. bitbake -c clean bacnet-stack
> > > > 2. bitbake bacnet-stack (compile fails) 3. bitbake bacnet-stack
> > > > (compile succeeds, rest of image packaging works)
> > > >
> > > > Additionally, the following order compiles without error:
> > > > 1. bitbake -c clean bacnet-stack
> > > > 2. bitbake -c devshell bacnet-stack 3. (from devshell) make all
> > > > (compile succeeds)
> > > >
> > > > This project is divided into a static library and multiple demo
> > > > applications.  The static library needs to be built first, and
> > > > then the demo applications include the static library in their
> > > > build.  I suspect I have an issue with either populating the
> > > > static library or the related include files in the sysroot which
> > > > causes the demo applications to fail to build the first time but
> work the second.
> > > > However, I can't figure out how to fix the issue.  Any pointers
> on
> > > what is setup wrong with this recipe?
> > >
> > > From bacnet-stack.inc:
> > > > do_install () {
> > > >     install -d ${D}${bindir} ${D}${datadir} ${D}${libdir} >
> > > ${STAGING_INCDIR}/${PN}
> > > >     ...
> > > >     install -m 0644 ${S}/include/* ${STAGING_INCDIR}/${PN} }
> > >
> > > Don't poke files directly into the sysroot like this. Install the
> > > headers to ${D}${incdir} instead, and they will be staged to the
> > > sysroot for you.
> >
> > I made the suggested change and I'm still having the same build
> issue.
> > I pulled the applicable lines from the compile log when I get the
> failure.
> >
> > ...
> > make[3]: *** No rule to make target `../../ports/linux/bip-init.o',
> > needed by `libbacnet.a'.  Stop.
> > make[3]: Leaving directory `/media/sda3/poky/poky-
> > build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> > stack-0-7-1/lib'
> > make[2]: *** [../../lib/libbacnet.a] Error 2
> > make[2]: Leaving directory `/media/sda3/poky/poky-
> > build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> > stack-0-7-1/demo/readprop'
> > make[1]: *** [readprop.all] Error 2
> > make[1]: Leaving directory `/media/sda3/poky/poky-
> > build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> > stack-0-7-1/demo'
> > make: *** [demos] Error 2
> > make: *** Waiting for unfinished jobs....
> > arm-poky-linux-gnueabi-gcc  -march=3Darmv5te -marm -mthumb-interwork -
> > mtune=3Darm926ej-s -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed --
> > sysroot=3D/media/sda3/poky/poky-build/tmp/sysroots/at91sam9x5ek -c -
> Wall
> > -Wmissing-prototypes  -Os  -I/media/sda3/poky/poky-
> > build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> > stack-0-7-1/ports/linux -I/media/sda3/poky/poky-
> > build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> > stack-0-7-1/demo/object -I/media/sda3/poky/poky-
> > build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> > stack-0-7-1/demo/handler -Iusr/include/glib-2.0
> > -I/media/sda3/poky/poky-
> > build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> > stack-0-7-1/include `pkg-config --cflags --libs glib-2.0 uuid` -
> > DPRINT_ENABLED=3D1 -DBACAPP_ALL -DBACFILE -DINTRINSIC_REPORTING -
> > DBAC_ROUTING -DBACDL_BIP=3D1 -DBBMD_ENABLED=3D1 -DWEAK_FUNC=3D  -O2 -pi=
pe -
> g
> > -feliminate-unused-debug-types /media/sda3/poky/poky-
> > build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-
> >  stack/bacnet-stack-0-7-1/ports/linux/bip-init.c -o
> > /media/sda3/poky/poky-
> > build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> > stack-0-7-1/ports/linux/bip-init.o
> > ...
> >
> > If I'm reading this right, the build of the static library fails
> > because it doesn't know how to build bip-init.o, but immediately
> after
> > the static library build fails then bip-init.o gets built.  Any
> thoughts on what could be wrong?
> >
> > Thanks,
> > Bryan
> >
>=20
>  Try disabling parallel build : add to your recipe PARALLEL_MAKE =3D ""
>=20

That worked!  I'm able to build the clean package the first time now.  Alth=
ough I am getting a QA warning about all the include files being installed =
but not shipped.  This is one part that has always confused me to no end on=
 how to handle static libraries.  I know the include files need to make it =
to sysroot for other applications which use the static library to build pro=
perly.  However, they don't need to be in the final device image.  So do th=
e include files need to be included in the FILES_${PN}-staticdev list and i=
n do_install, or should they be listed in a separate step?

Thanks,
Bryan

> Another option: create 2 recipes: one to build and install library and
> another to build demo application. Make demo application dependent on
> library.
>=20
> Cheers,
> Michael
>=20
> > >
> > > Cheers,
> > > Paul
> > >
> > > --
> > >
> > > Paul Eggleton
> > > Intel Open Source Technology Centre
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> This e-mail message is intended for the recipient only and contains
> information which is CONFIDENTIAL and which may be proprietary to ECI
> Telecom. If you have received this transmission in error, please inform
> us by e-mail, phone or fax, and then delete the original and all copies
> thereof.


