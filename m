Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.12536.1594220230252753657
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jul 2020 07:57:16 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4B22TH56LKz5tl9;
	Wed,  8 Jul 2020 16:57:07 +0200 (CEST)
Date: Wed, 8 Jul 2020 16:57:06 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Pankaj Vinadrao Joshi <pankaj.vj@exaleapsemi.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] ERROR: iso-codes-4.4-r0
Message-ID: <20200708145706.ql7gj4uec7yyeqxg@qschulz>
References: <9C9o.1594219950238454277.qCPQ@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <9C9o.1594219950238454277.qCPQ@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Pankaj,

On Wed, Jul 08, 2020 at 07:52:30AM -0700, Pankaj  Vinadrao Joshi wrote:
> I am trying to build yocto image for RPI4 but i am getting following er=
ror
>=20
> pankaj@exaleap-Inspiron-3584:~/raspberrypi4_image$ bitbake core-image-s=
ato
> Parsing recipes: 100% |################################################=
#########################################################################=
#############################################| Time: 0:09:59
> Parsing of 2198 .bb files complete (0 cached, 2198 parsed). 3282 target=
s, 147 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>=20
> Build Configuration:
> BB_VERSION=A0 =A0 =A0 =A0 =A0 =A0=3D "1.46.0"
> BUILD_SYS=A0 =A0 =A0 =A0 =A0 =A0 =3D "x86_64-linux"
> NATIVELSBSTRING=A0 =A0 =A0 =3D "universal"
> TARGET_SYS=A0 =A0 =A0 =A0 =A0 =A0=3D "arm-poky-linux-gnueabi"
> MACHINE=A0 =A0 =A0 =A0 =A0 =A0 =A0 =3D "raspberrypi4"
> DISTRO=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"
> DISTRO_VERSION=A0 =A0 =A0 =A0=3D "3.1"
> TUNE_FEATURES=A0 =A0 =A0 =A0 =3D "arm vfp cortexa7 neon vfpv4 thumb cal=
lconvention-hard"
> TARGET_FPU=A0 =A0 =A0 =A0 =A0 =A0=3D "hard"
> meta
> meta-poky
> meta-yocto-bsp=A0 =A0 =A0 =A0=3D "dunfell:9c8049068406532c3dd5d8906c595=
218b0fefd40"
> meta-oe
> meta-python
> meta-networking
> meta-multimedia=A0 =A0 =A0 =3D "dunfell:e413c1ef621688e69bb7830bb3151ed=
23b30b73e"
> meta-raspberrypi=A0 =A0 =A0=3D "master:5ac6f013339b0b1ab2d71f9f6af48a18=
6e126c19"
>=20
> Initialising tasks: 100% |#############################################=
#########################################################################=
#############################################| Time: 0:00:18
> Sstate summary: Wanted 1395 Found 0 Missed 1395 Current 1738 (0% match,=
 55% complete)
> NOTE: Executing Tasks
> WARNING: iso-codes-4.4-r0 do_fetch: Failed to fetch URL git://salsa.deb=
ian.org/iso-codes-team/iso-codes.git;protocol=3Dhttp, attempting MIRRORS =
if available
> ERROR: iso-codes-4.4-r0 do_fetch: Fetcher failure: Unable to find revis=
ion 38edb926592954b87eb527124da0ec68d2a748f3 in branch master even from u=
pstream
> ERROR: iso-codes-4.4-r0 do_fetch: Fetcher failure for URL: 'git://salsa=
.debian.org/iso-codes-team/iso-codes.git;protocol=3Dhttp'. Unable to fetc=
h URL from any source.
> ERROR: Logfile of failure stored in: /home/pankaj/raspberrypi4_image/tm=
p/work/all-poky-linux/iso-codes/4.4-r0/temp/log.do_fetch.24501
> ERROR: Task (/home/pankaj/Yocto-practice/poky/meta/recipes-support/iso-=
codes/iso-codes_4.4.bb:do_fetch) failed with exit code '1'
>=20
> can someone help me how i can resolve this error?

Update your dunfell branch (should be at commit
			    c253fd28ad26b4996666b0794dfee1d59c14e3ca)

Quentin
