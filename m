Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA1B3CDB483
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 10:09:57 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.87])
 by mx.groups.io with SMTP id smtpd.web10.205030.1697537387218449680
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 03:09:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=dm/RTI39;
 spf=pass (domain: kymati.com, ip: 40.107.13.87, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M8KwOFLnLXfG4+4N1iOQAZp6sc8GparxJQf8/AE+MnvVLJqj+uUQ+ysbbTKZCXH1Sb4+DOmKijRpalYoEQVneuYDXBAkEkAD2TySHPE+NDxpDY7vAk7/Q1C/4AQLMj7q4TS8DNDDfoY8PvSBqjspBwzeiRIoXsnL5/GQD4kf3RXFtrRfG9nWUrvHwUDevpGZWlMcGdrCcvTQ+rZqWWp+97bdxesOvwt157P+723opiJPD3+4ec2I+wLM3avzUZmSsFir2A4hOBD97QHDHiLuZCaR+RVEKBbr2UlaMQjoiJmeP1Q9snmaO5+l/MPWaTzqVE+U83zDey96FARcwvhkDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QOm9/X/BWhhyWJRrBKIZQMrfjWsP4176fuiOcShBEsE=;
 b=fpbsyCClWrHZKgY5fDFabVpSqKVfogY6auJF9Zu4nINBO/2uhWGP7VtK0nkzgY+ZHNM/ahrD4e/B7vgOLlDk6/bMEucoga6W2UtpQJettqlIjH2MiwS/rr6cPufHoTQf8d+lMxb+jkf5vWOyHzLfNyKSt0gtiYTuX0ZZy2rzUwKIIcafj4NZU+CwfJGZ3TlXR9fOi2RTcYYS9qQBk+XWRrzvoz7ut0ypn5TRARqeRIMowp+E08ZaVAxvG6QfKBJPFZV3jgJbW5Nv7ybwikTbFnmjljDjNYDwD1o4TsaXOXSP0XxAz5v2z1R7K7LDx60qYHLrwOr0YCrOd/qDN8K/lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QOm9/X/BWhhyWJRrBKIZQMrfjWsP4176fuiOcShBEsE=;
 b=dm/RTI39JHoB4zMiG2Tb57cIRMjP/e7IFa+yyUfXrTioVCBNa8Rp06NUVvc5f29xxusHkcL2IXyyOf00jZi7pgXB/TpLxJszl/OdQJ7AdMKogpbsJwsBPQZJycGC680ExFUwJB6LwQDR4P4x8P3IKVuZYMA78E8ZGISdf9DoACM=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by DB4PR03MB9603.eurprd03.prod.outlook.com (2603:10a6:10:3f1::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 10:09:42 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3%3]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 10:09:42 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Thread-Topic: [yocto] Using cmake... how?
Thread-Index: AQHaAEU1GVmCsck7rEeYingXKJhbi7BNevsAgAA5peaAAAoJAIAAA9or
Date: Tue, 17 Oct 2023 10:09:42 +0000
Message-ID: 
 <AM9PR03MB70124FE13C06B022A3C0BF5F92D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5ZTMlhyMdLPEQ_@nuoska>
In-Reply-To: <ZS5ZTMlhyMdLPEQ_@nuoska>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|DB4PR03MB9603:EE_
x-ms-office365-filtering-correlation-id: 89853dfa-263a-4c56-e626-08dbcef92e65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 fVcT7lvDYO4QNs7RoV3/AEDkdq4ZbZWwwy1apbRvIVBq6tc8QM3YKZCMF5nHsw/BJpChlgGysFKRTl29dTJWqf3cwJAV533WdblEv9IBIahWAqPBhm0YCEeOIsxwbYMeUi+gKnu+3OoFuUj5e6eNJGbyiHVMcfwsSBs3ssYwN2Y7lG7ipsXdilX9a7Z3gIV7bh0rG3Zwpv3QrBze/z0Uwaote9wAoiAKXbit2urdDHhOb49Vp8/XqIaKDYCiUdv0RJVxYm4nHN+xfpxb4oPJbDKjrubUkIHkQWQo/pAOgITfnc2ShUtuH+9LIEwWtR9q8q3ok1fbhtFFIlp9d11p/qMTiOCSd6OIsLzuuESn83FB3SVNdF70gNwt2pxkUXVQsdHcjQAqQ+UGcFYltX6UXQ0VTXJNBsI6YhzegZ/kkfE1hXHVS1umVpQrnAjJDTM7vg47z59WqhuAy9p79Ota94N3wPzMD8msRCrVhMeDbxzTaKHh/F2hCLWhVz9hlhqmHxwxl06obLaBlj9sChp5jXtJHx7vfNNiVD8waqoSDhWOl78qL53dhn4uEvEfGYkiPkt4Og/+/6iU4o/1D9VW5EX4kWKNLz04aMjOBQW5cx4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(39830400003)(366004)(396003)(346002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(316002)(1015004)(966005)(66556008)(66946007)(66446008)(64756008)(66476007)(91956017)(76116006)(6916009)(83380400001)(38100700002)(71200400001)(166002)(122000001)(38070700005)(33656002)(86362001)(478600001)(55016003)(53546011)(9686003)(7696005)(6506007)(2906002)(19627405001)(41300700001)(5660300002)(52536014)(44832011)(4326008)(8676002)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?AK8mVFuapEMclRWE0ALuVw1b7NCYU9hhePW2lo6EsPbajdrJl6tQvJGXmu?=
 =?iso-8859-1?Q?bZuii5enKBWn/au670S2N8wsLmOlR+RsE8PAHjLvgY5sM6J9o4MUu9FxNE?=
 =?iso-8859-1?Q?iF21KuaV5Ev1//G5UyiTxEC2i+yl9iJzb93wm+9vtpcIxqGlCKyyQYLAMl?=
 =?iso-8859-1?Q?jzuntJba+vHwlQC4lVHpPSjbM31Sf5hgYvnW8fM6I2jc4JTMta+yQRm7tV?=
 =?iso-8859-1?Q?oycfm21xo17yBdSEMpCHjm/vRTpeXrTKTvFVigQg0qLLx8DZVleHLkpT0q?=
 =?iso-8859-1?Q?kPG/s1YLVsX+jCTz5pSmIQawjXLTGwTTtTns/AfGVCvcxOgxnxs45NtMtK?=
 =?iso-8859-1?Q?2zIUfba1In2D4/eK/ZnUeowKBRfDl9VglhSDuBf8FlAfsRR57vNpRExuol?=
 =?iso-8859-1?Q?02dBNR5T0PjLTd9EwLJ11IeccRzFAutDK2Ja1XIf4vmFJodv6F/noQ39Gi?=
 =?iso-8859-1?Q?UzP0Wu6yCvdwQYvEJxG0ZLMqAzwKJH47LVpWCouzVdoO56i452k66fJ+II?=
 =?iso-8859-1?Q?jiSSGVIwXYr6ntWfEUXZaUG+A6dtjMGyviXMby5bUmvgs1IWS4myruH9pe?=
 =?iso-8859-1?Q?XDpd+21qTl8tYo6FJZBNc4OxbZGUBeajopILj+nybxjyp9wcfGCQ7sIJlM?=
 =?iso-8859-1?Q?/veaSfXvFi4KS1xP+Hl8pkzYq/yy3kg3I5tJA/EyFoNX+X4M83Pvd/PrVP?=
 =?iso-8859-1?Q?s/9mEM4d2CbnsAnxvcUx4fm4cuUhnm225Qre3s43CzzTq1w01Pk4FP7/Nb?=
 =?iso-8859-1?Q?77s9QvcamU1iG3AgQ3Edmpvp2IUdjELmjdNsZ8CxOtjy1U+iS6sUDpBN9Y?=
 =?iso-8859-1?Q?yxd2oADKwPFuifDne4xdzWcQ5DbB/oUc0NUEAb4Z1/wfZ9rcGKCyvpKCKL?=
 =?iso-8859-1?Q?lbwauyo8ixwNFG+xAOydJSIp0Js+S63YIPmH4ybqwfd/7A/YqM+rdotf3g?=
 =?iso-8859-1?Q?g957uXXTM772iVaEUPsB8Zl/OWaTwRpBGs/v1X3CYBsxicJb3OE4XNfbWh?=
 =?iso-8859-1?Q?oU+HtuDUnv6Vk5cZlRQBha5qxvcG/t9nsYJRMLkmeBVJz8WuyCXgtfpu+W?=
 =?iso-8859-1?Q?FFLhS5GGtsraDqq+GdfFjObZoAjgXllbq2szv9PYshAKyvnI6SKgXHlka9?=
 =?iso-8859-1?Q?n2bzA1lhKxzp48JSYmTCOfpDmFwA70EQaVV1aLjWtzo6PUcT7N9I92DNuA?=
 =?iso-8859-1?Q?WfIr1Dr3eFKMr0oze9GJFHvV+vkCIkrHAEh1MVGX0bNxnAOpuXcousmUvj?=
 =?iso-8859-1?Q?CLAH4RS0V7YooTO0e/flN3IS3bTRw5cSr205e3Sq27Fpf2H1CgcBPs/F1i?=
 =?iso-8859-1?Q?EUUSNFs/a2efel3NcIpSQIILScfcuOAjkzvjZ+WaslQVX2kDOJaYTnfAue?=
 =?iso-8859-1?Q?qRikKVjYQFuQ6NSohbnTJszPvfLMuZ4voJ8ra9yhpp0z2U20RoYK/LRFKg?=
 =?iso-8859-1?Q?M/5CVo1iz4FRJBSBifeM+EnXCu7+kA/16XilfWXqM/+gp3MPhNEbJWomGx?=
 =?iso-8859-1?Q?xpSBI8XxObWaysgqhX+w37TbgYwm0AtS8WtS1sGJyMRRVWGno3TYNNwr40?=
 =?iso-8859-1?Q?Wr+7B4xlyPtsexPeE15R1FcyVA6EL0Qw4qjtiODwwx9fpnr5V87mPtqIKz?=
 =?iso-8859-1?Q?9MQy1fPYF4DEEEd93MwD+NSnY+kk8dE320+gsOMB5rMGP7x/kWNxazn4y+?=
 =?iso-8859-1?Q?zAkreGWBNPjCwrpHf2otXuSWTwRwVio+vbeXdWCf?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB70124FE13C06B022A3C0BF5F92D6AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89853dfa-263a-4c56-e626-08dbcef92e65
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 10:09:42.3222
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CM6CdOVZmDkU0+f5e/BeV6K/lQTms3B51+Vx8c2e2aA6bcjwfLDEm5HOdNexdvefF6TLLW4D2ASRWVj6ZDe99rtSwu12oeCXIBP5zXnDKdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR03MB9603
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 10:09:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61369

--_000_AM9PR03MB70124FE13C06B022A3C0BF5F92D6AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks

So, first, I thought - as I had seen examples that I had to put these flags=
 etc. in the configuration function but it appears that was a wrong thing.
Now my recipe looks like:
SUMMARY =3D "mylib"
DESCRIPTION =3D "Fetch and build mylibi"
LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D ""

##EXTRA_OECMAKE =3D "all"
inherit cmake

python do_display_banner() {
    bb.plain("***********************************************");
    bb.plain("*                                             *");
    bb.plain("*  mylibrecipe created by mei         *");
    bb.plain("*                                             *");
    bb.plain("***********************************************");
}

addtask display_banner before do_build

# where and how to get source
## this is via git
SRC_URI =3D "git://git@correct git - this works;"

# where to source is stored
S =3D "${WORKDIR}/git"

## was using target flags but Mikko suggested EXTRA_OECMAKE which at least =
doesnt complain
##TARGET_CFLAGS +=3D "-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -DBU=
ILD_TOOLS=3DON"
##TARGET_CXXFLAGS +=3D "-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -D=
BUILD_TOOLS=3DON"
EXTRA_OECMAKE +=3D "-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -DBUIL=
D_TOOLS=3DON"

## this I think is needed to ensure the correct compilers are used... I thi=
nk anyway.
export CXX=3D"/usr/bin/arm-none-gnueabi-g++"
export CMAKE_CXX_COMPILER=3D"/usr/bin/arm-none-gnueabi-g++"




However:
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_configure
| -- The CXX compiler identification is GNU 9.4.0
| -- The C compiler identification is GNU 9.4.0
| -- Detecting CXX compiler ABI info
| -- Detecting CXX compiler ABI info - failed
| -- Check for working CXX compiler: /usr/bin/g++
| -- Check for working CXX compiler: /usr/bin/g++ - broken
| CMake Error at /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53=
-crypto-phytec-linux/libkymati/1.0-r0/recipe-sysroot-native/usr/share/cmake=
-3.19/Modules/CMakeTestCXXCompiler.cmake:59 (message):
|   The C++ compiler
|
|     "/usr/bin/g++"
|
|   is not able to compile a simple test program.
|





suggesting it is not using the c++ I thought it should be.
________________________________
From: Mikko Rapeli <mikko.rapeli@linaro.org>
Sent: 17 October 2023 11:52
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?

Hi,

On Tue, Oct 17, 2023 at 09:21:27AM +0000, Dave Hitchman wrote:
> Oh I dont know. This is getting to be a bit annoying.
> I had already included the inherit cmake line but now it seems maybe that=
 you dont need to put any cmake commands in... not 100% sure, no one seems =
to explain this, I am not convinced.
> However I want some extra flags and I have read that you should be able t=
o:
> TARGET_CFLAGS +=3D "-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -DBU=
ILD_TOOLS=3DON"

Don't put these into CFLAGS. I presume you want to give these to CMake via =
EXTRA_OECMAKE
variable to be used at do_configure time. Check poky tree for documentation=
 and examples,
docs are also here:

https://docs.yoctoproject.org/dev/singleindex.html#cmake

> but building that gives me
> + cd /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-ph=
ytec-linux/libkymati/1.0-r0/build
> + do_configure
> + cd /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-ph=
ytec-linux/libkymati/1.0-r0/git
> + TARGET_CFLAGS:=3D-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -DBUI=
LD_TOOLS=3DON
>
> /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-=
linux/libkymati/1.0-r0/temp/run.do_configure.991537: 159: TARGET_CFLAGS:=3D=
-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -DBUILD_TOOLS=3DON: not fo=
und
>
> Is there a good, really works, actually sets extra flags, really shows an=
d explains with comments and everything example I can look at?  This bitbak=
e is clearly clever, so is cmake, but in honesty I really gave up trying to=
 understand any of it and just want it to work, writing the code is one thi=
ng but these build systems are a fight all of their own that takes longer t=
han the code to solve the universe

Build systems are hard. I'm sure someone will invent another one to solve a=
ll issues
and resurrect all old ones. :)

Cheers,

-Mikko

--_000_AM9PR03MB70124FE13C06B022A3C0BF5F92D6AAM9PR03MB7012eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thanks</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
So, first, I thought - as I had seen examples that I had to put these flags=
 etc. in the configuration function but it appears that was a wrong thing.&=
nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Now my recipe looks like:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
SUMMARY =3D &quot;mylib&quot;
<div class=3D"ContentPasted0">DESCRIPTION =3D &quot;Fetch and build mylibi&=
quot;</div>
<div class=3D"ContentPasted0">LICENSE =3D &quot;CLOSED&quot; </div>
<div class=3D"ContentPasted0">LIC_FILES_CHKSUM =3D &quot;&quot;</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">##EXTRA_OECMAKE =3D &quot;all&quot;</div>
<div class=3D"ContentPasted0">inherit cmake</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">python do_display_banner() {</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; bb.plain(&quot;****************=
*******************************&quot;);</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; bb.plain(&quot;* &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *&quot;);<=
/div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; bb.plain(&quot;*&nbsp; mylibrec=
ipe created by mei &nbsp; &nbsp; &nbsp; &nbsp; *&quot;);</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; bb.plain(&quot;* &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *&quot;);<=
/div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; bb.plain(&quot;****************=
*******************************&quot;);</div>
<div class=3D"ContentPasted0">}</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">addtask display_banner before do_build</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0"># where and how to get source</div>
<div class=3D"ContentPasted0">## this is via git</div>
<div class=3D"ContentPasted0">SRC_URI =3D &quot;git://git@correct git - thi=
s works;&quot;</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0"># where to source is stored </div>
<div class=3D"ContentPasted0"><span style=3D"">S =3D &quot;${WORKDIR}/git&q=
uot;</span><br>
</div>
<div><br class=3D"ContentPasted0">
</div>
<div>## was using target flags but Mikko suggested EXTRA_OECMAKE which at l=
east doesnt complain</div>
<div class=3D"ContentPasted0">##TARGET_CFLAGS +=3D &quot;-DBUILD_PYTHON_BIN=
DINGS=3DON -DBUILD_SHARED=3DON -DBUILD_TOOLS=3DON&quot;</div>
<div class=3D"ContentPasted0">##TARGET_CXXFLAGS +=3D &quot;-DBUILD_PYTHON_B=
INDINGS=3DON -DBUILD_SHARED=3DON -DBUILD_TOOLS=3DON&quot;</div>
<div class=3D"ContentPasted0">EXTRA_OECMAKE +=3D &quot;-DBUILD_PYTHON_BINDI=
NGS=3DON -DBUILD_SHARED=3DON -DBUILD_TOOLS=3DON&quot;</div>
<div><br class=3D"ContentPasted0">
</div>
<div>## this I think is needed to ensure the correct compilers are used... =
I think anyway.</div>
<div class=3D"ContentPasted0">export CXX=3D&quot;/usr/bin/arm-none-gnueabi-=
g++&quot;</div>
export CMAKE_CXX_COMPILER=3D&quot;/usr/bin/arm-none-gnueabi-g++&quot;<br>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
However:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted1">
| DEBUG: Python function extend_recipe_sysroot finished
<div class=3D"ContentPasted1">| DEBUG: Executing shell function do_configur=
e</div>
<div class=3D"ContentPasted1">| -- The CXX compiler identification is GNU 9=
.4.0</div>
<div class=3D"ContentPasted1">| -- The C compiler identification is GNU 9.4=
.0</div>
<div class=3D"ContentPasted1">| -- Detecting CXX compiler ABI info</div>
<div class=3D"ContentPasted1">| -- Detecting CXX compiler ABI info - failed=
</div>
<div class=3D"ContentPasted1">| -- Check for working CXX compiler: /usr/bin=
/g++</div>
<div class=3D"ContentPasted1">| -- Check for working CXX compiler: /usr/bin=
/g++ - broken</div>
<div class=3D"ContentPasted1">| CMake Error at /home/dave/Documents/Kymati/=
yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/recipe-=
sysroot-native/usr/share/cmake-3.19/Modules/CMakeTestCXXCompiler.cmake:59 (=
message):</div>
<div class=3D"ContentPasted1">| &nbsp; The C++ compiler</div>
<div class=3D"ContentPasted1">| </div>
<div class=3D"ContentPasted1">| &nbsp; &nbsp; &quot;/usr/bin/g++&quot;</div=
>
<div class=3D"ContentPasted1">| </div>
<div class=3D"ContentPasted1">| &nbsp; is not able to compile a simple test=
 program.</div>
<div class=3D"ContentPasted1">| </div>
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted1">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted1">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted1">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted1">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted1">
suggesting it is not using the c++ I thought it should be.</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b> Mikko Rapeli &lt=
;mikko.rapeli@linaro.org&gt;<br>
<b>Sent:</b> 17 October 2023 11:52<br>
<b>To:</b> Dave Hitchman &lt;dave.hitchman@kymati.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Using cmake... how?</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hi,<br>
<br>
On Tue, Oct 17, 2023 at 09:21:27AM +0000, Dave Hitchman wrote:<br>
&gt; Oh I dont know. This is getting to be a bit annoying.<br>
&gt; I had already included the inherit cmake line but now it seems maybe t=
hat you dont need to put any cmake commands in... not 100% sure, no one see=
ms to explain this, I am not convinced.<br>
&gt; However I want some extra flags and I have read that you should be abl=
e to:<br>
&gt; TARGET_CFLAGS +=3D &quot;-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=
=3DON -DBUILD_TOOLS=3DON&quot;<br>
<br>
Don't put these into CFLAGS. I presume you want to give these to CMake via =
EXTRA_OECMAKE<br>
variable to be used at do_configure time. Check poky tree for documentation=
 and examples,<br>
docs are also here:<br>
<br>
<a href=3D"https://docs.yoctoproject.org/dev/singleindex.html#cmake" data-a=
uth=3D"NotApplicable" id=3D"OWA6b37efcd-acd7-2f85-a2cc-b210012a4462" class=
=3D"OWAAutoLink">https://docs.yoctoproject.org/dev/singleindex.html#cmake</=
a><br>
<br>
&gt; but building that gives me<br>
&gt; + cd /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto=
-phytec-linux/libkymati/1.0-r0/build<br>
&gt; + do_configure<br>
&gt; + cd /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto=
-phytec-linux/libkymati/1.0-r0/git<br>
&gt; + TARGET_CFLAGS:=3D-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -D=
BUILD_TOOLS=3DON<br>
&gt; <br>
&gt; /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phyt=
ec-linux/libkymati/1.0-r0/temp/run.do_configure.991537: 159: TARGET_CFLAGS:=
=3D-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -DBUILD_TOOLS=3DON: not=
 found<br>
&gt; <br>
&gt; Is there a good, really works, actually sets extra flags, really shows=
 and explains with comments and everything example I can look at?&nbsp; Thi=
s bitbake is clearly clever, so is cmake, but in honesty I really gave up t=
rying to understand any of it and just want
 it to work, writing the code is one thing but these build systems are a fi=
ght all of their own that takes longer than the code to solve the universe<=
br>
<br>
Build systems are hard. I'm sure someone will invent another one to solve a=
ll issues<br>
and resurrect all old ones. :)<br>
<br>
Cheers,<br>
<br>
-Mikko<br>
</div>
</span></font></div>
</body>
</html>

--_000_AM9PR03MB70124FE13C06B022A3C0BF5F92D6AAM9PR03MB7012eurp_--

