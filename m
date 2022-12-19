Return-Path: <Antti.Garding@etteplan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EAE3C4332F
	for <webhook@archiver.kernel.org>; Mon, 19 Dec 2022 13:02:36 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.123])
 by mx.groups.io with SMTP id smtpd.web10.20711.1671454944717831332
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Dec 2022 05:02:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@etteplan.com header.s=selector1 header.b=qBUVgnyu;
 spf=pass (domain: etteplan.com, ip: 40.107.13.123, mailfrom: antti.garding@etteplan.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LdtamhcofePjiQfvWbuuLhtVF1z4qkMmLM1Wi2cimyNGPhfAdlcW3inTlYVcg+oeA2REPEcvnbeLMA19kaKiehKkcEt0IEfE6DdREv5g2rnHTttiSofG4XkFGP9vScKN7osQlZFw4ni3o+TIirbOWhOGuWfFLg2dIoVlFZzNj7ZhczveRjDFekRaUbcFrnr0dsgX6Nh1jSgW+mMU8GyPKWiVrPtUSsq+rnf/G8r9dvrWQWbe7Evzk8dLeF6pUeMi5ksYeyVsCGcQpvt2nxZPzCEvCS5sMGCAev5vS663OKIguALk13Z/gxd1bqvFYw/BChANlgNWUqn3tR6ofhNWCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vcx7ZEGB8+TgQCKYDB3ZE4tnIdljjskg44IIXOeOQAY=;
 b=n3L7rvFUxBrWx17FWnAV2hFWL8B29GuuWXHrrCGRyFXfcPZmD5TvX6IIlmEFqowRuIVJsu/EnW0vma6+MgduZC0JWRcdKpQIpQXvkz0TF4h18TMvRbCRuGLtniyIe3yu5DDzeLljlcXCTrwQF8aawWkAaQOZDapjN+zTNuIDSZsYQmFeLDRuL7NWSPdoFAXsBOaPS2chO0Pns2jGpLy8LvJ4Q/ouciRTLt2SnRntN6JkJyTFmVOgxzHm0AxpvDMT1/OgeYwBsTbH+r4U5Sa1pDGUS7ZXUVXL4XSoqufyxQqRApJvta+Y/+puSMwg5VXMOQiYx6saGJhzGCMS25W7DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=etteplan.com; dmarc=pass action=none header.from=etteplan.com;
 dkim=pass header.d=etteplan.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=etteplan.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vcx7ZEGB8+TgQCKYDB3ZE4tnIdljjskg44IIXOeOQAY=;
 b=qBUVgnyu7FnKBmZiaac21vRuZf3p4Rbbo9L1mwDf73z9sma/UZjjjYADz1FymkjhQp/W+XR3PLuIsc+h/VQHcjxEBZCVORiTi2gav9zOsqL2anGnYhbDUqNj0MTuMqGhl2LdlNQ8s2Ybx9Hg/vlR80VHQ3A2jPMKZKpY15H0C58=
Received: from PAXP250MB0626.EURP250.PROD.OUTLOOK.COM (2603:10a6:102:286::18)
 by DU2P250MB0015.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:23a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Mon, 19 Dec
 2022 13:02:20 +0000
Received: from PAXP250MB0626.EURP250.PROD.OUTLOOK.COM
 ([fe80::a305:14dc:85c:150e]) by PAXP250MB0626.EURP250.PROD.OUTLOOK.COM
 ([fe80::a305:14dc:85c:150e%4]) with mapi id 15.20.5924.016; Mon, 19 Dec 2022
 13:02:20 +0000
From: =?iso-8859-1?Q?G=E4rding_Antti?= <Antti.Garding@etteplan.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Issue with accessing network from a recipe
Thread-Topic: Issue with accessing network from a recipe
Thread-Index: AdkTqbMtoJkQ6BNeRBGA0W0cC1sNfg==
Date: Mon, 19 Dec 2022 13:02:19 +0000
Message-ID: 
 <PAXP250MB062615A0B44EF5561D565B819EE59@PAXP250MB0626.EURP250.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=etteplan.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXP250MB0626:EE_|DU2P250MB0015:EE_
x-ms-office365-filtering-correlation-id: 877e810d-5ed0-4efb-c9fa-08dae1c14348
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 +z5PTwMb1e7SorsN897/gDfyVNx7LsVNZ9O3xmK7/MzB03TZg2USpRZkZ1qsWUBVtVSzekl+uyIyjLBYjNs2CKT35dEYhIaHoc9R7HuFwmseDNLPAZT9tkTlRA5SZYuByZ6PBtJ6/G5l1EInDEmyVUz1+VcBI2OAipiMLRfkyM8YKAowufijDGpEccK+Re7MbafQBlkI2LWS3jFW1CFPFPViP81JryPMarecCPu3kYV9ji5AJEeqTCcBpbWr46ZSS8FtFsFtDpmDzgmSFwdhPmYm+aCzWrqzRMmBvWekAz8QBRi5C1Ftx2DmWb7U0YXBbNh0Lc+O/j55dTlWt+O05RikRa+Vn5BdlXXY/eqyydaFY/PiQ6m8s35zomCfQSuZsW5BYKDKvk+Km+9txnEXHedaRuDvORaHBvU42zH6wUZJy2YNfvlwPl3yDj+3grXkw6zQTS2HgLtLwThn1wWvVdPAxi4qSHm5cNr45X185RiPmfxmaAZIUFkfnREWexBvE/Dcn70siEmzvHu9/CeuS98+LkGZjc4kuakZPZGr2fYTm71nF8KmFzkXWybRwQBBixjBSPFisIWYjXkoURQJeCMiIhoTzwp43q2LDE/bG2Emumuk2iXLpmM0ADmpbr+eb47h+GzD4yHbM7a0Z72sYOoEBA8Ldm3KAxQbO9SijS65Of5DxjSpuq6QL8nhO3wQO1UQSsFl9gTeXfUpQUKXyEvKmMGxCpJPxnk0zn0Mo78=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXP250MB0626.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(451199015)(41300700001)(86362001)(6506007)(478600001)(966005)(7696005)(66574015)(8936002)(186003)(9686003)(66946007)(6916009)(71200400001)(26005)(316002)(64756008)(66556008)(66476007)(8676002)(122000001)(38100700002)(33656002)(66446008)(55016003)(76116006)(38070700005)(5660300002)(52536014)(2906002)(166002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?XiLELB18tYBYsd16p28ItsaNYIdtjOkh0F1dza6KNqg0j9NHKy3XBPOIww?=
 =?iso-8859-1?Q?gm9TE9dLIr/e/mgT7OgfPaLZYeVxg2laCsrXGc5iZ9XJz7RSyRx8ztwiR4?=
 =?iso-8859-1?Q?AOFKZoeoEUu2t6Yw9WW7Ux4Bs6CJdJD83Ru8OzelULgm+E5kAcM1w6rHUh?=
 =?iso-8859-1?Q?jyNvFIRLKm7FlDpj+nbBxMDmNDe/6LoHUHlwN3kmrJjpqvrXbqchiuefp4?=
 =?iso-8859-1?Q?1Bee0J+c1dZw0H11GpB2RWt9tmRNLmD1K8MaPq9H8hPsonJiE63HQgC7tq?=
 =?iso-8859-1?Q?OMddROPWM+I8JZ2eBb9Oao1Inl3lc9P7N+K+5P01wR/KBKMuqX1YiadGak?=
 =?iso-8859-1?Q?s7/Y/jnygbF9CUmfYKZsBKTnZzxxObyd1b8RkaGLsPmtCtaYvzH/c54Q06?=
 =?iso-8859-1?Q?sfTdGjfi+W0tniSF8bClFpJZeppfN75JOsCjAklmnMSIAzr2IoXZ9spr/q?=
 =?iso-8859-1?Q?r1MDZOljT1KScqWQUS+TjBkpDSQnLiHFsMKns1mKqK7JpPV7Ol8ydFx0D5?=
 =?iso-8859-1?Q?vllsnLpp2lgJx8MYz3ZzjXnpwnwirzplRW+SxS7KutcP1KTSdhLVUchvrq?=
 =?iso-8859-1?Q?5vs998mVKl9S+mAw2BLvm7DTYl8o5RGv6Rltbk/Cw6VP1wrGTnrX/Up9xj?=
 =?iso-8859-1?Q?by2chAAPbRgnjinKA4XO4SKyw4+OcjzwQxsAdzE2saCAOdlbSwhFBtcAsg?=
 =?iso-8859-1?Q?Jle2mcIGvphdtYSFPD24+1sQpxMjM5wOjWb7ekSb1Z6X7by/bAqa6EhAg/?=
 =?iso-8859-1?Q?ELcJSakJSABzuxw2DT8795rK2N8o52W3uzELwXi1FJbXyYBI9xqatBXSM9?=
 =?iso-8859-1?Q?LQfUDCcPfYfykTK2yn/eMIG3MUGhekMP2DY8i5GDGbOS9wNlCNrZ014vYb?=
 =?iso-8859-1?Q?NlW+18Wickr/vEgkQaYWzIhqu57Bv8vXvrx7TUsMJ+R8Lhi7wxpnLDrile?=
 =?iso-8859-1?Q?cppOImAT9CusOvdul/Vh6s1MulbN0666AR+Bbtli8zOtXAS8HYgpThEw9A?=
 =?iso-8859-1?Q?41FBRFZepQ43ReYaLmod4eKQtnrNDYCGdpv/WvmzGcCSLtLYzJAbhgxWc2?=
 =?iso-8859-1?Q?BFnmmlgBNtmJ0VbT1kEfnzMMa8Q72pfXJjwwu14aTAjzyHjQdqRWn5oboD?=
 =?iso-8859-1?Q?lNRpj98TiCHQptLsp9G4hlCmncXV1/o2qmxo+y8pbhbuowZE79t99uWF1z?=
 =?iso-8859-1?Q?prj0PxALYGyovONdvOlrr2ekntowCgvx8ETc57RH2zEc9SruPXD3KNDOpf?=
 =?iso-8859-1?Q?a507sOaFcYfCok/yAy2RjZF32LqcfM3HdoysC+J1d7ytEbhjts/nzlxjJf?=
 =?iso-8859-1?Q?KzeVPTvcFi9Yq4vbS/fICR1ikeEqAZpj8JDvZ2dvDTf0FlJrOJhctAV5vv?=
 =?iso-8859-1?Q?o8K92xSZ1Wc/mY0/LPCUTDuM6yN4FtLdNir7DSHQkR1oSXK6jGRFQD3ESu?=
 =?iso-8859-1?Q?4Zi6og0wH9IeR4qD/AR3SFVf5pBHOmNfxqujAknBw9bvuSUV6RSM6GUkzB?=
 =?iso-8859-1?Q?lDtbVN11c/zhnqMISBwbucQv6+bg/kpdv/+LDV9/GktsmLFoJ1Tl+dFHWp?=
 =?iso-8859-1?Q?44jumhbunS2RQ/RU+3MH9hYnU4FGNiTHhkIZc/IU9ZqENQT/zRvTKLjjYn?=
 =?iso-8859-1?Q?hJEDm/DUm/2q+uiaWRnVTXPhidt5EgbgXtTCwp2kQTET6onIXYjyMgoQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PAXP250MB062615A0B44EF5561D565B819EE59PAXP250MB0626EURP_"
MIME-Version: 1.0
X-OriginatorOrg: etteplan.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXP250MB0626.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 877e810d-5ed0-4efb-c9fa-08dae1c14348
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2022 13:02:19.9971
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1f23d6d3-b158-4e45-b7e1-7631cf28c804
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /mKEfJfbSi6zvLWFIzFF2aecKpOQpfG1wPkGr3+FeUqk5lhMGyGk3+J88AdlPmi/gH5UuSLzTE5fdk9PTbDIJiynFeP0+yPG+xIFOS4Djqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2P250MB0015
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Dec 2022 13:02:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58831

--_000_PAXP250MB062615A0B44EF5561D565B819EE59PAXP250MB0626EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am having an issue with a recipe whose do_configure requires network conn=
ections and I wonder if this issue could be related to Yocto so that this l=
ist would be the correct place to ask for ideas.

The problem appears when trying to build dotnet-hello-world which comes wit=
h meta-dotnet (https://github.com/jeremy-prater/meta-dotnet). I am not the =
only one having this issue, but many people, including the layer's author, =
also report having no problems. Googling gives a lot of suggestions, but as=
 this is related to .NET, all of them are related to Windows / Visual Studi=
o environment and I don't know how to apply them using Yocto.

In short, do_configure for dotnet-hello-world invokes the .NET SDK's tool d=
otnet as a host tool to fetch what is needed to build and run the program. =
As a part of that, it uses NuGet, the package manager for .NET, which says =
"error NU1301: Unable to load the service index for source https://api.nuge=
t.org/v3/index.json".

If I modify the recipe so that it tries to curl that file, I get "Could not=
 resolve host: api.nuget.org". If I do the same but use numeric address, I =
get "Couldn't connect to server".

If I run the commands in the recipe manually in the same environment I use =
for Yocto builds, using .NET SDK I have installed manually, they work.

My build environment is Ubuntu 20.04 run inside a Docker container.


Best regards,
Antti G=E4rding

--_000_PAXP250MB062615A0B44EF5561D565B819EE59PAXP250MB0626EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am having an issue with a rec=
ipe whose do_configure requires network connections and I wonder if this is=
sue could be related to Yocto so that this list would be the correct place =
to ask for ideas.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The problem appears when trying=
 to build dotnet-hello-world which comes with meta-dotnet (</span><a href=
=3D"https://github.com/jeremy-prater/meta-dotnet"><span lang=3D"EN-US">http=
s://github.com/jeremy-prater/meta-dotnet</span></a><span lang=3D"EN-US">).
 I am not the only one having this issue, but many people, including the la=
yer's author, also report having no problems. Googling gives a lot of sugge=
stions, but as this is related to .NET, all of them are related to Windows =
/ Visual Studio environment and
 I don't know how to apply them using Yocto.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In short, do_configure for dotn=
et-hello-world invokes the .NET SDK's tool dotnet as a host tool to fetch w=
hat is needed to build and run the program. As a part of that, it uses NuGe=
t, the package manager for .NET, which
 says &quot;error NU1301: Unable to load the service index for source </spa=
n><a href=3D"https://api.nuget.org/v3/index.json"><span lang=3D"EN-US">http=
s://api.nuget.org/v3/index.json</span></a><span lang=3D"EN-US">&quot;.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If I modify the recipe so that =
it tries to curl that file, I get &quot;Could not resolve host: api.nuget.o=
rg&quot;. If I do the same but use numeric address, I get &quot;Couldn't co=
nnect to server&quot;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If I run the commands in the re=
cipe manually in the same environment I use for Yocto builds, using .NET SD=
K I have installed manually, they work.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My build environment is Ubuntu =
20.04 run inside a Docker container.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Antti G=E4rding<o:p></o:p></p>
</div>
</body>
</html>

--_000_PAXP250MB062615A0B44EF5561D565B819EE59PAXP250MB0626EURP_--

