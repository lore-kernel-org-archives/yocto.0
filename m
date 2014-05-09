Return-Path: <briank@RUSSOUND.COM>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A5CDE009EB; Fri,  9 May 2014 07:58:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from Pegasus.RUSSOUND.COM (unknown [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E083EE009BA
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 07:58:53 -0700 (PDT)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Fri, 9 May 2014 10:58:46 -0400
Received: from HERMES.RUSSOUND.com (10.0.0.30) by HERMES.RUSSOUND.com
	(10.0.0.30) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Fri, 9 May 2014 10:58:45 -0400
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Fri, 9 May 2014 10:58:45 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-atmel] at91sam9x5ek: "no machine record defined"
	failure for core-image-minimal
Thread-Index: Ac9riCi/qecn3Y3qQzK51aCH65HnbgAJ5HKAAAc038A=
Date: Fri, 9 May 2014 14:58:45 +0000
Message-ID: <bab902e58d8041a793958d1432e41e86@HERMES.RUSSOUND.com>
References: <f9f1c263a9ab4a3085bf1a696f31aec6@HERMES.RUSSOUND.com>
	<536CDE17.40806@windriver.com>
In-Reply-To: <536CDE17.40806@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.3.60]
x-brightmail-tracker: H4sIAAAAAAAAC+NgFnrJqsTGxcLFwCCnq/o2J9jg6JYXXzgt7l87zWIxYWkrkwNTAEMUa2ZeUn5FAmtGf+NB1oLpexgrZn/IaGBcto6xi5GLQ0hgKaPE8wVLWCGcHYwSJ5ZvAHI4OZgFTCWufG1kgbAVJS7cawCz2QTUJV7snQJUw8EhIpAmcb4nGiQsLJAjcWTlXkYQW0QgV+Lh/hnMELaVxPOODjYQm0VAReLntYVgcV4BJ4m597+BxYUEkiWOXb0ONpJTQFvi0IkYkDCjgJjE91NrmCAuEJe49WQ+mC0hICCxZM95ZghbSaL39juouI/ExekPWSHGC0qcnPmEBSJuJrH3wRKoGj2J1RtPQtmBEh8PLWUDWSsB9O3V98EQYVuJPTMmMkGEnSXm3aiHCFtJXDs/lRXC1pbY/moflK0jsenaKqhN8hL/791ngRkz4fIyqCtlJU5fW8QGYQdILFt8jWUCo9ospGCehRTMs5A8PAvJMwsYWVYxCnu4Bvm6BusFhQYH+4f6uegl5+duYoQmgx2Mf2/YH2KU5GBSEuUV3ZITLMSXlJ9SmZFYnBFfVJqTWnyIUYKDR0mEl+cNUI63uCAxtzgzHSYlw8GhJMH78DVQSrAoNT21Ii0zpyS1CCJ9ilFSSpz3MkhSAKQvozQPLneJUVRKmPcmSI6nILUoN7MEIn6LUZjjIZMQS15+XqoU0IkMQKDB+IpRnINRSZj3Plh9Zl4J3AmvgK5jArrOVz8b5LqSRISUVANj1nf9qS+e8E/j2CipF6LTtP1OyC2tuNPxx9tklbl1Cj8Vsk3um+27S27Xqw6+xGndSw93zpJYmtzd6nHl9DNOy/XbX4WHmHk/PijBdvqrdFHWJYstt7axK1z9+dnjUKteymveImVrQd5f7abJ5iITM+erKJ4OTvPNW8NnIrz3YeVF13cCDNeVWIozEg21mIuKEwG9g55UfAMAAA==
MIME-Version: 1.0
Subject: Re: [meta-atmel] at91sam9x5ek: "no machine record defined" failure for core-image-minimal
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
X-List-Received-Date: Fri, 09 May 2014 14:58:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

I'm not entirely familiar with the mechanism that gets the defconfig from t=
he BSP to the .config in work area, but here is how things currently look. =
The two files aren't a direct match as there appear to be some formatting d=
ifferences, but the variables in the SOC/ARCH section seem to correlate par=
tially (ie. it knows its trying to build for an at91sam9x5 SOC).

defconfig:
	CONFIG_ARCH_AT91=3Dy
	CONFIG_SOC_AT91SAM9260=3Dy
	CONFIG_SOC_AT91SAM9263=3Dy
	CONFIG_SOC_AT91SAM9G45=3Dy
	CONFIG_SOC_AT91SAM9X5=3Dy
	CONFIG_MACH_AT91SAM_DT=3Dy

.config:
	#
	# Atmel AT91 Processor
	#
	# CONFIG_SOC_AT91RM9200 is not set
	CONFIG_SOC_AT91SAM9260=3Dy
	# CONFIG_SOC_AT91SAM9261 is not set
	CONFIG_SOC_AT91SAM9263=3Dy
	# CONFIG_SOC_AT91SAM9RL is not set
	CONFIG_SOC_AT91SAM9G45=3Dy
	CONFIG_SOC_AT91SAM9X5=3Dy
	# CONFIG_SOC_AT91SAM9N12 is not set

	#
	# Atmel Non-DT world
	#
	CONFIG_ARCH_AT91_NONE=3Dy
	# CONFIG_ARCH_AT91RM9200 is not set
	# CONFIG_ARCH_AT91SAM9260 is not set
	# CONFIG_ARCH_AT91SAM9261 is not set
	# CONFIG_ARCH_AT91SAM9263 is not set
	# CONFIG_ARCH_AT91SAM9RL is not set
	# CONFIG_ARCH_AT91SAM9G45 is not set

	#
	# AT91 Board Options
	#

	#
	# Generic Board Type
	#
	# CONFIG_MACH_AT91SAM9_DT is not set

Given the fact that the ARCH and DT variables don't appear to match, it loo=
ks like this might be device tree related.

I was hoping the code out of the box was going to be able to provide a demo=
 image that I could build and poke around in for some guidance. My ultimate=
 goal is to port the at91sam9x5ek machine definition to one for the at91sam=
9g20ek demo board and then port THAT over to a custom machine based roughly=
 off that reference design.


-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Friday, May 09, 2014 9:55 AM
To: Brian Karcz; yocto@yoctoproject.org
Subject: Re: [yocto] [meta-atmel] at91sam9x5ek: "no machine record defined"=
 failure for core-image-minimal

On 14-05-09 09:44 AM, Brian Karcz wrote:
> Hi,
>
> Not sure if this is the correct place to email this, but I've seen a=20
> few other meta-atmel references so I figured I'd give it a shot.
>
> I'm attempting to setup a core-image-minimal build using the=20
> guidelines in the meta-atmel README for the at91sam9x5ek machine type.=20
> When the kernel build goes to link, I get a "no machine record=20
> defined" error. Is this something others are seeing in the meta-atmel dem=
o builds?
>
> It's a pretty benign build setup according to the README:
>
> git clone git://git.yoctoproject.org/poky
>
> cd poky
>
> git checkout dora-10.0.1 -b dora-10.0.1
>
> git clone git://git.openembedded.org/meta-openembedded
>
> cd meta-openembedded
>
> git checkout 6572316557e742c2dc93848e4d560242bf0c3995 -b my_branch
>
> cd ..
>
> git clone http://github.com/linux4sam/meta-atmel
>
> source oe-init-build-env /workspace/build-atmel
>
> modify local.conf:
>
> MACHINE ??=3D "at91sam9x5ek"
>
> PACKAGE_CLASSES ?=3D "package_ipk"
>
> modify bblayers.conf:
>
> BBLAYERS ?=3D " \
>
>    /opt/poky/meta-atmel \
>
>    /opt/poky/meta \
>
>    /opt/poky/meta-yocto \
>
>    /opt/poky/meta-yocto-bsp \
>
>    /opt/poky/meta-openembedded/meta-oe \
>
>    /opt/poky/meta-openembedded/meta-networking \
>
>    "
>
> bitbake core-image-minimal
>
> Setting this up, I get the following build configuration and error:
>
> /workspace/build-atmel$ bitbake core-image-minimal
>
> Loading cache: 100%
> |#####################################################################
> |#################|
> ETA:  00:00:00
>
> Loaded 1782 entries from dependency cache.
>
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
>
> BB_VERSION        =3D "1.20.0"
>
> BUILD_SYS         =3D "x86_64-linux"
>
> NATIVELSBSTRING   =3D "Ubuntu-12.04"
>
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
>
> MACHINE           =3D "at91sam9x5ek"
>
> DISTRO            =3D "poky"
>
> DISTRO_VERSION    =3D "1.5.1"
>
> TUNE_FEATURES     =3D "armv5 thumb dsp"
>
> TARGET_FPU        =3D "soft"
>
> meta-atmel        =3D "master:269066a8128d1e767deee64854a142e67451a5f2"
>
> meta
>
> meta-yocto
>
> meta-yocto-bsp    =3D "dora-10.0.1:8e410e9e46e3335458a7747cdd32e05f5c19cc=
bb"
>
> meta-oe
>
> meta-networking   =3D "my_branch:6572316557e742c2dc93848e4d560242bf0c3995=
"
>
> NOTE: Preparing runqueue
>
> NOTE: Executing SetScene Tasks
>
> NOTE: Executing RunQueue Tasks
>
> ERROR: Function failed: do_compile (log file is located at
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-
> yocto-custom/3.10+AUTOINC+68f2c28207-r5/temp/log.do_compile.2291)
>
> ERROR: Logfile of failure stored in:
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-
> yocto-custom/3.10+AUTOINC+68f2c28207-r5/temp/log.do_compile.2291
>
> Log data follows:
>
> | DEBUG: Executing shell function do_compile
>
> | NOTE: make -j 2 zImage CC=3Darm-poky-linux-gnueabi-gcc
> -mno-thumb-interwork -marm LD=3Darm-poky-linux-gnueabi-ld.bfd
>
> |   GEN
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-
> yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux-at91sam9x5ek-standard-bu
> ild/Makefile
>
> |   CHK     include/generated/uapi/linux/version.h
>
> |   CHK     include/generated/utsrelease.h
>
> |   Using
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-
> yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux
> as source for kernel
>
> | make[3]: `include/generated/mach-types.h' is up to date.
>
> |   CC      scripts/mod/devicetable-offsets.s
>
> |   GEN     scripts/mod/devicetable-offsets.h
>
> |   HOSTCC  scripts/mod/file2alias.o
>
> |   CALL
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-
> yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux/scripts/checksyscalls.sh
>
> |   HOSTLD  scripts/mod/modpost
>
> |   CHK     include/generated/compile.h
>
> |   LINK    vmlinux
>
> |   LD      vmlinux.o
>
> |   MODPOST vmlinux.o
>
> |   GEN     .version
>
> |   CHK     include/generated/compile.h
>
> |   UPD     include/generated/compile.h
>
> |   CC      init/version.o
>
> |   LD      init/built-in.o
>
> | arm-poky-linux-gnueabi-ld.bfd: no machine record defined
>
> | make[2]: *** [vmlinux] Error 1
>
> | make[1]: *** [sub-make] Error 2
>
> | make: *** [all] Error 2
>
> | ERROR: oe_runmake failed
>
> | WARNING: exit code 1 from a shell command.
>
> | ERROR: Function failed: do_compile (log file is located at
> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-gnueabi/linux-
> yocto-custom/3.10+AUTOINC+68f2c28207-r5/temp/log.do_compile.2291)
>
> ERROR: Task 208
> (/opt/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.bb,
> do_compile) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 793 tasks of which 785 didn't need to=20
> be rerun and 1 failed.
>
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>
>   =20
> /opt/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.bb,
> do_compile
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> Any thoughts on what might be missing from the README or my=20
> implementation of it to get this demo build working?

Can you confirm that the final .config for the board has the machine defini=
tions that you'd expect for the board ?

Bruce

>
> Thanks,
>
> Brian
>
>
>


