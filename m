Return-Path: <jani.uusi-rantala@nokia.com>
Received: from mgw-da02.nokia.com (smtp.nokia.com [147.243.128.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F45FE011B6
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 01:32:22 -0700 (PDT)
Received: from vaebh101.NOE.Nokia.com (vaebh101.europe.nokia.com
	[10.160.244.22])
	by mgw-da02.nokia.com (Switch-3.4.4/Switch-3.4.3) with ESMTP id
	p7C8WNS0022115; Fri, 12 Aug 2011 11:32:28 +0300
Received: from smtp.mgd.nokia.com ([65.54.30.6]) by vaebh101.NOE.Nokia.com
	over TLS secured channel with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 12 Aug 2011 11:32:17 +0300
Received: from 008-AM1MMR1-006.mgdnok.nokia.com (65.54.30.61) by
	NOK-am1MHUB-02.mgdnok.nokia.com (65.54.30.6) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 12 Aug 2011 10:32:17 +0200
Received: from 008-AM1MPN1-013.mgdnok.nokia.com ([169.254.3.177]) by
	008-AM1MMR1-006.mgdnok.nokia.com ([65.54.30.61]) with mapi id
	14.01.0323.002; Fri, 12 Aug 2011 10:32:17 +0200
From: <jani.uusi-rantala@nokia.com>
To: <andre@bitwigglers.org>, <yocto@yoctoproject.org>
Thread-Topic: [yocto] glib-2.0-native build fails on bernard
Thread-Index: AQHMWMnRgrCXiNoxXkiIgMafkUFeVpUY4wVu
Date: Fri, 12 Aug 2011 08:32:17 +0000
Message-ID: <B497E783C723AE4386DDEA96AF1D2B989EED6E@008-AM1MPN1-013.mgdnok.nokia.com>
References: <20110812082637.GA22860@localhost.localdomain>
In-Reply-To: <20110812082637.GA22860@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.178.239]
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Aug 2011 08:32:17.0799 (UTC)
	FILETIME=[587AE970:01CC58CA]
X-Nokia-AV: Clean
Subject: Re: glib-2.0-native build fails on bernard
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
X-List-Received-Date: Fri, 12 Aug 2011 08:32:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I had the same issue on 64-bit fedora R15. This patch fixed it for me:=0A=
=0A=
http://patchwork.openembedded.org/patch/8233/=0A=
=0A=
- Jani Uusi-Rantala=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of ext Andre Haupt [andre@bitwigglers.org]=0A=
Sent: Friday, August 12, 2011 11:26=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] glib-2.0-native build fails on bernard=0A=
=0A=
Hi all,=0A=
=0A=
Bitbake glib-2.0-native for the qemux86 target on poky bernard fails=0A=
with:=0A=
=0A=
octo-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib=0A=
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_SLICE_ALLOC'=0A=
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_REALLOC'=0A=
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_SLICE_FREE'=0A=
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_ALLOC'=0A=
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_FREE'=0A=
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_QUARK_NEW'=0A=
| collect2: ld returned 1 exit status=0A=
| make[4]: *** [gtester] Error 1=0A=
| make[4]: Leaving directory=0A=
`/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/work/x86_64-linux/glib-2=
.0-native-1_2.26.1-r0/glib-2.26.1/glib'=0A=
| make[3]: *** [all-recursive] Error 1=0A=
| make[3]: Leaving directory=0A=
`/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/work/x86_64-linux/glib-2=
.0-native-1_2.26.1-r0/glib-2.26.1/glib'=0A=
| make[2]: *** [all] Error 2=0A=
| make[2]: Leaving directory=0A=
`/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/work/x86_64-linux/glib-2=
.0-native-1_2.26.1-r0/glib-2.26.1/glib'=0A=
| make[1]: *** [all-recursive] Error 1=0A=
| make[1]: Leaving directory=0A=
`/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/work/x86_64-linux/glib-2=
.0-native-1_2.26.1-r0/glib-2.26.1'=0A=
| make: *** [all] Error 2=0A=
| FATAL: oe_runmake failed=0A=
| ERROR: Function 'do_compile' failed (see=0A=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/work/x86_64-linux/glib-2.=
0-native-1_2.26.1-r0/temp/log.do_compile.20434=0A=
for further information)=0A=
NOTE: package glib-2.0-native-1_2.26.1-r0: task do_compile: Failed=0A=
ERROR: Task 8=0A=
(virtual:native:/home/ahaupt/yocto-git/meta/recipes-core/glib-2.0/glib-2.0_=
2.26.1.bb,=0A=
do_compile) failed with exit code '1'=0A=
=0A=
This is on a freshly set up Fedora 15 x86-64 build host. I am using the=0A=
bernard branch of git.yoctoproject.org/poky.git.=0A=
=0A=
What do i miss here?=0A=
=0A=
cheers,=0A=
=0A=
Andre=0A=

