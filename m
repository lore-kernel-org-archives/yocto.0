Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C23AC5AD4C
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 15:13:18 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.48])
 by mx.groups.io with SMTP id smtpd.web10.92955.1700752392087829532
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 07:13:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=O8DauCO5;
 spf=pass (domain: kymati.com, ip: 40.107.7.48, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EvzlCuSyBf1ZGGH28u/z7ktbR11ERYFYJXQzpy/il8xxLmOOYb2d+oERLcjdQ8zavOKiQkbFEv/fonItxhQQ/IvOY8cuWm/+gGqs1aCYdFTO7ubEHZO+tqMeKTNdBaYPl74lYlXTd30UBIGXNV2Nsbf7bnoGgSBy2dAFgPwk03arVQML7dgIHq6QiDc3CRstcrsy3K2E249nno0sA0zTEm/Flb3pmyCXMM28Hbbj0vGjqlOThbucJerSjDDs4edoE8ACtr6mY7aaptVZWBO0e0UpUPPZDePnqCi9R3/J4Ixv5HTYDHT1ZBQfn9qpXPmO/fzUznqBxXe/DPA8BFAQiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3+qBspemo3fTALCyWjk6tIeMPQng6ZVIT2oTJtmOZtw=;
 b=EqUHt3IMlYlb8e8UaDto4STFCVaQerCWY2nAnxaZcC4FiE6E0dkqTEObvzUJClByUuj1oZLXextCZw3iWSK7ZoPEy5kO3idmZmKzzk9I51E50VBUgQRrvViYmNiIppTYSpQb+0HVL9hdgcc2Xp9BiUMGUwLn1CdK/oZfS4affW5KcwMs8j6ihdvoYQPRl788yrKkNupZz6JyFJN72kkvRc2jPhpxa2BSmvRSJiZ4qn0DFKvxBtDA2aesa2UMenPyZmn6vbH8X9tBLk2w3NNzfaJQlwPDPt8PUw3TgZCeBQgUMe/c/BHnaM5AI1L9kMVrZ7aYVQsmERCXPr4LgDW3ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3+qBspemo3fTALCyWjk6tIeMPQng6ZVIT2oTJtmOZtw=;
 b=O8DauCO5Y+BIahtdMHeXQx0sCwiaEJrUKGuBIBbho7aNR61BqiakAUU/QHv9kCeuAD0XKUvbl21AcfwpmTJIjLeJNyxGi87+jGXlrxjyWXkaZd97ear9xnbco4swTCljoZFaxXaz45m3y/V7I59s8FPz9nI0KS+lisVCbocteP8=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by DB4PR03MB9410.eurprd03.prod.outlook.com (2603:10a6:10:3fa::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.20; Thu, 23 Nov
 2023 15:13:07 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::5111:21b7:7721:9dd3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::5111:21b7:7721:9dd3%7]) with mapi id 15.20.7025.020; Thu, 23 Nov 2023
 15:13:07 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, "ross.burton@arm.com"
	<ross.burton@arm.com>
CC: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] how can a missing file
 be a WARNING and the build 'succeed'?
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH] how can a missing file
 be a WARNING and the build 'succeed'?
Thread-Index: AQHaHh+QHpws51ms406OtJOEGAq8hw==
Date: Thu, 23 Nov 2023 15:13:07 +0000
Message-ID: 
 <AM9PR03MB7012EFD751803A645DBDFC6992B9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: <20231122014822.3871458-1-raj.khem@gmail.com>
 <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CANNYZj_9_yY5H8fX6=Vy3FFgiVu1V8uOJxHNdtMkfMb37JXCSg@mail.gmail.com>
 <74FBAD99-E844-4DF2-AD18-B02D2613228C@arm.com>
 <CANNYZj8HkDHb9i2=rc4V7MxoxqFV_dyNBcEyausW+=8f35_ByQ@mail.gmail.com>
 <D16D6B59-7E34-49BC-8385-D7216058B9A4@arm.com>
In-Reply-To: <D16D6B59-7E34-49BC-8385-D7216058B9A4@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|DB4PR03MB9410:EE_
x-ms-office365-filtering-correlation-id: 1aeb722a-a5b9-462f-e2de-08dbec36b2cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 a6JANMYtyB+xbYotQWO0QxYsj/FX56h+tSnaWNfknySHSPFi40oy1bJUMo9XwTpQwK6F5T+MFLGdcnDur7AmP2oBQCd81biYxzQjrXsP3iEHiS2IsMCPjYpwKpM26iRcN/vo6QyfM2puruWNH0m5SlXtNK4XuDG6+AkvwoNOrsBbcGOfA/bhxmjuae3uco4Ki3Jrwocy5Tltgc+2dwKCFX7o/rinWuvBJ4ao1dLSgh7hop9trRpxm7b4eLsvfmqVBpgTHKDTZJ593+TtIozFp9gvK/Pc6NcSbRBvomnG56l9IaqHf/N2xJCBWyN3eAHMSpQ+S19RuH41E9siRjIIvHdCmoTCn4a8EpKYlULn9XIQQO/PLYeoOenyXK4PSvUzP5qtMPMevwqFEblmNFVw1cpmcMeHc/8HU6eBKmo/qJAREi4nAsNbWP4zdXrlOdyhdNDendTP/D5D5acX5AidSc2iGX4Xrp+kxSVgaGaQDxTIu5cAuB7WEH/id/E5csKexOTDci9BXTmUtEHkFK1hdfCeXj8MRXKEs2RoxKH5SOG7xflTJ6cwnZE96NEIas/l3eD/wN3PvlZRKcgBkVbpljym2aziaW9uPmL/YptJehSD4RhY/udHYdH4mieKF6Pm
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(396003)(346002)(366004)(39830400003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(55016003)(38070700009)(19627405001)(66946007)(66556008)(76116006)(66476007)(66446008)(64756008)(54906003)(91956017)(110136005)(38100700002)(122000001)(33656002)(558084003)(86362001)(7696005)(6506007)(9686003)(2906002)(316002)(8676002)(5660300002)(4326008)(71200400001)(478600001)(44832011)(8936002)(26005)(41300700001)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?1SAevfYP9tqMHsWaoZT0uSoxyOzcCi3/foRqlIKb95RObKH1cGx1udXHcZ?=
 =?iso-8859-1?Q?W2YiKcljIYI3j4Pakq7nfYhMrvfpHVkM1n2gRjT0HGoiijY7XFGBsNP4hk?=
 =?iso-8859-1?Q?MCikAiinx6ghXCtpXzJhRKXEa/kxDfOTVNsHtxZzct5o/6KnHExNG6gDUL?=
 =?iso-8859-1?Q?9FvLPD3cyeUJGNIfckNvYcBG2NAOGOPiaEKWaHRVzgtvdvyygUM96qFe83?=
 =?iso-8859-1?Q?/6U07oVo3ERzPUOIuyrpBT0OxYo+0bNiACSgF5NrKnBuJaCODGQUmmNATq?=
 =?iso-8859-1?Q?XCPYZq7uxhKfo39FaWeLXVmo5xT9eUV/Pb5qxa6lfD0aU7sEGFVZB5WSRd?=
 =?iso-8859-1?Q?MITym3qkIu6rNUi4RhfUefFGRAfBonb9QjKkFrM+wmJALcQSwFZV8pq+Zy?=
 =?iso-8859-1?Q?5kBaMT2ZjrZP9tHSkmZdWjsS2oma9FYi14aCDXlND1WMxNu5QGxi+78y+p?=
 =?iso-8859-1?Q?f++VDhGNd4bUCVft3kF3DRT7eUeEqryvYl4ZM7yFKQY7M56DdmWGeXEn3C?=
 =?iso-8859-1?Q?kvco7qio6GxIc/aS4GPHXspM6HH74Y4LGxVm7MzZPnWx8APpZzwlnYxQ7a?=
 =?iso-8859-1?Q?jwY+CX0ikIQXR2mjxjWKQcdoxCq/CLuO0fEinimORJ81ztH/J2lTnV+huM?=
 =?iso-8859-1?Q?evd+sCPJ/fhXwiSHRRYe7s5X9hEnlqna99beUbMTsYqaqueIxcL9c69RCw?=
 =?iso-8859-1?Q?amGrSmk14GyEz4RErPIIxYCXZocoXy5JPl5lNWZw5qsdBTnJlTk8PZ24VK?=
 =?iso-8859-1?Q?IKwmzDcVLZtQSXqF1lhWEQJ5RRhV73WYPEnpaqEfdChcNk+EUJNMmP+e8S?=
 =?iso-8859-1?Q?ngT/3xGBfTJVyaNWiToqSS7WbR+VbXfWxiQoTpgnauNVZRuK1atDzxbOC+?=
 =?iso-8859-1?Q?PLl8gWIiup2E6rMuPwPrEBhr8ebHkhBb/QjINh/Z9VLDg+kd83ZVSPFRbe?=
 =?iso-8859-1?Q?Rq8tIeB9wVzgxyKQfaz5TKqlLtML8uH4+D0cldXttxW0Apv4kIa5HAnwWF?=
 =?iso-8859-1?Q?f70yplBSX8EDErNYizNwT/KU96AMid9my811T9ckldKWyayoCiuY8Wctwa?=
 =?iso-8859-1?Q?peryn9U7vyUDiUD+q4DTPypfV7IKAyWIChtd1RKVGaMUfmkS9ATzZOtdWN?=
 =?iso-8859-1?Q?Xo26aawkORuOP7zfUef6fZL2df+O8rBRDm4lQWmobtT2dB6VzEHyYu0hAR?=
 =?iso-8859-1?Q?qC27qTcHjbqGGpHejKw8s2tk949NYAOcbXoAfa4UYGOGGnsvONsuaSPPDV?=
 =?iso-8859-1?Q?G5AYZxIozHxP9UXoIENZnql7T5TnAu4PyXwSAgohrfd1j2L21T/lBDtGaM?=
 =?iso-8859-1?Q?f/56IRk2wZyMVfaO1lWQe8kbrnol6L3xNQ4OA5LPzpqBTbHIO6HSE5a9kJ?=
 =?iso-8859-1?Q?uciSYjbpZwocyNN/KsfcepqNy9JkWf9agM+Hf1B3ANkw1Frh8/vP734Jgh?=
 =?iso-8859-1?Q?ECW+uuIjNIC0G45s6Pl+y0H1UGqT4evnNctzjO04nZBrnXXnM7fP/dWDDM?=
 =?iso-8859-1?Q?z2P8YeheAuT4ddJH6theA5Cv9iFKjWiIiw7A4sufpaDZSQ2Ao9jSFXiqsq?=
 =?iso-8859-1?Q?HZrIzum+9kyvyzuhXKATDbOAioYhMzFUbwIBO1Cw1StxRnUBSlDniaPon5?=
 =?iso-8859-1?Q?ZkEHSETeaydmogJs3dEiEEWp7EbxVJ+dMr?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB7012EFD751803A645DBDFC6992B9AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aeb722a-a5b9-462f-e2de-08dbec36b2cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 15:13:07.4618
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GBUNT0w3lN1JBNHlOAK/XnX9NTPAICrztcSsyBOL937QFjFKiEQFgNmQwNNisfL4tanOAT0o0Qs4W2GivhrOLvm4ftHxmBUbV9ghD+cU6Es=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR03MB9410
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 15:13:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61744

--_000_AM9PR03MB7012EFD751803A645DBDFC6992B9AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am trying to append to linux-imx.
If I deliberately put a wrong filename in the src_uri append it warns me an=
d carries on with no effect or worry.
Anything I put in the do_configure:append() or prepend() is just totally an=
d utterly ignored.



--_000_AM9PR03MB7012EFD751803A645DBDFC6992B9AAM9PR03MB7012eurp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I am trying to append to linux-imx.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
If I deliberately put a wrong filename in the src_uri append it warns me an=
d carries on with no effect or worry.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Anything I put in the do_configure:append() or prepend() is just totally an=
d utterly ignored.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_AM9PR03MB7012EFD751803A645DBDFC6992B9AAM9PR03MB7012eurp_--

