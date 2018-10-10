Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADB1EE00A94; Wed, 10 Oct 2018 09:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.154.223 listed in list.dnswl.org]
Received: from 15pmail.ess.barracuda.com (15pmail.ess.barracuda.com
	[64.235.154.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EE11E003D9
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 09:33:48 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1401.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 10 Oct 2018 16:32:10 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 10 Oct 2018 09:31:05 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 10 Oct 2018 09:31:05 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] changing kernel config in Morty build
Thread-Index: AQHUWpOFhG/9utVvSUu/b9KkDUPU4qUPjkQggAG3AYD//5UF0IAAc21pgAcBnQCAAGQpUA==
Date: Wed, 10 Oct 2018 16:31:05 +0000
Message-ID: <9769f39d1f704fcd84d8e3ea4cfd7589@sakuraus.com>
References: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
	<16551d421c7747ab9ae52856a668d750@sakuraus.com>
	<a3fc06bf-e202-dec1-8618-f7f89e1c8a93@windriver.com>
	<7b74cef2003b44909e3033efa1d4305a@sakuraus.com>
	<772b7fca373e4a9085660b8a79a36673@sakuraus.com>
	<42ca53b6-4264-642a-c654-f34740d813e8@windriver.com>
In-Reply-To: <42ca53b6-4264-642a-c654-f34740d813e8@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1539189129-321457-5722-2524-1
X-BESS-VER: 2018.13-r1810050002
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.201453
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: changing kernel config in Morty build
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
X-List-Received-Date: Wed, 10 Oct 2018 16:33:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,
Thanks for all of your help in looking into this. I did get another respons=
e that detailed using an out of tree defconfig. They didn't know if it woul=
d work with Morty, they are using it with Sumo. I'll have to try it with Mo=
rty.
Thanks again,
Greg Wilson-Lindberg=A0=20
Principal Firmware Engineer | Sakura Finetek USA, Inc.=A0=20

> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Tuesday, October 09, 2018 08:16 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] changing kernel config in Morty build
>=20
> On 2018-10-05 7:26 PM, Greg Wilson-Lindberg wrote:
> > Hi Bruce,
> > I've been able to reproduce the problem in a more minimal environment.
> >
> > To build a basic Yocto Raspberry Pi environment I based my build on the
> instructions found here:
> > https://themeaningfulengineer.github.io/exploring-yocto-with-raspberry
> > pi/
> >
> > The steps that I actually executed are:
> >
> > git clone -b morty --single-branch git://git.yoctoproject.org/poky cd
> > poky/ git clone -b morty
> > http://git.yoctoproject.org/git/meta-raspberrypi
> > source oe-init-build-env rpi-build
> >
> > In rpi-build/conf/local.conf I changed the MACHINE assignment to "raspb=
errypi2"
> from "qemu86"
> >
> > In rpi-build/conf/bblayers.conf I added "  /home/gwilson/Qt/poky/meta-r=
aspberrypi
> \" to pick up the raspberry layer.
> >
> > At this point I ran:
> > bitbake rpi-hwup-image
> >
> > to verify that the environment was correct. The build finished with onl=
y a couple of
> warnings about checksum problems and using alternate mirrors.
> >
> > I then copied in my kernel scripts and added in the directory to the bb=
layers file.
> >
> > When I rebuilt with these changes I get the same warnings/errors about =
changing
> the kernel config that I get with my full build environment.
> >
> > I've attached my meta-test directory with the kernel configuration .bba=
ppend and
> .scc & .cfg files, and the final bblayers.conf & local.conf files.
>=20
> Thanks for the layers and cut & paste instructions. They helped a lot.
>=20
> .. even with that start, it took me a bit to figure things out.
>=20
> In the end, I can't actually figure out how to get the fragment working w=
ith the rpi
> kernel configuration routines as they stand in the morty timeframe.
>=20
> in recipes-kernel/linux/linux-rpi.inc, there's a do_configure_prepend rou=
tine who's
> first action is to clear ${B}/.config .. which is where the kernel-yocto =
bbclass would
> have put the merged config + fragment.
> (The defconfig is also a placeholder defconfig, I could work around that,=
 but in the
> end, it doesn't matter since that routine zeros out anything that has mer=
ged).
>=20
> So as I see it, you'll either need to carry your own defconfig, patch the=
 in-tree
> defconfig that is used, or write routines in your bbappend to modify the =
configuration
> directly. I admit to not looking to see if the techniques to do this are =
described
> anywhere, since I was just trying to sort out why the fragment wasn't bei=
ng properly
> applied.
>=20
> Sorry I couldn't be of more help.
>=20
> Cheers,
>=20
> Bruce
>=20
> >
> > Thank you for taking a look at this.
> >
> > Regards,
> >
> > Greg Wilson-Lindberg
> >
> >
> >
> > ----------------------------------------------------------------------
> > --
> > *From:* yocto-bounces@yoctoproject.org
> > <yocto-bounces@yoctoproject.org> on behalf of Greg Wilson-Lindberg
> > <GWilson@sakuraus.com>
> > *Sent:* Friday, October 5, 2018 9:23:52 AM
> > *To:* Bruce Ashfield; yocto@yoctoproject.org
> > *Subject:* Re: [yocto] changing kernel config in Morty build Hi Bruce,
> > I'll do my best to get something for you.
> > Thanks,
> >
> > Greg Wilson-Lindberg
> > Principal Firmware Engineer | Sakura Finetek USA, Inc.
> >
> > 1750 W 214th Street | Torrance, CA 90501 | U.S.A.
> > T: +1 310 783 5075
> > F: +1 310 618 6902 | E:=A0gwilson@sakuraus.com www.sakuraus.com
> > <http://www.sakuraus.com>
> >
> >
> >
> >
> >
> > Confidentiality Notice: This e-mail transmission may contain
> > confidential or legally privileged information that is intended only
> > for the individual or entity named in the e-mail address. If you are
> > not the intended recipient, you are hereby notified that any
> > disclosure, copying, distribution, or reliance upon the contents of
> > this e-mail is strictly prohibited. If you have received this e-mail
> > transmission in error, please reply to the sender, so that Sakura
> > Finetek USA, Inc. can arrange for proper delivery, and then please
> > delete the message from your inbox. Thank you.
> >
> >
> >
> >> -----Original Message-----
> >> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> >> Sent: Friday, October 05, 2018 08:46 AM
> >> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>;
> >> yocto@yoctoproject.org
> >> Subject: Re: [yocto] changing kernel config in Morty build
> >>
> >> On 2018-10-04 4:38 PM, Greg Wilson-Lindberg wrote:
> >> > Does anybody else have any idea about what is going on here?
> >> >
> >>
> >> I can't tell from the information provided.
> >>
> >> But if you can send me a set of layers to clone, and configure
> >> locally, I can figure it out.
> >>
> >> Cheers,
> >>
> >> Bruce
> >>
> >> > Yocto is seeing my request to change the kernel config, suggests
> >> > that the change is acceptable, but then doesn't make it.
> >> >
> >> > Thanks in advance for any insight,
> >> >
> >> > Greg
> >> >
> >> > **
> >> >
> >> > *From:*Greg Wilson-Lindberg
> >> > *Sent:* Tuesday, October 02, 2018 02:22 PM
> >> > *To:* yocto@yoctoproject.org
> >> > *Subject:* changing kernel config in Morty build
> >> >
> >> > I'm trying to change some kernel configuration flags in a
> >> > raspberrypi3=A0Morty build and I get warnings that it isn't working.
> >> >
> >> > Here is the build info and warnings:
> >> >
> >> > Build Configuration:
> >> >
> >> > BB_VERSION=A0 =A0 =A0 =A0 =3D "1.32.0"
> >> >
> >> > BUILD_SYS=A0 =A0 =A0 =A0 =A0=3D "x86_64-linux"
> >> >
> >> > NATIVELSBSTRING=A0 =A0=3D "universal"
> >> >
> >> > TARGET_SYS=A0 =A0 =A0 =A0 =3D "arm-poky-linux-gnueabi"
> >> >
> >> > MACHINE=A0 =A0 =A0 =A0 =A0 =A0=3D "raspberrypi3"
> >> >
> >> > DISTRO=A0 =A0 =A0 =A0 =A0 =A0 =3D "b2qt"
> >> >
> >> > DISTRO_VERSION=A0 =A0 =3D "2.2.4"
> >> >
> >> > TUNE_FEATURES=A0 =A0 =A0=3D "arm armv7ve vfp thumb neon vfpv4
> >> > callconvention-hard cortexa7"
> >> >
> >> > TARGET_FPU=A0 =A0 =A0 =A0 =3D "hard"
> >> >
> >> > SDKMACHINE=A0 =A0 =A0 =A0 =3D "x86_64"
> >> >
> >> > meta
> >> >
> >> > meta-poky=A0 =A0 =A0 =A0 =A0=3D "HEAD:df76669bdd70aa0d903c4211dde731=
221c7e756d"
> >> >
> >> > meta-raspberrypi=A0 =3D "HEAD:2a192261a914892019f4f428d7462bb3c585eb=
ac"
> >> >
> >> > meta-oe
> >> >
> >> > meta-python
> >> >
> >> > meta-networking
> >> >
> >> > meta-initramfs
> >> >
> >> > meta-multimedia=A0 =A0=3D "HEAD:b40116cf457b88a2db14b86fda9627fb34d5=
6ae6"
> >> >
> >> > meta-boot2qt
> >> >
> >> > meta-raspberrypi-extras =3D "<unknown>:<unknown>"
> >> >
> >> > meta-mingw=A0 =A0 =A0 =A0 =3D "HEAD:1c2e155111dce94423cc227ea69f7f50=
f316c78e"
> >> >
> >> > meta-qt5=A0 =A0 =A0 =A0 =A0 =3D "HEAD:49e9d9a73b5c6e3d6eab88dc000530=
5e85b1a62d"
> >> >
> >> > meta-sakura=A0 =A0 =A0 =A0=3D "<unknown>:<unknown>"
> >> >
> >> > Initialising tasks: 100%
> >> >
> >>
> |###################################################################
> >> ##
> >> >
> >>
> |###################################################################
> >> ##
> >> > |###|
> >> > Time: 0:00:00
> >> >
> >> > NOTE: Executing SetScene Tasks
> >> >
> >> > NOTE: Executing RunQueue Tasks
> >> >
> >> > WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0
> >> > do_kernel_configcheck: [kernel config]: specified values did not
> >> > make it into the kernel's final configuration:
> >> >
> >> > ---------- CONFIG_SND_SOC_MAX9768 -----------------
> >> >
> >> > Config: CONFIG_SND_SOC_MAX9768
> >> >
> >> > From:
> >> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/w
> >> > ork
> >> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> >> >
> >> > Requested value:=A0 CONFIG_SND_SOC_MAX9768=3Dy
> >> >
> >> > Actual value:
> >> >
> >> > Config 'SND_SOC_MAX9768' has the following conditionals:
> >> >
> >> > Dependency values are:
> >> >
> >> > ---------- CONFIG_MAX1363 -----------------
> >> >
> >> > Config: CONFIG_MAX1363
> >> >
> >> > From:
> >> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/w
> >> > ork
> >> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> >> >
> >> > Requested value:=A0 CONFIG_MAX1363=3Dm
> >> >
> >> > Actual value:=A0 =A0 =A0# CONFIG_MAX1363 is not set
> >> >
> >> > Config 'MAX1363' has the following conditionals:
> >> >
> >> >=A0 =A0 I2C (value: "y")
> >> >
> >> > Dependency values are:
> >> >
> >> >=A0 =A0 I2C [y]
> >> >
> >> > ---------- CONFIG_CAN_EMS_USB -----------------
> >> >
> >> > Config: CONFIG_CAN_EMS_USB
> >> >
> >> > From:
> >> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/w
> >> > ork
> >> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> >> >
> >> > Requested value:=A0 CONFIG_CAN_EMS_USB=3Dm
> >> >
> >> > Actual value:=A0 =A0 =A0# CONFIG_CAN_EMS_USB is not set
> >> >
> >> > Config 'CAN_EMS_USB' has the following conditionals:
> >> >
> >> >=A0 =A0 (none)
> >> >
> >> > Dependency values are:
> >> >
> >> > Here is my
> >> >
> >> > linux-raspberrypi_4.4.bbappend for the kernel:
> >> >
> >> > # Scribe additions to Kernel configuration
> >> >
> >> > FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/files:"
> >> >
> >> > FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/${PN}:"
> >> >
> >> > SRC_URI +=3D "file://Scribe.scc <file:///%5C%5CScribe.scc>"
> >> >
> >> > SRC_URI +=3D "file://mcp251x.c.patch <file:///%5C%5Cmcp251x.c.patch>=
"
> >> >
> >> > The Scribe.scc file:
> >> >
> >> > # Scribe additions to kernel configuration
> >> >
> >> > kconf hardware Scribe.cfg
> >> >
> >> > And the Scribe.cfg file:
> >> >
> >> > # Scribe additions to kernel configuration
> >> >
> >> > # Enable MAX9768
> >> >
> >> > #CONFIG_SOC_ALL_CODECS=3Dm
> >> >
> >> > #CONFIG_COMPILE_TEST=3Dy
> >> >
> >> > CONFIG_SND_SOC_MAX9768=3Dy
> >> >
> >> > # Enable MAX11606
> >> >
> >> > #IIO=3Dy
> >> >
> >> > CONFIG_MAX1363=3Dm
> >> >
> >> > # Enable EMS CPC-USB
> >> >
> >> > CONFIG_CAN_EMS_USB=3Dm
> >> >
> >> > Here is my directory tree:
> >> >
> >> > Qt-5.9.6
> >> >
> >> >=A0 =A0 =A0 =A0Yocto-mirror
> >> > # Yocto build mirror
> >> >
> >> >=A0 =A0 =A0 =A0Yocto-build-RPi3
> >> >#  Yocto build=A0root
> >> >
> >> >=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 build-raspberrypi
> >> >#  build directory
> >> >
> >> >=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sources
> >> >=A0 =A0# yocto sources
> >> >
> >> >=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0meta-sakura  # our=
 recipes
> >> >
> >> >=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0re=
cipes-kernel  # directory for
> >> >kernel changes
> >> >
> >> >=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0linux
> >> >=A0 =A0 =A0# directory that contains linux-raspberrypi_4.4.bbappend
> >> >
> >> >=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 files
> >> >=A0 =A0 =A0 =A0# directory that contains .scc & .cfg files
> >> >
> >> > As seen above none of the changes are accepted although there is
> >> > nothing that blocks any of them.
> >> >
> >> > Any help understanding this would be greatly appreciated.
> >> >
> >> > Regards,
> >> >
> >> > Greg Wilson-Lindberg
> >> >
> >> >
> >> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto


