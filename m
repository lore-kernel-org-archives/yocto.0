Received: from EUR03-VE1-obe.outbound.protection.outlook.com (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.101])
 by mx.groups.io with SMTP id smtpd.web09.7947.1628690614512566232
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Aug 2021 07:03:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@servotronix1008982.onmicrosoft.com header.s=selector2-servotronix1008982-onmicrosoft-com header.b=qUAxfTMb;
 spf=pass (domain: servotronix.com, ip: 40.107.5.101, mailfrom: nir.geller@servotronix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nB1DvyQxqg2URa14bVX1bwwHZ8BQ9V4dXCn5c1r+Gqdz15tn0nt0gha/zpQMws2U33QGHTzkrNnrfbuRcQHfIf9vDtrK+Kr+mxwJxUlzLQUmYELQMj9Xjee1N7MYB7IA43DIEBwh29glGj69ugNTmb556hZnTQCN33fdFUqgRIdtZmBOzjceDEtSpnZavJ2LmJ1V52uYpBV8Ms4qk8fsEXLrkZ3lhN3ZoRhZ0ED2NE9I7Lres+7UeOCPi+SVcO8Lx/LScMx/x0BDzoqaoUAbjKjA6dWVs6s8C/N4sK0f9YCc7XSovW7+q1RdNxsXkQ84o+hwUJ2IeBGwRK11egstDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yUaKS6W+Pf30GCCriiv7Jf9U5QnX5yAVoP+frth1sIo=;
 b=I3xPl6pwpcnFkscGPuWX05mmGonKgDQcFrtnWMF7qoAoYhJVxL+Vl50zahPOcCj+xl8p3+I2/IZcaVI4sMdA8nyrgAogZi+RZCyKRuBHHrScwAYpXAM3b/BDqgb9yGb0vBJh6GBLWm5Avos/k+viBkL046jUrY9zmWgZcNKfAw8TYvZy8b3IIDozym83UsQOEWSepcMe22m1d49UoRVwMw65KKlBhPFYPQcQhZPVoMOVEBbfelQqSmcE7gaKiF/4Qzmg7t9VVxOSm5EG8OLjtXCmWaZthtHMtFm1DRVCHSF8T90dArOcepeJU2xoniO8/HpIwg7URgDeDcy40q0loA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=servotronix.com; dmarc=pass action=none
 header.from=servotronix.com; dkim=pass header.d=servotronix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=servotronix1008982.onmicrosoft.com;
 s=selector2-servotronix1008982-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yUaKS6W+Pf30GCCriiv7Jf9U5QnX5yAVoP+frth1sIo=;
 b=qUAxfTMbnS+Qd9j+70vhZbpzVLzRkBBDCYjciNBOCbu+35xy5+SMEfZHddhQ1V5Qf3Z0h+Ifsscn1aL9hVBKtJmmyz6so1rFM0U8Ptw68DOxx/IFO9oKm4ssR/Zz3D+sIS2lL+RM3S/l2k8GWoa3WxfLfciZm4bboJbZCDUbE6Q=
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com (2603:10a6:803:7::12)
 by VI1PR0701MB2445.eurprd07.prod.outlook.com (2603:10a6:800:6d::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.5; Wed, 11 Aug
 2021 14:03:30 +0000
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7]) by VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7%5]) with mapi id 15.20.4415.012; Wed, 11 Aug 2021
 14:03:30 +0000
From: "Geller, Nir" <nir.geller@servotronix.com>
To: "Geller, Nir" <nir.geller@servotronix.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Topic: [yocto] multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Index: AdeOlO8NS8O6ySAgTamPedi1GCaocwAIQWoQAADTuVA=
Date: Wed, 11 Aug 2021 14:03:29 +0000
Message-ID: 
 <VI1PR0702MB3695196FC4BB96DFEAD9340C90F89@VI1PR0702MB3695.eurprd07.prod.outlook.com>
References: <169A373D601F14AC.28384@lists.yoctoproject.org>
 <169A44490E3AA64A.29477@lists.yoctoproject.org>
In-Reply-To: <169A44490E3AA64A.29477@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: servotronix.com; dkim=none (message not signed)
 header.d=none;servotronix.com; dmarc=none action=none
 header.from=servotronix.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2522aed7-036e-4cd9-612b-08d95cd0cc50
x-ms-traffictypediagnostic: VI1PR0701MB2445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <VI1PR0701MB24459B1366FC34B8951BDF2C90F89@VI1PR0701MB2445.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 JTpHIjnnFmH5LRaOzZHn1PLoyEmEJkg6fnD930WPVwsD25OniS+P/eZy2LRoXd0oFGb3RS73kH3IDRsOwYiHdFHwZBbb7eJclJLFkrwtx26CvL+SuctcADLHlvAu8bBxM1y6dUDmQS95T87YEDZaAENBAXgrohnwTAwHC5B+SS/SuHWNms4a8YHYY6QRhtm0NqBsRhRPpiHFL0Nxenr7C9oX7bxvuWq9+lhHnnOBY9eh8DGMlwE0GE9sFCrQ59F5gU5goqExmZb7qHLNSaW512twWOzjUsZo/EAOiLU56y2LmuNcnQjfP6wJVPbdrdRhBFXekxWN52fK4oYAD9c9M2wNa/Ruv0qpt1DMFB9Plsu2NWrn50uqqgXH/QfknsVbhX8jxOz09cbBw88RdfE/TSkFu5bf9b4SDQblInlwHyuyIbSUsN/YBKZIjQOeQWsUQB7yHOEIMitMcm3/bE/NYVmsa7Gy2lTvHS71iPz1uqen37j66gfuI6gvw8tWhR5ZHghmFuL6x+w4Ks0vSSRACLSqvqEfJRyyWRuF2MOH+t20a1cKQ53N+bSg9PL5w6mcXdP93rHdFTKojunqI4XSwTE5FNmvImsswuRbFowojfrBuH1r82KfLCoiFxjkrPpg3GYkvYmKdQJEqH+SmyL9TSpVMiLmXYiyKhLN9IRQLqxtxtEa1eCFe2FQhwCv+3bPxBZ2fbx4xNaK5z/tzaS80/iso+wgOksgoAPvOD8gvBJgYEwVsNEaAg4nSD7npZRbU6368sHP4ilctSIfqBPBrk13p6v9eHjk6w2fhIZc5h2zoXyJ+YLffoj5VvX/ltuC
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0702MB3695.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66476007)(66946007)(122000001)(55016002)(66446008)(64756008)(66556008)(38100700002)(8676002)(33656002)(316002)(8936002)(76116006)(21615005)(5660300002)(71200400001)(38070700005)(2906002)(186003)(6506007)(966005)(53546011)(508600001)(26005)(7696005)(110136005)(9686003)(52536014)(166002)(86362001)(83380400001)(2004002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?HlnYNwVnZWS9OoH48tRfaohr8880ABwPOQpjgQyRtevrdTHS4QW2mE2zVial?=
 =?us-ascii?Q?hq0C5ej/QOkpqYCEHanWgomXtIVD/YFkhGQERC15OiJOSJgkFXNJCOno7XnW?=
 =?us-ascii?Q?mO2EJUXAgoDY5V6185mPOeuLtCV/RqT4RIkpbSPd9DS3qZty2T5YLs06Jc0n?=
 =?us-ascii?Q?WFvhEvbrqtzzSu5eAuAtRJ0vW/jav4581s55YUskhpNgdQuCLttvDtBTKAGM?=
 =?us-ascii?Q?LvLJ01FlQoctpnKK+GpvCKM93lizuLVFMQiEQ7rN8h7cHkPqk9IySuUCK5s9?=
 =?us-ascii?Q?gWOwNBDZ3ravTlRct99IpKgHlJL1nMC2GdAnuEv3tFo3FZBHkt/b1ImlMQyi?=
 =?us-ascii?Q?W1a3Se/di20a+w0BNThLCrbbVoXrDhJBdZ1t2VcOPvU2R40Q3DZSgE87+IO+?=
 =?us-ascii?Q?2gXFFg7t38N5UtflBaii5DDPe7X+xtUXzIwJwd2nMs5ttfRCLhTDy4PLFW+l?=
 =?us-ascii?Q?fxpXINDqsiyjQcAWKghNZOZmynQ4GJpJRo7ThbQSNmzNNWpHszU+ey0DiP0Z?=
 =?us-ascii?Q?RZsaIf6uYRLDFlkmLzA4SbDU6gyBgxlEhr7Xl7JdRjVas+GS8zZyXslMRObp?=
 =?us-ascii?Q?fZCbrzoSwbA5y6Rlvo4mpLAvf9sVIFVg5pMqUImdmU4Q1K9xvKsqF91Jb4LI?=
 =?us-ascii?Q?I+GsCNG0n8fDO8fcbZkc4ooJAsd4uHSpm9tRwkYVNRvBbGAvOiaWPjxRfyyT?=
 =?us-ascii?Q?c+Irx4Iw6rNOEFRU/LCFsd55KzolK3xq9HXbxZwiNjFKWABJQSlFvXLxmvPO?=
 =?us-ascii?Q?vz28yMLrZ6ASsIrMcObqyTKWwOlBUQMzkxqBKri5HuVLfXmJafMH9+UnPG8J?=
 =?us-ascii?Q?ugnN+E9axPIpOfz1bun0H4rQ2DWWmourxXUIinIyC++LHu92j8+UH8ezd6MB?=
 =?us-ascii?Q?pZorTozi/hvFeCVsl329ogLfrfd81/IqyRXoI9FgTG9K31t6xFVPzTkK10yK?=
 =?us-ascii?Q?fR1RhzUIXFp5lbkFrS2zVuqR/AzZE/OEHOJljc6+t4k7aj2knxpnH9krlpKx?=
 =?us-ascii?Q?IbJ5mKaK4gWsM/JCOpRddbXXFt16zfJ7CbE6NWIIKQ2FlsY037W8xpvJgEvy?=
 =?us-ascii?Q?JFjrzMrEx09tVGZZJucs2hihmVOUBKzAl6OpHQBC4x2Z+wGBG9/nnqunGHQW?=
 =?us-ascii?Q?l2MbnuwF0JbQH08aqlRBG53IOJCg8COOXwT5aBEL5H9OgvEcn+FN7mNkkv2F?=
 =?us-ascii?Q?ktKzGtEYnvaV9luHhc6zmwzSqALmATxQ52ds+1/65k8zKNOOwT5haFnNmBNk?=
 =?us-ascii?Q?//AEQBmyWkwo58XMdHysHg3DF/Plf4oBooFBa5bMVfvQSakEsfyw6++Nflm2?=
 =?us-ascii?Q?FHJX2hbjvD4ioPDhdYXDnDPt?=
MIME-Version: 1.0
X-OriginatorOrg: servotronix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0702MB3695.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2522aed7-036e-4cd9-612b-08d95cd0cc50
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 14:03:30.0018
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c4bfc7d-fde6-4201-a2d6-2a396cc790f7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xwi4pW4Pv4Z7h6BsJPIrJ+eKA14wMKt1TRUL+Ty1I2zyqBvedHjRej9owfR54kDpohm4RHZasY9BzZ8+9V6amSMcSq3UhNrULLFJyhdpOo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0701MB2445
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0702MB3695196FC4BB96DFEAD9340C90F89VI1PR0702MB3695_"

--_000_VI1PR0702MB3695196FC4BB96DFEAD9340C90F89VI1PR0702MB3695_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The variable SYS_HOST is expanded to armmllib32-linux-gnueabi
Shouldn't it be expanded to arm-none-linux-gnueabihf ?

Thanks,

Nir.

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Geller, Nir
Sent: Wednesday, August 11, 2021 4:41 PM
To: yocto@lists.yoctoproject.org
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


--_000_VI1PR0702MB3695196FC4BB96DFEAD9340C90F89VI1PR0702MB3695_
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
<p class=3D"MsoNormal"><b>From:</b> yocto@lists.yoctoproject.org &lt;yocto@=
lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Geller, Nir<br>
<b>Sent:</b> Wednesday, August 11, 2021 4:41 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
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

--_000_VI1PR0702MB3695196FC4BB96DFEAD9340C90F89VI1PR0702MB3695_--
