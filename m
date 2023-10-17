Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969BDCDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 09:21:37 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.42])
 by mx.groups.io with SMTP id smtpd.web10.203388.1697534491813471035
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 02:21:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=F1nsInHJ;
 spf=pass (domain: kymati.com, ip: 40.107.21.42, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N2mI4sb+zyoUDOFPE8FhSMjU3+BbEgiuoInF9Qd8CCmmlxIMJFjmZ00x98tRHX+swCtd31z2ZSqiLWv0cSFWbuCMHrAhuWY+D6IilQoOh9W3bbMABRC1u5CkgP4rBXVxvSj9g75TSbmLlLw+0/Gpa6fmYorRoyu/k0NyxkSjKjeQ6AJdM4FKF8Wd36IxDXa8wOS0VZ9CuMm3dLEZwISbtC3FXpjNuzYLM9prlWlt7X196s/eq2YY7fPj4do0qVcrgtWavTZ11Z38bvulN4u32EZ3jCyaN51tfArIvCNSOoUm4zVmar/DK0C2ZU61tyE2EO5eN9g+Ot4scHVJcmz6qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RiwC9ul7M8qr66B+I8zrg0eD9Q2jGnxZMJT8CQGCL0w=;
 b=PAXzHvd5ALHzm2iJj9ZyPkitOcmIGV7iOyRqs7wqxUrH/pJYviSiCOYMkdm6U3NvCvF6kmOzVVj7PMX7vHFvOFsXDa3BDSfKRygvuSSGCTaD6NoPdgXVrQrqxIcPLzrXAzrveCxt7BDlCI8op2fO2K1W7KPHru7fc3y5QhV46lQuvFkZeytDm8qClGs4TsRdL0o17yY+SwZYhEpiSPpyYBGls1VBoMR6g/zNMnzj/UXh+o2Ngwl6GJCVBKKeBYsi3BTrhLwC0xDOE1jT2tI92uI5P9oK9mfX7i+OfJjnrs2GKvDhx6Q2KYiQDmRN7DnV0vplROVJrnAkRRjRPqAqaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RiwC9ul7M8qr66B+I8zrg0eD9Q2jGnxZMJT8CQGCL0w=;
 b=F1nsInHJ+4+KM2YZDvjFr4iMHeNm2hb995Kid6f88VOxqfTeBvdcFFQyxcdf4jAti2VLqNmhAFdOVEUSX7exSdR4iygeODuBjnFWVKjd+Edl28Vh929abblfTYuGPGnlGeN/D5LMqyjveIYdSg2y+qo3c/0IZVU5Z2r1p3aDv3o=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by AS8PR03MB7538.eurprd03.prod.outlook.com (2603:10a6:20b:346::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 09:21:27 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3%3]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 09:21:27 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Thread-Topic: [yocto] Using cmake... how?
Thread-Index: AQHaAEU1GVmCsck7rEeYingXKJhbi7BNevsAgAA5peY=
Date: Tue, 17 Oct 2023 09:21:27 +0000
Message-ID: 
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
In-Reply-To: <ZS4ghiXPvYDDW_LC@nuoska>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|AS8PR03MB7538:EE_
x-ms-office365-filtering-correlation-id: 51fb517c-6727-4065-fa31-08dbcef2710b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 275+jlAC25H5jXR4wf7jzk/O8SeB9zrkBbrqk1DUZzVrTFiq7BZdr922gLjC82ot0gxYjDfK+nCVYQcIpukVvwo6sDvlTqIJdiZ4yx0BzVZn83GsAoW/3cmT1HU6eV/xGbogfsw5Y/hy9fbV19NemySHQHJg+VPFGPIouXS/7wKtUlLjaHsjEtx9MTPHgfceCe07rHjPwuOq/C9Kl/pziDEFvn4MIPb8U26xZl4dwUdeBgyfU+0XYGa66GP8HvOQGEbDEtnLhasZ8d0wEVCVkiw7k6KU3Vo4RVi/OcDynYf/DRM0fRw6NsNOSnJCxHoztrOuz2K1vq4bYYzO8l7BkGEoKxcQRMP5MpeWICvGH9zS7gxZIy/+Rg8FgC7+akY4J+nnzERYM0wlZHo6KIkrNUdQ2EAZSfxKGUgJsLs7O9u7JfUGMtVtSdq6/hQdj6l0GRz8fcBNdRdmtqnEZj5PHttmrV1rQXYNjzOoodME+Cjaq2BELu3wNFAx56PiqZiXpXqYIa4H0PvloLPuPwSRdMP2/Ty82v3NljBtNFU9g1ccio+4K/G4uLAsOi4eXudfVfeshbenCf7ZchwigCzqDXnOoAPdD2eRNLy4SuSTpRJqlpt1+CkDr5ce6L27d/spEYLWtRzhO/bx0IVlYu8C684TWipixZ5XRjw/817YoEk=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(376002)(396003)(136003)(39830400003)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(55016003)(38100700002)(41300700001)(76116006)(66556008)(66946007)(316002)(91956017)(66476007)(6916009)(66446008)(122000001)(83380400001)(38070700005)(64756008)(9686003)(7696005)(53546011)(6506007)(71200400001)(478600001)(8676002)(2906002)(4326008)(8936002)(5660300002)(52536014)(44832011)(33656002)(86362001)(19627405001)(473944003)(414714003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?fFLq2O8R8Ym/oNTRmE2F86Y/DaMLkfkhhJVIwtFLok3t6ioJqCqR4eAr?=
 =?Windows-1252?Q?pk0kU1lUAPF82fZgw87BPZboNqziTLolR9aqA/+neoqTdtoNB/MRGUc6?=
 =?Windows-1252?Q?FXyLNwp/A8GZFxg6EjlpB2CYUmsbCaScOdC9vJa1v+LJ9ZnTXopYr2ZB?=
 =?Windows-1252?Q?SD+ygWAVvJwnXGeabz6+VwRtXXtxA3vlQjdZSV0PUHNZj4E9PkUHmYtw?=
 =?Windows-1252?Q?dJvpYBQLbkdcifbAQonTIgkb7FZZxJjtLdeWFwu0NkkqHR+Uh6lqYQ9Q?=
 =?Windows-1252?Q?GCPbbPJwaXhxXtNcfaX3L6Sh0kZ4dYImCp2CRgbX+MSrWuIy+oFHlRCN?=
 =?Windows-1252?Q?o46fOKd2Ul0mD4ZcWAhroamKoQ/wo4TCihclnpxtENx0CTzlSAKOi5gd?=
 =?Windows-1252?Q?pl5VAfBDbOAjhVqkIGnbkKGHx+1ZataoG5FeZcWFO/JCZecsGfZuxa7W?=
 =?Windows-1252?Q?ivuADA2m+Wn35Hx9Aw6rDtnMU4rMLsdioMVKaXAm4tPuLey/TQxuOyxl?=
 =?Windows-1252?Q?4E8xBgVlsjqAg7pVIWb116f5BRh1EOeYxT4PwfgKU8+t3bS2PmtsZ38n?=
 =?Windows-1252?Q?I6zNqdIjrTDoK+g2vguKimLld5iuuTNpUR7qftRqUuoKYjR1wWmyRtjR?=
 =?Windows-1252?Q?sJwG9cT9M/LlmL5njQ0Sf0YZDEq9uK4dJuiWh4eKWQaVZaxEZQjax8FL?=
 =?Windows-1252?Q?XgiUfNMPfXhndRKXhUMRjLQOnUyQS/xOEEpCL8kUTHY162Mm8mqoAgLa?=
 =?Windows-1252?Q?iatwv47nFInOwXU/gwSC7/HnqqJ4zHf8atISWLzHKOhK+Po1toyODl+I?=
 =?Windows-1252?Q?j0IyWp5Qbvb0m6t7GYFHRUH34ceIr3/0V+T1qK98UZFAz5U9xjnN+3Us?=
 =?Windows-1252?Q?avppIJsdJA4UcUWlZ+ELo+IS0w7zgwwyw2SuXY9f6qE0bzjfDsn3kO4Y?=
 =?Windows-1252?Q?6URfDFML6bLUHle2G3WUpGWrQ74KUMGknYQNNWr1dHUdm1r3sJZw8Ynd?=
 =?Windows-1252?Q?GHStOiHIN5uscFvIfxm7xupocs00HM3gsafIhJzo9AQfd5GGu2XRLCRi?=
 =?Windows-1252?Q?UY8fE7OEWySPQ2Ip75/ZkBtToWOBkW8LXlzRGFqcqVaxMuJiVSzBXY1c?=
 =?Windows-1252?Q?Z62gUxO56wIFENl0UYusm3tWG41yuxhB83p02PumtLSHlfwdoK5h0qsD?=
 =?Windows-1252?Q?eid082eOx/E7cF/AsZkA1EmivJwotwfflsxU1qCU09h9Zuqsgzipnbhq?=
 =?Windows-1252?Q?7NhG6MvF+xDrRttjl9aPqUuqdCqrRM60vQAUa16b7Bg7ze3Y6OQD9Am6?=
 =?Windows-1252?Q?8GVIEYGwYG+fbulT/2vkXv9odtKshmJiYJOg41xGSWIvUp80BpPrINYm?=
 =?Windows-1252?Q?SK0hos3zbr2jAdJi4ZEQZrZGi7tBex3DDEE9I0ICbSRBpukWYCtRx03D?=
 =?Windows-1252?Q?oQBVfvMauUFd05idOcQli1cEO07scuAwsqn1bVJr56TdimGC3EAkELaI?=
 =?Windows-1252?Q?bovg/2AHNIi7QuBYTPsAjizItt97pgTd2ZXYso7dZHaoIUqoPzJNc4j2?=
 =?Windows-1252?Q?aPDoM8Z1JnOOMa8tq60Vhwv9VMyPQxme4czjrOzY8mAMUt6vM7cjDsBp?=
 =?Windows-1252?Q?UxsMGyqSduOlpSz5hRfO1/EMnUCWxQ6Nkw9um/lCTaOcjM5RsY77WfgA?=
 =?Windows-1252?Q?y/DXMzYuMISM3K6ESHgj4z4g95cfk+yYqUR4oucKgC0Dtpkl1YunNPA2?=
 =?Windows-1252?Q?YTwDpj6OvZv1817IYtURNm1Xrdzo/nbj9gJGuetY?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB7012DDCF969FEAAD42A8817992D6AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51fb517c-6727-4065-fa31-08dbcef2710b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 09:21:27.7047
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CCJ4XB+JACEmp+JTvhkHPJ/1i1yFQQoAebf7SfyP/sOzOd6tcS5UeOtZ1Wu0Xrdv4BXX9u2AIaPSHbtDISikbibTinyCCg41KXah7KAmDyg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB7538
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 09:21:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61367

--_000_AM9PR03MB7012DDCF969FEAAD42A8817992D6AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Oh I dont know. This is getting to be a bit annoying.
I had already included the inherit cmake line but now it seems maybe that y=
ou dont need to put any cmake commands in... not 100% sure, no one seems to=
 explain this, I am not convinced.
However I want some extra flags and I have read that you should be able to:
TARGET_CFLAGS +=3D "-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -DBUIL=
D_TOOLS=3DON"

but building that gives me
+ cd /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phyt=
ec-linux/libkymati/1.0-r0/build
+ do_configure
+ cd /home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phyt=
ec-linux/libkymati/1.0-r0/git
+ TARGET_CFLAGS:=3D-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -DBUILD=
_TOOLS=3DON

/home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-li=
nux/libkymati/1.0-r0/temp/run.do_configure.991537: 159: TARGET_CFLAGS:=3D-D=
BUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DON -DBUILD_TOOLS=3DON: not foun=
d


Is there a good, really works, actually sets extra flags, really shows and =
explains with comments and everything example I can look at?  This bitbake =
is clearly clever, so is cmake, but in honesty I really gave up trying to u=
nderstand any of it and just want it to work, writing the code is one thing=
 but these build systems are a fight all of their own that takes longer tha=
n the code to solve the universe
________________________________
From: Mikko Rapeli <mikko.rapeli@linaro.org>
Sent: 17 October 2023 07:49
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?

Hi,

On Mon, Oct 16, 2023 at 03:27:01PM +0000, Dave Hitchman wrote:
> So my current recipe for the project works, including building various C,=
 C++ files
> I wanted to now add a library of someone elses creation.
> On my machine this library builds using the tools installed so the code i=
s ok
>
> I added a recipe to my yocto build and it attempts to do the cmake.
>
> Unfortunately whatever I have tried over 2 days cmake insists:
>
>   1.  On using the from my machine NOT the cross compiling tool set the r=
est of the yocto build uses.
> | -- The CXX compiler identification is GNU 9.4.0
> | -- The C compiler identification is GNU 9.4.0
>   2.
> Getting upset about the flags passed in:
> |     g++: warning: =91-mcpu=3D=92 is deprecated; use =91-mtune=3D=92 or =
=91-march=3D=92 instead
> |     cc1plus: error: bad value (=91armv8-a+crc+crypto=92) for =91-march=
=3D=92 switch
> I cant even find where these flags are actually set, where I found them a=
nd thought they were set I altered them to be FRED and nothing changed in t=
he errors at all.
>
> Any idea? Surely it should be pretty easy?

"inherit cmake" in the recipe and then fix the CMake scripts to use variabl=
es from
the toolchain file and only append to them. Same problems in all build tool=
s. CMake
adds several abstractions on top though so finding out the details may be t=
ricky.
See the toolchain.cmake file in recipe build directory. If this is not foll=
owed
wrong compiler can be used, with wrong flags, using wrong binary, module an=
d header file
search paths...

Cheers,

-Mikko

--_000_AM9PR03MB7012DDCF969FEAAD42A8817992D6AAM9PR03MB7012eurp_
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
Oh I dont know. This is getting to be a bit annoying.&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I had already included the inherit cmake line but now&nbsp;<span style=3D"f=
ont-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvet=
ica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">it seems maybe that=
 you dont need to put any cmake commands
 in... not 100% sure, no one seems to explain this, I am not convinced.</sp=
an></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">How=
ever I want some extra flags and I have read that you should be able to:</s=
pan></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" cla=
ss=3D"ContentPasted0">TARGET_CFLAGS +=3D &quot;-DBUILD_PYTHON_BINDINGS=3DON=
 -DBUILD_SHARED=3DON -DBUILD_TOOLS=3DON&quot;<br>
</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" cla=
ss=3D"ContentPasted0"><br>
</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" cla=
ss=3D"ContentPasted0">but building that gives me&nbsp;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" cla=
ss=3D"ContentPasted0 ContentPasted1">+ cd /home/dave/Documents/Kymati/yocto=
/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/build
<div class=3D"ContentPasted1">+ do_configure</div>
<div class=3D"ContentPasted1">+ cd /home/dave/Documents/Kymati/yocto/build/=
tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/git</div>
<div class=3D"ContentPasted1">+ TARGET_CFLAGS:=3D-DBUILD_PYTHON_BINDINGS=3D=
ON -DBUILD_SHARED=3DON -DBUILD_TOOLS=3DON</div>
<div><br class=3D"ContentPasted1">
</div>
<div class=3D"ContentPasted1">/home/dave/Documents/Kymati/yocto/build/tmp/w=
ork/cortexa53-crypto-phytec-linux/libkymati/1.0-r0/temp/run.do_configure.99=
1537: 159: TARGET_CFLAGS:=3D-DBUILD_PYTHON_BINDINGS=3DON -DBUILD_SHARED=3DO=
N -DBUILD_TOOLS=3DON: not found</div>
<br>
</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" cla=
ss=3D"ContentPasted0 ContentPasted1"><br>
</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" cla=
ss=3D"ContentPasted0 ContentPasted1">Is there a good, really works, actuall=
y sets extra flags, really shows and
 explains with comments and everything example I can look at?&nbsp; This bi=
tbake is clearly clever, so is cmake, but in honesty I really gave up tryin=
g to understand any of it and just want it to work, writing the code is one=
 thing but these build systems are a
 fight all of their own that takes longer than the code to solve the univer=
se<br>
</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Mikko Rapeli &lt;mikk=
o.rapeli@linaro.org&gt;<br>
<b>Sent:</b> 17 October 2023 07:49<br>
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
On Mon, Oct 16, 2023 at 03:27:01PM +0000, Dave Hitchman wrote:<br>
&gt; So my current recipe for the project works, including building various=
 C, C++ files<br>
&gt; I wanted to now add a library of someone elses creation.<br>
&gt; On my machine this library builds using the tools installed so the cod=
e is ok<br>
&gt; <br>
&gt; I added a recipe to my yocto build and it attempts to do the cmake.<br=
>
&gt; <br>
&gt; Unfortunately whatever I have tried over 2 days cmake insists:<br>
&gt; <br>
&gt;&nbsp;&nbsp; 1.&nbsp; On using the from my machine NOT the cross compil=
ing tool set the rest of the yocto build uses.<br>
&gt; | -- The CXX compiler identification is GNU 9.4.0<br>
&gt; | -- The C compiler identification is GNU 9.4.0<br>
&gt;&nbsp;&nbsp; 2.<br>
&gt; Getting upset about the flags passed in:<br>
&gt; |&nbsp;&nbsp;&nbsp;&nbsp; g++: warning: =91-mcpu=3D=92 is deprecated; =
use =91-mtune=3D=92 or =91-march=3D=92 instead<br>
&gt; |&nbsp;&nbsp;&nbsp;&nbsp; cc1plus: error: bad value (=91armv8-a+crc+cr=
ypto=92) for =91-march=3D=92 switch<br>
&gt; I cant even find where these flags are actually set, where I found the=
m and thought they were set I altered them to be FRED and nothing changed i=
n the errors at all.<br>
&gt; <br>
&gt; Any idea? Surely it should be pretty easy?<br>
<br>
&quot;inherit cmake&quot; in the recipe and then fix the CMake scripts to u=
se variables from<br>
the toolchain file and only append to them. Same problems in all build tool=
s. CMake<br>
adds several abstractions on top though so finding out the details may be t=
ricky.<br>
See the toolchain.cmake file in recipe build directory. If this is not foll=
owed<br>
wrong compiler can be used, with wrong flags, using wrong binary, module an=
d header file<br>
search paths...<br>
<br>
Cheers,<br>
<br>
-Mikko<br>
</div>
</span></font></div>
</body>
</html>

--_000_AM9PR03MB7012DDCF969FEAAD42A8817992D6AAM9PR03MB7012eurp_--

