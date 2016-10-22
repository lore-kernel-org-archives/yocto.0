Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74C6AE00546; Sat, 22 Oct 2016 09:19:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.61.77 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from SNT004-OMC1S40.hotmail.com (snt004-omc1s40.hotmail.com
	[65.54.61.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A6C6E0049D
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 09:19:48 -0700 (PDT)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com ([65.55.90.7]) by
	SNT004-OMC1S40.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Sat, 22 Oct 2016 09:19:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=0SqlfXpH0ahKGSp8+Ji4F1noAEFXVjfRMRvluKcvD7s=;
	b=Zoabx2fph171JMTiQSB76w+llcTXygM1tu7nyozV+534EdbkMtabu0ytSHCX6rHohtGPm/Vx2BqbV4MYJoCy8Rb3zPKryc7fHTBxwPTzahX4Jr2Q2x/PfOJ7ulC/zR988ZWQ8pSP8RNMrPxUqGqzqFCGygFKQvGM5n6KVIV/giU4O7q0TucvCgTGvzOWSgSQZgQ0FjsQAFRy9zv+1h1/S4nIs1vbuEkVr4CvNSL1snuf10KdRtW7k/li0r5J7hrB4uSkJKI+GspyXY73S3qyqSOcjFQisfC6xAOTQa5mBWVYpVrW6GJhjkewHzTWkzYt8PInNyHVqdkoqpmHp7Otkw==
Received: from DB5EUR01FT046.eop-EUR01.prod.protection.outlook.com
	(10.152.4.52) by DB5EUR01HT231.eop-EUR01.prod.protection.outlook.com
	(10.152.4.192) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.7;
	Sat, 22 Oct 2016 16:19:43 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.4.51) by
	DB5EUR01FT046.mail.protection.outlook.com (10.152.5.231) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.669.7 via Frontend Transport; Sat, 22 Oct 2016 16:19:43 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0669.021; Sat, 22 Oct 2016 16:19:42 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [raspberrypi3][meta-qt5] Failed to build
	meta-toolchain-qt5
Thread-Index: AQHSLF9yRZyzpaMIaUqAHJgUBbdCu6C0lPiBgAAQ2YCAAAFsLA==
Date: Sat, 22 Oct 2016 16:19:42 +0000
Message-ID: <HE1PR01MB18830215696B2C95CA18945F92D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<682A676C-7174-476C-B845-13329DC857F9@gmail.com>
In-Reply-To: <682A676C-7174-476C-B845-13329DC857F9@gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [bCGvbo/iT8baLDlmkyiN/JFFxbH5mqJW]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; DB5EUR01HT231;
	6:t1Gdc90pv4qUMHYhmhwgkUKyxj5L5thdYttzt2SugKBr0+OHhdcZhyKRdoZJjHgHhACLwhvalK9v29B+ndyaPx6UJqH3VMcvcjfCxvG05OpGEGa+4KbKxUTkVj4Ep3vyij3mXEo/yrT0JrOtrH3LsCfPHKpxKiAs5Y8Tfzztmuwuqay+vzrlrRlC+gzca9CFwk8QcZ+0SNl9PZdqze8e3OdJtd2PGFam6A5Ul9cS55H8RT8txmNWsospuWfX0wJeEiQtK6kyNHAWEAxfQ7YKpL97UYU8Rx+BmnE9DeJ4QAYmN4FYBsWAuxoXHHvqPtCb;
	5:BiQ2/CO8nuJjadQxYJxXwGmahb/LuheRuWldjXm8EDCbfw5xqJ2uuOkiS0PfNtWTUT3HdTmp2Wo5+ADrltJuvpMG7QnEl5NSLJOcME9qkXrH9qgNqnBRklz2+rxRux3xc0sRO76YEhrsWZtWJZw2VA==;
	24:9qsKlYShghrn289rvMYoQMBN0KGlJrgLBHwnoWFP8blEpzuQEkaN63C5PjCL4szlvq57JQC56r7aNk+46uQ71YstfxLTTTxZdK3wpNS5o14=;
	7:fe8/cTWqsfpQVe6VIGaVcmkvxbAcI0DUchRHhB0/cQ9i8ecUtq3/eZfg0i9PDk/NoBbtEk+FLBGcBTc7wGAa6XHv1w01pZEtz2leba5/zemsdRVBHT7r5imTYgVmDr42bCAJO6GMeLAWXiqtSYOTQlKB5LNyHoI4jLSr8ZpQET3rbde/fo/TmEi1hIuQIuU7z42vyzmjqvgv3l0SSZQQjZF8iBp2PlrHsxJqpLMlCQ6Lo5XADI2YPk4NZ5TrMLDdqhXANOiMzwyQU5eguRrGCrYTORG902mdN83sVbdq0uuni9jQ2SerXlrgY5Oew19nD0oQKaoG+yeTOfwZn6hXihQ9Vay7o+653Q1E+X8v5Dk=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5EUR01HT231;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 90a1c0b8-d939-4c27-412a-08d3fa973b08
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:DB5EUR01HT231;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:DB5EUR01HT231; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR01HT231; 
x-forefront-prvs: 01039C93E4
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2016 16:19:42.4402 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT231
X-OriginalArrivalTime: 22 Oct 2016 16:19:45.0917 (UTC)
	FILETIME=[1A7F92D0:01D22C80]
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
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
X-List-Received-Date: Sat, 22 Oct 2016 16:19:52 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB18830215696B2C95CA18945F92D70HE1PR01MB1883eurp_"

--_000_HE1PR01MB18830215696B2C95CA18945F92D70HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Khem,


I found the follwoing pc files, and bcm_host is found.



kai@odyssey:~/yocto/build-magnolia/tmp/work$ find . -name *.pc | grep userl=
and
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/b=
rcmvg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/g=
lesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/e=
gl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/b=
cm_host.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/v=
g.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/b=
rcmegl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/b=
rcmglesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/brcmvg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/glesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/egl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/bcm_host.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/vg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/brcmegl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/brcmglesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/brcmvg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/glesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/egl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/bcm_host.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/vg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/brcmegl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/brcmglesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/git/.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/brcmvg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/glesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/egl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/bcm_host.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/vg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/brcmegl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/brcmglesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmvg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/glesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/egl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/bcm_host.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/vg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmegl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmglesv2.pc




________________________________
De : Khem Raj <raj.khem@gmail.com>
Envoy=E9 : samedi 22 octobre 2016 18:13
=C0 : Karim ATIKI
Cc : yocto
Objet : Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain=
-qt5


On Oct 22, 2016, at 8:16 AM, Karim ATIKI <karim_atiki@hotmail.com<mailto:ka=
rim_atiki@hotmail.com>> wrote:

Actually, it looks like the issue comes from gstreamer1.0-plugins-bad recip=
e.

This function, graphics_get_display_size, comes from libbcm_host which seem=
s to be present in sysroot.

In log.doconfigure i found:


checking for bcm_host_init in -lbcm_host... yes
checking bcm_host.h usability... yes
checking bcm_host.h presence... yes
checking for bcm_host.h... yes

So it seems that it found the necessary library.

However, in the logfile of the compile error, there is no "-lbcm_host" depe=
ndency at all.

Any idea to solve it ?

Look at the packageconfig files from userland package and see if its export=
ing the right libraries in .pc files.


Karim



________________________________
De : yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org> =
<yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>> de =
la part de Karim ATIKI <karim_atiki@hotmail.com<mailto:karim_atiki@hotmail.=
com>>
Envoy=E9 : samedi 22 octobre 2016 14:26
=C0 : yocto
Objet : [yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5

Hi all,

Tryng to build the meta-toolchain-qt5, I've a failure while bulidng gst-plu=
gins-bad.

The underlying error seems to be:

| ./.libs/libgstgl-1.0.so: undefined reference to `graphics_get_display_siz=
e

This function seems to come from bcm_host library.
Isn't it related to  RaspberryPi graphic libs ?

Should I add a specific dependency ?

Weird.

Karim


--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


--_000_HE1PR01MB18830215696B2C95CA18945F92D70HE1PR01MB1883eurp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Khem,</p>
<p><br>
</p>
<p>I found the follwoing pc files, and bcm_host is found.</p>
<p><br>
</p>
<p><br>
</p>
<p></p>
<div>kai@odyssey:~/yocto/build-magnolia/tmp/work$ find . -name *.pc | grep =
userland</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/brcmvg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/glesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/egl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/bcm_host.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/vg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/brcmegl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/brcmglesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/brcmvg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/glesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/egl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/bcm_host.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/vg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/brcmegl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/brcmglesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/brcmvg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/glesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/egl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/bcm_host.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/vg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/brcmegl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/brcmglesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/git/.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/brcmvg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/glesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/egl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/bcm_host.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/vg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/brcmegl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/brcmglesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmvg.pc</div=
>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/glesv2.pc</div=
>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/egl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/bcm_host.pc</d=
iv>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/vg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmegl.pc</di=
v>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmglesv2.pc<=
/div>
<div><br>
</div>
<br>
<p></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Khem Raj &lt;raj.khem@=
gmail.com&gt;<br>
<b>Envoy=E9 :</b> samedi 22 octobre 2016 18:13<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-to=
olchain-qt5</font>
<div>&nbsp;</div>
</div>
<div><br class=3D"">
<div>
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On Oct 22, 2016, at 8:16 AM, Karim ATIKI &lt;<a href=3D"mai=
lto:karim_atiki@hotmail.com" class=3D"">karim_atiki@hotmail.com</a>&gt; wro=
te:</div>
<br class=3D"Apple-interchange-newline">
<div class=3D"">
<div id=3D"divtagdefaultwrapper" class=3D"" style=3D"font-style:normal; fon=
t-weight:normal; letter-spacing:normal; orphans:auto; text-align:start; tex=
t-indent:0px; text-transform:none; white-space:normal; widows:auto; word-sp=
acing:0px; font-size:12pt; font-family:Calibri,Arial,Helvetica,sans-serif">
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Actually, it lo=
oks like the issue comes from gstreamer1.0-plugins-bad recipe.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">This function, =
graphics_get_display_size, comes from libbcm_host which seems to be present=
 in sysroot.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">In log.doconfig=
ure i found:</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<p class=3D"" style=3D"margin-top:0px; margin-bottom:0px"></p>
<div class=3D"">checking for bcm_host_init in -lbcm_host... yes</div>
<div class=3D"">checking bcm_host.h usability... yes</div>
<div class=3D"">checking bcm_host.h presence... yes</div>
<div class=3D"">checking for bcm_host.h... yes</div>
<div class=3D""><br class=3D"">
</div>
So it seems that it found the necessary library.
<p class=3D"" style=3D"margin-top:0px; margin-bottom:0px"></p>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">However, in the=
 logfile of the compile error, there is no &quot;-lbcm_host&quot; dependenc=
y at all.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Any idea to sol=
ve it ?</div>
</div>
</div>
</blockquote>
<div><br class=3D"">
</div>
<div>Look at the packageconfig files from userland package and see if its e=
xporting the right libraries in .pc files.</div>
<br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">
<div id=3D"divtagdefaultwrapper" class=3D"" style=3D"font-style:normal; fon=
t-weight:normal; letter-spacing:normal; orphans:auto; text-align:start; tex=
t-indent:0px; text-transform:none; white-space:normal; widows:auto; word-sp=
acing:0px; font-size:12pt; font-family:Calibri,Arial,Helvetica,sans-serif">
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Karim</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<br class=3D"">
<br class=3D"">
<div class=3D"" style=3D"">
<hr tabindex=3D"-1" class=3D"" style=3D"display:inline-block; width:1054.46=
875px">
<div id=3D"divRplyFwdMsg" dir=3D"ltr" class=3D""><font face=3D"Calibri, san=
s-serif" class=3D"" style=3D"font-size:11pt"><b class=3D"">De :</b><span cl=
ass=3D"Apple-converted-space">&nbsp;</span><a href=3D"mailto:yocto-bounces@=
yoctoproject.org" class=3D"">yocto-bounces@yoctoproject.org</a>
 &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org" class=3D"">yocto-bou=
nces@yoctoproject.org</a>&gt; de la part de Karim ATIKI &lt;<a href=3D"mail=
to:karim_atiki@hotmail.com" class=3D"">karim_atiki@hotmail.com</a>&gt;<br c=
lass=3D"">
<b class=3D"">Envoy=E9 :</b><span class=3D"Apple-converted-space">&nbsp;</s=
pan>samedi 22 octobre 2016 14:26<br class=3D"">
<b class=3D"">=C0 :</b><span class=3D"Apple-converted-space">&nbsp;</span>y=
octo<br class=3D"">
<b class=3D"">Objet :</b><span class=3D"Apple-converted-space">&nbsp;</span=
>[yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5</font>
<div class=3D"">&nbsp;</div>
</div>
<div class=3D"">
<div id=3D"divtagdefaultwrapper" class=3D"" style=3D"font-size:12pt; font-f=
amily:Calibri,Arial,Helvetica,sans-serif">
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Hi all,</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Tryng to build =
the meta-toolchain-qt5, I've a failure while bulidng gst-plugins-bad.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">The underlying =
error seems to be:</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><i class=3D""><=
b class=3D""></b></i><span class=3D""><b class=3D""><i class=3D"">| ./.libs=
/libgstgl-1.0.so: undefined reference to `graphics_get_display_size</i></b>=
</span><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
"><b class=3D""><i class=3D""><br class=3D"">
</i></b></span></div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
">This function seems to come from bcm_host library.</span></div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
">Isn't it related to&nbsp; RaspberryPi graphic libs ?</span></div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Should I add a =
specific dependency ?</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Weird.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Karim</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
"><b class=3D""><i class=3D""><br class=3D"">
</i></b></span></div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
"><b class=3D""><i class=3D""><br class=3D"">
</i></b></span></div>
</div>
</div>
</div>
</div>
<span class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-sty=
le:normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-al=
ign:start; text-indent:0px; text-transform:none; white-space:normal; widows=
:auto; word-spacing:0px; float:none; display:inline!important">--<span clas=
s=3D"Apple-converted-space">&nbsp;</span></span><br class=3D"" style=3D"fon=
t-family:Times-Roman; font-size:14px; font-style:normal; font-weight:normal=
; letter-spacing:normal; orphans:auto; text-align:start; text-indent:0px; t=
ext-transform:none; white-space:normal; widows:auto; word-spacing:0px">
<span class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-sty=
le:normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-al=
ign:start; text-indent:0px; text-transform:none; white-space:normal; widows=
:auto; word-spacing:0px; float:none; display:inline!important">____________=
___________________________________</span><br class=3D"" style=3D"font-fami=
ly:Times-Roman; font-size:14px; font-style:normal; font-weight:normal; lett=
er-spacing:normal; orphans:auto; text-align:start; text-indent:0px; text-tr=
ansform:none; white-space:normal; widows:auto; word-spacing:0px">
<span class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-sty=
le:normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-al=
ign:start; text-indent:0px; text-transform:none; white-space:normal; widows=
:auto; word-spacing:0px; float:none; display:inline!important">yocto
 mailing list</span><br class=3D"" style=3D"font-family:Times-Roman; font-s=
ize:14px; font-style:normal; font-weight:normal; letter-spacing:normal; orp=
hans:auto; text-align:start; text-indent:0px; text-transform:none; white-sp=
ace:normal; widows:auto; word-spacing:0px">
<span class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-sty=
le:normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-al=
ign:start; text-indent:0px; text-transform:none; white-space:normal; widows=
:auto; word-spacing:0px; float:none; display:inline!important"><a href=3D"m=
ailto:yocto@yoctoproject.org" class=3D"">yocto@yoctoproject.org</a></span><=
br class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-style:=
normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-align=
:start; text-indent:0px; text-transform:none; white-space:normal; widows:au=
to; word-spacing:0px">
<span class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-sty=
le:normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-al=
ign:start; text-indent:0px; text-transform:none; white-space:normal; widows=
:auto; word-spacing:0px; float:none; display:inline!important"><a href=3D"h=
ttps://lists.yoctoproject.org/listinfo/yocto" class=3D"">https://lists.yoct=
oproject.org/listinfo/yocto</a></span></div>
</blockquote>
</div>
<br class=3D"">
</div>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB18830215696B2C95CA18945F92D70HE1PR01MB1883eurp_--
