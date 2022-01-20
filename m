Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40ADDC433F5
	for <webhook@archiver.kernel.org>; Thu, 20 Jan 2022 11:20:09 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.43])
 by mx.groups.io with SMTP id smtpd.web09.10479.1642677606174027201
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jan 2022 03:20:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=CMJEeqPB;
 spf=pass (domain: optimeas.de, ip: 40.107.6.43,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dbt59D7q8j5rW1vJNew+KYnBjuBB850h5wOto7pgyfLNupJ7Pjt9NHl7ZQH3tu7AXKGJH8i/b6jo/tNAXo6Ka0v4dL7xhhRcvhxI/wUHwQPmabtprFda2qjnyczsyL9SaXtdC6ZnTzFlmNyr5bzj3J3lTS/+sedoPc31loXL0Nhta3q1WtyKNYPrgsWJW69TFq2j0IMCDiB2CmIk92vDTx6Fd/obnlkxUbz1NaTbi5Z5khkVDsL23cjh0j9h2rIsRp8j4N4yTFLBwmKsvZd2qbwjtjDKnK12tLGp3NJzRYBi8bhoXL8PztEQpUYItMVg88ZGneKHa1UvBw7iMch7xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yyigRcgpy8xYcwrL8aePFQ6TUjOQ5+2NbaYLOFHNIZo=;
 b=Vi6W4HqocrUP5HNEnYGxz0IL60N19DnB8vXEm3qPoZQro4yoaX7diNVww+3R+jrEwBmNjv1s7AfmXru2aOPST3IqaamroPAGzv2EN51WiMhgjM6Sy0kYcmL1g5vThpjCk7lgf0cP+P93YU52EXeggGTJw/GG2piFFQkzcdAD3G246IhlSQiaPthKvWpT+eEPKcIQQsA5NOJ1OMQ44Cz3EFxF98koWSj+Nm+vpopf6EdNItJh33zbQMg4XqGX6K8kKkncw0UWNMcnvt8/pGf0pu6cd4phwZxlfJopKKp3o8yreFlxJnF6j6DFkcMX/GgErVZOcZlDzWYbygH3ActK3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yyigRcgpy8xYcwrL8aePFQ6TUjOQ5+2NbaYLOFHNIZo=;
 b=CMJEeqPBUxzkHs3JXveaxGmLeW7b19YHoHC3hkzymi7IBEm+qcX+5mReFo8Su+DcsZj6XbMOSKvRPSpOOooNGijA4MLDQySSqrUkLBCuUG5mF2OSjyQ3aOT05yNKX2EqIkpo/BrjOjdWaglTKT/PQmoOyvdzG+y0icWiJ6dUnR4=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AS8PR10MB5123.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:426::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Thu, 20 Jan
 2022 11:20:02 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f1e6:715e:a4e3:d01b]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f1e6:715e:a4e3:d01b%2]) with mapi id 15.20.4909.008; Thu, 20 Jan 2022
 11:20:02 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: bbappend conditional check for advanced metadata
 (yocto-kernel-cache)?
Thread-Topic: bbappend conditional check for advanced metadata
 (yocto-kernel-cache)?
Thread-Index: AdgN7ubUUC36HiM1SPG+HymGrCxk1w==
Date: Thu, 20 Jan 2022 11:20:02 +0000
Message-ID: 
 <AM0PR10MB3107A3C6E22FB1D8AD02ED77995A9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b232ec55-77fd-4e24-d406-08d9dc06cd8b
x-ms-traffictypediagnostic: AS8PR10MB5123:EE_
x-microsoft-antispam-prvs: 
 <AS8PR10MB5123FD26D40EAE6DC9D86594995A9@AS8PR10MB5123.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UckJ/wgGIPtuLJzU1e5H+ljPn7MGDovUqmvflmGUXgox7aCX83lg+QCbc3w3PIChWcuzsJiIliyfWNV8kgjgKgJDproHxvcedhNfW1lkO0HkCANWieGh/cx5CYd09n4TBB23mjLHnZB1dodDFuIMvkdAIM31L4birS1Pei7X/9HYA+9pkHlGo2ueEIQsbftr7/Fg43T/IkTAVbm/IP4UoycHJMKsBdqPOT9aQ9jB3VHyF8EuRzUeNIh3HSY2qPDLUtgDcmj8+jA/BsZ4PTJ7NdP8+EVEoGqBcgk33BGl3d4Qjc+42EavebhJ+iad8RWZy0sbAzwT8nOa+OLJ3loiXG8jPuHSnd44tcxNKt1oO1PR0RWmAEx3Gj01A/1lPxix9rimwzB1MLwfyLwsPR/nh8Sty+Pz+KLQUKqlgLr12RZ9hv2cgoqUFIGvwMBEz993Fp8SrthNOdijUiFUMz1N5i6s9k0wFK3Adjkqu9gu4P9iLH/p9weslp7e+ou+3Jjsj6QmLgTiHp+xVaAi+H/fK6WaCA2MpZFIRerywimYzprZXyKMzvjCqIHmezxMipp+iBJL8Y11eoLY35tUhul9n22bQ92StaQ/n54Qgf9QHk4BX9Nwo24CRKU/7pBk3nQRxcOV/1PHF5o1SK3E8Myra9Bw6hBq062zen1g+NLmhMVVhoFHLFMQNE88z6sytVx1V/L3/EC2ytyxSanziNzyaA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(39830400003)(376002)(346002)(366004)(136003)(396003)(122000001)(9686003)(52536014)(66556008)(86362001)(71200400001)(66476007)(5660300002)(66946007)(2906002)(38070700005)(4744005)(64756008)(66446008)(55016003)(316002)(8676002)(33656002)(76116006)(508600001)(8936002)(7696005)(19627235002)(38100700002)(44832011)(186003)(6506007)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?vLjU3eBwHGE+wHEfobwdRRjOoobBITkfnfjkYHcnbillUK9Zvd0HxOpm0Ojd?=
 =?us-ascii?Q?/uT9qS9Boz8efSGrU5kSpmVeVJmkpF5dKy0XHDxlEY1gvHfd4lGediCT/XcL?=
 =?us-ascii?Q?W0f5/b4MstqSy/CktyVz/vF7q4zSo8h9LMEOAh2kqJOl1bJ/eKttHUlnSNiZ?=
 =?us-ascii?Q?H2036LgzmS1NYYWSTPRZhC0YngjhgxORx5kqDWkH+ZskWlx6uu0OkchCUrX3?=
 =?us-ascii?Q?dM/4mAViuAl64ly1iAKWRY1dpuIu7IXGHE5VK6K+Av5ZBr7aZfRvRpMooWKh?=
 =?us-ascii?Q?C1PxHECAga6zEcd1cO+U0rTqMM5S3+TlY2Dz6/8kFjTvkqCaZj9LDpyaFfjE?=
 =?us-ascii?Q?93sOM9KE7BmgVmM3iQYKWiM/MIVfPYS/uEmO7kzIH7ngijfPXMcB41iPXgZF?=
 =?us-ascii?Q?IW/06z1waalCB9sLFjQgHzgHS/jUO0a2A0Qx51d0MnDPosTNvEbBH670lAUK?=
 =?us-ascii?Q?Qf2Zp/bgFg26z6xZ5HLUfuoCIca/9A6iKA1CdnvX2iqz+iMjucU76P48qhj2?=
 =?us-ascii?Q?tbkRDbWezBo1fwH4S2F5UVVFEKSHC/7EyRQmEGQplM5SpkMJAJXdd5N5Sp6c?=
 =?us-ascii?Q?+6eDIUId0sxEKQW6PjkeJkOHYTT+EAbRQEQu1RzbiMXv2KwTXfrdOiHZV1Fm?=
 =?us-ascii?Q?k4VAuhp+G/LOUArnUpi1jr4ZcuF+KQyJpLVaHNhptLxJTZp2sWS6F/HWhyRU?=
 =?us-ascii?Q?j0hJbNCacnoqLhiPVka3isMBCeEFUqoW6nRvGpIHYakoaNWd4HR9RYH1Pdeb?=
 =?us-ascii?Q?nUxjrBd4AnMo6zGSTyOk2fSM5UCNuRhonZrh6FIJbcun5LM8qcoxMmiytW2T?=
 =?us-ascii?Q?Z2pveqrdRYm5R6Hg4nTvoc4rfvrA/XXc+JS7nKx/Q/V2g49SyJlIeCy6mNOl?=
 =?us-ascii?Q?awjKhkCILpyu3jau5mXyfmFsimanuWJPjScmuHxMJsfUjdem2GsOsi0SR1JS?=
 =?us-ascii?Q?j+jW3x86j6tbJdVzV3gcyi2pHlsuP1ruD/7LOawe6YumHyDWtG/YUmVvRGId?=
 =?us-ascii?Q?aa/OXSvusmkRWMcysBXGGv97/RlNBX+KOuLFd0ve/aRMJ0CsnCEiuCklywSt?=
 =?us-ascii?Q?I/n1t+fv8sNpxkV1z3WMR5zGRWC46YY6aXQ1uiuF31w+qHIP4dWljQrWYwI0?=
 =?us-ascii?Q?8qOJOcTYEb/ypqdg99pATqHNh3kYElkFId6m5LRp784XO+I4Szie1k3emGYE?=
 =?us-ascii?Q?wG7jDaeDU6RiwFy0dwbmkRIoQ3pinPLNmye1NcEIKEgQQ7GP6f4cIE7+DVn8?=
 =?us-ascii?Q?fUdFaGjlp/XKVTV9rKZzhp0JC/WqWhomuBmgrwOcGkDdxBrM08SltopDtgEy?=
 =?us-ascii?Q?lXS55pPn+kysp+1vv/x9Lh89bdPgOemgwY0+5j+v2vqyMevep52cTt2D25JJ?=
 =?us-ascii?Q?aOU7pbPLmp0X19avDg/VbcouCrkOZHWCF9nXyyKaxDTgnj/vsqeIaatxKpNs?=
 =?us-ascii?Q?eojQN2tz856rcDQbO9I0E9+hBaMLuw1ncy+jf0I7/Mym+unmJToN2ZbQOJks?=
 =?us-ascii?Q?VahM7kIrp7bAKZaKR4CSZDfs+2y5kxWmI6sp3iDvq5CgmKOKUxNH0fzESQEF?=
 =?us-ascii?Q?NH57ETc6vjO5/kOSqNMtvu/aeqqNVQwgpB9HSXROtaNpO3yYZuhpANE52F9F?=
 =?us-ascii?Q?LszHgY6tYOOvc8tVjKo2o5N+noV1XG8GBB++MqTciHG3Xk5GLm+d24kuPk3k?=
 =?us-ascii?Q?oNSsVmpbVC7CZvMzbci+xYyBq9Mq4abr5Qtaa2OHt6ni/Ax3u0rT9UeMUc9h?=
 =?us-ascii?Q?k6rA9Pr2KQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR10MB3107A3C6E22FB1D8AD02ED77995A9AM0PR10MB3107EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b232ec55-77fd-4e24-d406-08d9dc06cd8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2022 11:20:02.4949
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 DMtXjz7Uqztgo48oYc+fbUL66UBPOBD5DRT7+5FnrciHxpiWL05bDpS33TK5JoxlCJO+PEmToE+A8HXuvzZn/GgPFKGvOMBQCXQktMG55zI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB5123
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jan 2022 11:20:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55930

--_000_AM0PR10MB3107A3C6E22FB1D8AD02ED77995A9AM0PR10MB3107EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to create a linux-%.bbappend file and add the following to it,=
 for example:

KERNEL_FEATURES:append =3D " features/overlayfs/overlayfs.scc".

Works also for all kernels which use the advanced metadata. Unfortunately i=
t leads to an error with a kernel which uses a defconfig.
I would only enable the above line if the kernel uses the advanced metadata=
. Is this possible?

Many greetings,
Matthias

--_000_AM0PR10MB3107A3C6E22FB1D8AD02ED77995A9AM0PR10MB3107EURP_
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would like to create a linux-%.bbappend file and a=
dd the following to it, for example:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">KERNEL_FEATURES:append =3D &quot; features/overlayfs=
/overlayfs.scc&quot;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Works also for all kernels which use the advanced me=
tadata. Unfortunately it leads to an error with a kernel which uses a defco=
nfig.<o:p></o:p></p>
<p class=3D"MsoNormal">I would only enable the above line if the kernel use=
s the advanced metadata. Is this possible?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Many greetings,<o:p></o:p></p>
<p class=3D"MsoNormal">Matthias<o:p></o:p></p>
</div>
</body>
</html>

--_000_AM0PR10MB3107A3C6E22FB1D8AD02ED77995A9AM0PR10MB3107EURP_--

