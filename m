Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.118])
 by mx.groups.io with SMTP id smtpd.web10.9147.1628696384692561019
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Aug 2021 08:39:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@servotronix1008982.onmicrosoft.com header.s=selector2-servotronix1008982-onmicrosoft-com header.b=a0aJEmMi;
 spf=pass (domain: servotronix.com, ip: 40.107.13.118, mailfrom: nir.geller@servotronix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NA3Zj4GSiKu//J9x9knO4GX06PEbvS/30Fc8mZnd22MeqEOmZYQwYLiIBZJWWW16iUkI6uO+z7UQRj2RsejeHNT+Fh6aVdy/uOou0Yjosxd8g95dhHm/xJxiUEqN0/1F2XOkTEsWLA4OCzajkjNJLgGaERuLQbO0eS/iTj4atYGSW1vuDMCGxsTq26xZSO/dSh5iNuDOPdcG/HcqxH/sO4FM8riAW7u/1Sqy4b0fnmtbj3S+Gj/I71Do7orfB5fJD7aLwdie9msZm4//GgZLGNVxAxzaWjNnORXjrQc5dF4J7bg9T5XRJAPL7rjctjCtJRUwP5NSRapjW9nduQps0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iBjLJT0aT27WVx8i/kaaCFW1KcJRDuOE5rbeuePZYr4=;
 b=QBulqSF+EV0T2wi2qa6mrO5Y8pV58I8iySZ4Jv5OGXI3rgbDez4Go0cnpw7lpW9U6NGctLgoFk9lwy53EfKpEQvC9wmmMsDLPc9JnCCMKga/+Jr6QvUG0/lYkBuwHuI8BYLuKwv9jA0bw5+m68uK9oWIBuombE2wb31AErjiZhtjSXpO86MOc3iYM96JKoPsFnk13PtnKUIVUiKNI4JReOEL4YjZzniwTLM/v030OXGqGy7l3edurJuMZMxf7asygIcmADu1BZYSG8SZ8jTB04gqab7P334F0jQA2hwBkJprGa19KmDnVdN/e4RncesLbTarY7wAxdzouNb3Cb7FYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=servotronix.com; dmarc=pass action=none
 header.from=servotronix.com; dkim=pass header.d=servotronix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=servotronix1008982.onmicrosoft.com;
 s=selector2-servotronix1008982-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iBjLJT0aT27WVx8i/kaaCFW1KcJRDuOE5rbeuePZYr4=;
 b=a0aJEmMiYcrOz6WTlFYnCgopZhj4oU8bQR0BFRQqcWwpmbPJz6IZHUFh0ml8lMF0X0D4MoOnXwrHgFhKFRDN3iH2cZ8i/6rwO+s0KxPpW0TY6UqewAsPtCmfwcOZovMLmhqzH6s/91kVA6ccz5gPJMbTldY44sLEaeNTo8edqw0=
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com (2603:10a6:803:7::12)
 by VI1PR0701MB2304.eurprd07.prod.outlook.com (2603:10a6:800:6b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.8; Wed, 11 Aug
 2021 15:39:40 +0000
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7]) by VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7%5]) with mapi id 15.20.4415.012; Wed, 11 Aug 2021
 15:39:39 +0000
From: "Geller, Nir" <nir.geller@servotronix.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Topic: [yocto] multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Index: AdeOlO8NS8O6ySAgTamPedi1GCaocwAIQWoQAADTuVAAA03+UA==
Date: Wed, 11 Aug 2021 15:39:39 +0000
Message-ID: 
 <VI1PR0702MB369522CF224D3640A074BED590F89@VI1PR0702MB3695.eurprd07.prod.outlook.com>
References: <169A373D601F14AC.28384@lists.yoctoproject.org>
 <169A44490E3AA64A.29477@lists.yoctoproject.org>
 <169A457CA9F8C7BB.28384@lists.yoctoproject.org>
In-Reply-To: <169A457CA9F8C7BB.28384@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=servotronix.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b5eb92b-8b45-469b-2851-08d95cde3b74
x-ms-traffictypediagnostic: VI1PR0701MB2304:
x-microsoft-antispam-prvs: 
 <VI1PR0701MB230431B845C4EF4E9290C16A90F89@VI1PR0701MB2304.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 fwUX/TaG1R/Meqpe3H72xyowElyJvVhiSsaSmKN4iA6lLArYUge3IbbHpjpvdfWKT9vFdN4sD532BetZFUxYPgUY1OPZEPobJNTD0eKKgZW1PYzbn4+KiasdKR2wCihOwrubzZN6kCLj/lqIHSRRvJYeDXxAAS+cDtzhSTLuROzuZ5rdOKqITE4ZRirvp5d2zSiVlZd29NdlwfJczKBQKtJ3a3052piQQKnWnIOsBFVSswPa3KDezu/sW0ik8Le0jvKQFXFdCLGPrgvkPlzZ4KjIz+0kaEA+67/f0vaIIQkNBEJAMc52t5xRmFU9mFQQKtc3ls/hTYnS+5Qqr8sb7xMy04P27aL2SPOzl4HfFxB8BBaVtOQ85nC5e5IlB9/jVVRZoHK2jcgZVDpITP9Jmrm0O5JOK6u6J7sWy51yLBRxcNUNm1dcHd5cDyNh1Voe2RM+JFAJk4+MK76xDnMfVPlYAZT2j/tMHA2MR3g8T4pR81dDbVP2YAs4vGfEr9/6T0dKJwirNVsm3yFgVcS5pF+iJ7kvh79SPc8RX578NUTCBvUhwYkn/9uY4gqLypMUKZR5tWhpYE7aF6JOXwbncAJrry+JPGmS/eDaRX6280iCbS/9dxg7upieO9XN6Tvhd2mlqwZt17rB0pSJCpD6hVIvy6Bk9zuDzUbHJ8zVZ849uJA5Ywvb6XMnQixQ/tP918oOpmNgKEfzVNRqUd2AG81XJBIV9ncIL8eDdGshzQc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0702MB3695.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(376002)(396003)(346002)(366004)(136003)(8676002)(8936002)(186003)(966005)(508600001)(26005)(33656002)(6506007)(53546011)(7696005)(166002)(38070700005)(83380400001)(38100700002)(52536014)(66556008)(5660300002)(2906002)(86362001)(122000001)(316002)(55016002)(21615005)(71200400001)(9686003)(76116006)(66446008)(6916009)(64756008)(66476007)(66946007)(2004002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?mskXGC3T+g5U9Jv7833M6YTkIiLHmKfzPrAvwIBTr+fUR2wVkuc6x14FBZQG?=
 =?us-ascii?Q?edoD95fpr8Q1ef8cnABBigp1BphpmaCz4WMEQp7MrmdTH6l13RqR+7Eu1ieQ?=
 =?us-ascii?Q?3RlWBVmcmV4uLZV0SshcgGYT0MGQ/6q52pVpFvziG4kEe6f3RHU6MJlZW0L/?=
 =?us-ascii?Q?diOrAk9lRUOAyhCqK6hA7wV9PXqcbL7+FxLLVKmQVdRVyH9EStLTeUvOj0WO?=
 =?us-ascii?Q?lBRJOGo9En2+J+TVP2dnvWIID5M1wQv6c8Iwjc54c9tvfR92J49Mzj6tth73?=
 =?us-ascii?Q?C0NrY5p6MLSVqV1Z/qZhICcYHh8/YVYuadp2cg+l8Bn/hvd9AQG4oMUBHIMw?=
 =?us-ascii?Q?Q5uiMAFjJxVP4oCrdkWL56bAUL6JhkzQyd88N3jhD2WrWy3HjIXLelHC6npb?=
 =?us-ascii?Q?Zik5mdEO/9rpWJHy1Wz4/flUpl9X+s8z26rAZnM+MMlTTaOeXDxO0P5OORQ7?=
 =?us-ascii?Q?uc63jeHgw3qF+M5yAkfZxTJPnoYArrj+CYaWMFUNCzwpfQb+CLkyRnntQULm?=
 =?us-ascii?Q?A9HUGjEfDsdBkes5aJ1TKrCTRatlJNKhhtl0wIJYWYaNjIT15BqpMzhS7zp+?=
 =?us-ascii?Q?k9tWM1FW/uHT5wjfcgGSnfSNuN4ryf33gBU8SueStWP3HezTSVlGHr4O6yum?=
 =?us-ascii?Q?xQJjB/YxoI9D9eileU60zwOMWLmmh0G8fpCS1hJvfTj7Kxq1pOzPX0aJwsvj?=
 =?us-ascii?Q?W7ADlj/TNKVefNeHChMRHyyagtTJRp/r4Sy3P6QHuLekORloobtoT/Is/fvn?=
 =?us-ascii?Q?mX9nEQljXLcS+5SExFPJvDcEPyvlTBUEDYelGfcWnjy3Fupgis5UlrvNdV4R?=
 =?us-ascii?Q?5wa+Ho8QTOpz9Ru2VwLpMxnZB6VI5nbvz1PjewwVnblDc8kKPGmVp6dIeUbH?=
 =?us-ascii?Q?7wrEtbO1pMkfo3pdEU+beu7oYjsCPWobvmTJwDmBmy3awKCgcc92bJKjEOYi?=
 =?us-ascii?Q?D79aI7stsXBt92jBPl7Pin+fLFbWqymJUjv6vTHHwzGYtyvr/jBLXgVuYyu0?=
 =?us-ascii?Q?ISyfKMvpy6VQvRPC0zanm3f0/hU4jBfCO9hv1nbWF5mErpQEQWCuaXpx70U8?=
 =?us-ascii?Q?qUWmaTVVMklRubJ7THzRWK1BT+Z/SuXz8LS6H7gVFhapWrcEtLzV4nOIDGLU?=
 =?us-ascii?Q?zElT0U8SEEuwWgDtzvOhcwKyFOeoUIYOM3bUAs3bODGE80c/d8hlNWZ6HJIV?=
 =?us-ascii?Q?gOFjx5DreBX8iFW4JtDfbb1thJMYVdRNMhGy58f3vfJ5SeTyOrX0zKgGyCrg?=
 =?us-ascii?Q?38kEIj+dg7yElpAehee1LXKpgQHsuKlN8brm4D+oDa5sw6+T64+TRGfZiIE1?=
 =?us-ascii?Q?q1cGfve2fYNMFpijUZVs4uSd?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: servotronix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0702MB3695.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b5eb92b-8b45-469b-2851-08d95cde3b74
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 15:39:39.8239
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c4bfc7d-fde6-4201-a2d6-2a396cc790f7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ML6ZT/YsbCZq/9FNtBO3V0SrsYjPnmferGfNHYlbpuyGERlLe01Nqb6B7KgxGwMEXWJwnbqyfCNbAr8RARo/fbd8BGwP7QmoerY/BJLSXMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0701MB2304
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0702MB369522CF224D3640A074BED590F89VI1PR0702MB3695_"

--_000_VI1PR0702MB369522CF224D3640A074BED590F89VI1PR0702MB3695_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Executing
bitbake lib32-libtool-cross -e
Yields, among many others,

18513 # $TARGET_VENDOR [3 operations]
18514 #   set /home/build/tisdk/sources/oe-core/meta/conf/bitbake.conf:132
18515 #     "-oe"
18516 #   set /home/build/tisdk/sources/meta-arago/meta-arago-distro/conf/d=
istro/include/toolchain-arm.inc:15
18517 #     ""
18518 #   override[virtclass-multilib-lib32]:set multilib_global.bbclass:15=
9 [multilib_virtclass_handler_vendor]
18519 #     "mllib32"
18520 # pre-expansion value:
18521 #   "mllib32"
18522 TARGET_VENDOR=3D"mllib32"

Later, HOST_VENDOR  =3D "${TARGET_VENDOR}",
And HOST_SYS =3D "${HOST_ARCH}${HOST_VENDOR}-${HOST_OS}"

Ok.

So either these variables are calculated incorrectly, or the libtool-cross =
recipe needs to be fixed in order to support multilib properly.

Can anyone please assist?

Thanks,

Nir.

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Geller, Nir
Sent: Wednesday, August 11, 2021 5:03 PM
To: Geller, Nir <nir.geller@servotronix.com>; yocto@lists.yoctoproject.org
Subject: Re: [yocto] multilib32: libtool-cross_2.4.6.bb configure failure

The variable SYS_HOST is expanded to armmllib32-linux-gnueabi
Shouldn't it be expanded to arm-none-linux-gnueabihf ?

Thanks,

Nir.

From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> On Behalf =
Of Geller, Nir
Sent: Wednesday, August 11, 2021 4:41 PM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] multilib32: libtool-cross_2.4.6.bb configure failure

Investigating run.do_configure suggests that in the configure stage oe_runc=
onf() is set with what seems to be wrong -host and -target values:
 --host=3Darmmllib32-linux-gnueabi   --target=3Darmmllib32-linux-gnueabi

How can I influence oe_runconf() generation and set correct values?

From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> On Behalf =
Of Geller, Nir
Sent: Wednesday, August 11, 2021 12:42 PM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: [yocto] multilib32: libtool-cross_2.4.6.bb configure failure

Hi There,

Following the instruction from TI

https://software-dl.ti.com/processor-sdk-linux-rt/esd/AM64X/latest/exports/=
docs/linux/Overview_Building_the_SDK.html

I've setup a yocto project for the AM64x.

Toolchain used is 9.2-2019.12

Now I need to add support for multilib32 because I have some software that =
can be compiled only 32 bit.

I added the following lines to conf/local.conf

# Define multilib target
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7athf-neon"

And I am able to build a few packges with lib32- successfully, however, lib=
32-libtool-cross fails at the configure stage:

--host is set to the value armmllib32-linux-gnueabi

ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: configure failed
ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: Execution of '/home/build=
/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux=
-gnueabi/lib32-libtool-cross/2.4.6-r0/temp/run.do_configure.29261' failed w=
ith exit code 1:
automake (GNU automake) 1.16.1
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <https://gnu.org/licenses/gpl-2.=
0.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com<mailto:tromey@redhat.com>>
       and Alexandre Duret-Lutz <adl@gnu.org<mailto:adl@gnu.org>>.
AUTOV is 1.16
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal --system-acdir=3D/home/build/tisdk/build/arago=
-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-lib=
tool-cross/2.4.6-r0/lib32-recipe-sysroot/home/build/tisdk/build/arago-tmp-e=
xternal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-c=
ross/2.4.6-r0/lib32-recipe-sysroot/usr/share/aclocal/ --automake-acdir=3D/h=
ome/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmlli=
b32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/sh=
are/aclocal-1.16 -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/wo=
rk/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtoo=
l-2.4.6/m4/ -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/ar=
mv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4=
.6/tests/ -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroo=
t-native/usr/share/aclocal/ --force --warnings=3Dcross -I m4
aclocal: warning: unknown warning category 'cross'
autoreconf: configure.ac: tracing
autoreconf: running: /home/build/tisdk/build/arago-tmp-external-arm-glibc/w=
ork/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recip=
e-sysroot-native/usr/bin/autoconf --include=3D/home/build/tisdk/build/arago=
-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-lib=
tool-cross/2.4.6-r0/libtool-2.4.6/m4/ --include=3D/home/build/tisdk/build/a=
rago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32=
-libtool-cross/2.4.6-r0/libtool-2.4.6/tests/ --include=3D/home/build/tisdk/=
build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueab=
i/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/share/aclocal/ --f=
orce --warnings=3Dcross
autoreconf: running: /home/build/tisdk/build/arago-tmp-external-arm-glibc/w=
ork/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recip=
e-sysroot-native/usr/bin/autoheader --include=3D/home/build/tisdk/build/ara=
go-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-l=
ibtool-cross/2.4.6-r0/libtool-2.4.6/m4/ --include=3D/home/build/tisdk/build=
/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib=
32-libtool-cross/2.4.6-r0/libtool-2.4.6/tests/ --include=3D/home/build/tisd=
k/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnue=
abi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/share/aclocal/ -=
-force --warnings=3Dcross
autoreconf: running: automake --add-missing --copy --force-missing --warnin=
gs=3Dcross
automake: warning: unknown warning category 'cross'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
| NOTE: Running ../libtool-2.4.6/configure  --build=3Dx86_64-linux         =
                        --host=3Darmmllib32-linux-gnueabi                  =
 --target=3Darmmllib32-linux-gnueabi                         --prefix=3D/us=
r           --exec_prefix=3D/usr                          --bindir=3D/usr/b=
in                             --sbindir=3D/usr/sbin                       =
       --libexecdir=3D/usr/libexec                             --datadir=3D=
/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonml=
lib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/s=
hare                      --sysconfdir=3D/etc                            --=
sharedstatedir=3D/com                                 --localstatedir=3D/va=
r                             --libdir=3D/usr/lib                          =
     --includedir=3D/usr/include                                 --oldinclu=
dedir=3D/usr/include                      --infodir=3D/home/build/tisdk/bui=
ld/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/l=
ib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/share/info            =
                     --mandir=3D/home/build/tisdk/build/arago-tmp-external-=
arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4=
.6-r0/lib32-recipe-sysroot/usr/share/man                   --disable-silent=
-rules                      --disable-dependency-tracking                  =
              --with-libtool-sysroot=3D/home/build/tisdk/build/arago-tmp-ex=
ternal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cr=
oss/2.4.6-r0/lib32-recipe-sysroot
configure: loading site script /home/build/tisdk/sources/meta-openembedded/=
meta-networking/site/endian-little
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
endian-little
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
arm-common
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
arm-32
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
common-linux
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
common-glibc
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
arm-linux
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
common
## ------------------------- ##
## Configuring libtool 2.4.6 ##
## ------------------------- ##

checking for GNU M4 that supports accurate traces... /home/build/tisdk/buil=
d/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/li=
b32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/bin/m4
checking whether /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/=
armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sy=
sroot-native/usr/bin/m4 accepts --gnu... yes
checking how m4 supports trace files... --debugfile
checking for a BSD-compatible install... /home/build/tisdk/build/arago-tmp-=
external-arm-glibc/hosttools/install -c
checking whether build environment is sane... yes
checking for armmllib32-linux-gnueabi-strip... arm-none-linux-gnueabihf-str=
ip
checking for a thread-safe mkdir -p... /home/build/tisdk/build/arago-tmp-ex=
ternal-arm-glibc/hosttools/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether make supports nested variables... (cached) yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... Invalid configuration `armmllib32-linux-gnueab=
i': machine `armmllib32-unknown' not recognized
configure: error: /bin/bash ../libtool-2.4.6/build-aux/config.sub armmllib3=
2-linux-gnueabi failed
WARNING: /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2=
hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/temp/run.do_confi=
gure.29261:1 exit 1 from 'exit 1'

ERROR: Logfile of failure stored in: /home/build/tisdk/build/arago-tmp-exte=
rnal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cros=
s/2.4.6-r0/temp/log.do_configure.29261


Manually running the configure command with -host=3Darm-none-linux-gnueabih=
f is working properly.

How can I fix the recipe to set -host correctly in this case?

Thanks a lot,

Nir.


--_000_VI1PR0702MB369522CF224D3640A074BED590F89VI1PR0702MB3695_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Executing <o:p></o:p></p>
<p class=3D"MsoNormal">bitbake lib32-libtool-cross -e<o:p></o:p></p>
<p class=3D"MsoNormal">Yields, among many others,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">18513 # $TARGET_VENDOR [3 operations]<o:p></o:p></p>
<p class=3D"MsoNormal">18514 #&nbsp;&nbsp; set /home/build/tisdk/sources/oe=
-core/meta/conf/bitbake.conf:132<o:p></o:p></p>
<p class=3D"MsoNormal">18515 #&nbsp;&nbsp;&nbsp;&nbsp; &quot;-oe&quot;<o:p>=
</o:p></p>
<p class=3D"MsoNormal">18516 #&nbsp;&nbsp; set /home/build/tisdk/sources/me=
ta-arago/meta-arago-distro/conf/distro/include/toolchain-arm.inc:15<o:p></o=
:p></p>
<p class=3D"MsoNormal">18517 #&nbsp; &nbsp;&nbsp;&nbsp;&quot;&quot;<o:p></o=
:p></p>
<p class=3D"MsoNormal">18518 #&nbsp;&nbsp; override[virtclass-multilib-lib3=
2]:set multilib_global.bbclass:159 [multilib_virtclass_handler_vendor]<o:p>=
</o:p></p>
<p class=3D"MsoNormal">18519 #&nbsp;&nbsp;&nbsp;&nbsp; &quot;mllib32&quot;<=
o:p></o:p></p>
<p class=3D"MsoNormal">18520 # pre-expansion value:<o:p></o:p></p>
<p class=3D"MsoNormal">18521 #&nbsp;&nbsp; &quot;mllib32&quot;<o:p></o:p></=
p>
<p class=3D"MsoNormal">18522 TARGET_VENDOR=3D&quot;mllib32&quot;<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Later, HOST_VENDOR &nbsp;=3D &quot;${TARGET_VENDOR}&=
quot;, <o:p></o:p></p>
<p class=3D"MsoNormal">And HOST_SYS =3D &quot;${HOST_ARCH}${HOST_VENDOR}-${=
HOST_OS}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ok.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So either these variables are calculated incorrectly=
, or the libtool-cross recipe needs to be fixed in order to support multili=
b properly.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone please assist?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Nir.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> yocto@lists.yoctoproject.org &lt;yocto@=
lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Geller, Nir<br>
<b>Sent:</b> Wednesday, August 11, 2021 5:03 PM<br>
<b>To:</b> Geller, Nir &lt;nir.geller@servotronix.com&gt;; yocto@lists.yoct=
oproject.org<br>
<b>Subject:</b> Re: [yocto] multilib32: libtool-cross_2.4.6.bb configure fa=
ilure<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The variable SYS_HOST is expanded to armmllib32-linu=
x-gnueabi<o:p></o:p></p>
<p class=3D"MsoNormal">Shouldn&#8217;t it be expanded to arm-none-linux-gnu=
eabihf ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Nir.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctoproj=
ect.org">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists=
.yoctoproject.org">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Geller, Nir<br>
<b>Sent:</b> Wednesday, August 11, 2021 4:41 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a><br>
<b>Subject:</b> Re: [yocto] multilib32: libtool-cross_2.4.6.bb configure fa=
ilure<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Investigating run.do_configure suggests that in the =
configure stage oe_runconf() is set with what seems to be wrong &#8211;host=
 and &#8211;target values:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;--host=3Darmmllib32-linux-gnueabi &nbsp;&nbsp;=
--target=3Darmmllib32-linux-gnueabi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How can I influence oe_runconf() generation and set =
correct values?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctoproj=
ect.org">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists=
.yoctoproject.org">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Geller, Nir<br>
<b>Sent:</b> Wednesday, August 11, 2021 12:42 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a><br>
<b>Subject:</b> [yocto] multilib32: libtool-cross_2.4.6.bb configure failur=
e<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi There,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Following the instruction from TI<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://software-dl.ti.com/processor-sdk-=
linux-rt/esd/AM64X/latest/exports/docs/linux/Overview_Building_the_SDK.html=
">https://software-dl.ti.com/processor-sdk-linux-rt/esd/AM64X/latest/export=
s/docs/linux/Overview_Building_the_SDK.html</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve setup a yocto project for the AM64x.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Toolchain used is 9.2-2019.12<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now I need to add support for multilib32 because I h=
ave some software that can be compiled only 32 bit.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I added the following lines to conf/local.conf<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># Define multilib target<o:p></o:p></p>
<p class=3D"MsoNormal">require conf/multilib.conf<o:p></o:p></p>
<p class=3D"MsoNormal">MULTILIBS =3D &quot;multilib:lib32&quot;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;armv7=
athf-neon&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And I am able to build a few packges with lib32- suc=
cessfully, however, lib32-libtool-cross fails at the configure stage:<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--host is set to the value armmllib32-linux-gnueabi<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: co=
nfigure failed<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: Ex=
ecution of '/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7=
at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/temp/run.do_co=
nfigure.29261' failed with exit code
 1:<o:p></o:p></p>
<p class=3D"MsoNormal">automake (GNU automake) 1.16.1<o:p></o:p></p>
<p class=3D"MsoNormal">Copyright (C) 2018 Free Software Foundation, Inc.<o:=
p></o:p></p>
<p class=3D"MsoNormal">License GPLv2+: GNU GPL version 2 or later &lt;<a hr=
ef=3D"https://gnu.org/licenses/gpl-2.0.html">https://gnu.org/licenses/gpl-2=
.0.html</a>&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">This is free software: you are free to change and re=
distribute it.<o:p></o:p></p>
<p class=3D"MsoNormal">There is NO WARRANTY, to the extent permitted by law=
.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Written by Tom Tromey &lt;<a href=3D"mailto:tromey@r=
edhat.com">tromey@redhat.com</a>&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and Alexandre D=
uret-Lutz &lt;<a href=3D"mailto:adl@gnu.org">adl@gnu.org</a>&gt;.<o:p></o:p=
></p>
<p class=3D"MsoNormal">AUTOV is 1.16<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: Entering directory `.'<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: configure.ac: not using Gettext<o:p></o:=
p></p>
<p class=3D"MsoNormal">autoreconf: running: aclocal --system-acdir=3D/home/=
build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-=
linux-gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/home/build/=
tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-=
gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/share/aclocal=
/
 --automake-acdir=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/wo=
rk/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe=
-sysroot-native/usr/share/aclocal-1.16 -I /home/build/tisdk/build/arago-tmp=
-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool=
-cross/2.4.6-r0/libtool-2.4.6/m4/
 -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-ne=
onmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6/tests/ -=
I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neon=
mllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/us=
r/share/aclocal/
 --force --warnings=3Dcross -I m4<o:p></o:p></p>
<p class=3D"MsoNormal">aclocal: warning: unknown warning category 'cross'<o=
:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: configure.ac: tracing<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: running: /home/build/tisdk/build/arago-t=
mp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libto=
ol-cross/2.4.6-r0/recipe-sysroot-native/usr/bin/autoconf --include=3D/home/=
build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-=
linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6/m4/
 --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6=
/tests/ --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/wo=
rk/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe=
-sysroot-native/usr/share/aclocal/
 --force --warnings=3Dcross<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: running: /home/build/tisdk/build/arago-t=
mp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libto=
ol-cross/2.4.6-r0/recipe-sysroot-native/usr/bin/autoheader --include=3D/hom=
e/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib3=
2-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6/m4/
 --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6=
/tests/ --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/wo=
rk/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe=
-sysroot-native/usr/share/aclocal/
 --force --warnings=3Dcross<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: running: automake --add-missing --copy -=
-force-missing --warnings=3Dcross<o:p></o:p></p>
<p class=3D"MsoNormal">automake: warning: unknown warning category 'cross'<=
o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: running: gnu-configize<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: Leaving directory `.'<o:p></o:p></p>
<p class=3D"MsoNormal">| NOTE: Running ../libtool-2.4.6/configure&nbsp; --b=
uild=3Dx86_64-linux &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--host=3Darmmllib3=
2-linux-gnueabi &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--target=3Darmmllib32-linux-gnu=
eabi &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--pref=
ix=3D/usr &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--exec_pre=
fix=3D/usr
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--bi=
ndir=3D/usr/bin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; &nbsp;&nbsp;--sbindir=3D/usr/sbin &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--lib=
execdir=3D/usr/libexec &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--datadir=3D/home/build/tisdk/build/ara=
go-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-l=
ibtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/share
 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--sysconfdir=3D/etc &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--shar=
edstatedir=3D/com &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--localstatedir=3D/v=
ar &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; &nbsp;&nbsp;--libdir=3D/usr/lib &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--includedir=
=3D/usr/include &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;--oldincludedir=3D/usr/include &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; &nbsp;&nbsp;--infodir=3D/home/build/tisdk/build/arago-tmp-external-arm-g=
libc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0=
/lib32-recipe-sysroot/usr/share/info &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;-=
-mandir=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at=
2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sys=
root/usr/share/man
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; &nbsp;&nbsp;--disable-silent-rules &nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &nbsp;&nbsp;--disable-dependency-tracking &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nb=
sp;&nbsp;--with-libtool-sysroot=3D/home/build/tisdk/build/arago-tmp-externa=
l-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2=
.4.6-r0/lib32-recipe-sysroot<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/meta-openembedded/meta-networking/site/endian-little<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/endian-little<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/arm-common<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/arm-32<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/common-linux<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/common-glibc<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/arm-linux<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/common<o:p></o:p></p>
<p class=3D"MsoNormal">## ------------------------- ##<o:p></o:p></p>
<p class=3D"MsoNormal">## Configuring libtool 2.4.6 ##<o:p></o:p></p>
<p class=3D"MsoNormal">## ------------------------- ##<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">checking for GNU M4 that supports accurate traces...=
 /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonm=
llib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr=
/bin/m4<o:p></o:p></p>
<p class=3D"MsoNormal">checking whether /home/build/tisdk/build/arago-tmp-e=
xternal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-c=
ross/2.4.6-r0/recipe-sysroot-native/usr/bin/m4 accepts --gnu... yes<o:p></o=
:p></p>
<p class=3D"MsoNormal">checking how m4 supports trace files... --debugfile<=
o:p></o:p></p>
<p class=3D"MsoNormal">checking for a BSD-compatible install... /home/build=
/tisdk/build/arago-tmp-external-arm-glibc/hosttools/install -c<o:p></o:p></=
p>
<p class=3D"MsoNormal">checking whether build environment is sane... yes<o:=
p></o:p></p>
<p class=3D"MsoNormal">checking for armmllib32-linux-gnueabi-strip... arm-n=
one-linux-gnueabihf-strip<o:p></o:p></p>
<p class=3D"MsoNormal">checking for a thread-safe mkdir -p... /home/build/t=
isdk/build/arago-tmp-external-arm-glibc/hosttools/mkdir -p<o:p></o:p></p>
<p class=3D"MsoNormal">checking for gawk... gawk<o:p></o:p></p>
<p class=3D"MsoNormal">checking whether make sets $(MAKE)... yes<o:p></o:p>=
</p>
<p class=3D"MsoNormal">checking whether make supports nested variables... y=
es<o:p></o:p></p>
<p class=3D"MsoNormal">checking whether make supports nested variables... (=
cached) yes<o:p></o:p></p>
<p class=3D"MsoNormal">checking build system type... x86_64-pc-linux-gnu<o:=
p></o:p></p>
<p class=3D"MsoNormal">checking host system type... Invalid configuration `=
armmllib32-linux-gnueabi': machine `armmllib32-unknown' not recognized<o:p>=
</o:p></p>
<p class=3D"MsoNormal">configure: error: /bin/bash ../libtool-2.4.6/build-a=
ux/config.sub armmllib32-linux-gnueabi failed<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: /home/build/tisdk/build/arago-tmp-external-=
arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4=
.6-r0/temp/run.do_configure.29261:1 exit 1 from 'exit 1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/build/tis=
dk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnu=
eabi/lib32-libtool-cross/2.4.6-r0/temp/log.do_configure.29261<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Manually running the configure command with &#8211;h=
ost=3Darm-none-linux-gnueabihf is working properly.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How can I fix the recipe to set &#8211;host correctl=
y in this case?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks a lot,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Nir.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_VI1PR0702MB369522CF224D3640A074BED590F89VI1PR0702MB3695_--
