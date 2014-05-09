Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D02F3E0073A; Fri,  9 May 2014 12:46:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.46.163.236 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 922 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 May 2014 12:46:37 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com (unknown
	[207.46.163.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03F60E00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 12:46:37 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) with Microsoft
	SMTP Server (TLS) id 15.0.939.12; Fri, 9 May 2014 19:31:05 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.90]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.90]) with mapi id
	15.00.0939.000; Fri, 9 May 2014 19:31:05 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Brian Karcz
	<briank@russound.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-atmel] at91sam9x5ek: "no machine record defined"
	failure for core-image-minimal
Thread-Index: Ac9riCi/qecn3Y3qQzK51aCH65HnbgABgq6AAAI+SoAAB8nGgAABOOFg
Date: Fri, 9 May 2014 19:31:04 +0000
Message-ID: <9c24fdddb3e54b61b8ec208a3e0e0bf5@BLUPR05MB037.namprd05.prod.outlook.com>
References: <f9f1c263a9ab4a3085bf1a696f31aec6@HERMES.RUSSOUND.com>
	<536CDE17.40806@windriver.com>
	<bab902e58d8041a793958d1432e41e86@HERMES.RUSSOUND.com>
	<536D2169.80103@windriver.com>
In-Reply-To: <536D2169.80103@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 01B9F5DB00716601B9F728
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(377454003)(199002)(377424004)(189002)(24454002)(51704005)(13464003)(164054003)(19580405001)(77982001)(76482001)(19580395003)(79102001)(83322001)(33646001)(74662001)(31966008)(74502001)(81342001)(81542001)(21056001)(575784001)(15395725003)(15202345003)(15975445006)(64706001)(86362001)(20776003)(80022001)(101416001)(66066001)(83072002)(54356999)(87936001)(4396001)(2656002)(76176999)(92566001)(99286001)(74316001)(76576001)(50986999)(46102001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB037;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (: melinkcorp.com does not designate permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
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
X-List-Received-Date: Fri, 09 May 2014 19:46:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Brian,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Bruce Ashfield
> Sent: Friday, May 09, 2014 2:42 PM
> To: Brian Karcz; yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-atmel] at91sam9x5ek: "no machine record
> defined" failure for core-image-minimal
>=20
> On 14-05-09 10:58 AM, Brian Karcz wrote:
> > Hi Bruce,
> >
> > I'm not entirely familiar with the mechanism that gets the defconfig fr=
om
> the BSP to the .config in work area, but here is how things currently loo=
k. The
> two files aren't a direct match as there appear to be some formatting
> differences, but the variables in the SOC/ARCH section seem to correlate
> partially (ie. it knows its trying to build for an at91sam9x5 SOC).

I'm currently using a fork of the meta-atmel layer for my at91sam9g25 board=
.  If I remember when they added at91sam9x5 support for meta-atmel, I think=
 the layer was on kernel 3.6.9 and now it's on 3.10.  There's been a lot of=
 machine and device tree related configuration changes for this chipset bet=
ween 3.6.9 and 3.10, so that configuration might not work for 3.10.

The configuration I'm currently using is over at https://github.com/evenson=
bryan/meta-atmel/tree/master/recipes-kernel/linux/files/at91sam9x5ek/linux-=
3.10-at91.  It also has some patches I added in to pick up some missing per=
ipheral support for my system.  You may want to give that a try and see if =
it helps.

Regards,
Bryan

> >
> > defconfig:
> > 	CONFIG_ARCH_AT91=3Dy
> > 	CONFIG_SOC_AT91SAM9260=3Dy
> > 	CONFIG_SOC_AT91SAM9263=3Dy
> > 	CONFIG_SOC_AT91SAM9G45=3Dy
> > 	CONFIG_SOC_AT91SAM9X5=3Dy
> > 	CONFIG_MACH_AT91SAM_DT=3Dy
> >
> > .config:
> > 	#
> > 	# Atmel AT91 Processor
> > 	#
> > 	# CONFIG_SOC_AT91RM9200 is not set
> > 	CONFIG_SOC_AT91SAM9260=3Dy
> > 	# CONFIG_SOC_AT91SAM9261 is not set
> > 	CONFIG_SOC_AT91SAM9263=3Dy
> > 	# CONFIG_SOC_AT91SAM9RL is not set
> > 	CONFIG_SOC_AT91SAM9G45=3Dy
> > 	CONFIG_SOC_AT91SAM9X5=3Dy
> > 	# CONFIG_SOC_AT91SAM9N12 is not set
> >
> > 	#
> > 	# Atmel Non-DT world
> > 	#
> > 	CONFIG_ARCH_AT91_NONE=3Dy
> > 	# CONFIG_ARCH_AT91RM9200 is not set
> > 	# CONFIG_ARCH_AT91SAM9260 is not set
> > 	# CONFIG_ARCH_AT91SAM9261 is not set
> > 	# CONFIG_ARCH_AT91SAM9263 is not set
> > 	# CONFIG_ARCH_AT91SAM9RL is not set
> > 	# CONFIG_ARCH_AT91SAM9G45 is not set
> >
> > 	#
> > 	# AT91 Board Options
> > 	#
> >
> > 	#
> > 	# Generic Board Type
> > 	#
> > 	# CONFIG_MACH_AT91SAM9_DT is not set
> >
> > Given the fact that the ARCH and DT variables don't appear to match, it
> looks like this might be device tree related.
>=20
> The reason I asked is that in the past, the error you are seeing was rela=
ted to
> the machine not being properly defined in the kernel's .config.
>=20
> FWIW, assuming you have a full "defconfig", and not a "save_defconfig"
> variant, the path from it to the final .config is pretty much a copy into=
 the
> kernel and a "make oldconfig", so nothing is thrown away unless there is =
a
> missing dependency, or the Kconfig doesn't exist in the given kernel.
>=20
> It's worth checking via menuconfig to see if anything obvious is missing,=
 and
> trying some quick builds to rule out a bad configuration.
>=20
> Bruce
>=20
> >
> > I was hoping the code out of the box was going to be able to provide a
> demo image that I could build and poke around in for some guidance. My
> ultimate goal is to port the at91sam9x5ek machine definition to one for t=
he
> at91sam9g20ek demo board and then port THAT over to a custom machine
> based roughly off that reference design.
> >
> >
> > -----Original Message-----
> > From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> > Sent: Friday, May 09, 2014 9:55 AM
> > To: Brian Karcz; yocto@yoctoproject.org
> > Subject: Re: [yocto] [meta-atmel] at91sam9x5ek: "no machine record
> > defined" failure for core-image-minimal
> >
> > On 14-05-09 09:44 AM, Brian Karcz wrote:
> >> Hi,
> >>
> >> Not sure if this is the correct place to email this, but I've seen a
> >> few other meta-atmel references so I figured I'd give it a shot.
> >>
> >> I'm attempting to setup a core-image-minimal build using the
> >> guidelines in the meta-atmel README for the at91sam9x5ek machine
> type.
> >> When the kernel build goes to link, I get a "no machine record
> >> defined" error. Is this something others are seeing in the meta-atmel
> demo builds?
> >>
> >> It's a pretty benign build setup according to the README:
> >>
> >> git clone git://git.yoctoproject.org/poky
> >>
> >> cd poky
> >>
> >> git checkout dora-10.0.1 -b dora-10.0.1
> >>
> >> git clone git://git.openembedded.org/meta-openembedded
> >>
> >> cd meta-openembedded
> >>
> >> git checkout 6572316557e742c2dc93848e4d560242bf0c3995 -b my_branch
> >>
> >> cd ..
> >>
> >> git clone http://github.com/linux4sam/meta-atmel
> >>
> >> source oe-init-build-env /workspace/build-atmel
> >>
> >> modify local.conf:
> >>
> >> MACHINE ??=3D "at91sam9x5ek"
> >>
> >> PACKAGE_CLASSES ?=3D "package_ipk"
> >>
> >> modify bblayers.conf:
> >>
> >> BBLAYERS ?=3D " \
> >>
> >>     /opt/poky/meta-atmel \
> >>
> >>     /opt/poky/meta \
> >>
> >>     /opt/poky/meta-yocto \
> >>
> >>     /opt/poky/meta-yocto-bsp \
> >>
> >>     /opt/poky/meta-openembedded/meta-oe \
> >>
> >>     /opt/poky/meta-openembedded/meta-networking \
> >>
> >>     "
> >>
> >> bitbake core-image-minimal
> >>
> >> Setting this up, I get the following build configuration and error:
> >>
> >> /workspace/build-atmel$ bitbake core-image-minimal
> >>
> >> Loading cache: 100%
> >>
> |#########################################################
> ###########
> >> |#
> >> |#################|
> >> ETA:  00:00:00
> >>
> >> Loaded 1782 entries from dependency cache.
> >>
> >> NOTE: Resolving any missing task queue dependencies
> >>
> >> Build Configuration:
> >>
> >> BB_VERSION        =3D "1.20.0"
> >>
> >> BUILD_SYS         =3D "x86_64-linux"
> >>
> >> NATIVELSBSTRING   =3D "Ubuntu-12.04"
> >>
> >> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> >>
> >> MACHINE           =3D "at91sam9x5ek"
> >>
> >> DISTRO            =3D "poky"
> >>
> >> DISTRO_VERSION    =3D "1.5.1"
> >>
> >> TUNE_FEATURES     =3D "armv5 thumb dsp"
> >>
> >> TARGET_FPU        =3D "soft"
> >>
> >> meta-atmel        =3D "master:269066a8128d1e767deee64854a142e67451a5f2=
"
> >>
> >> meta
> >>
> >> meta-yocto
> >>
> >> meta-yocto-bsp    =3D "dora-
> 10.0.1:8e410e9e46e3335458a7747cdd32e05f5c19ccbb"
> >>
> >> meta-oe
> >>
> >> meta-networking   =3D
> "my_branch:6572316557e742c2dc93848e4d560242bf0c3995"
> >>
> >> NOTE: Preparing runqueue
> >>
> >> NOTE: Executing SetScene Tasks
> >>
> >> NOTE: Executing RunQueue Tasks
> >>
> >> ERROR: Function failed: do_compile (log file is located at
> >> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-
> gnueabi/linux
> >> -
> >> yocto-custom/3.10+AUTOINC+68f2c28207-r5/temp/log.do_compile.2291)
> >>
> >> ERROR: Logfile of failure stored in:
> >> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-
> gnueabi/linux
> >> -
> >> yocto-custom/3.10+AUTOINC+68f2c28207-r5/temp/log.do_compile.2291
> >>
> >> Log data follows:
> >>
> >> | DEBUG: Executing shell function do_compile
> >>
> >> | NOTE: make -j 2 zImage CC=3Darm-poky-linux-gnueabi-gcc
> >> -mno-thumb-interwork -marm LD=3Darm-poky-linux-gnueabi-ld.bfd
> >>
> >> |   GEN
> >> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-
> gnueabi/linux
> >> -
> >> yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux-at91sam9x5ek-
> standard-b
> >> u
> >> ild/Makefile
> >>
> >> |   CHK     include/generated/uapi/linux/version.h
> >>
> >> |   CHK     include/generated/utsrelease.h
> >>
> >> |   Using
> >> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-
> gnueabi/linux
> >> - yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux
> >> as source for kernel
> >>
> >> | make[3]: `include/generated/mach-types.h' is up to date.
> >>
> >> |   CC      scripts/mod/devicetable-offsets.s
> >>
> >> |   GEN     scripts/mod/devicetable-offsets.h
> >>
> >> |   HOSTCC  scripts/mod/file2alias.o
> >>
> >> |   CALL
> >> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-
> gnueabi/linux
> >> -
> >> yocto-custom/3.10+AUTOINC+68f2c28207-r5/linux/scripts/checksyscalls.s
> >> h
> >>
> >> |   HOSTLD  scripts/mod/modpost
> >>
> >> |   CHK     include/generated/compile.h
> >>
> >> |   LINK    vmlinux
> >>
> >> |   LD      vmlinux.o
> >>
> >> |   MODPOST vmlinux.o
> >>
> >> |   GEN     .version
> >>
> >> |   CHK     include/generated/compile.h
> >>
> >> |   UPD     include/generated/compile.h
> >>
> >> |   CC      init/version.o
> >>
> >> |   LD      init/built-in.o
> >>
> >> | arm-poky-linux-gnueabi-ld.bfd: no machine record defined
> >>
> >> | make[2]: *** [vmlinux] Error 1
> >>
> >> | make[1]: *** [sub-make] Error 2
> >>
> >> | make: *** [all] Error 2
> >>
> >> | ERROR: oe_runmake failed
> >>
> >> | WARNING: exit code 1 from a shell command.
> >>
> >> | ERROR: Function failed: do_compile (log file is located at
> >> /workspace/build-atmel/tmp/work/at91sam9x5ek-poky-linux-
> gnueabi/linux
> >> -
> >> yocto-custom/3.10+AUTOINC+68f2c28207-r5/temp/log.do_compile.2291)
> >>
> >> ERROR: Task 208
> >> (/opt/poky/meta-atmel/recipes-kernel/linux/linux-yocto-
> custom_3.10.bb
> >> ,
> >> do_compile) failed with exit code '1'
> >>
> >> NOTE: Tasks Summary: Attempted 793 tasks of which 785 didn't need to
> >> be rerun and 1 failed.
> >>
> >> Waiting for 0 running tasks to finish:
> >>
> >> Summary: 1 task failed:
> >>
> >>
> >> /opt/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.bb,
> >> do_compile
> >>
> >> Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
> >>
> >> Any thoughts on what might be missing from the README or my
> >> implementation of it to get this demo build working?
> >
> > Can you confirm that the final .config for the board has the machine
> definitions that you'd expect for the board ?
> >
> > Bruce
> >
> >>
> >> Thanks,
> >>
> >> Brian
> >>
> >>
> >>
> >
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

