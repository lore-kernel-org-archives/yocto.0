Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF9ADE00A0A; Fri,  5 Oct 2018 09:24:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.150.236 listed in list.dnswl.org]
Received: from 15pmail.ess.barracuda.com (15pmail.ess.barracuda.com
	[64.235.150.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEEC5E0053F
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2018 09:24:11 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx28.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Fri, 05 Oct 2018 16:24:08 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 5 Oct 2018 09:23:52 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 5 Oct 2018 09:23:52 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] changing kernel config in Morty build
Thread-Index: AQHUWpOFhG/9utVvSUu/b9KkDUPU4qUPjkQggAG3AYD//5UF0A==
Date: Fri, 5 Oct 2018 16:23:52 +0000
Message-ID: <7b74cef2003b44909e3033efa1d4305a@sakuraus.com>
References: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
	<16551d421c7747ab9ae52856a668d750@sakuraus.com>
	<a3fc06bf-e202-dec1-8618-f7f89e1c8a93@windriver.com>
In-Reply-To: <a3fc06bf-e202-dec1-8618-f7f89e1c8a93@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1538756632-637138-3480-37674-3
X-BESS-VER: 2018.13-r1810050002
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.201103
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
X-List-Received-Date: Fri, 05 Oct 2018 16:24:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,
I'll do my best to get something for you.
Thanks,

Greg Wilson-Lindberg=A0=20
Principal Firmware Engineer | Sakura Finetek USA, Inc.=A0=20
=A0
1750 W 214th Street | Torrance, CA 90501 | U.S.A.=A0=20
T: +1 310 783 5075=A0=20
F: +1 310 618 6902 | E:=A0gwilson@sakuraus.com   =A0=A0=20
www.sakuraus.com=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=20
=A0




Confidentiality Notice: This e-mail transmission may contain confidential o=
r legally privileged information that is intended only for the individual o=
r entity named in the e-mail address. If you are not the intended recipient=
, you are hereby notified that any disclosure, copying, distribution, or re=
liance upon the contents of this e-mail is strictly prohibited. If you have=
 received this e-mail transmission in error, please reply to the sender, so=
 that Sakura Finetek USA, Inc. can arrange for proper delivery, and then pl=
ease delete the message from your inbox. Thank you.



> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Friday, October 05, 2018 08:46 AM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] changing kernel config in Morty build
>=20
> On 2018-10-04 4:38 PM, Greg Wilson-Lindberg wrote:
> > Does anybody else have any idea about what is going on here?
> >
>=20
> I can't tell from the information provided.
>=20
> But if you can send me a set of layers to clone, and configure locally, I=
 can figure it
> out.
>=20
> Cheers,
>=20
> Bruce
>=20
> > Yocto is seeing my request to change the kernel config, suggests that
> > the change is acceptable, but then doesn't make it.
> >
> > Thanks in advance for any insight,
> >
> > Greg
> >
> > **
> >
> > *From:*Greg Wilson-Lindberg
> > *Sent:* Tuesday, October 02, 2018 02:22 PM
> > *To:* yocto@yoctoproject.org
> > *Subject:* changing kernel config in Morty build
> >
> > I'm trying to change some kernel configuration flags in a
> > raspberrypi3=A0Morty build and I get warnings that it isn't working.
> >
> > Here is the build info and warnings:
> >
> > Build Configuration:
> >
> > BB_VERSION=A0 =A0 =A0 =A0 =3D "1.32.0"
> >
> > BUILD_SYS=A0 =A0 =A0 =A0 =A0=3D "x86_64-linux"
> >
> > NATIVELSBSTRING=A0 =A0=3D "universal"
> >
> > TARGET_SYS=A0 =A0 =A0 =A0 =3D "arm-poky-linux-gnueabi"
> >
> > MACHINE=A0 =A0 =A0 =A0 =A0 =A0=3D "raspberrypi3"
> >
> > DISTRO=A0 =A0 =A0 =A0 =A0 =A0 =3D "b2qt"
> >
> > DISTRO_VERSION=A0 =A0 =3D "2.2.4"
> >
> > TUNE_FEATURES=A0 =A0 =A0=3D "arm armv7ve vfp thumb neon vfpv4
> > callconvention-hard cortexa7"
> >
> > TARGET_FPU=A0 =A0 =A0 =A0 =3D "hard"
> >
> > SDKMACHINE=A0 =A0 =A0 =A0 =3D "x86_64"
> >
> > meta
> >
> > meta-poky=A0 =A0 =A0 =A0 =A0=3D "HEAD:df76669bdd70aa0d903c4211dde731221=
c7e756d"
> >
> > meta-raspberrypi=A0 =3D "HEAD:2a192261a914892019f4f428d7462bb3c585ebac"
> >
> > meta-oe
> >
> > meta-python
> >
> > meta-networking
> >
> > meta-initramfs
> >
> > meta-multimedia=A0 =A0=3D "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae=
6"
> >
> > meta-boot2qt
> >
> > meta-raspberrypi-extras =3D "<unknown>:<unknown>"
> >
> > meta-mingw=A0 =A0 =A0 =A0 =3D "HEAD:1c2e155111dce94423cc227ea69f7f50f31=
6c78e"
> >
> > meta-qt5=A0 =A0 =A0 =A0 =A0 =3D "HEAD:49e9d9a73b5c6e3d6eab88dc0005305e8=
5b1a62d"
> >
> > meta-sakura=A0 =A0 =A0 =A0=3D "<unknown>:<unknown>"
> >
> > Initialising tasks: 100%
> >
> |###################################################################
> ##
> >
> |###################################################################
> ##
> > |###|
> > Time: 0:00:00
> >
> > NOTE: Executing SetScene Tasks
> >
> > NOTE: Executing RunQueue Tasks
> >
> > WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0
> > do_kernel_configcheck: [kernel config]: specified values did not make
> > it into the kernel's final configuration:
> >
> > ---------- CONFIG_SND_SOC_MAX9768 -----------------
> >
> > Config: CONFIG_SND_SOC_MAX9768
> >
> > From:
> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> >
> > Requested value:=A0 CONFIG_SND_SOC_MAX9768=3Dy
> >
> > Actual value:
> >
> > Config 'SND_SOC_MAX9768' has the following conditionals:
> >
> > Dependency values are:
> >
> > ---------- CONFIG_MAX1363 -----------------
> >
> > Config: CONFIG_MAX1363
> >
> > From:
> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> >
> > Requested value:=A0 CONFIG_MAX1363=3Dm
> >
> > Actual value:=A0 =A0 =A0# CONFIG_MAX1363 is not set
> >
> > Config 'MAX1363' has the following conditionals:
> >
> >  =A0 I2C (value: "y")
> >
> > Dependency values are:
> >
> >  =A0 I2C [y]
> >
> > ---------- CONFIG_CAN_EMS_USB -----------------
> >
> > Config: CONFIG_CAN_EMS_USB
> >
> > From:
> > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
> > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> >
> > Requested value:=A0 CONFIG_CAN_EMS_USB=3Dm
> >
> > Actual value:=A0 =A0 =A0# CONFIG_CAN_EMS_USB is not set
> >
> > Config 'CAN_EMS_USB' has the following conditionals:
> >
> >  =A0 (none)
> >
> > Dependency values are:
> >
> > Here is my
> >
> > linux-raspberrypi_4.4.bbappend for the kernel:
> >
> > # Scribe additions to Kernel configuration
> >
> > FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/files:"
> >
> > FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/${PN}:"
> >
> > SRC_URI +=3D "file://Scribe.scc <file:///%5C%5CScribe.scc>"
> >
> > SRC_URI +=3D "file://mcp251x.c.patch <file:///%5C%5Cmcp251x.c.patch>"
> >
> > The Scribe.scc file:
> >
> > # Scribe additions to kernel configuration
> >
> > kconf hardware Scribe.cfg
> >
> > And the Scribe.cfg file:
> >
> > # Scribe additions to kernel configuration
> >
> > # Enable MAX9768
> >
> > #CONFIG_SOC_ALL_CODECS=3Dm
> >
> > #CONFIG_COMPILE_TEST=3Dy
> >
> > CONFIG_SND_SOC_MAX9768=3Dy
> >
> > # Enable MAX11606
> >
> > #IIO=3Dy
> >
> > CONFIG_MAX1363=3Dm
> >
> > # Enable EMS CPC-USB
> >
> > CONFIG_CAN_EMS_USB=3Dm
> >
> > Here is my directory tree:
> >
> > Qt-5.9.6
> >
> >  =A0 =A0 =A0Yocto-mirror
> > # Yocto build mirror
> >
> >  =A0 =A0 =A0Yocto-build-RPi3=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 #
> > Yocto build=A0root
> >
> >  =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 build-raspberrypi=A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0#
> > build directory
> >
> >  =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 sources
> >  =A0# yocto sources
> >
> >  =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0meta-sakura
> > # our recipes
> >
> >  =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0recipes=
-kernel
> > # directory for kernel changes
> >
> >  =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0linux
> >  =A0 =A0# directory that contains linux-raspberrypi_4.4.bbappend
> >
> >  =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 files
> >  =A0 =A0 =A0# directory that contains .scc & .cfg files
> >
> > As seen above none of the changes are accepted although there is
> > nothing that blocks any of them.
> >
> > Any help understanding this would be greatly appreciated.
> >
> > Regards,
> >
> > Greg Wilson-Lindberg
> >
> >
> >


