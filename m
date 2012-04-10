Return-Path: <agikling@lasx.com>
Received: from mx.cbeyond.com (mx.cbeyond.com [66.180.96.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 962C5E013A8
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 06:50:27 -0700 (PDT)
X-SBRS: 4.5
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: imx01dal.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AucDAKU5hE9CtGAbkWdsb2JhbABDuVkBAQEBFBIUJ4IJAQEFJxMPPAYBCBEDAQEBHwk5FAkJAQQBEggMh3q3PYsdhGFjBKklgTg
X-IronPort-AV: E=Sophos;i="4.75,399,1330923600"; d="scan'208";a="393474146"
Received: from exchange.cbeyondonline.net (HELO hub401dal.mmeprod.cbeyond)
	([66.180.96.27])
	by mx.cbeyond.com with ESMTP; 10 Apr 2012 09:50:26 -0400
Received: from EXMBX05.mmeprod.cbeyond ([192.168.13.77]) by
	hub401dal.mmeprod.cbeyond ([192.168.13.99]) with mapi; Tue, 10 Apr 2012
	09:50:26 -0400
From: Andy Gikling <agikling@lasx.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 10 Apr 2012 09:50:24 -0400
Thread-Topic: ADT Manual v1.1.1 Issues - 2 of 3 (Resolved)
Thread-Index: Ac0XINq03ScP5lQVQrmjAuaeat5fzg==
Message-ID: <23FC35CD1508674EBB20455EB700B1B4BCE870AD1B@EXMBX05.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: ADT Manual v1.1.1 Issues - 2 of 3 (Resolved)
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
X-List-Received-Date: Tue, 10 Apr 2012 13:50:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Lianhao,

Thank you for the insight.  I felt like this wasn't a bug!  I wasn't ever s=
ure about where you are supposed to point for your sysroot.  Looking back t=
hrough the ADT manual I see now what it's getting at.  Obviously it makes s=
ense now.  Ahhh growing pains...

Thanks for your time - it works.=20

~Andy Gikling

-----Original Message-----
From: Lu, Lianhao [mailto:lianhao.lu@intel.com]=20
Sent: Tuesday, April 10, 2012 8:35 AM
To: Andy Gikling; yocto@yoctoproject.org
Subject: RE: ADT Manual v1.1.1 Issues - 2 of 3

Andy,

I checked the config.log. I think you might set the incorrect sysroot direc=
tory in Eclipse. The "/opt/poky/1.1.1/sysroots/" is incorrect, in your case=
 it should be /opt/poky/1.1.1/sysroots/x86_64-poky-linux/.=20

Please select your helloworld project, then select " Project -> Change Yoct=
o Project Settings". Make sure you've set the correct sysroot directory. Th=
en select "Project -> Reconfigure Project" to regenerate the configure scip=
rt.

I also recommend you pointing your sysroot location to where you've extract=
ed core-image-sato-sdk. The sysroot under /opt/poky/1.1.1/sysroots/ x86_64-=
poky-linux/ contains only very limited header files and libraries.

-Lianhao

Andy Gikling wrote on 2012-04-10:
> Lianhao,
>=20
> Attached is the config.log and the environment setup file.
>=20
> I hope this gives us some insight.  Thank you for your time.
>=20
> ~Andy Gikling
>=20
> -----Original Message-----
> From: Lu, Lianhao [mailto:lianhao.lu@intel.com]
> Sent: Tuesday, April 10, 2012 12:08 AM
> To: Andy Gikling; yocto@yoctoproject.org
> Subject: RE: ADT Manual v1.1.1 Issues - 2 of 3
>=20
> Andy,
>=20
> Could you please attach both the config.log file and the environment file=
 under the directory /opt/poky/1.1.1/ ?
>=20
> Andy Gikling wrote on 2012-04-10:
>> All,
>>=20
>>=20
>>=20
>> I've had very mixed results during the three or four times I've run=20
>> through the ADT manual from scratch.  There seems to be a real=20
>> problem I keep encountering that I'd like to describe to the=20
>> community with the hope that someone understands why I keep getting=20
>> stuck. I'm running a 32bit Ubuntu 11.10 VM and trying to build for a=20
>> x86_64 sugarbay target machine.
>>=20
>>=20
>>=20
>> The issue is that no matter which "route" I take to setup my=20
>> toolchain (be it via the installer script or a premade toolchain I've=20
>> downloaded) I always get "configure: error: C compiler cannot create exe=
cutables"
>> when I try to use Project->Reconfigure Project after starting a new=20
>> HelloWorld example in Eclipse.  The ADT manual explicitly steps the=20
>> user through to this point but using the Reconfigure Project feature=20
>> (that puts together your Makefile for you) never completes.  When=20
>> looking closer at the config.log I always find something that looks=20
>> like this:
>>=20
>>=20
>>=20
>> configure:3285: $? =3D 0
>>=20
>> configure:3274: x86_64-poky-linux-gcc -v >&5
>>=20
>> Using built-in specs.
>>=20
>> COLLECT_GCC=3Dx86_64-poky-linux-gcc
>>=20
>> COLLECT_LTO_WRAPPER=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/l
>> i bex ec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.3/lto-wra pper
>>=20
>> Target: x86_64-poky-linux
>>=20
>> Configured with:
>> /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-x86-64/buil
>> d /bu ild/tmp/work-shared/gcc-4.6.2+svnr181430-r17/gcc-4_6-branc
>> h/configure --build=3Dx86_64-linux --host=3Di686-pokysdk-linux=20
>> --target=3Dx86_64-poky-linux=20
>> --prefix=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr
>> --exec_prefix=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr
>> --bindir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/bin/x86_64-p
>> o
>> ky-
>> linux
>> --sbindir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/bin/x86_64-
>> p
>> oky
>> -linux
>> --libexecdir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/libexec/
>> x
>> 86_
>> 64-poky-linux
>> --datadir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/share
>> --sysconfdir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/etc
>> --sharedstatedir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/com
>> --localstatedir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/var
>> --libdir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/lib/x86_64-p
>> o
>> ky-
>> linux
>> --includedir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/include
>> --oldincludedir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/inclu
>> d e=20
>> --infodir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/share/info
>> --mandir=3D/opt/poky/1.1.1/sysroots/i686-pokysdk-linux/usr/share/man
>> --disable-silent-rules
>> --with-libtool-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-sl
>> a ve/=20
>> nightly-x86-64/build/build/tmp/sysroots/i686-pokysdk-linux-nativ
>> esdk --with-gnu-ld --enable-shared --enable-languages=3Dc,c++=20
>> --enable-threads=3Dposix --disable-multilib --enable-c99=20
>> --enable-long-long --enable-symvers=3Dgnu --enable-libstdcxx-pch
>> --program-prefix=3Dx86_64-poky-linux- --enable-target-optspace=20
>> --enable-lto --enable-libssp --disable-bootstrap --disable-libgomp=20
>> --disable-libmudflap --enable-cheaders=3Dc_global=20
>> --with-local-prefix=3D/opt/poky/1.1.1/sysroots/x86_64-poky-linux/usr
>> --with-gxx-include-dir=3D/usr/include/c++
>> --with-build-time-tools=3D/srv/home/pokybuild/yocto-autobuilder/yocto-s
>> l ave /nightly-x86-64/build/build/tmp/sysroots/x86_64-linux/usr/x86_
>> 64-poky-linux/bin
>> --with-sysroot=3D/opt/poky/1.1.1/sysroots/x86_64-poky-linux
>> --with-build-sysroot=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slav
>> e
>> /ni
>> ghtly-x86-64/build/build/tmp/sysroots/qemux86-64
>> --disable-libunwind-exceptions --disable-libssp --disable-libgomp=20
>> --disable-libmudflap
>> --with-mpfr=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly
>> -
>> x86 -64/build/build/tmp/sysroots/i686-pokysdk-linux-nativesdk
>> --with-mpc=3D/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-
>> x
>> 86- 64/build/build/tmp/sysroots/i686-pokysdk-linux-nativesdk
>> --enable-nls --enable-__cxa_atexit
>>=20
>> Thread model: posix
>>=20
>> gcc version 4.6.3 20111117 (prerelease) (GCC)
>>=20
>> configure:3285: $? =3D 0
>>=20
>> configure:3274: x86_64-poky-linux-gcc -V >&5
>>=20
>> x86_64-poky-linux-gcc: error: unrecognized option '-V'
>>=20
>> x86_64-poky-linux-gcc: fatal error: no input files
>>=20
>> compilation terminated.
>>=20
>> configure:3285: $? =3D 1
>>=20
>> configure:3274: x86_64-poky-linux-gcc -qversion >&5
>>=20
>> x86_64-poky-linux-gcc: error: unrecognized option '-qversion'
>>=20
>> x86_64-poky-linux-gcc: fatal error: no input files
>>=20
>> compilation terminated.
>>=20
>>=20
>>=20
>> I've tried to figure out what this error means but haven't had any=20
>> luck.  People have made some suggestions that I've tried and they=20
>> haven't worked either.  So, I've been told to file a bug about this=20
>> but I wasn't sure which category it goes under and I've never filed a=20
>> bug in the Yocto project before.  I'll try to get to it this week.
>>=20
>>=20
>>=20
>> In the meantime, if anyone has tried to get through the ADT manual and i=
s cross compiling I'd love to hear about how it went for you.
>>=20
>>=20
>>=20
>> Thanks,
>>=20
>>=20
>>=20
>> ~Andy Gikling
>>=20
>> LasX Industries Inc.
>=20
>=20
> -----
> No virus found in this message.
> Checked by AVG - www.avg.com
> Version: 2012.0.1913 / Virus Database: 2411/4925 - Release Date:=20
> 04/09/12

Best Regards,
Lianhao


-----
No virus found in this message.
Checked by AVG - www.avg.com
Version: 2012.0.1913 / Virus Database: 2411/4925 - Release Date: 04/09/12

