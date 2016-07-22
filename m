Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40335E00EA2; Thu, 21 Jul 2016 21:01:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0051.outbound.protection.outlook.com [104.47.33.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9BFAE00E88
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 21:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=EfDbAO2daYrch/4X4y25YLsLBwuc38F4hLSjhOCRavo=;
	b=AviiAt+vlFf/NjUxUAtCHk3bSkJh/aFwaXbKTEKaaETZ0/0lCif1tvdj2Dvoqx6kxOm43771NwwqNIdNwSReZQ35ck546TPGnj87QrXsL4hM4maLzTZbgSpcTtmtPoJA6EVTQPZSvQ9kNe2h7QnFYYhmLES5N+P0QVuCfqPPueU=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1595.prod.exchangelabs.com (10.163.139.139) with Microsoft
	SMTP Server (TLS) id 15.1.539.14; Fri, 22 Jul 2016 04:01:52 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0544.017; Fri, 22 Jul 2016 04:01:52 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: autotool __init_array_end not found
Thread-Index: AQHR482PDGaqzThgRUCSunk7S+G7tw==
Date: Fri, 22 Jul 2016 04:01:51 +0000
Message-ID: <CY1PR0101MB159437FBA234CD6D4596E099D70A0@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [118.238.252.194]
x-ms-office365-filtering-correlation-id: 41ed5344-6a3f-4092-2edf-08d3b1e4e9e2
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1595;
	6:q6FrzzmTP8XT/4aqnoCdgqNr1rQ7xnD7URlIOTO/KkinQ3p8il4ah5nCXqpGsDSyFZYjUPk+AiQOC52rIKO4lyskm6iDYGJagT4oHGvTwm2ex1gKRrQik+c47oJ8BIsQ8j/nwK6ZhheBd6IrbOc6YIkqIt9/eVCHdQE3yE5nU9zwEHb13cj0OQ1Z+e/xjdnqWvvNMeN+LXCMrKzmzRDkDTE7fRSIh6uMTqjl7P4CKH6UsJgh36/lykNGReleIDKp54TjCQYcpIWJQnUtMY60/BHoVPEBl6KyOfYrhzRu6Tw=;
	5:/2RA1MGdXk7D/dqEWjFSl5YfcJ7tfNO70CGfWmMQ1dZhz7XwUSCAsxYnt4OXYE/KFDyZu0RNs0LzG+2emMChKhNde9OSohK7lK2P9XWtTBa2xbwdMYKqQehPUx9aUQFxj1hMJPsU3QhrJdyaP7v+vQ==;
	24:R8KkFAgZ7Cu2tyyYJBalrj3P4apJlF0/FnXnxh+a1q/awT7UCqoLs1cXXtF0zW4b4w5HUD9jAou3bgBBxC1nn8l2djXXM7QnfucGYtxQRCY=;
	7:u0vqarwpSdH+tf7A1Of41QcFwdTSD65KxcRb02v+naDgBi4obOuT1kOcF2nzIValz/LzY1k+JFpQEhiWpuG+7i/j8cw+9fEkjL06eklwy/WZM1K7WZba9cHzh7sLokyEpKO+kulfJYIaBKT3326oNX5UNjPDJPk/q8iFJtDhILnLn2kgSpX6rI+2YL7kGRPL+rEmXvOi4Ex36AyRADtedrgVjP/Cu5q6v2SQj82vdQ9DGx8NlKxu6kA7qO8SRqr4
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1595;
x-microsoft-antispam-prvs: <CY1PR0101MB15952E2F2E969B8AB62B2F4DD70A0@CY1PR0101MB1595.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:CY1PR0101MB1595; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1595; 
x-forefront-prvs: 0011612A55
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(54094003)(189002)(189998001)(54356999)(87936001)(50986999)(16236675004)(586003)(10400500002)(3846002)(102836003)(33656002)(2900100001)(122556002)(86362001)(19625215002)(11100500001)(101416001)(450100001)(110136002)(107886002)(6116002)(97736004)(2906002)(105586002)(5002640100001)(8936002)(74316002)(5640700001)(106356001)(2501003)(66066001)(81156014)(19627405001)(106116001)(9686002)(81166006)(3280700002)(19580395003)(8676002)(68736007)(1730700003)(7736002)(5003600100003)(92566002)(229853001)(77096005)(7846002)(3660700001)(2351001)(7696003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1595;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2016 04:01:51.9031 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1595
Subject: autotool __init_array_end not found
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
X-List-Received-Date: Fri, 22 Jul 2016 04:01:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB159437FBA234CD6D4596E099D70A0CY1PR0101MB1594_"

--_000_CY1PR0101MB159437FBA234CD6D4596E099D70A0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto.

I am now trying to build autotool based (inherit autotool) recipe on Yocto =
2.0 based environent.
Howerver, I am seeng following error.
I wonder if this is a known problem and you already have workaround?

It says __init_array_end/start is not found which is referred in libc_nonsh=
ared.a(elf-init.oS).
I googled and learned that this can happen if parameters are not set proper=
ly to g++ when building shared library, and in fact, if I remove '-lc' from=
 the final linker command line, the build error is gone.

>-lm -lc -lgcc_s -lgcc =3D> NG
>-lm -lgcc_s -lgcc =3D> OK

The problem is, these liker parameters are set by the configure script into=
 libtool script and so far I could not find easy configurable option to exp=
licity remove '-lc' from here.

I think configure recognizes that '-lc' is not necessary to build shared li=
brary (through 'build_libtool_need_lc', etc. test), but it takes these from=
 somewhere (from its tests or its default template?) and embedding to linke=
r command parameters.

This error did not happen with Yocto 1.8 based build (where the same recipe=
 could built w/o break).
So, it can be toolchain issue (c library difference, autotool difference, e=
tc.) or libc quirk, maybe fixed problem in recent versions, or specific to =
my cross-environment, but I have not yet figured out handy workaround.

I am trying here with protobuf package, butI am not yet sure if this happen=
s with all of the autotool based packages.

=3D=3D=3D=3D
| arm-poky-linux-gnueabi-libtool: link: arm-poky-linux-gnueabi-g++
-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a15
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter  -fPIC
-DPIC -shared -nostdlib
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/Scrt1.o
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/crti.o
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm-poky-linux-=
gnueabi/5.2.0/crtbeginS.o
 google/protobuf/stubs/.libs/atomicops_internals_x86_gcc.o
google/protobuf/stubs/.libs/atomicops_internals_x86_msvc.o
[...]
google/protobuf/io/.libs/zero_copy_stream_impl.o
google/protobuf/compiler/.libs/importer.o
google/protobuf/compiler/.libs/parser.o   -lpthread -lz
-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/lib/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0
-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/lib
-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm-poky-linu=
x-gnueabi/5.2.0
-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libstdc++.so
-lm -lc -lgcc_s -lgcc
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm-poky-linux-=
gnueabi/5.2.0/crtendS.o
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/crtn.o
-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a15
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter -pthread
-O2 -g -fstack-protector-all -Wl,-O1 -Wl,--hash-style=3Dgnu
-Wl,--as-needed -Wl,-z -Wl,relro -Wl,-z -Wl,now   -pthread -Wl,-soname
-Wl,libprotobuf.so.10 -o .libs/libprotobuf.so.10.0.0
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libc_nonshare=
d.a(elf-init.oS):
In function `__libc_csu_init':
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-=
gnueabi/glibc/2.22-r0/git/csu/elf-init.c:89:
undefined reference to `__init_array_end'
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-=
gnueabi/glibc/2.22-r0/git/csu/elf-init.c:89:
undefined reference to `__init_array_start'
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm=
-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:
.libs/libprotobuf-lite.so.10.0.0: hidden symbol `__init_array_end'
isn't defined
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm=
-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:
final link failed: Bad value
| collect2: error: ld returned 1 exit status
| Makefile:1492: recipe for target 'libprotobuf-lite.la' failed
| make[3]: *** [libprotobuf-lite.la] Error 1
| make[3]: *** Waiting for unfinished jobs....
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libc_nonshare=
d.a(elf-init.oS):
In function `__libc_csu_init':
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-=
gnueabi/glibc/2.22-r0/git/csu/elf-init.c:89:
undefined reference to `__init_array_end'
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-=
gnueabi/glibc/2.22-r0/git/csu/elf-init.c:89:
undefined reference to `__init_array_start'
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm=
-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:
.libs/libprotobuf.so.10.0.0: hidden symbol `__init_array_end' isn't
defined
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm=
-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:
final link failed: Bad value
| collect2: error: ld returned 1 exit status
=3D=3D=3D=3D


--_000_CY1PR0101MB159437FBA234CD6D4596E099D70A0CY1PR0101MB1594_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p></p>
<div>Hello Yocto.<br>
<br>
I am now trying to build autotool based (inherit autotool) recipe on Yocto =
2.0 based environent.<br>
Howerver, I am seeng following error.<br>
I wonder if this is a known problem and you already have workaround?<br>
<br>
It says __init_array_end/start is not found which is referred in libc_nonsh=
ared.a(elf-init.oS).<br>
I googled and learned that this can happen if parameters are not set proper=
ly to g&#43;&#43; when building shared library, and in fact, if I remove '-=
lc' from the final linker command line, the build error is gone.<br>
<br>
&gt;-lm -lc -lgcc_s -lgcc =3D&gt; NG<br>
&gt;-lm -lgcc_s -lgcc =3D&gt; OK<br>
<br>
The problem is, these liker parameters are set by the configure script into=
 libtool script and so far I could not find easy configurable option to exp=
licity remove '-lc' from here.<br>
<br>
I think configure recognizes that '-lc' is not necessary to build shared li=
brary (through 'build_libtool_need_lc', etc. test), but it takes these from=
 somewhere (from its tests or its default template?) and embedding to linke=
r command parameters.<br>
<br>
This error did not happen with Yocto 1.8 based build (where the same recipe=
 could built w/o break).<br>
So, it can be toolchain issue (c library difference, autotool difference, e=
tc.) or libc quirk, maybe fixed problem in recent versions, or specific to =
my cross-environment, but I have not yet figured out handy workaround.<br>
<br>
I am trying here with protobuf package, butI am not yet sure if this happen=
s with all of the autotool based packages.<br>
<br>
=3D=3D=3D=3D<br>
| arm-poky-linux-gnueabi-libtool: link: arm-poky-linux-gnueabi-g&#43;&#43;<=
br>
-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a15<br>
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter&nbsp; -fPIC=
<br>
-DPIC -shared -nostdlib<br>
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/Scrt1.o<br>
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/crti.o<br>
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm-poky-linux-=
gnueabi/5.2.0/crtbeginS.o<br>
&nbsp;google/protobuf/stubs/.libs/atomicops_internals_x86_gcc.o<br>
google/protobuf/stubs/.libs/atomicops_internals_x86_msvc.o<br>
[...]<br>
google/protobuf/io/.libs/zero_copy_stream_impl.o<br>
google/protobuf/compiler/.libs/importer.o<br>
google/protobuf/compiler/.libs/parser.o&nbsp;&nbsp; -lpthread -lz<br>
-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/lib/arm-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0<br>
-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/lib<br>
-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm-poky-linu=
x-gnueabi/5.2.0<br>
-L/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib<br>
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libstdc&#43;&#4=
3;.so<br>
-lm -lc -lgcc_s -lgcc<br>
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/arm-poky-linux-=
gnueabi/5.2.0/crtendS.o<br>
/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/crtn.o<br>
-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a15<br>
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter -pthread<br=
>
-O2 -g -fstack-protector-all -Wl,-O1 -Wl,--hash-style=3Dgnu<br>
-Wl,--as-needed -Wl,-z -Wl,relro -Wl,-z -Wl,now&nbsp;&nbsp; -pthread -Wl,-s=
oname<br>
-Wl,libprotobuf.so.10 -o .libs/libprotobuf.so.10.0.0<br>
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libc_nonshare=
d.a(elf-init.oS):<br>
In function `__libc_csu_init':<br>
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-=
gnueabi/glibc/2.22-r0/git/csu/elf-init.c:89:<br>
undefined reference to `__init_array_end'<br>
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-=
gnueabi/glibc/2.22-r0/git/csu/elf-init.c:89:<br>
undefined reference to `__init_array_start'<br>
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm=
-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:<br>
.libs/libprotobuf-lite.so.10.0.0: hidden symbol `__init_array_end'<br>
isn't defined<br>
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm=
-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:<br>
final link failed: Bad value<br>
| collect2: error: ld returned 1 exit status<br>
| Makefile:1492: recipe for target 'libprotobuf-lite.la' failed<br>
| make[3]: *** [libprotobuf-lite.la] Error 1<br>
| make[3]: *** Waiting for unfinished jobs....<br>
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/porter/usr/lib/libc_nonshare=
d.a(elf-init.oS):<br>
In function `__libc_csu_init':<br>
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-=
gnueabi/glibc/2.22-r0/git/csu/elf-init.c:89:<br>
undefined reference to `__init_array_end'<br>
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/work/cortexa15hf-vfp-neon-poky-linux-=
gnueabi/glibc/2.22-r0/git/csu/elf-init.c:89:<br>
undefined reference to `__init_array_start'<br>
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm=
-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:<br>
.libs/libprotobuf.so.10.0.0: hidden symbol `__init_array_end' isn't<br>
defined<br>
| /mnt/ssd2/yocto/dev/tmp/agl-rcr-wk2/sysroots/x86_64-linux/usr/libexec/arm=
-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:<br>
final link failed: Bad value<br>
| collect2: error: ld returned 1 exit status<br>
=3D=3D=3D=3D<br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB159437FBA234CD6D4596E099D70A0CY1PR0101MB1594_--
