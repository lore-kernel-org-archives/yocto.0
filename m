Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F02A9C4332F
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 14:17:06 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.88])
 by mx.groups.io with SMTP id smtpd.web11.14917.1670509018184288384
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 06:16:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@missionsecure.com header.s=selector2 header.b=sk7U4oIc;
 spf=pass (domain: missionsecure.com, ip: 40.107.220.88, mailfrom: gary@missionsecure.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n0MvFmG1KT1rQaRsaFi83+nCFRoXOhbfQA/f6VAv4zcjv5A3K8gWV8/smlMQIXtbdx03g/PssBktuCa+XVX2bElUUTW2SFKe38Zq8nGeUEzhIwIfVMGP4RsZx0Z31ije5y3G+PBWEq7fgktWWI2tViEHaap9hrgSxIqVvDk5PnEHquPYi8iEEntooCdp8ys4jmhVxpn8gkUWeT5KnkGKf124LVHVYETUAIss+u0EbyYB+S0BeOoaalb3DjLUrjoN/PFFMf8FnKdUgCF0wRp7qSTXWE2wfLgQtmndabIBgP7i6UokfHz7XrmSF9OJZ3+KaJsAhAF0Oy6CyhSgrT0ccg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mu6wXFYy2e7KxcSbYvVECMi2TAgajW3JN7+9Q8K7OtI=;
 b=BsGKBNMuoT7pPQVPEfbsYdjab9Rw6DJWKvMminHkSX/3FgGT7t4+78OqaITGWnuk9wiSbP5F6r18KdObuNmEds7//CI3FTX53JBfS0qOL35RD8RJWOBcHh3i5GzkoqzJZXntUQINLgkC9YHQaQ4/K9uUoLC/b7JnyrzsZYXxvVAnkT32GT85NMGBiSpzy73qqq1gC6Sj8hhO+sxVArPJTP8nCmKoWFB8HS2PGJj0XFjTKec8fk8/hgxDGGkNuytSEfD7QON8tGOaxw2mGagSaQs/Tpt+3HpMi6j/Mk7zZIfNoikorVuVNJrgQMWnJkxytzbRTVrOk9Qk5qfThkNZ1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=missionsecure.com; dmarc=pass action=none
 header.from=missionsecure.com; dkim=pass header.d=missionsecure.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=MissionSecure.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mu6wXFYy2e7KxcSbYvVECMi2TAgajW3JN7+9Q8K7OtI=;
 b=sk7U4oIclK3VJHFEu+xFm24j9temwkImJjCsTUsuMb1t2K5nOJN7RHU9HW6grRCI5O28WuCEKF+9qgNomKuKsaVv8RTctQRDtzw7mifN3Y/vdV20GXXAJ8cn518Q4NQFzlPJy1J9QeMOE0LVTNYWyckHb3PF5WvmPzKvWRa1/UM=
Received: from MN2PR17MB3903.namprd17.prod.outlook.com (2603:10b6:208:20f::14)
 by SJ0PR17MB4599.namprd17.prod.outlook.com (2603:10b6:a03:370::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.10; Thu, 8 Dec
 2022 14:16:54 +0000
Received: from MN2PR17MB3903.namprd17.prod.outlook.com
 ([fe80::b5de:f0fd:4bed:b75]) by MN2PR17MB3903.namprd17.prod.outlook.com
 ([fe80::b5de:f0fd:4bed:b75%9]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 14:16:54 +0000
From: Gary Huband <Gary@MissionSecure.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #kirkstone #systemd
Thread-Topic: [yocto] #kirkstone #systemd
Thread-Index: AQHZCo1J92gf13noW0yEuGOdJfFY1K5jTr+AgAC7eTM=
Date: Thu, 8 Dec 2022 14:16:54 +0000
Message-ID: 
 <MN2PR17MB3903B7C0F328FA372E867211C31D9@MN2PR17MB3903.namprd17.prod.outlook.com>
References: <NqFY.1670452987971380409.tdnO@lists.yoctoproject.org>
 <38ac59d79f2562488b098071bbcf0f3e11d8cd8a.camel@intel.com>
In-Reply-To: <38ac59d79f2562488b098071bbcf0f3e11d8cd8a.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=MissionSecure.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR17MB3903:EE_|SJ0PR17MB4599:EE_
x-ms-office365-filtering-correlation-id: 7cf06124-923e-4e58-c2a2-08dad926db8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 V13eyDRzw/O0Ieu216il1GobFlcjrQ7AL5GYyhq3OBQDwNKRWrRV4icoFflnHXFm0VpHTjktwcyExa7Ghi6QeDRMEnLJbJ38JXAupKbTmmv8yP3n0fg+VpvWSxDWWRd2NK8EMjufviXqXHK81UPzTKnKusZ1tWk/Vu9TdA7hWs7EW2utEF6Nbhq+IkX6nbn7FiBjAPFRMdA6q7b692PPcO7SQ+/nMGFDqYCi15MK26k0m1FooI7KfXI6EcJLbOf8B+qmW/FUFJYiuF1ffG+byaT12LkorDemiJXsyZaoamFndGblgEbY6wqnRfQmmGbERl3rajf45HQP/Z/vZ4H8CRCx0BzfF/ClIIg6WndHAzxPj0XjIHPPizhrucJoBfo/Ov7/AobtitYZJxTnq2Re3G1WL2h3yY8zcJLdiaCfSThvBxThhmfaTbf8EumdsMWAPHQihIgRLRFmaQGr40xGzCkQ09SNMQuZDUGrYUeKLtwY1TB7zbNG+vWpeHBWjRNXqRZnSdgsPOPTWxtjG6uqUlUodaGOvtjpv9h0vy6BThNIRhJj5BX0deWzxmhJ6c9JqY6a3hO9+4LuO/MTKdXEYbCFC8KHbttj/ZUgdEGlLq6+KDkSwaiv1AykCF0d4sSm70Un0iIelFxWZfrUH5mntiwxLqsHvdA+6G3cHKCu2x/D8R1tWw/dSXZ4naDtK5IrI0v5yuiTdrDXQGixt6dXZlFKxSLOso/+xST7jghTDkY=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR17MB3903.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(39830400003)(136003)(366004)(396003)(451199015)(1690799008)(38070700005)(55016003)(166002)(86362001)(6506007)(33656002)(478600001)(53546011)(71200400001)(45080400002)(7696005)(8676002)(26005)(8936002)(9686003)(52536014)(41300700001)(76116006)(316002)(66446008)(2906002)(64756008)(110136005)(5660300002)(66946007)(66556008)(66476007)(186003)(38100700002)(40140700001)(122000001)(83380400001)(19627405001)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?NrVTeIvL2NmKvN9PRma+aU1qKmcE5CL4iIYoamNQREayBeyqJK+ZEa9v44SD?=
 =?us-ascii?Q?KMEVMeaW7BTdf2rKLFQBxxWK7fDfRJWPZbH+hYXsT+y/c9yPRnsMDULAj9cC?=
 =?us-ascii?Q?4rZI4CbIppJAhV8/lVkPbkQbEwNF4xQLuFTheSbk7f0ACRVEEphxjr7ylUb4?=
 =?us-ascii?Q?N+gRUSCPWeTz6YN3beJziFsX4bNut33rHdCTzZFutvK+SUuQl7IygMVQPaq/?=
 =?us-ascii?Q?RWdKZIC5KTubhZiCqhaC5spG6XzTxlaa2j2W/kzK2vx68fik1qdpPhPIypg2?=
 =?us-ascii?Q?x2M/4OA+ThADE3XFQyp1YNAqSmpa4sFm+eVfwc2L0q8CnUuhTQJ6wUyId7i7?=
 =?us-ascii?Q?ngiHkNfh4K/nT98Lf/EnUI3KeQuavStOgitDrgNiqW+hz0th7JLjS7u53nkK?=
 =?us-ascii?Q?xJ2GeHUTuvhoSRcvcZlckTWS7POR5lbESsbk/fmqzok7j5vctX+vA17FlAda?=
 =?us-ascii?Q?B74/TNzwtJ7mdeUDlUPgI4/8Q3YM9vvIobs+nWb/KF+sGM1oyTlk+NNtI2PJ?=
 =?us-ascii?Q?0oE3jNbpYmgYzkQNmz8angxnVuhYwX/XK/w8OKWL7oDAjuYepkIJhFkl38mf?=
 =?us-ascii?Q?sWiFaGnLpDSktgsAyUzT1btboveF/w0OKk5agiEVR0sahNTc/JfhV6UDQhFk?=
 =?us-ascii?Q?+J0H4Es2KWPEEONLub+UM8ItsZuZM5l5yckYDUaJStKpSGCyty7go5/jO8kU?=
 =?us-ascii?Q?9pSb9vgGtm/qSfUgdv1y8bDQsl59sz8LyW9D7xRa4fqGb8CrMRSJROh6QU8K?=
 =?us-ascii?Q?51VUZmsYgXH8+320HEKRIvku+zDicbAXDy4YAVhHIgngZeLoZyRkKc/Y8IPa?=
 =?us-ascii?Q?/5MKdr2SjR29BOMrDpWTfWS+Teitlbn/7iCfre5RoTXsCBvG20xD7aJarKo2?=
 =?us-ascii?Q?ALbnHC3Ba/tGNhtI/CXaAt+hxr0OAs2C28g41VlAbo298/+//SPR8o2GvOPD?=
 =?us-ascii?Q?IhVi/fJcEc6Bg6LF1MtxDLf1z/zJ+7iOM6NCMJxJ9NE7a4lmTsDbnsCHQocH?=
 =?us-ascii?Q?1y3Nd0IyDqAWIRscqr3Koi5pzfzb5sQ2fUL90g8cws50CbQ6DG2rODgHKOmo?=
 =?us-ascii?Q?PE9jVo2WCIPc7i8H+6K2DvAexbz6cQBomMd9oagKrHzLex+L/41fb/n2UDtG?=
 =?us-ascii?Q?h9sBY/G0bhorYop5f6Y+IULZqT0QqgiTZH2R7b9hO8SSocM7k3DHYCyBlhZf?=
 =?us-ascii?Q?9I1x3zbVn8DV45m4yKD3AEywPFaxem4+5KjZb5ggs+N2UL2Jw6GECCXctzED?=
 =?us-ascii?Q?AzVa4YjkgsP6D2uoMo137TNhz8LwDmRqRDsHlF6C8LTST4zEQU57ienAHDad?=
 =?us-ascii?Q?apFQYRIky/cpNtrtkU8q9oS3MxcU9jscQfklqb/RHXuc6pbdjrN+HLhjxkQ1?=
 =?us-ascii?Q?MxYmX6545dgTTYnr77WbTSiijX9MLiyGaBLVp6cVDFaf40Sx66Ou8mNxCyTO?=
 =?us-ascii?Q?Gc2i5naROUbL5UIJXo0S2O+LxRUgzUOaoZ4j/nnwGG5BQRP4P3tz1KN66Qnl?=
 =?us-ascii?Q?oeFzztDL5EvhRnohj4pXwPqG5pcRiB4ifA8419GaB7Qkd/76WWFEwgGdEPhc?=
 =?us-ascii?Q?9SXmMuy6B5ir7uOuBVmlG31m4VBlwr0i8ZyVedrd?=
Content-Type: multipart/alternative;
	boundary="_000_MN2PR17MB3903B7C0F328FA372E867211C31D9MN2PR17MB3903namp_"
MIME-Version: 1.0
X-OriginatorOrg: MissionSecure.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR17MB3903.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cf06124-923e-4e58-c2a2-08dad926db8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2022 14:16:54.1297
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f0ca9611-f13f-4dc9-8e1b-119172b8ec5d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pYfICdpbhAAAsEeA9oPxoiwLwnvn/1dTOTmR9VOEZqX65kqdybMRP4uJwd33YLhol7s6HgtN8QTg+mj3UkX+QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR17MB4599
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 14:17:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58757

--_000_MN2PR17MB3903B7C0F328FA372E867211C31D9MN2PR17MB3903namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is there documentation for the bootimg-efi plugin?

Thanks

Gary
________________________________
From: Mittal, Anuj <anuj.mittal@intel.com>
Sent: Wednesday, December 7, 2022 10:05 PM
To: Gary Huband <Gary@MissionSecure.com>; yocto@lists.yoctoproject.org <yoc=
to@lists.yoctoproject.org>
Subject: Re: [yocto] #kirkstone #systemd

On Wed, 2022-12-07 at 14:43 -0800, Gary Huband via
lists.yoctoproject.org wrote:
> I'm building an intel-corei7-64 image using meta-intel with systemd.
> I need to modify /boot/loader/loader.conf and
> /boot/loader/entries/boot.conf.  I've tried using devtool modify for
> systemd, systemd-conf, systemd-boot, and systemd-bootconf, but the
> files were not in those recipes.  What recipe do I modify to change
> loader.conf and boot.conf?
>

If you are using wic, you will need to modify your .wks file to supply
additional parameters as the files are generated by bootimg-efi plugin
in wic. The bootimg-efi plugin also allows supplying a custom boot cfg
file as well.

Thanks,

Anuj

Gary Huband
Sr. Software and Systems Engineer

Office: 434.284.8071 x720
Direct: 434.260.4995
Gary@MissionSecure.com

Follow Us!
LinkedIn<https://www.linkedin.com/company/mission-secure-inc->  |  Blog<htt=
ps://www.missionsecure.com/blog?utm_source=3Demail-signature&utm_medium=3De=
mail&utm_campaign=3Dblog-email-sig>  |  Website<https://www.missionsecure.c=
om/?utm_source=3Demail-signature&utm_medium=3Demail&utm_campaign=3Dweb-emai=
l-sig>

: : : : : : : : : : : : : : : : : : : : : : : : : : :

[MSi]

This email and any files transmitted with it are confidential and proprieta=
ry and intended solely for the use of the individual or entity to whom they=
 are addressed. Any dissemination, distribution or copying of this communic=
ation is strictly prohibited without our prior permission. If you received =
this in error, please contact the sender and delete the material from any c=
omputer.


--_000_MN2PR17MB3903B7C0F328FA372E867211C31D9MN2PR17MB3903namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);">Is there documentation for the bootimg-efi plugin?<=
/span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);">Thanks</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);">Gary<br>
</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Mittal, Anuj &lt;anuj=
.mittal@intel.com&gt;<br>
<b>Sent:</b> Wednesday, December 7, 2022 10:05 PM<br>
<b>To:</b> Gary Huband &lt;Gary@MissionSecure.com&gt;; yocto@lists.yoctopro=
ject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] #kirkstone #systemd</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Wed, 2022-12-07 at 14:43 -0800, Gary Huband via=
<br>
lists.yoctoproject.org wrote:<br>
&gt; I'm building an intel-corei7-64 image using meta-intel with systemd.&n=
bsp;<br>
&gt; I need to modify /boot/loader/loader.conf and<br>
&gt; /boot/loader/entries/boot.conf.&nbsp; I've tried using devtool modify =
for<br>
&gt; systemd, systemd-conf, systemd-boot, and systemd-bootconf, but the<br>
&gt; files were not in those recipes.&nbsp; What recipe do I modify to chan=
ge<br>
&gt; loader.conf and boot.conf?<br>
&gt; <br>
<br>
If you are using wic, you will need to modify your .wks file to supply<br>
additional parameters as the files are generated by bootimg-efi plugin<br>
in wic. The bootimg-efi plugin also allows supplying a custom boot cfg<br>
file as well.<br>
<br>
Thanks,<br>
<br>
Anuj<br>
</div>
</span></font></div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal; text=
-transform: uppercase;">
<font color=3D"#595458"><b>Gary Huband</b></font></div>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458"><i>Sr. Software and Systems Engineer</i><br>
<br>
Office: 434.284.8071 x720 <br>
Direct: 434.260.4995 <br>
Gary@MissionSecure.com<br>
</font></div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal;"><fo=
nt color=3D"#595458"><b>Follow Us!</b>
<br>
<a href=3D"https://www.linkedin.com/company/mission-secure-inc-">LinkedIn</=
a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionsecure.com/blog?ut=
m_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campaign=3Dblog-e=
mail-sig">Blog</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionse=
cure.com/?utm_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campa=
ign=3Dweb-email-sig">Website</a>
</font></div>
<br>
<div style=3D"color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px;=
 font-style: normal; font-variant: normal; font-weight: normal; letter-spac=
ing: normal; line-height: normal; orphans: auto; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; widows: auto; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">
: : : : : : : : : : : : : : : : : : : : : : : : : : : <br>
</div>
<br>
<div><img height=3D"44" width=3D"115" alt=3D"MSi" src=3D"http://www.mission=
secure.com/images/MSi_Logo_email.png"></div>
<br>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458">This email and any files transmitted with it are confi=
dential and proprietary and intended solely for the use of the individual o=
r entity to whom they are addressed.
 Any dissemination, distribution or copying of this communication is strict=
ly prohibited without our prior permission. If you received this in error, =
please contact the sender and delete the material from any computer.</font>=
</div>
<br>
</body>
</html>

--_000_MN2PR17MB3903B7C0F328FA372E867211C31D9MN2PR17MB3903namp_--

