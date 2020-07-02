Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.2493.1593679947426816245
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 01:52:28 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49yBgD6dZ7z5tlL;
	Thu,  2 Jul 2020 10:52:24 +0200 (CEST)
Date: Thu, 2 Jul 2020 10:52:23 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Pankaj Vinadrao Joshi <pankaj.vj@exaleapsemi.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] The following packages have unmet dependencies: packagegroup-core-x11-base : Depends: packagegroup-core-x11-xserver but it is not going to be installed #yocto
Message-ID: <20200702085223.slagu75hh6pkokjo@qschulz>
References: <7EEe.1593627720022564157.9Hlz@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <7EEe.1593627720022564157.9Hlz@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Pankaj,

On Wed, Jul 01, 2020 at 11:22:00AM -0700, Pankaj  Vinadrao Joshi wrote:
> Hi,
> i am trying to build core-image-sato and i am using PACKAGE_CLASSES =3D=
 "package_deb" but while building i am getting following error
> pankaj@exaleap-Inspiron-3584:~/Oe-Raspberrypi4$ bitbake core-image-sato
> Parsing recipes: 100% |################################################=
#########################################################################=
#############################################| Time: 0:01:56
> Parsing of 2279 .bb files complete (0 cached, 2279 parsed). 3439 target=
s, 195 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>=20
> Build Configuration:
> BB_VERSION=A0 =A0 =A0 =A0 =A0 =A0=3D "1.46.0"
> BUILD_SYS=A0 =A0 =A0 =A0 =A0 =A0 =3D "x86_64-linux"
> NATIVELSBSTRING=A0 =A0 =A0 =3D "ubuntu-18.04"
> TARGET_SYS=A0 =A0 =A0 =A0 =A0 =A0=3D "aarch64-oe-linux"
> MACHINE=A0 =A0 =A0 =A0 =A0 =A0 =A0 =3D "raspberrypi4-64"
> DISTRO=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=3D "Exaleap-arm-linux"
> DISTRO_VERSION=A0 =A0 =A0 =A0=3D "Exaleap-arm-linux-r1.0.0"
> TUNE_FEATURES=A0 =A0 =A0 =A0 =3D "aarch64 cortexa72 crc crypto"
> TARGET_FPU=A0 =A0 =A0 =A0 =A0 =A0=3D ""
> meta=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=3D "master:982b7f98b8423236cc98=
6346379b1bde3694f131"
> meta-oe
> meta-python
> meta-networking
> meta-multimedia
> meta-perl=A0 =A0 =A0 =A0 =A0 =A0 =3D "dunfell:e413c1ef621688e69bb7830bb=
3151ed23b30b73e"
> meta-raspberrypi=A0 =A0 =A0=3D "master:5ac6f013339b0b1ab2d71f9f6af48a18=
6e126c19"
> meta-pankaj=A0 =A0 =A0 =A0 =A0 =3D "<unknown>:<unknown>"
>=20
> Initialising tasks: 100% |#############################################=
#########################################################################=
#############################################| Time: 0:00:05
> Sstate summary: Wanted 270 Found 0 Missed 270 Current 1913 (0% match, 8=
7% complete)
> NOTE: Executing Tasks
> ERROR: core-image-sato-1.0-r0 do_rootfs: Unable to install packages. Co=
mmand '/home/pankaj/Oe-Raspberrypi4/tmp-glibc/work/raspberrypi4_64-oe-lin=
ux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/apt-get=A0 instal=
l --force-yes --allow-unauthenticated --no-remove apt bash bsdtar cmake d=
hcp-client dhcp-server dosfstools dpkg e2fsprogs git glibc-utils kernel-m=
odules localedef lsb-release mtd-utils-ubifs mtools openssh os-release pa=
ckagegroup-base-extended packagegroup-core-boot packagegroup-core-sdk pac=
kagegroup-core-ssh-openssh packagegroup-core-standalone-sdk-target packag=
egroup-core-tools-debug packagegroup-core-x11-base packagegroup-core-x11-=
sato parted pseudo psplash-raspberrypi python3-pip ruby run-postinsts uni=
code-ucd' returned 100:
> Reading package lists...
> Building dependency tree...
> Reading state information...
> Some packages could not be installed. This may mean that you have
> requested an impossible situation or if you are using the unstable
> distribution that some required packages have not yet been created
> or been moved out of Incoming.
> The following information may help to resolve the situation:
>=20
> The following packages have unmet dependencies:
> packagegroup-core-x11-base : Depends: packagegroup-core-x11-xserver but=
 it is not going to be installed

Missing x11 in DISTRO_FEATURES in your distro.
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphics=
/packagegroups/packagegroup-core-x11-xserver.bb?h=3Dmaster#n12

(I also maintain you shouldn't put a capital letter in your distro name,
 you'll encounter issues later).

Quentin
