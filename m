Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60257E00723
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 21:47:29 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Apr 2012 21:47:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="127757736"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by azsmga001.ch.intel.com with ESMTP; 05 Apr 2012 21:47:28 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 5 Apr 2012 21:47:28 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.125]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Fri, 6 Apr 2012 12:47:27 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Andy Gikling <agikling@lasx.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Eclipse-ADT-build-error (Lu, Lianhao)
Thread-Index: Ac0TnLmIRn3JasTGTneScP8NO0bZyQAEtjmw
Date: Fri, 6 Apr 2012 04:47:26 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD2F0AE@SHSMSX102.ccr.corp.intel.com>
References: <23FC35CD1508674EBB20455EB700B1B4BCE870A93D@EXMBX05.mmeprod.cbeyond>
In-Reply-To: <23FC35CD1508674EBB20455EB700B1B4BCE870A93D@EXMBX05.mmeprod.cbeyond>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: Eclipse-ADT-build-error (Lu, Lianhao)
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
X-List-Received-Date: Fri, 06 Apr 2012 04:47:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Andy Gikling wrote on 2012-04-06:
> Lianhao,
>=20
>=20
>=20
> I've looked into this more deeply and I'm pretty sure I've followed the d=
irections in the ADT manual correctly as I've gotten this to work
> before in  ADT v1.1.  I'm having the same problem Lu seems to be having. =
 To answer your questions:
>=20
>=20
>=20
> 1. Host OS? - Ubuntu 11.10 - 32bit VM
>=20
> 2. Which version of eclipse?  3.7.2
>=20
> 3. Which version of Yocto eclipse plugin? 1.2.0.2x - I just tried to get =
it as per the manual but the link on the ADT manual for the plugin is
> broken.  I was able to use the update feature from within Ecplise - this =
brought me from 1.1 to 1.2.0.2x
>=20
> 4. Which image do you use as sysroot? core-image-sato or core-image-sato-=
sdk? - Core-image-minimal
>=20
> 5. Which version of metadata do you use to build the image? Sugarbay - is=
 that what you're looking for?
>=20
> 6. How do you install the toolchain? Using adt-installer or extracting
> meta-toolchain tarball? If using meta-toolchain tarball, which version
> do you use? - used the premade tarball from:
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/toolchain/i6
> 86/poky-eglibc-i686-arm-toolchain-gmae-1.1.1.tar.bz2
> <http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/toolchain/i
> 686/poky-eglibc-i686-arm-toolchain-gmae-1.1.1.tar.bz2>   - once
> extracted, in Ecplise, I point at /opt/poky/1.1.1 for my Toolchain Root
> and /opt/poky/1.1.1/sysroots/ for my Sysroot Location.
>=20
You should have sysroot location pointed at /opt/poky/1.1.1/sysroots/arm*-p=
oky-linux/.
>=20
> Following the ADT manual closely, I've sourced the ADT env vars with $sou=
rce /opt/poky/1.1.1/environment-setup-x86_64-poky-linux
>=20
>=20
>=20
> Now, I've opened a new C Hello World template project and use Project -> =
Reconfigure Project.  Unfortunately this fails.  The console
> reads "> configure: error: C compiler cannot create executables" as Lu ha=
s seen.  All the other Eclipse requirements from the ADT
> manual have been installed as well.
>=20
>=20
>=20
> The config.log shows this snippet as the culprit:
>=20
> ...
>=20
> Thread model: posix
>=20
> gcc version 4.6.1 20110627 (prerelease) (GCC)
>=20
> configure:2413: $? =3D 0
>=20
> configure:2402: x86_64-poky-linux-g++ -V >&5
>=20
> x86_64-poky-linux-g++: error: unrecognized option '-V'
>=20
> x86_64-poky-linux-g++: fatal error: no input files
>=20
> compilation terminated.
>=20
> configure:2413: $? =3D 1
>=20
> configure:2402: x86_64-poky-linux-g++ -qversion >&5
>=20
> x86_64-poky-linux-g++: error: unrecognized option '-qversion'
>=20
> x86_64-poky-linux-g++: fatal error: no input files
>=20
> compilation terminated.
>=20
> configure:2413: $? =3D 1
>=20
> configure:2433: checking whether the C++ compiler works
>=20
> ...
>=20
>=20
>=20
> So interestingly, I went ahead and tried to run autogen.sh directly from =
the terminal with "sh autogen.sh" and this also gives me the same
> error: "configure: error: C compiler cannot create executables"
>=20
>=20
>=20
> However, when I run this with sudo in the terminal it works.  I can then =
call "sudo ./configure" from the terminal and that also works.
> Now I have a Makefile in my src directory as expected.  Unfortunately, th=
is project still doesn't build in Eclipse.  I keep getting "no rule
> for make target 'all' "

In terminal, you should do the followings to cross compile. Forgetting $CON=
FIGURE_FLAGS would bring you into native build, not cross build.
1. source source /opt/poky/1.1.1/environment-setup-x86_64-poky-linux
2. sh autogen.sh $CONFIGURE_FLAGS
3. make;=09
>=20
>=20
>=20
> I've done all of the above again, fresh, after calling "chmod -R 777
> /home/userName/workspace" so it might not be a permissions problem.
>=20
>=20
>=20
> I've run through these ADT steps in the 1.1 version of the ADT manual wit=
hout any problems.  What changed?  Do I submit a bug?
>=20
>=20
>=20
> Regards,
>=20
>=20
>=20
> ~Andy Gikling
>=20
> LasX Industries Inc.
>=20
> agikling@lasx.com
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>

Best Regards,
Lianhao



