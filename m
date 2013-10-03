Return-Path: <wparkermackenzie@live.com>
Received: from blu0-omc3-s10.blu0.hotmail.com (blu0-omc3-s10.blu0.hotmail.com
	[65.55.116.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15A31E0166A
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 13:08:59 -0700 (PDT)
Received: from BLU169-W91 ([65.55.116.72]) by blu0-omc3-s10.blu0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 3 Oct 2013 13:08:58 -0700
X-TMN: [PUXNA6k1bXT1icVNCYvVteL9V8SG0J/s]
X-Originating-Email: [wparkermackenzie@live.com]
Message-ID: <BLU169-W9127A348CABC5098CC9ED0B2170@phx.gbl>
From: Parker Mackenzie <wparkermackenzie@live.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 3 Oct 2013 16:08:58 -0400
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 03 Oct 2013 20:08:58.0857 (UTC)
	FILETIME=[654C6D90:01CEC074]
Subject: Cross Compile Kernel Modules
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
X-List-Received-Date: Thu, 03 Oct 2013 20:09:00 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have been researching a way to build loadable kernel modules outside of Y=
octo for a while. I was excited to find a presentation from the Yocto Devel=
oper's Day 2013 which implied I code do this by adding the following line t=
o my local.conf:=0A=
IMAGE_INSTALL_append =3D " kernel_dev"=0A=
=0A=
However=2C when I ran bitbake for my beagleboard target I get the following=
 error. Any help in understanding what is wrong and how to achieve my goal =
would be most helpful.=0A=
=0A=
Kind Regards=2C=0A=
Parker Mackenzie=0A=
=0A=
=0A=
=0A=
[parker@jasper build]$ bitbake core-image-minimal=0A=
Parsing recipes: 100% |#########################################| Time: 00:=
03:55=0A=
Parsing of 814 .bb files complete (0 cached=2C 814 parsed). 1121 targets=2C=
 43 skipped=2C 0 masked=2C 0 errors.=0A=
=0A=
Build Configuration:=0A=
BB_VERSION =A0 =A0 =A0 =A0=3D "1.18.0"=0A=
BUILD_SYS =A0 =A0 =A0 =A0 =3D "x86_64-linux"=0A=
NATIVELSBSTRING =A0 =3D "Fedora-17"=0A=
TARGET_SYS =A0 =A0 =A0 =A0=3D "arm-poky-linux-gnueabi"=0A=
MACHINE =A0 =A0 =A0 =A0 =A0 =3D "beagleboard"=0A=
DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"=0A=
DISTRO_VERSION =A0 =A0=3D "1.4.2"=0A=
TUNE_FEATURES =A0 =A0 =3D "armv7a vfp neon"=0A=
TARGET_FPU =A0 =A0 =A0 =A0=3D "vfp-neon"=0A=
meta =A0 =A0 =A0 =A0 =A0 =A0 =A0=0A=
meta-yocto =A0 =A0 =A0 =A0=0A=
meta-yocto-bsp =A0 =A0=3D "<unknown>:<unknown>"=0A=
=0A=
NOTE: Resolving any missing task queue dependencies=0A=
ERROR: Nothing RPROVIDES 'kernel_dev' (but /home/parker/Projects/beagleboar=
d/yocto/poky-dylan-9.0.2/meta/recipes-core/images/core-image-minimal.bb RDE=
PENDS on or otherwise requires it)=0A=
NOTE: Runtime target 'kernel_dev' is unbuildable=2C removing...=0A=
Missing or unbuildable dependency chain was: ['kernel_dev']=0A=
ERROR: Required build target 'core-image-minimal' has no buildable provider=
s.=0A=
Missing or unbuildable dependency chain was: ['core-image-minimal'=2C 'kern=
el_dev']=0A=
=0A=
Summary: There were 2 ERROR messages shown=2C returning a non-zero exit cod=
e. 		 	   		  =

