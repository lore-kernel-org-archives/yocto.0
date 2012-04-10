Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9339BE00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 22:08:14 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Apr 2012 22:08:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87199311"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Apr 2012 22:08:14 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 Apr 2012 22:08:13 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.125]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Tue, 10 Apr 2012 13:08:11 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Andy Gikling <agikling@lasx.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: ADT Manual v1.1.1 Issues - 2 of 3
Thread-Index: Ac0Wz1koplbsHi2cToWclAaRl+9bngACEgkA
Date: Tue, 10 Apr 2012 05:08:10 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD33620@SHSMSX102.ccr.corp.intel.com>
References: <23FC35CD1508674EBB20455EB700B1B4BCE870ACEE@EXMBX05.mmeprod.cbeyond>
In-Reply-To: <23FC35CD1508674EBB20455EB700B1B4BCE870ACEE@EXMBX05.mmeprod.cbeyond>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: ADT Manual v1.1.1 Issues - 2 of 3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Apr 2012 05:08:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Andy,

Could you please attach both the config.log file and the environment file u=
nder the directory /opt/poky/1.1.1/ ?

Andy Gikling wrote on 2012-04-10:
> All,
>=20
>=20
>=20
> I've had very mixed results during the three or four times I've run throu=
gh the ADT manual from scratch.  There seems to be a real
> problem I keep encountering that I'd like to describe to the community wi=
th the hope that someone understands why I keep getting stuck.
> I'm running a 32bit Ubuntu 11.10 VM and trying to build for a x86_64 suga=
rbay target machine.
>=20
>=20
>=20
> The issue is that no matter which "route" I take to setup my toolchain (b=
e it via the installer script or a premade toolchain I've
> downloaded) I always get "configure: error: C compiler cannot create exec=
utables" when I try to use Project->Reconfigure Project after
> starting a new HelloWorld example in Eclipse.  The ADT manual explicitly =
steps the user through to this point but using the Reconfigure
> Project feature (that puts together your Makefile for you) never complete=
s.  When looking closer at the config.log I always find something
> that looks like this:
>=20
>=20
>=20
> configure:3285: $? =3D 0
>=20
> configure:3274: x86_64-poky-linux-gcc -v >&5
>=20
> Using built-in specs.
>=20
> COLLECT_GCC=3Dx86_64-poky-linux-gcc
>=20
> COLLECT_LTO_WRAPPER=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/lib=
ex
> ec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.3/lto-wra pper
>=20
> Target: x86_64-poky-linux
>=20
> Configured with:
> /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-x86-64/build/bu
> ild/tmp/work-shared/gcc-4.6.2+svnr181430-r17/gcc-4_6-branc h/configure
> --build=3Dx86_64-linux --host=3Di686-pokysdk-linux
> --target=3Dx86_64-poky-linux
> --prefix=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr
> --exec_prefix=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr
> --bindir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/bin/x86_64-pok=
y-
> linux
> --sbindir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/bin/x86_64-po=
ky
> -linux
> --libexecdir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/libexec/x8=
6_
> 64-poky-linux
> --datadir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/share
> --sysconfdir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/etc
> --sharedstatedir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/com
> --localstatedir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/var
> --libdir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/lib/x86_64-pok=
y-
> linux
> --includedir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/include
> --oldincludedir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/include
> --infodir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/share/info
> --mandir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/share/man
> --disable-silent-rules
> --with-libtool-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slav=
e/
> nightly-x86-64/build/build/tmp/sysroots/i686-pokysdk-linux-nativ esdk
> --with-gnu-ld --enable-shared --enable-languages=3Dc,c++
> --enable-threads=3Dposix --disable-multilib --enable-c99
> --enable-long-long --enable-symvers=3Dgnu --enable-libstdcxx-pch
> --program-prefix=3Dx86_64-poky-linux- --enable-target-optspace
> --enable-lto --enable-libssp --disable-bootstrap --disable-libgomp
> --disable-libmudflap --enable-cheaders=3Dc_global
> --with-local-prefix=3D/opt/poky/1.1.1/sysroots/x86_64-poky-linux/usr
> --with-gxx-include-dir=3D/usr/include/c++
> --with-build-time-tools=3D/srv/home/pokybuild/yocto-autobuilder/yocto-sla=
ve
> /nightly-x86-64/build/build/tmp/sysroots/x86_64-linux/usr/x86_
> 64-poky-linux/bin
> --with-sysroot=3D/opt/poky/1.1.1/sysroots/x86_64-poky-linux
> --with-build-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/=
ni
> ghtly-x86-64/build/build/tmp/sysroots/qemux86-64
> --disable-libunwind-exceptions --disable-libssp --disable-libgomp
> --disable-libmudflap
> --with-mpfr=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-x=
86
> -64/build/build/tmp/sysroots/i686-pokysdk-linux-nativesdk
> --with-mpc=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-x8=
6-
> 64/build/build/tmp/sysroots/i686-pokysdk-linux-nativesdk --enable-nls
> --enable-__cxa_atexit
>=20
> Thread model: posix
>=20
> gcc version 4.6.3 20111117 (prerelease) (GCC)
>=20
> configure:3285: $? =3D 0
>=20
> configure:3274: x86_64-poky-linux-gcc -V >&5
>=20
> x86_64-poky-linux-gcc: error: unrecognized option '-V'
>=20
> x86_64-poky-linux-gcc: fatal error: no input files
>=20
> compilation terminated.
>=20
> configure:3285: $? =3D 1
>=20
> configure:3274: x86_64-poky-linux-gcc -qversion >&5
>=20
> x86_64-poky-linux-gcc: error: unrecognized option '-qversion'
>=20
> x86_64-poky-linux-gcc: fatal error: no input files
>=20
> compilation terminated.
>=20
>=20
>=20
> I've tried to figure out what this error means but haven't had any luck. =
 People have made some suggestions that I've tried and they
> haven't worked either.  So, I've been told to file a bug about this but I=
 wasn't sure which category it goes under and I've never filed a
> bug in the Yocto project before.  I'll try to get to it this week.
>=20
>=20
>=20
> In the meantime, if anyone has tried to get through the ADT manual and is=
 cross compiling I'd love to hear about how it went for you.
>=20
>=20
>=20
> Thanks,
>=20
>=20
>=20
> ~Andy Gikling
>=20
> LasX Industries Inc.


