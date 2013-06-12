Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 803B5E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 12:12:10 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Wed, 12 Jun 2013 15:12:09 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 12 Jun 2013 15:10:52 -0400
Thread-Topic: Problems fetching branch for linux-yocto-custom
Thread-Index: Ac5noI5IBXLqhQWJRrOeoAeVDsK/+g==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4013B910EC22E@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 06D03F440048D806D04091
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Problems fetching branch for linux-yocto-custom
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
X-List-Received-Date: Wed, 12 Jun 2013 19:12:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I have a custom linux recipe that I would like to fetch the head of a speci=
fic branch on a Git repository.  During the build it always fetches the mas=
ter branch, not the branch I am specifying.  I've tried adding every relava=
nt flag to the SRC_URI that I can think of and it still fetches and builds =
the master branch.  Any ideas on what I am doing wrong?

Here is my build environment details:

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "at91sam9x5ek"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3.2"
TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
TARGET_FPU        =3D "soft"
meta-atmel        =3D "master:a3b649c46c6f48cea4c95d35028e950d8d5b3a13"
meta             =20
meta-yocto       =20
meta-yocto-bsp    =3D "danny:c3505828f267ca68aaf454355466f54772545a22"

-----------------------------------------

Here is my kernel recipe (Removed the boilerplate comments at top of linux-=
yocto-custom recipe to reduce clutter):

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

# Override SRC_URI in a bbappend file to point at a different source
# tree if you do not want to build from Linus' tree.
SRC_URI =3D "git://github.com/linux4sam/linux-at91.git;branch=3Dlinux-3.9-a=
t91;tag=3Ddcdf169e24c0cb6d7dc69e0a09d2395934e95075;protocol=3Dgit;nocheckou=
t=3D1"
SRC_URI +=3D "file://${MACHINE}/defconfig"

LINUX_VERSION ?=3D "3.9.0"
LINUX_VERSION_EXTENSION ?=3D "-custom"

# Override SRCREV to point to a different commit in a bbappend file to
# build a different release of the Linux kernel.
# tag: v3.4 76e10d158efb6d4516018846f60c2ab5501900bc
# tag: linux-3.9-at91 as of 2013-06-12, dcdf169e24c0cb6d7dc69e0a09d2395934e=
95075
SRCREV=3D"dcdf169e24c0cb6d7dc69e0a09d2395934e95075"
PV =3D "${LINUX_VERSION}+${SRCREV}"

PR =3D "r1"

# Override COMPATIBLE_MACHINE to include your machine in a bbappend
# file. Leaving it empty here ensures an early explicit build failure.
COMPATIBLE_MACHINE =3D "(sama5d3xek|at91sam9x5ek)"

---------------------------------------------

And here is my bbappend:
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
COMPATIBLE_MACHINE_sama5d3xek =3D "at91sama5d3xek"
COMPATIBLE_MACHINE_at91sam9x5ek =3D "at91sam9x5ek"

Any insight would be appreciated.

Thanks,
Bryan


