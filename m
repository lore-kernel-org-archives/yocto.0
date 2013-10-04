Return-Path: <wparkermackenzie@live.com>
Received: from blu0-omc3-s12.blu0.hotmail.com (blu0-omc3-s12.blu0.hotmail.com
	[65.55.116.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76B00E0163D
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 14:06:28 -0700 (PDT)
Received: from BLU169-W12 ([65.55.116.74]) by blu0-omc3-s12.blu0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 4 Oct 2013 14:06:27 -0700
X-TMN: [okhRQvdlQapApmSlu2DMMv5zuUo4sM7v]
X-Originating-Email: [wparkermackenzie@live.com]
Message-ID: <BLU169-W12FA95B48C2052097CC9A1B2100@phx.gbl>
From: Parker Mackenzie <wparkermackenzie@live.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 4 Oct 2013 17:06:27 -0400
Importance: Normal
In-Reply-To: <524EB77C.9090703@windriver.com>
References: <BLU169-W9127A348CABC5098CC9ED0B2170@phx.gbl>
	<524DD3BC.7080505@windriver.com>
	<BLU169-W86EB6DD276E984A3F87FAFB2100@phx.gbl>
	<524E1183.6020907@windriver.com>
	<CAFyqS9odzK7gxJOffd_+R6e+581Ha4O+ZBKLSiboxZYoKSOn9g@mail.gmail.com>
	<BLU401-EAS22816E1B185692DCDEC3926B2100@phx.gbl>,
	<524EB77C.9090703@windriver.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 04 Oct 2013 21:06:27.0957 (UTC)
	FILETIME=[97891250:01CEC145]
Subject: Re: Cross Compile Kernel Modules
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
X-List-Received-Date: Fri, 04 Oct 2013 21:06:29 -0000
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Bruce=2C No problem... you got me on the right path.=0A=
=0A=
Bitbake now completes successfully after adding python-core and bash to IMA=
GE_INSTALL_append.=0A=
=0A=
=0A=
=0A=
Looking again at the presentation it indicated I also needed to do the foll=
owing:=0A=
make oldconfig ARCH=3Darm=0A=
=A0- This completed successfully=0A=
=0A=
make scripts ARCH=3Darm=0A=
=A0- This fails with the following errors:=0A=
=0A=
[parker@jasper kernel]$ make scripts ARCH=3Darm=0A=
scripts/kconfig/conf --silentoldconfig Kconfig=0A=
=A0 CC =A0 =A0 =A0scripts/mod/empty.o=0A=
gcc: error: unrecognized command line option =91-mlittle-endian=92=0A=
gcc: error: unrecognized command line option =91-mapcs=92=0A=
gcc: error: unrecognized command line option =91-mno-sched-prolog=92=0A=
gcc: error: unrecognized argument in option =91-mabi=3Daapcs-linux=92=0A=
gcc: note: valid arguments to =91-mabi=3D=92 are: ms sysv=0A=
gcc: error: unrecognized command line option =91-mno-thumb-interwork=92=0A=
make[2]: *** [scripts/mod/empty.o] Error 1=0A=
make[1]: *** [scripts/mod] Error 2=0A=
make: *** [scripts] Error 2=0A=
=0A=
The cross compiler seems to be correct...:=0A=
[parker@jasper kernel]$ echo $CC=0A=
arm-poky-linux-gnueabi-gcc -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dsoftfp -mfpu=3Dneon --sysroot=3D/home/parker/Projects/beagleboard/yocto/=
poky-dylan-9.0.2/sdk/sysroots/armv7a-vfp-neon-poky-linux-gnueabi=0A=
=0A=
=0A=
Trying to build this on:=0A=
Linux jasper 3.9.10-100.fc17.x86_64 #1 SMP Sun Jul 14 01:31:27 UTC 2013 x86=
_64 x86_64 x86_64 GNU/Linux=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
>=0A=
> Right! I typed in "python" from memory :) In fact=2C what I typically hav=
e is=0A=
> a full set of python dependencies=2C including python-dev=2C which picks=
=0A=
> up what I need.=0A=
>=0A=
> Cheers=2C=0A=
>=0A=
> Bruce=0A=
> 		 	   		  =

