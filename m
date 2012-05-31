Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A77DE013D4
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 06:50:11 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 May 2012 06:50:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="173211405"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by fmsmga002.fm.intel.com with ESMTP; 31 May 2012 06:50:11 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 31 May 2012 06:50:10 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.121]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.98]) with mapi id
	14.01.0355.002; Thu, 31 May 2012 06:50:10 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] task 240 of 4900 and task 1526 of 4900 failed When I
	followed "The Yocto Project Quick Start"
Thread-Index: AQHNPwpmtwHRjtGOX0S8ibbajNeAR5bkEiOA///YIzA=
Date: Thu, 31 May 2012 13:50:09 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379469FB414@ORSMSX101.amr.corp.intel.com>
References: <BAY158-W20600DF937B42CE9117DE9B90B0@phx.gbl>
	<4FC735E1.2030707@linux.intel.com>
In-Reply-To: <4FC735E1.2030707@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: task 240 of 4900 and task 1526 of 4900 failed When I followed "The Yocto Project Quick Start"
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
X-List-Received-Date: Thu, 31 May 2012 13:50:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

If you are running denzil, be sure to use the manual set from the website. =
 Quick Start is http://www.yoctoproject.org/docs/current/yocto-project-qs/y=
octo-project-qs.html.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Mihai Lindner
Sent: Thursday, May 31, 2012 2:12 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] task 240 of 4900 and task 1526 of 4900 failed When I f=
ollowed "The Yocto Project Quick Start"

On 05/31/2012 11:49 AM, fungjack wrote:
>=20
> Hello all!
> When I followed "The Yocto Project Quick Start" and ran bitbake -k core-i=
mage-sato, two tasks(240 and 1526) failed. My host is Ubuntu 10.04. Who can=
 give me some advices? Thanks!
>=20
> NOTE: Running task 240 of 4900 (ID: 586, /home/jack/work/poky-denzil-7.0/=
meta/recipes-devtools/perl/perl-native_5.14.2.bb, do_unpack)
> NOTE: Running task 1526 of 4900 (ID: 874, /home/jack/work/poky-denzil-7.0=
/meta/recipes-devtools/perl/perl_5.14.2.bb, do_unpack)
> NOTE: package perl-5.14.2-r6: task do_unpack: Started
> NOTE: package perl-native-5.14.2-r0: task do_unpack: Started
> ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/=
5.0/perl-5.14.2.tar.gz'. Unpack command PATH=3D"/home/jack/work/poky-denzil=
-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jack/work/poky=
-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denz=
il-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil-7=
.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-bu=
ild/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tmp/=
sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts/native-int=
ercept:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzil-=
7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/b=
in:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-own=
er -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz fa=
iled with return value 2
> ERROR: Logfile of failure stored in: /home/jack/work/poky-denzil-7.0-buil=
d/tmp/work/i686-linux/perl-native-5.14.2-r0/temp/log.do_unpack.15111
> Log data follows:
> | NOTE: Unpacking /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.=
14.2.tar.gz to /home/jack/work/poky-denzil-7.0-build/tmp/work/i686-linux/pe=
rl-native-5.14.2-r0/
> |=20
> | gzip: stdin: invalid compressed data--crc error
> | tar: Child returned status 1
> | tar: Error is not recoverable: exiting now
> | ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/sr=
c/5.0/perl-5.14.2.tar.gz'. Unpack command PATH=3D"/home/jack/work/poky-denz=
il-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-linux:/home/jack/work/po=
ky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-de=
nzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/jack/work/poky-denzil=
-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/work/poky-denzil-7.0-=
build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky-denzil-7.0-build/tm=
p/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-7.0/scripts/native-i=
ntercept:/home/jack/work/poky-denzil-7.0/scripts:/home/jack/work/poky-denzi=
l-7.0/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:=
/bin:/usr/games:/home/jack/work/poky-denzil-7.0/scripts" tar xz --no-same-o=
wner -f /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz =
failed with return value 2
> NOTE: package perl-native-5.14.2-r0: task do_unpack: Failed
> ERROR: Task 586 (/home/jack/work/poky-denzil-7.0/meta/recipes-devtools/pe=
rl/perl-native_5.14.2.bb, do_unpack) failed with exit code '1'
> ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/src/=
5.0/perl-5.14.2.tar.gz'. Unpack command PATH=3D"/home/jack/work/poky-denzil=
-7.0-build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jack/work/poky=
-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-poky-linux:/home/ja=
ck/work/poky-denzil-7.0-build/tmp/sysroots/atom-pc/usr/bin/crossscripts:/ho=
me/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home/j=
ack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack/w=
ork/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/poky=
-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzil-=
7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:/u=
sr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/poky-=
denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil-7=
.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2
> ERROR: Logfile of failure stored in: /home/jack/work/poky-denzil-7.0-buil=
d/tmp/work/core2-poky-linux/perl-5.14.2-r6/temp/log.do_unpack.15114
> Log data follows:
> | NOTE: Unpacking /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.=
14.2.tar.gz to /home/jack/work/poky-denzil-7.0-build/tmp/work/core2-poky-li=
nux/perl-5.14.2-r6/
> |=20
> | gzip: stdin: invalid compressed data--crc error
> | tar: Child returned status 1
> | tar: Error is not recoverable: exiting now
> | ERROR: Function failed: Unpack failure for URL: 'http://www.cpan.org/sr=
c/5.0/perl-5.14.2.tar.gz'. Unpack command PATH=3D"/home/jack/work/poky-denz=
il-7.0-build/tmp/sysroots/i686-linux/usr/bin/perl-native:/home/jack/work/po=
ky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin/core2-poky-linux:/home/=
jack/work/poky-denzil-7.0-build/tmp/sysroots/atom-pc/usr/bin/crossscripts:/=
home/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/sbin:/home=
/jack/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/bin:/home/jack=
/work/poky-denzil-7.0-build/tmp/sysroots/i686-linux/sbin:/home/jack/work/po=
ky-denzil-7.0-build/tmp/sysroots/i686-linux//bin:/home/jack/work/poky-denzi=
l-7.0/scripts:/home/jack/work/poky-denzil-7.0/bitbake/bin/:/usr/local/sbin:=
/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jack/work/pok=
y-denzil-7.0/scripts" tar xz --no-same-owner -f /home/jack/work/poky-denzil=
-7.0-build/downloads/perl-5.14.2.tar.gz failed with return value 2
> NOTE: package perl-5.14.2-r6: task do_unpack: Failed
> ERROR: Task 874 (/home/jack/work/poky-denzil-7.0/meta/recipes-devtools/pe=
rl/perl_5.14.2.bb, do_unpack) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3307 tasks of which 3305 didn't need to be=
 rerun and 2 failed.
>=20
> Summary: 2 tasks failed:
>   /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl-native_=
5.14.2.bb, do_unpack
>   /home/jack/work/poky-denzil-7.0/meta/recipes-devtools/perl/perl_5.14.2.=
bb, do_unpack
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>=20
>=20
>=20
>  		 	   		 =20
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hello,

The archive seems to be corrupted somehow, gzip: stdin: invalid compressed =
data--crc error
Remove /home/jack/work/poky-denzil-7.0-build/downloads/perl-5.14.2.tar.gz a=
nd try again.
You may also see /home/jack/work/poky-denzil-7.0-build/tmp/work/i686-linux/=
perl-native-5.14.2-r0/temp/log.do_unpack.15111 for further info on this.

--=20
Mihai Lindner
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

