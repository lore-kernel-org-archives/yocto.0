Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D01C2E01409
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 12:48:28 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Wed, 12 Jun 2013 15:48:28 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Wed, 12 Jun 2013 15:47:11 -0400
Thread-Topic: [yocto] Problems fetching branch for linux-yocto-custom
Thread-Index: Ac5npTbhwSY82vWLT8iB+15+MnWIXwAAB5/A
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4013B910EC27E@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC22E@pluto.melinkcorp.local>
	<CADkTA4PkMUc8rzBWewZWwygE=XcXLBAQwHFEXcUPZX6mqzmADA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE4013B910EC264@pluto.melinkcorp.local>
	<51B8CF87.3070402@windriver.com>
In-Reply-To: <51B8CF87.3070402@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 06F17FAE0048D806F180FB
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems fetching branch for linux-yocto-custom
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
X-List-Received-Date: Wed, 12 Jun 2013 19:48:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Wednesday, June 12, 2013 3:44 PM
> To: Bryan Evenson
> Cc: Bruce Ashfield; yocto@yoctoproject.org
> Subject: Re: [yocto] Problems fetching branch for linux-yocto-custom
>=20
> On 13-06-12 03:37 PM, Bryan Evenson wrote:
> >
> >
> >> -----Original Message-----
> >> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
> >> Sent: Wednesday, June 12, 2013 3:15 PM
> >> To: Bryan Evenson
> >> Cc: yocto@yoctoproject.org
> >> Subject: Re: [yocto] Problems fetching branch for linux-yocto-custom
> >>
> >> On Wed, Jun 12, 2013 at 3:10 PM, Bryan Evenson
> >> <bevenson@melinkcorp.com> wrote:
> >>> All,
> >>>
> >>> I have a custom linux recipe that I would like to fetch the head of
> >>> a
> >> specific branch on a Git repository.  During the build it always
> >> fetches the master branch, not the branch I am specifying.  I've
> >> tried adding every relavant flag to the SRC_URI that I can think of
> >> and it still fetches and builds the master branch.  Any ideas on
> what
> >> I am doing wrong?
> >>>
> >>
> >> What release are you using ?
> >>
> >> Have you tried setting KBRANCH ?
> >
> > I didn't know about the KBRANCH variable.  That sure helped.  I
> changed my recipe as shown below, and it is switching branches and
> checking out the specified commit.
> >
>=20
> Hmmm. I swear it had been documented, that's a gap. I'll double check
> and get things updated if it is missing.

No, KBRANCH is documented; I found it in the mega-manual after the fact.  I=
t's just a variable I hadn't used yet so I didn't know to look for it.  No =
amount of documentation can fix that problem.

-Bryan

>=20
> Bruce
>=20
> > Thanks!
> > Bryan
> >
> >>
> >> Cheers,
> >>
> >> Bruce
> >>
> >>> Here is my build environment details:
> >>>
> >>> Build Configuration:
> >>> BB_VERSION        =3D "1.16.0"
> >>> TARGET_ARCH       =3D "arm"
> >>> TARGET_OS         =3D "linux-gnueabi"
> >>> MACHINE           =3D "at91sam9x5ek"
> >>> DISTRO            =3D "poky"
> >>> DISTRO_VERSION    =3D "1.3.2"
> >>> TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
> >>> TARGET_FPU        =3D "soft"
> >>> meta-atmel        =3D
> "master:a3b649c46c6f48cea4c95d35028e950d8d5b3a13"
> >>> meta
> >>> meta-yocto
> >>> meta-yocto-bsp    =3D
> "danny:c3505828f267ca68aaf454355466f54772545a22"
> >>>
> >>> -----------------------------------------
> >>>
> >>> Here is my kernel recipe (Removed the boilerplate comments at top
> of
> >> linux-yocto-custom recipe to reduce clutter):
> >>>
> >>> inherit kernel
> >>> require recipes-kernel/linux/linux-yocto.inc
> >>>
> > # Added KBRANCH spec
> > KBRANCH =3D "linux-3.9-at91"
> >>> # Override SRC_URI in a bbappend file to point at a different
> source
> >> #
> >>> tree if you do not want to build from Linus' tree.
> >>> SRC_URI =3D "git://github.com/linux4sam/linux-at91.git;branch=3Dlinux=
-
> >> 3.9-
> >>
> at91;tag=3Ddcdf169e24c0cb6d7dc69e0a09d2395934e95075;protocol=3Dgit;nochec
> >> ko
> >> ut=3D1"
> >
> > # Changed SRC_URI to following
> > SRC_URI =3D "git://github.com/linux4sam/linux-
> at91.git;branch=3D${KBRANCH};protocol=3Dgit;nocheckout=3D1"
> >
> >>> SRC_URI +=3D "file://${MACHINE}/defconfig"
> >>>
> >>> LINUX_VERSION ?=3D "3.9.0"
> >>> LINUX_VERSION_EXTENSION ?=3D "-custom"
> >>>
> >>> # Override SRCREV to point to a different commit in a bbappend file
> >> to
> >>> # build a different release of the Linux kernel.
> >>> # tag: v3.4 76e10d158efb6d4516018846f60c2ab5501900bc
> >>> # tag: linux-3.9-at91 as of 2013-06-12,
> >>> dcdf169e24c0cb6d7dc69e0a09d2395934e95075
> >>> SRCREV=3D"dcdf169e24c0cb6d7dc69e0a09d2395934e95075"
> >>> PV =3D "${LINUX_VERSION}+${SRCREV}"
> >>>
> >>> PR =3D "r1"
> >>>
> >>> # Override COMPATIBLE_MACHINE to include your machine in a bbappend
> >>> # file. Leaving it empty here ensures an early explicit build
> failure.
> >>> COMPATIBLE_MACHINE =3D "(sama5d3xek|at91sam9x5ek)"
> >>>
> >>> ---------------------------------------------
> >>>
> >>> And here is my bbappend:
> >>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >>> COMPATIBLE_MACHINE_sama5d3xek =3D "at91sama5d3xek"
> >>> COMPATIBLE_MACHINE_at91sam9x5ek =3D "at91sam9x5ek"
> >>>
> >>> Any insight would be appreciated.
> >>>
> >>> Thanks,
> >>> Bryan
> >>>
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >>
> >>
> >> --
> >> "Thou shalt not follow the NULL pointer, for chaos and madness await
> >> thee at its end"
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >


