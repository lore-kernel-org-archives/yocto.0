Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB65C433EF
	for <webhook@archiver.kernel.org>; Tue, 22 Mar 2022 17:10:17 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.42])
 by mx.groups.io with SMTP id smtpd.web10.12916.1647969014455721479
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 10:10:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=n24AYJGL;
 spf=pass (domain: optimeas.de, ip: 40.107.22.42,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mXal2fGxa5BiBAdbQecZBCS/nzso17deSfXC0ibdZZ86nY/3/qQUsk3Fixq1DKej0V1HEwsS3pGK4mc/neMY6eiwDhIut9LYyj5rodbYMMovv/umrm3MprK9uYHwk386HDU16oCshw0lziMRbRBFlx3QF/P+uwveK6WDlcI5+p0X+IXgfAtNAIvsI0OW6HXAopLFruLuWcbWprum2TjCCwUBpRdLSUZtQahghN1tHx+ti0OWviv13ggzUdr5A6w8+ATtTqiUsFYZt/l/xYnbmwQ/PyOL6GKFzjfsZZxjjyJs2mz5fzHr6Yhvgv05OA+SDSyPFDdGVIuN2+rFMerlIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FQ0DDq8kvDxYVVMPrh0VhcHQpgIRaUmdjcvq0riaY9c=;
 b=Zr0SdeHsad9sT2QPryUKede6ZAXQ30Corhh1WeTQdt2k+XoZV+bypsMm4WWPcBVPEzh0CKcRNqqXNmXYre26H8QUzbFuR0jA3ePEV1i0FdlYq5WwWnNi1zLOIzfAymMqPbDM1wc22MAZjUGFLcxEyCuZCLhFR1r+8/8EU+A7ugqmvtgubLbM346qmF5u3+5r8hZmxIeQ+sL2cpAEXE26SSryFB0rORvjBaquHvwFEwUp+wXozBuDzZD8Q0H1RRXDA0gHbHk+lp2vdiqTQn5/Q/tpHRyW4gEKxEDJkQXYtEDviRRSGc2AiPAugDO5rrJUe4E8bKGg1gxehovuMVL9NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FQ0DDq8kvDxYVVMPrh0VhcHQpgIRaUmdjcvq0riaY9c=;
 b=n24AYJGLtaT1NwfJWI2QLSOHpV1L1d65Eu1govHpp0aKI3IAw1lwpk8rzkZn8u9eNs1k8UsdXvWwqgynPj6ITfSjrmQF+mrDeDLWNf6E2/eX+u7KO3BGeMEIGXVhoFVi2uVY5PHYLEkWARPTAVpKgJyKij8H3hwXZD01JuuxeNg=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by VI1PR10MB3294.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:803:136::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Tue, 22 Mar
 2022 17:10:10 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e5f9:550e:18dd:7fa]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e5f9:550e:18dd:7fa%7]) with mapi id 15.20.5081.022; Tue, 22 Mar 2022
 17:10:10 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: KERNEL_DEVICETREE cannot be appended?
Thread-Topic: KERNEL_DEVICETREE cannot be appended?
Thread-Index: Adg+Dcaej/XHVB/ERiqo18lugU1b2w==
Date: Tue, 22 Mar 2022 17:10:10 +0000
Message-ID: 
 <AM0PR10MB310724144326400F7BA0A04599179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8abfb16f-b1b8-4a2e-ec5a-08da0c26d283
x-ms-traffictypediagnostic: VI1PR10MB3294:EE_
x-microsoft-antispam-prvs: 
 <VI1PR10MB329446844B7D039572814AFC99179@VI1PR10MB3294.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 rMGhh6oKqho0F1PDLBWx6FA20+k8gdYCEJlgkr8aOLPwX/RZZ2HmfnlvB/eVwsqmkwTaFfLY+fA2xzTdbOvX/oT31PqedMpT1l3AtFlwjb1mTjenY1jOPp4N4F6Mmv6/0if+54OiqTsAvDvVJc+5Zb970n340pTng/bxhuyCaOmCzsFx6rh3hcnJe/oOPdeT54QXf3K9qUwqubkJgLF+AqT7Gg5mzZBlzVWzrabKGrYxdgZbSJEtBcc9I3OnK022rLLvoPOUhf6KRsZFgTzAbh2KCmPp64gcroTrl1Y+7TLl66Gri/FKQdoYLvXS5G9LPkn4jFALLNB6cz0aVRrfwznaiQ6L3RFSKZJR119e2saB1ZOhaSc2idpk0tkwlByF0lqfjKJNd0t4xl71SDBnXBPXmmG+CYS24dOke9YpnhRoy+rxiIQsLAU1z3tMLAcLvue4uSpxNzVCzqZXsMHP8nhNc8JHhlP5gY3JGRP+4rNRJQY64tB/BTxP03i2mBUyExflpapEv69fmAJbH3IWAxM2j/2IH9W/FtfSzKpP4JNk77fOgmw7wy/0U0fFWP0MN/1VJzXZenkw+EfM/haNGOnm7cBJ0+UuEuQbALCwwFAc8tcit2leB9ZbCL3jDm9QUq508TG3HX0B00moc5r9ZBeqpGqaNiZr3JOF0sJxNbF8wTLR6FhAZ3diz1jTyMNgmfDQA+QBCh5FYH9rczdMEg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(346002)(396003)(136003)(39830400003)(366004)(376002)(71200400001)(2906002)(6506007)(7696005)(9686003)(66556008)(8676002)(66476007)(66946007)(66446008)(186003)(64756008)(52536014)(19627235002)(122000001)(76116006)(316002)(6916009)(508600001)(55016003)(44832011)(4744005)(38100700002)(8936002)(86362001)(33656002)(5660300002)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?zTzggufurImCf2jCNT80f99YPOkg4zu5nnhtmGxIq6t5dR6MwA06xEDeKTpd?=
 =?us-ascii?Q?ervijYxJoBf8ki3cGTlJ4QdcG4ghr4tpiYjXHg1TE/PFNvVStApQsm9JVwRC?=
 =?us-ascii?Q?5G/xpu/fIZvtxD/Vgj+QwVah6t9qlDeHY0ucuXMvZfvb9KGYn7/lJTcrYTRB?=
 =?us-ascii?Q?MpitGaEKW9xdd5uw73ByCSMMgsHcy6CdxQG5SWHwSSnsxSYWq7PfcnfkJI86?=
 =?us-ascii?Q?38hwBgjnbw6hGYuI1RPuGLS8AZI89dRGLwaOBtGayncJEmLuGaDvzKEFf4+a?=
 =?us-ascii?Q?T+GrgqZVs1n5EK+HeGWU2Z/nUwJIzJ0jRZEv3w7JFpCgtjShYy0/Bjf6mQ7y?=
 =?us-ascii?Q?eSqpjBBmA66roG1ORjRHNoGSIZx0sHmf/7sYuh438A+/McasCqyuo46b+nGx?=
 =?us-ascii?Q?bRxIK6wPsC2EbFVNmGi6RxUthxL/DqwKvAsXbzY10trWmryDWTsHeUOfn0Au?=
 =?us-ascii?Q?es96AkLMaxaBtHCCQu5FCx2CcpfXS+tyuBpbfpRbWqJBChZ5MqKihs7ds7By?=
 =?us-ascii?Q?3/tg+ft4dBdqUYGCnhW97YiKUCH1hGfdN9UxbvjrPlbx92g+qAQDuCaHvlYj?=
 =?us-ascii?Q?hdhxBWYBoCiBXRNK30iQh780Y4tPEGRFsluDJS611QyxWG+/C52ctd+79KNk?=
 =?us-ascii?Q?VYX0zWWVgrZxmoo7TbRkU13Q6QAX47vZkLWAgb4ebrlVbB65xMRWhr1uEzFU?=
 =?us-ascii?Q?mR+b+rQP1ZSNpg5VWe+r58jVTnIkkRUqa7449lCwaiVWegOT7Jbu6ON3T0SX?=
 =?us-ascii?Q?xQwT7lBFaPXIrfAhb4+xLXXlyaAIC4w6/eZnCIRLX8FamVA2CglqG82v9eVE?=
 =?us-ascii?Q?Mo6hkAK5CYoI9o88EaDwuVqJEhBmYwAIf9U+QCTzC5i5uFL2NhmvGwLPHkuJ?=
 =?us-ascii?Q?HE2NAtsnfK6odNqkiy4jZbf7iwCdpAmqHGvXiXr6Yuu0p3g766UmtNjtQ49B?=
 =?us-ascii?Q?ZYhBMYTs2xOYzZpbS5TFLTFJ/95VhDJAhgPc86H9GvwfdoatE9V884aJBT4i?=
 =?us-ascii?Q?aCBNLuUT1gIBmoT9DHxxk2M8KYd8WZMZ2Aot6qa5mhkwpgxzC1S7QXR/zqqG?=
 =?us-ascii?Q?2BlMgj3LWmuoOvbZw3VxkXi+k01hgAnRyddBFMko8ghMT5fwCqHQycGFYhWD?=
 =?us-ascii?Q?C6ne4mQp4ZZPcIpjZ2iyu2AhskZ/M4EY0Hk3gK+T1f4ddk5PtZZyZP0m5k+d?=
 =?us-ascii?Q?dGH8HWhmvGQVnmnaR0jEGzYdMWfgVRHDNi8Xkq3DNEp1C3d7DWWpMIAllg13?=
 =?us-ascii?Q?JMt9ChHelcMsqQuhPKTRMM+pVXktjlVPJsbHpuTuNbCw31DsSCQ4MCniF9lr?=
 =?us-ascii?Q?xrYzjAFjE5qlyZCD07gkOd9mFXdZrkLV2zuO33yxZbe32TnbDpi1R/GH0CtI?=
 =?us-ascii?Q?Fg1S5IX0+iByc04XZfdEOKuf3AL7Ux03zwRa1UV69TWxgzxx59PD4aBipViL?=
 =?us-ascii?Q?sZGNFECAyTKpMug73Zynz5g0weDyEmRfi83ksFUc7/XPy15qQZzyJHI89/dX?=
 =?us-ascii?Q?DyW24Sxl4gu76YBndll88NIavDSDvuleWFFRe80PH0nqgzlzkmPFnVVlEQ?=
 =?us-ascii?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR10MB310724144326400F7BA0A04599179AM0PR10MB3107EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8abfb16f-b1b8-4a2e-ec5a-08da0c26d283
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2022 17:10:10.5716
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 U5cVOe+fwgCgsR+tbhoDVVx9xX3wxTFxv+PypZq1mmEprydY2vxZtQfYEO0gQsEKh2uMUgrJGHjUkSqkZrwKuTm37Yx7P+AmQMW9mSHzsoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB3294
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Mar 2022 17:10:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56529

--_000_AM0PR10MB310724144326400F7BA0A04599179AM0PR10MB3107EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to add a device tree in a yocto based on the meta-raspberrypi l=
ayer.
Adding the device tree via a patch in a bbapend of the kernel recipe is no =
problem.

But all attempts to add the file in the local.conf of the variable KERNEL_D=
EVICETREE replace all other device trees.
I.e. on the device is then only my new file. It seems that the "append" wor=
ks like a "=3D"?

#KERNEL_DEVICETREE:raspberrypi3-64:append =3D " broadcom/my-custom-tree.dtb=
"
KERNEL_DEVICETREE:raspberrypi3-64 +=3D " broadcom/my-custom-tree.dtb"

Is there any way to add the device tree?
Preferably without having to create a custom machine for it?

Best regards,
Matthias


--_000_AM0PR10MB310724144326400F7BA0A04599179AM0PR10MB3107EURP_
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
<p class=3D"MsoNormal">I am trying to add a device tree in a yocto based on=
 the meta-raspberrypi layer.<o:p></o:p></p>
<p class=3D"MsoNormal">Adding the device tree via a patch in a bbapend of t=
he kernel recipe is no problem.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But all attempts to add the file in the local.conf o=
f the variable KERNEL_DEVICETREE replace all other device trees.<o:p></o:p>=
</p>
<p class=3D"MsoNormal">I.e. on the device is then only my new file. It seem=
s that the &quot;append&quot; works like a &quot;=3D&quot;?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#KERNEL_DEVICETREE:raspberrypi3-64:append =3D &quot;=
 broadcom/my-custom-tree.dtb&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">KERNEL_DEVICETREE:raspberrypi3-64 +=3D &quot; broadc=
om/my-custom-tree.dtb&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there any way to add the device tree?<o:p></o:p><=
/p>
<p class=3D"MsoNormal">Preferably without having to create a custom machine=
 for it?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<br>
Matthias<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM0PR10MB310724144326400F7BA0A04599179AM0PR10MB3107EURP_--

