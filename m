Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1AEEEAA53
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 15:53:41 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.78])
 by mx.groups.io with SMTP id smtpd.web10.15879.1694706813322893125
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 08:53:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=JsmFVzRE;
 spf=pass (domain: kymati.com, ip: 40.107.13.78, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQDBWvowlV2yGhhLBwreZQMnQMAdwGPSLGFXCHM5+owuscPNnoRkKe7I3068WYHJCr+dMIo481rNKDKqfM56/K8TKOGg6kuv8nyTiXG+KsHtoXuTmt9BKdXgc9PfrOMNmTSyZn74pG3UKsuBl0URO0iAmUheKqs7L1dhPNLcB8/NOK+sSxoOKCxSlSseg1uipUEAvahMOgQjEO4j8Z4zLvRVqcFK2dBYPjq5RNGlBc6clW0ZsGNfpeSFYvxgPkjslVK+alrwEdieE/csopKODSk84+4Ke29yhL2RRDOnAXxMyw5sLSqotIH/8HGieilSjr4qgGQHWAEMj/mYlvVm8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZGM6ntKriSUPgNKNn+4WHK/5nE1PrAYzbsa4ED6gj90=;
 b=gd25KCUnrI69zW4F9oYsHpWiY9epphMWvAsPDpoPQHtHPxuNFYk6fL5e+/YhXcf8vwDqC2GdfdwUCAMtgCFxmCpEh4NpJGGrYA5iB+3n5IJWJZGwn6+OB5OuIGDGhDmcaTfW0SSHQ9szuzsRtVE2kREB3vLR+YH4DlQWx59itHS45oYQNo8BlQgg2Z5ihDOEySzs9k1QVHoeXrz9S7/kowR753AcDNcokRviLcy+5J5jut5T9k1aIfhk8Ye8ZTOpn9RfxbQ+yIWJsUHB+Vk4pdECwMg4GJYHA97HBnOvZOe12XMN7+fZAbHEXWbcvVKcb5fwYilUFrhbYyIduQEopw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZGM6ntKriSUPgNKNn+4WHK/5nE1PrAYzbsa4ED6gj90=;
 b=JsmFVzRESI9r+DGHO6JaUffZpbjQ+cBRRJhvj5IIssDEqT4FBmRxy5wGd4orynpUeE4V3+fg43sRsV+5B8j5OJeV6OmGOn9oiIKpwq7eltf4Qdd6Yueeu/8uHBse1As8RCWiJWwLXjJB74iHJNu1eNf5mBBBs01leeI4SJSgcY8=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by PAWPR03MB8963.eurprd03.prod.outlook.com (2603:10a6:102:334::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Thu, 14 Sep
 2023 15:53:28 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::2f9a:1999:e82f:efcf]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::2f9a:1999:e82f:efcf%2]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 15:53:28 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Martin Jansa
	<martin.jansa@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Errno=No space left on device
Thread-Topic: [yocto] Errno=No space left on device
Thread-Index: AQHZ5wNVJqPYTkBL00yGm4Vi5SDKIrAaPNYAgAAEdgeAABf7AIAAH8Hd
Date: Thu, 14 Sep 2023 15:53:28 +0000
Message-ID: 
 <AM9PR03MB7012AF8B2E587BB7939F2FF992F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: 
 <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
	 <CA+chaQefpv8V2gsmnk_DYfOCRstcp1985RNVTAdRu3hJki0x4Q@mail.gmail.com>
	 <AM9PR03MB7012488D10FE95C6F4D12AA892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <aaeb579eaf7bb5914a944d6a2cb093be7521548f.camel@linuxfoundation.org>
In-Reply-To: 
 <aaeb579eaf7bb5914a944d6a2cb093be7521548f.camel@linuxfoundation.org>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|PAWPR03MB8963:EE_
x-ms-office365-filtering-correlation-id: f5cce8c9-98ad-469b-0651-08dbb53abcda
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 7g9SW5+LPlxg6pFIe9HEK+VECzLVBdQNyq34buCOwdNLltAGh2AcOmyLBcRKd6jg2/M3SvFaOvi5b9aVBZDnJrfPy93BFjSIDGdAQHCf7R7j5pmyTPea2efPKKy8e8kzm9gj6f5CV3fPzQKzu73H4nLqzQfEjBAr7moAXh++CXreOuocKvJzDLsXNTAqZN/mxqemhWOSPrEsRbEI6Y/LOvq1Qyp4Qz9CPIrhUOXhXivv6gueIStNEmRkZXvKBEJXDFmse23ZFB74lraak4i8WbbGh64R6zFxPlJNMenqvWkb5I70PlhAxbTNktwth3voawTm+0NK4Q6jOecvqhzr9xKSeTcD0/xTdCY+qxLmchx4EHIff5tbyWQdNP4Nb/o4dorsgw/RBweEjjwcQrZD0bYHLeTCPgCW3cJUjU7QfteaHLK0RDYyKW69ZCVkUG6eoNu7xjvZ+mawAKdaQEu/mYi79csWcgrOQKF5HTsWYlrNqIDG6Do4SBgh7UvLFmsn64RP6nR+Ne/RTpLo0J7SM/eAIl2NlDVzXwN9K0TJohw94hQrMDEVH5vqnUfemPq5DRFuiFO5dYB9vKpHUp5TNilVkrlMLDiLtaF8BmnEqhc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(136003)(396003)(346002)(39830400003)(451199024)(1800799009)(186009)(41300700001)(19627405001)(122000001)(6506007)(53546011)(7696005)(71200400001)(91956017)(38100700002)(86362001)(55016003)(33656002)(9686003)(1015004)(38070700005)(316002)(64756008)(2906002)(966005)(44832011)(83380400001)(66556008)(8936002)(5660300002)(110136005)(66446008)(166002)(4326008)(478600001)(52536014)(66946007)(8676002)(76116006)(66476007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?IOvdvMzwvLeHTnxdrV/EAHnIV8JFga8/2ZBmWJZj84AeP09gSfTmpS34zE?=
 =?iso-8859-1?Q?0mbdwp2Lw/kwMGIgwEgdpc+FdT+JlKd/KTqeo0W7iocyd6Ix9eOIE7zvAS?=
 =?iso-8859-1?Q?uJ0IYXFuNiYRyVkNRxLltamWg0kXXfOlrE6k7UmquIMcmq9tv+WqjNLUBE?=
 =?iso-8859-1?Q?KjTFfjsqzbQ/aIVYLEneMv20ztjD+Nbf2smZQTDL/b3/6Pk9WHkiy88Nrg?=
 =?iso-8859-1?Q?MDkhQovQOhgLA+3EM6VecnxpLowNTYwdloEWzSOCPEbHjQH1GXYhnsttdP?=
 =?iso-8859-1?Q?sWWZldqVZW80uuRAuzUVZ/butVB3KbWAIslzbd+zwKOK2n7b4FRcs5D65j?=
 =?iso-8859-1?Q?wCbwb9nsUgdUuWFQd0jBKiJf02ELsb9Ivu/OZl8yAuQ4udw5kRXRdt8FjP?=
 =?iso-8859-1?Q?sAHT47RndSQXZmoxV/CzFgcUBlPFmhhwCfrgfokI7+Nu7ATdR1XA0IKkFF?=
 =?iso-8859-1?Q?PhEAeIcyiZ8kGLMwCOtcD72ZSr9berS09STF5xlxECR8F4/OOKV6p/jKZ5?=
 =?iso-8859-1?Q?yn1IzJ94ygZm/SoPGx4LbLndIfTFX7PxcCL5vX5RuFVHIQxVqzvAy19AKX?=
 =?iso-8859-1?Q?jJM7CwvHe4FghxfTnhLOqzG5aDoboJpZXLbxsih/eUtWPf/j07TT/ZUle6?=
 =?iso-8859-1?Q?R2Og3PCoiA4KxkQ/j1itEKaXhvBH0sZxFOIp3RnYtyHsAv8JWN/p2qPCsE?=
 =?iso-8859-1?Q?IXFDWjYxQwhvqpPj7dJVz75v15p/T9bhOWvwf56irhwpRme7DwY+uUFa2J?=
 =?iso-8859-1?Q?sfh5E7oJ//Dd988Ji0GE0NVxTjO78Q+Cb9DpRyBt1Y9sO1ral5pNi+8THr?=
 =?iso-8859-1?Q?+YuRSiCcTIkRwPdBk0QOZ6TCXP/vcgWXMEHOu8Bok51H/A+5r0Owv1OqNA?=
 =?iso-8859-1?Q?+SXe3/wP5JSqDY5Te8KBe/RVYjCOqGeDQ6vV4r6lXq1+6pzuKZ5U0jiFqF?=
 =?iso-8859-1?Q?y/eqTord59qbCKEyF+vf4nr6ibG145jx2PcZeGyEPPvyH83pPyjugsPx4q?=
 =?iso-8859-1?Q?otyVqqEZX2NdY50wYqtLu1qyW2tY07SgzN6oGzgnAx2EubwVrXL6Syv8FJ?=
 =?iso-8859-1?Q?vXB1hLZ7P6eO8DLVJ8SzFkeK6GmIyrQfDyLaOmfDg2irUoAt1P7M7SEmiW?=
 =?iso-8859-1?Q?mYtzUNaFCkL9c6W3eChrvbfNsEIeDhs/sp4P/kEI02rNuQS2c7UMnD4xFd?=
 =?iso-8859-1?Q?J7284U7oMr+H/RUVClRrbKPaXGxBfktJUuV84L4gFjiMhM+eQwaWnNDIFY?=
 =?iso-8859-1?Q?11X3S4boy+E69eJUudNMrBEaT/5hxMaMnots/Z/A1oV8gYd+lwMd9WzD4H?=
 =?iso-8859-1?Q?jZSEfhn1vnXcmYND7z+zWg2BUkpYbeJ7Z6doR7zuSxPQfk5C3PELzX/GdD?=
 =?iso-8859-1?Q?+jLwZJ2wX1Nza0CQw8rrehmulA3lzq/S6KClq7y9Akm342PZDY/5QaBsDc?=
 =?iso-8859-1?Q?NsqNZpUuKkXuPWM+gD0VdT8F6z62qB/WwstXXy0b0bSpomRxdvXKYJBX0P?=
 =?iso-8859-1?Q?o3SzM+7KAN4290l8yavvnX5yM3ogdGig6FDEHphzEqMlD04BbrNSDKpRs2?=
 =?iso-8859-1?Q?ufkMDYfM1cDytDiVva7iTc52W+zV4OPS4Z4jVCfelmkt/KfnK97O2Mc+WI?=
 =?iso-8859-1?Q?azQN/H3ErC5M5fOtexTXwpIRWdhENg3DTZOHJo3hbJ5cBk8OlnBPQoiFnE?=
 =?iso-8859-1?Q?c4t0biqji00/Cu41T1797fDYu0dBlAcC0Vje+OaK?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB7012AF8B2E587BB7939F2FF992F7AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5cce8c9-98ad-469b-0651-08dbb53abcda
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 15:53:28.3777
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rsI11Oyg7vmZebshkCAQGncHKaZLPyq0dO2TM5UNItbwGn1D5XpXKnCU5r41zex7SLRglE5pCk5Lsf0RsjH+to3GxsG+lNky8YXCsdaxrqg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR03MB8963
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 15:53:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61008

--_000_AM9PR03MB7012AF8B2E587BB7939F2FF992F7AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Richard, nice to have a little more info, at least now I know what m=
ight be going on

________________________________
From: Richard Purdie <richard.purdie@linuxfoundation.org>
Sent: 14 September 2023 15:59
To: Dave Hitchman <dave.hitchman@kymati.com>; Martin Jansa <martin.jansa@gm=
ail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Errno=3DNo space left on device

On Thu, 2023-09-14 at 12:35 +0000, Dave Hitchman wrote:
>
> Does anyone know what IS enough? Watching the video series
> around https://www.youtube.com/watch?v=3DbTEdfwtPtNY he doesnt mention
> changing this size. I dont actually know what this watch manager
> thing is supposed to be doing, there is one command prompt doing one
> thing, I cant believe that it would need that many things being
> watched? What is it even watching for?

There is a "memory resident" mode for bitbake (BB_SERVER_TIMEOUT =3D "X")
and for that to work reliably, bitbake needs to know when to reparse
metadata. For that reason it does track the metadata changing. In
theory it does this even when not staying resident so it can detect
changes in the metadata during builds and inform the user not to do
that and also to reduce differences in the codepaths between memory
resident and non-resident codepaths.

You might think 65k sounds a lot but in a simple OE-Core checkout,
there are 2.5k directories and 19k files.

In order to reduce system impact, bitbake only monitors directories,
not files. I'd imagine somehow you have a lot of directories being
included in the watch paths.

FWIW in a given build there are millions of files being processed. We
should only be monitoring the recipe/config files though.

So whilst that doesn't answer your question fully and I don't know
where the files are coming from, 65k is a relatively easy number to
reach in the kinds of work bitbake does.

Cheers,

Richard





--_000_AM9PR03MB7012AF8B2E587BB7939F2FF992F7AAM9PR03MB7012eurp_
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
Thanks Richard, nice to have a little more info, at least now I know what m=
ight be going on</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b> Richard Purdie &=
lt;richard.purdie@linuxfoundation.org&gt;<br>
<b>Sent:</b> 14 September 2023 15:59<br>
<b>To:</b> Dave Hitchman &lt;dave.hitchman@kymati.com&gt;; Martin Jansa &lt=
;martin.jansa@gmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Errno=3DNo space left on device</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On Thu, 2023-09-14 at 12:35 +0000, Dave Hitchman w=
rote:<br>
&gt; <br>
&gt; Does anyone know what IS enough? Watching the video series<br>
&gt; around&nbsp;<a href=3D"https://www.youtube.com/watch?v=3DbTEdfwtPtNY" =
data-auth=3D"NotApplicable" id=3D"OWAd626683f-2f2c-cb15-f1df-552d81d19d67" =
class=3D"OWAAutoLink">https://www.youtube.com/watch?v=3DbTEdfwtPtNY</a>&nbs=
p;he doesnt mention<br>
&gt; changing this size. I dont actually know what this watch manager<br>
&gt; thing is supposed to be doing, there is one command prompt doing one<b=
r>
&gt; thing, I cant believe that it would need that many things being<br>
&gt; watched? What is it even watching for?&nbsp;<br>
<br>
There is a &quot;memory resident&quot; mode for bitbake (BB_SERVER_TIMEOUT =
=3D &quot;X&quot;)<br>
and for that to work reliably, bitbake needs to know when to reparse<br>
metadata. For that reason it does track the metadata changing. In<br>
theory it does this even when not staying resident so it can detect<br>
changes in the metadata during builds and inform the user not to do<br>
that and also to reduce differences in the codepaths between memory<br>
resident and non-resident codepaths.<br>
<br>
You might think 65k sounds a lot but in a simple OE-Core checkout,<br>
there are 2.5k directories and 19k files.<br>
<br>
In order to reduce system impact, bitbake only monitors directories,<br>
not files. I'd imagine somehow you have a lot of directories being<br>
included in the watch paths.<br>
<br>
FWIW in a given build there are millions of files being processed. We<br>
should only be monitoring the recipe/config files though.<br>
<br>
So whilst that doesn't answer your question fully and I don't know<br>
where the files are coming from, 65k is a relatively easy number to<br>
reach in the kinds of work bitbake does.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_AM9PR03MB7012AF8B2E587BB7939F2FF992F7AAM9PR03MB7012eurp_--

