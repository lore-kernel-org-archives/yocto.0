Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649DDCDB483
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 11:58:38 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.81])
 by mx.groups.io with SMTP id smtpd.web11.211032.1697543907023385121
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 04:58:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=YbqsiVlH;
 spf=pass (domain: kymati.com, ip: 40.107.247.81, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EK3gE0zHhQi8xhKq8cEnHatzHAg0fHH6aHrbHyz1cm32tOY5QBPgQ7+rCAKIjsniHPv1mLZeY1IGftRt26P+fDZXOzSgwqv5hIxrgbkANoVkWzEBP+NVm+fiyluiesRiQBtaaicJi5+xlWoTCwwjJuCZtl+RErLH664WijMFgi29Zgbnm6lB0wRSqrwR+2117uJxCmYaOrnCjrKg2+BYe3vAgaSSilf3f8oP1lsiGTx4Fm4BUKsQycmMRflIc7IqOainIfHEC+SXQM1AGaXSJTWerfFsojOqz5n6TgP97CAa6590Z0PoTiHatAUNgKork99l8ST+yFp4TIUbIrDMcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cHpUz7LA4Rdn6LRhKCsmW9vdgarQRNdoQazWCgeA9R8=;
 b=d/r6pCxylHW9BWGv1J86VTjhjOmXiZzjXESsTbIfaaXKGfoz2dfNhiaQc3kiyo37hrDZDpS6/Mery4yc96oK5VvoXClgsClCewF7uI+ecl+mYaFptEAbjkmjJNHiHq5lfhEhrYSRxkTiW2RTxSQ0ZIFSq1hPK8nDvayzD62tzCWZT2g3so1QiceNqoBbDPXYUyP6pxEAiCHRAO/ME81GXC96ZTFCnsmKoTDskXOKUsuHX7Frr6yI8d6o3PVuOMp4FbSKeqvjm1OwVncqOaIhOYdEpGnRh7da1AG3RI5mJEfb8Bpv5AdTZOTAFyPXZBnq6Ve6drVVkA3P2fCUrFUwTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cHpUz7LA4Rdn6LRhKCsmW9vdgarQRNdoQazWCgeA9R8=;
 b=YbqsiVlHNti9k0a7RAJgnZYPC0Kw2v0d2o48ZX63OSNJV5VZ+sxoBXP9wgZ0npJcAzDHrMARQoCJfU6aubuMdRq77v5OgE7H9NdeKvajR9ntilSrrJhjaQIqq8tuzAkt2X0ztf2CLxVfsrTxnAh7ojySJEQT5lLW6TDYA57YlSE=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by DU5PR03MB10471.eurprd03.prod.outlook.com (2603:10a6:10:528::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 11:58:23 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3%3]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 11:58:23 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Thread-Topic: [yocto] Using cmake... how?
Thread-Index: 
 AQHaAEU1GVmCsck7rEeYingXKJhbi7BNevsAgAA5peaAAAoJAIAAA9orgAAEhICAAAch+YAAEoCAgAAAttI=
Date: Tue, 17 Oct 2023 11:58:23 +0000
Message-ID: 
 <AM9PR03MB701278137F02C02E6532EFE192D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5ZTMlhyMdLPEQ_@nuoska>
 <AM9PR03MB70124FE13C06B022A3C0BF5F92D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5gUVkTwgjNi0Ad@nuoska>
 <AM9PR03MB7012F4837978629C7E866C8792D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS510fE2Q3WeU0UT@nuoska>
In-Reply-To: <ZS510fE2Q3WeU0UT@nuoska>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|DU5PR03MB10471:EE_
x-ms-office365-filtering-correlation-id: 09a5a1ff-742e-4abc-a63d-08dbcf085d3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Mb3fIOX6G/sGIi3d/UoNTTON9+eVzAmqMsCSBYgdK6gs/PjZFSyi7tcw0DQBUlM3sblm6ag/w6Ex8AT1N6xMLlFMIVsVM/Sa0az2/iY5tUmyeb9jRi14Y4sr5TFDfZAl1y4JabA4SVUwOrPX+AB08UtZtzsifzqKv02wlcCixN1FOukpeaOqp4F72nb3S/gkHv25PiZmtsDJbQX+ZOBi/O9iCb0Re0fD1EYHlq8dfEEhbscMxDa+LumIjUCGGoSwTrgig66b/25LiUTNgAmTxOp/Uq2WeG/y+/nmXozWVA8Br8uKIk6ffwp6p3P9G3KKWT6QeZuJA7ZLtYKF5LYqwnWMYkrdKj9+j/1dlz+5AMnIGaKxEXeWzrdZS3+x2bEVc+oZaLYOL9vFBfJS8nQFV+yXhEJlHPWBsKp8xDsz3DyVTFGmJXdjFAj3VZJK1R6Tq62HSLXkUWn+Spzf8xnQKBxv9RcS3Wk1PqQwm33Q19r7Jq+N5qRb7wp9oGtyB4ICEZMjBSUFnSboPoL+uxwUAiGMoCCLVSuWbYxnMvKtRhVrBjQ6RJTYwMh/GfIYp7CJeF11TYcSTTro6kELLztENkzbfwGF0GF0SBduH7TRxPwUhs+rLfJc8Psos+LaYIXnmgCMKM6GToIVBxlLGvVyV4yFs1rwttRcGQ2rKypOCKo=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(346002)(39830400003)(366004)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(55016003)(316002)(66446008)(91956017)(66556008)(66476007)(76116006)(66946007)(64756008)(38070700005)(4326008)(8936002)(8676002)(6506007)(38100700002)(19627235002)(71200400001)(9686003)(478600001)(7696005)(122000001)(83380400001)(53546011)(33656002)(2906002)(5660300002)(52536014)(86362001)(44832011)(41300700001)(6916009)(19627405001)(473944003)(414714003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?Rrt97pSsdXgJL+Apau32jJSBvYKeqI8nebSzpLRBsr2SDrFjuwsAjsOK?=
 =?Windows-1252?Q?Q04Jr2JYbUhw/YL3SwFdAVql3tZ47CR74dPo2Hkwg7oOB+l4oBF1P1SY?=
 =?Windows-1252?Q?sRwTIp963IRzMH6IWKx2RZF17zul08yXnJ+SHx5ty6E8qpuyN6rZqRWk?=
 =?Windows-1252?Q?UWz5cer1PP9Jlf4LP/m73z9qzsuZfSGLCT8DplPCx+WSxQqhCGagsmSf?=
 =?Windows-1252?Q?viQJHak3tJXiES8DJYfj1kYz1EqO3rzD830tkmrmUZWQlCiUPaYMBaIB?=
 =?Windows-1252?Q?f8T+s7DJEhy5DOumpISWDjRRKN7kcO7nMUDMO5xoCaYFXozeFo4zh3ok?=
 =?Windows-1252?Q?NOrFhS15w17RF83CZQRJQSmDGudWH47M5fM6bSGbVcCgX0hKa1i/Aozd?=
 =?Windows-1252?Q?Uxj3vlbuu5c7Ef1hzqMX3g1kfEwZC0Ls8wh3TJehqT15ra9Zi+j8E13U?=
 =?Windows-1252?Q?HK87NjeGh42oHmOduCGeH3Ymg4RFTVAs036rkJkoa8Ge6eajPAVra6MZ?=
 =?Windows-1252?Q?vhtEKu0KKI+HaZsmvzVwWzesPGQgvlbu4550++qqAcvDz5zSqH6zpD6E?=
 =?Windows-1252?Q?ecAQS2M5BKxiN/wd+AMO2zdXrpcBaquWyxA55+7akDMoJtN9UOS2qWI8?=
 =?Windows-1252?Q?5TkurjvFLNWgIfI46kb+2szf35Gb7tXL4pRDl6Poj3zaH/5nyn9o6gdu?=
 =?Windows-1252?Q?t8M8GryBCS7yElbOV4CCq4uuF2XB8xufe58QfKYRZaSKsr/ev2O6xzcq?=
 =?Windows-1252?Q?QlexHAmDXjPUTO2nn/b8BN/QH2Qmjkb1R//H2c1UZeh85FtFdVdwnLGv?=
 =?Windows-1252?Q?i0rNj63S3msF0u1C3KnbsRDm7YmvBwxJmX0eonQn9krZDWWuDff4d7PC?=
 =?Windows-1252?Q?DMh5h/dYftf7dXcbBHv9yomjCK/3EJbG2/Zxgv6eHyYFphm/0WHgUXy6?=
 =?Windows-1252?Q?NNd9VVM+NauYhT/5c/R58BLr8miejR3qFJX1HQcYzSqJ8h3uHS8nPWNj?=
 =?Windows-1252?Q?RqNwt92EJ2qqyAqh4qxAkHqHI+M/7IRazSoZqO4CUdZ7Ph368KZJwmVn?=
 =?Windows-1252?Q?MOgs04GV41VAB4tISKNaeUnZVgh2RrIOE1FlJhzDy9jtTIeRvRk1YW3j?=
 =?Windows-1252?Q?u+RfcX2FsPbbLPvUIYrsreO69AdNK7YP9XyCWfgzJl7STa+teat2sdWB?=
 =?Windows-1252?Q?tG9S5dNKwqV9cs5YSFqShB7fegR4FDt2XzGdZ+EYgHxR7+9DpGG2VTH0?=
 =?Windows-1252?Q?HeOCzsopslT50McuzX7SG7aIZ3YcaS5t118gFjUVJno8GmEvcSXYviA7?=
 =?Windows-1252?Q?N9y5yhJtjvnhuZKO4HFHPgEXp7q0XAzCx4g7H9Dnlcp2VxdohBLgyI28?=
 =?Windows-1252?Q?mRLPI11ilm8NH0L7WIBsQ5qheHUn+r4zsSGnZEIg/MUusMUfFdmzB7yU?=
 =?Windows-1252?Q?R/YcsJzgWS3N/MhdcA+32wzICWcATN8N34jAy9Wh923GCuioclgGCmw4?=
 =?Windows-1252?Q?u7XK3XhnMb1eRad73S6YWdsrEVwUp/bNSG0Z5f/X/I16aqAM3DGOa6LF?=
 =?Windows-1252?Q?zYF2CRw4HJ01oypbkfkE3oaakfNE4JzWKh55aMi58Na1f0z4mdvvDH0W?=
 =?Windows-1252?Q?MPfkcaGkRnti9jE4eaVWI2arDMej5BPzQelRW7IKFT1xxl95DKVbRnyW?=
 =?Windows-1252?Q?pXa2mW0aKIqc0EjFtX2+gixm5ToSgA0CXqNZT4d/kuGz0MBXAFT+QlCN?=
 =?Windows-1252?Q?WFukWXsECHty2RnQrgWdVALrwzaUMTsHPkED4fOC?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB701278137F02C02E6532EFE192D6AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a5a1ff-742e-4abc-a63d-08dbcf085d3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 11:58:23.3524
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W4AeQowq4mo9690gLnFtLSX1lqjYdehnlyR9r70oIZzBzR13P59tryU3TAkO5oA4hxCEl/9XGKXTar0kk/DxOgNEhiL21RFquU70b3midtY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR03MB10471
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 11:58:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61375

--_000_AM9PR03MB701278137F02C02E6532EFE192D6AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I understand that, and the compiler the rest of the recipe uses does cope s=
o I am trying to understand why this bit of the whole thing is using a diff=
erent compiler. Maybe it is somewhere in the cmake of the library, but it c=
ertainly isnt obvious. Thats where I am digging for the moment.
________________________________
From: Mikko Rapeli <mikko.rapeli@linaro.org>
Sent: 17 October 2023 13:53
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?

Hi,

On Tue, Oct 17, 2023 at 11:35:13AM +0000, Dave Hitchman wrote:
<snip>
> |     /usr/bin/g++   -O2 -pipe -g -feliminate-unused-debug-types -fmacro-=
prefix-map=3D/home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-cry=
pto-phytec-linux/libkymati/1.0-r0=3D/usr/src/debug/libkymati/1.0-r0        =
              -fdebug-prefix-map=3D/home/dave/Documents/Kymati/yocto/build/=
tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0=3D/usr/src/debug/li=
bkymati/1.0-r0                      -fdebug-prefix-map=3D/home/dave/Documen=
ts/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-=
r0/recipe-sysroot=3D                      -fdebug-prefix-map=3D/home/dave/D=
ocuments/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymat=
i/1.0-r0/recipe-sysroot-native=3D  -fvisibility-inlines-hidden  -mcpu=3Dcor=
tex-a53 -march=3Darmv8-a+crc+crypto -fstack-protector-strong  -O2 -D_FORTIF=
Y_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security  --sysroo=
t=3D/home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phyte=
c-linux/libkymati/1.0-r0/recipe-sysroot -o CMakeFiles/cmTC_e06e9.dir/testCX=
XCompiler.cxx.o -c testCXXCompiler.cxx
> |     g++: warning: =91-mcpu=3D=92 is deprecated; use =91-mtune=3D=92 or =
=91-march=3D=92 instead
> |     cc1plus: error: bad value (=91armv8-a+crc+crypto=92) for =91-march=
=3D=92 switch
> |     cc1plus: note: valid arguments to =91-march=3D=92 switch are: nocon=
a core2 nehalem corei7 westmere sandybridge corei7-avx ivybridge core-avx-i=
 haswell core-avx2 broadwell skylake skylake-avx512 cannonlake icelake-clie=
nt icelake-server cascadelake tigerlake bonnell atom silvermont slm goldmon=
t goldmont-plus tremont knl knm x86-64 eden-x2 nano nano-1000 nano-2000 nan=
o-3000 nano-x2 eden-x4 nano-x4 k8 k8-sse3 opteron opteron-sse3 athlon64 ath=
lon64-sse3 athlon-fx amdfam10 barcelona bdver1 bdver2 bdver3 bdver4 znver1 =
znver2 btver1 btver2 native

For example here the "/usr/bin/g++" compiler will not understand -mcpu=3Dco=
rtex-a53 flags
since the compiler is on the Linux build machine and compiling natively for=
 x86_64 target
architecture, this is not the yocto/bitbake cross compiler. The correct com=
piler binary
is set via CMAKE_CXX_COMPILER variable in the toolchain file and path to it=
 is somewhere
in the recipe specific native sysroot path. CMake build scripts of libkymat=
i must use those
variables from the toolchain file. They must not overwrite them with their =
own guesses
like /usr/bin/g++.

Further details depends on what kind of CMake build scripts libkymati has.

Cheers,

-Mikko

--_000_AM9PR03MB701278137F02C02E6532EFE192D6AAM9PR03MB7012eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I understand that, and the compiler the rest of the recipe uses does cope s=
o I am trying to understand why this bit of the whole thing is using a diff=
erent compiler. Maybe it is somewhere in the cmake of the library, but it c=
ertainly isnt obvious. Thats where
 I am digging for the moment.</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Mikko Rapeli &lt;mikk=
o.rapeli@linaro.org&gt;<br>
<b>Sent:</b> 17 October 2023 13:53<br>
<b>To:</b> Dave Hitchman &lt;dave.hitchman@kymati.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Using cmake... how?</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi,<br>
<br>
On Tue, Oct 17, 2023 at 11:35:13AM +0000, Dave Hitchman wrote:<br>
&lt;snip&gt;<br>
&gt; |&nbsp;&nbsp;&nbsp;&nbsp; /usr/bin/g++&nbsp;&nbsp; -O2 -pipe -g -felim=
inate-unused-debug-types -fmacro-prefix-map=3D/home/dave/Documents/Kymati/y=
octo/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0=3D/usr/s=
rc/debug/libkymati/1.0-r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; -fdebug-prefix-map=3D/home/dave/Documents/Kymati/yocto/build/tmp/work/cor=
texa53-crypto-phytec-linux/libkymati/1.0-r0=3D/usr/src/debug/libkymati/1.0-=
r0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 -fdebug-prefix-map=3D/home/dave/Documents/Kymati/yocto/build/tmp/work/cort=
exa53-crypto-phytec-linux/libkymati/1.0-r0/recipe-sysroot=3D&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -fdebug-prefix-map=3D/home/dave/Docume=
nts/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0=
-r0/recipe-sysroot-native=3D&nbsp;
 -fvisibility-inlines-hidden&nbsp; -mcpu=3Dcortex-a53 -march=3Darmv8-a+crc+=
crypto -fstack-protector-strong&nbsp; -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -W=
format-security -Werror=3Dformat-security&nbsp; --sysroot=3D/home/dave/Docu=
ments/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1=
.0-r0/recipe-sysroot
 -o CMakeFiles/cmTC_e06e9.dir/testCXXCompiler.cxx.o -c testCXXCompiler.cxx<=
br>
&gt; |&nbsp;&nbsp;&nbsp;&nbsp; g++: warning: =91-mcpu=3D=92 is deprecated; =
use =91-mtune=3D=92 or =91-march=3D=92 instead<br>
&gt; |&nbsp;&nbsp;&nbsp;&nbsp; cc1plus: error: bad value (=91armv8-a+crc+cr=
ypto=92) for =91-march=3D=92 switch<br>
&gt; |&nbsp;&nbsp;&nbsp;&nbsp; cc1plus: note: valid arguments to =91-march=
=3D=92 switch are: nocona core2 nehalem corei7 westmere sandybridge corei7-=
avx ivybridge core-avx-i haswell core-avx2 broadwell skylake skylake-avx512=
 cannonlake icelake-client icelake-server cascadelake tigerlake
 bonnell atom silvermont slm goldmont goldmont-plus tremont knl knm x86-64 =
eden-x2 nano nano-1000 nano-2000 nano-3000 nano-x2 eden-x4 nano-x4 k8 k8-ss=
e3 opteron opteron-sse3 athlon64 athlon64-sse3 athlon-fx amdfam10 barcelona=
 bdver1 bdver2 bdver3 bdver4 znver1
 znver2 btver1 btver2 native<br>
<br>
For example here the &quot;/usr/bin/g++&quot; compiler will not understand =
-mcpu=3Dcortex-a53 flags<br>
since the compiler is on the Linux build machine and compiling natively for=
 x86_64 target<br>
architecture, this is not the yocto/bitbake cross compiler. The correct com=
piler binary<br>
is set via CMAKE_CXX_COMPILER variable in the toolchain file and path to it=
 is somewhere<br>
in the recipe specific native sysroot path. CMake build scripts of libkymat=
i must use those<br>
variables from the toolchain file. They must not overwrite them with their =
own guesses<br>
like /usr/bin/g++.<br>
<br>
Further details depends on what kind of CMake build scripts libkymati has.<=
br>
<br>
Cheers,<br>
<br>
-Mikko<br>
</div>
</span></font></div>
</body>
</html>

--_000_AM9PR03MB701278137F02C02E6532EFE192D6AAM9PR03MB7012eurp_--

