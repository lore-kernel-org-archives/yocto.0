Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49CBCE0073F
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 14:12:11 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 15 Aug 2013 17:12:11 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 15 Aug 2013 17:12:08 -0400
Thread-Topic: [yocto] Error building meta-ide-support; 'SNDCTL_DSP_MAPINBUF'
	undeclared here
Thread-Index: Ac6YQZvm1/inciC/S1SlI4tH30qmCwBt/T/wAAByqNA=
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153ADC7E8B3@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153ADC7DF00@pluto.melinkcorp.local>
	<C6510F6D410BB64A8C15398EDC6B847C73C771D6@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C771D6@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0202B46A0050340202B5B7
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Error building meta-ide-support; 'SNDCTL_DSP_MAPINBUF' undeclared here
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
X-List-Received-Date: Thu, 15 Aug 2013 21:12:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Zhang, Jessica [mailto:jessica.zhang@intel.com]
> Sent: Thursday, August 15, 2013 4:55 PM
> To: Bryan Evenson; yocto@yoctoproject.org
> Subject: RE: [yocto] Error building meta-ide-support;
> 'SNDCTL_DSP_MAPINBUF' undeclared here
>=20
> Hi Bryan,
>=20
> When you tried to setup your eclipse plugin, what is your toolchain and
> what
> is your sysroot.  Are they built by you or you download them?
>=20

I built my own.  I'm using the meta-atmel layer located at https://github.c=
om/evensonbryan/meta-atmel.git, using the instructions shown in the README =
to download and build.  Only exception is that I have MACHINE set as "at91s=
am9x5ek" in local.conf.  I did "bitbake core-image-minimal" as the initial =
build to start off everything; never tried to bitbake meta-ide-support on t=
his system.

-Bryan

> - Jessica
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org]
> On Behalf Of Bryan Evenson
> Sent: Tuesday, August 13, 2013 9:25 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Error building meta-ide-support; 'SNDCTL_DSP_MAPINBUF'
> undeclared here
>=20
> I am working on installing and setting up the Eclipse IDE plug-in for
> Eclipse Juno.  I am using poky/dylan (at the yocto-1.4.1 tag) for my
> build
> environment.  I am to the "Configuring the Cross-Compiler Options"
> section
> from the current Yocto Project mega-manual, and after setting up the
> Toolchain Root Location and the Sysroot Location, I get the error
> 'Specified
> toolchain directory does not contain a toolchain generated with
> "bitbake
> meta-ide-support"'.  So, I went back and did "bitbake meta-ide-support"
> as
> requested and I am getting the following errors:
>=20
> DEBUG: Executing shell function do_compile
> NOTE: make -j 2
>   CC    arm-linux-user/linux-user/syscall.o
> In file included from
> /media/sda3/poky/poky-build/tmp/work/i686-linux/qemu-native/1.4.0-
> r0/qemu-1.
> 4.0/linux-user/syscall.c:3705:0:
> /media/sda3/poky/poky-build/tmp/work/i686-linux/qemu-native/1.4.0-
> r0/qemu-1.
> 4.0/linux-user/ioctls.h:189:1: error: 'SNDCTL_DSP_MAPINBUF' undeclared
> here
> (not in a function)
> /media/sda3/poky/poky-build/tmp/work/i686-linux/qemu-native/1.4.0-
> r0/qemu-1.
> 4.0/linux-user/ioctls.h:190:1: error: 'SNDCTL_DSP_MAPOUTBUF' undeclared
> here
> (not in a function)
> /media/sda3/poky/poky-build/tmp/work/i686-linux/qemu-native/1.4.0-
> r0/qemu-1.
> 4.0/linux-user/ioctls.h:245:1: error: 'SOUND_MIXER_ACCESS' undeclared
> here
> (not in a function)
> make[1]: *** [linux-user/syscall.o] Error 1
> make: *** [subdir-arm-linux-user] Error 2
> make: *** Waiting for unfinished jobs....
> ERROR: oe_runmake failed
> ERROR: Function failed: do_compile (see
> /media/sda3/poky/poky-build/tmp/work/i686-linux/qemu-native/1.4.0-
> r0/temp/lo
> g.do_compile.20276 for further information)
>=20
> I did a search and I cannot find these defines anywhere in the i686
> sysroot
> directory, but it exists in my target's sysroot directory.  Is there
> something wrong with the i686 sysroot setup on my system?  If it
> matters,
> I'm doing the build machine is running Ubuntu 12.04.2 LTS.
>=20
> Thanks,
> Bryan
>=20
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

