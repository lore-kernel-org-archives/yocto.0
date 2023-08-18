Return-Path: <dwatkins@sierrawireless.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F55EE4998
	for <webhook@archiver.kernel.org>; Fri, 18 Aug 2023 20:48:54 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.88])
 by mx.groups.io with SMTP id smtpd.web10.1151.1692391730330007424
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Aug 2023 13:48:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=saxlEnjD;
 spf=pass (domain: sierrawireless.com, ip: 40.107.94.88, mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gwg/ifslF0KjKFSv8Nz93xCWdTvvpKdH2OO+trSQruEp3jVfDnpffn9rCrOszdaZDym1HishdF6ldDTIZn52DOUa6ZxTH5Psa/iSq2aFMKvBYN268URaiyUs9AjwW/MA1uW9TzWh8cVd0GT0bZrY+rU0t0ljX9CacwixQJTUeb7IRa6Tig9MTnvzOroE0eak9J1aPXn9f0LYDletrPA+kb90rr0xtILCFKHUuTUYGw7rviJoxCUoDEsJpr/j2RBxsITS5r8FxvmcNajz5+sloOVwryv2gp3nsN4ojC9MOtn7qzzD2fU08HdLnH6uD7JEp3YVM5cpGIZp4l2u/kaXmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1dNYZopOAvVkhLuXBiAmBo7w35dchh0uZqfJBS+4DrQ=;
 b=O8JRu6+yLrv5z2nA86KxiUsEqlorB4dGVG3hERvtX88werHJeIXzgSczQff3LLAK1u1W7K4VVV5cGve4r9O7ZmlzQVhpt5XYtGPbVufCVh6XudeqcyVr0yLhKzO4/VVO4XzpWZYJTCauBbq7zG0UxPTMWSzIh+sYYqKYZSIZ934sNGu9MdoQVAoodG3cEBnX/yHuWNNjKmBGcZdkbxvfsgN+hN252UEEmQ7LtbuVggkdOBs8C0yxT88OXDk8IRIsTXYZFBk1LiX0HtyRHgdvkIWOcueOEodlE0jR+ky30PYWiScIsVb+KwfgOh5bGRlMJWuQ8rInIX+U7CIFJBP27g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1dNYZopOAvVkhLuXBiAmBo7w35dchh0uZqfJBS+4DrQ=;
 b=saxlEnjDNbosjuVHKSN6em/HdP5+dHRiKnoPtGT0U3+fzOFd+r8eML844CThoU4qwAQbXl/LowEe845dJSQrThv3454r/XE87dMSXnlnGK80WYBy3GlBROHaswNd2HDxQdw8vUQ+OwiAPz0F6AzDJjbEfvaVOuFbyKfabfRBAzs=
Received: from CO6PR02MB8740.namprd02.prod.outlook.com (2603:10b6:303:137::20)
 by BL3PR02MB8068.namprd02.prod.outlook.com (2603:10b6:208:35b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Fri, 18 Aug
 2023 20:48:47 +0000
Received: from CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::8747:c84b:14e1:48]) by CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::8747:c84b:14e1:48%7]) with mapi id 15.20.6699.020; Fri, 18 Aug 2023
 20:48:46 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "konstantin.kletschke@inside-m2m.de" <konstantin.kletschke@inside-m2m.de>,
	Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Pick up ${PV} dynamically from environment or file or
 filename
Thread-Topic: [yocto] Pick up ${PV} dynamically from environment or file or
 filename
Thread-Index: AQHZ0dFJWIZBC7vpfUC1ylO0/ZYgmK/wLkwAgABUboCAAAFr8A==
Date: Fri, 18 Aug 2023 20:48:46 +0000
Message-ID: 
 <CO6PR02MB8740665A96A2D7D62109554FB21BA@CO6PR02MB8740.namprd02.prod.outlook.com>
References: <ZN9m5Edu4sszrpcx@insidem2ms-MacBook-Pro.local>
 <CANNYZj969r-C5WBSHmCweE_WB_Xwxgc-0jhXTZ+ECDWvYoyXCg@mail.gmail.com>
 <ZN_VfdJcE28H6sFX@insidem2ms-MacBook-Pro.local>
In-Reply-To: <ZN_VfdJcE28H6sFX@insidem2ms-MacBook-Pro.local>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sierrawireless.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR02MB8740:EE_|BL3PR02MB8068:EE_
x-ms-office365-filtering-correlation-id: 7788a849-6562-4f1e-754e-08dba02c84c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 43ijBlo9QZUCH7pYNJKl7bLlAKjyyQhiWPvB5VtgcH3nRPZvGCaI2O5+wMGJcgo5C+v/8qeXgVMcfZTKB1yDx4HIkAQkMFOCH0eY0dCwnD8vqgfNfjYzneEl6kTVAoZbbHpPlRrYqgZJCGPNsas0V4As4KorgMD4Q4jFbv7I+5n4vVpDziNPIlb4W4grIOHL904TQqTC5I3j7nCdetTYOFMV+d1FE3zkJY0bMCXO90ql4fWW9SUXVmJXGL1PuIMBrcsgYW8CnHyOHEI2V7wmfHmdAwexL3thcp3SYoBsRWU9TNAXfoxMizzu5MaUoW1d0eZKHskfpG+/1gNx0FQZrRjS4EFJ7iF0ed4y79mOC8vUCReL3qNrH8jtuf2CCC8yBVScZ5KxHAHpkXAHklzZjNreFz7/4NYipDNIlLf+QAYteiBQUaZzt1nr5dxobaTxDHBQ11k0DBoC3Cr7Rqsj9ZXC4Vf6JWlaUlE+cdg9zSY+Av17NQkS1pVtp87YiXZ6Jqu2TbTwgj6zvPXx2qOBZG1Tglu6qAaRf3gwDbapCE2KsCjddEyvL2ruZpKpJLS26Y1mF2pU8tgT/oP3H8MyjZV7h5OCmt7JxpAru3ZW39LCkgOOgBS7VR6IsawtcM2T
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR02MB8740.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(39860400002)(376002)(366004)(136003)(1800799009)(451199024)(186009)(40140700001)(33656002)(86362001)(38070700005)(38100700002)(122000001)(55016003)(478600001)(5660300002)(76116006)(110136005)(66946007)(64756008)(66476007)(66556008)(66446008)(71200400001)(7696005)(316002)(9326002)(6506007)(8676002)(8936002)(9686003)(52536014)(41300700001)(4326008)(166002)(83380400001)(2906002)(228453006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?bej1R2nuxSOx6sZiFU8ok12EuXCIMR2vEmWC5NG8v/GrkJpVPemPRT/O?=
 =?Windows-1252?Q?GqW/vDTwAtCcpFtrnu69pAM2TslfHzQq0TICFyATWSuJhXBavfDvBX6a?=
 =?Windows-1252?Q?whd2Ena0t/0nDRIcH+BqUHu33cduYJRyrA/sMlRWf+VBNhZyN3ggGkBU?=
 =?Windows-1252?Q?KAavdhTZ8VqBN6q5ZYB9Gc/JCATl2zmN3H/k0ivYhvz/0FO8k8CFmk2M?=
 =?Windows-1252?Q?Mf5BeaZU8uBbMWEyJO1I0mqDEx0q6I1YHpmtBpZMtok4YoGlzkHkrEVy?=
 =?Windows-1252?Q?M4v+y1yc9xUeC5s7zmoeClR+cvFu14r11IhFjvtG2Kmh4LYAgxl4xEpZ?=
 =?Windows-1252?Q?/75QNQVeB6iZjp9Cp8rehP1FuhvbI4AHzCslqa68lio4M1+TOxeMC4vp?=
 =?Windows-1252?Q?zYP0fngoRkG/9gjq6hEx9Yd6nJAgjyTu1F5tSLyW5djuicgb1M7YVZPg?=
 =?Windows-1252?Q?ijGYCnDu1N6iEnGuDjqHaWSMYGdlIv6LA7YZB3El+rPHYIQOT/5uoKRR?=
 =?Windows-1252?Q?UucmayO1P3EHNQcqW4wwOJkqO7EvcgIpCZxwkxoAyMbm8MuuFv/qXyud?=
 =?Windows-1252?Q?9QJLmIpBHiXRy/4lWzrFnu9jMDQDFEfDd/1MYhWCPtHQ493pIx9ylJvD?=
 =?Windows-1252?Q?pzqJ+izgQYATZxGRL25JwfeB2iSxQV6VOerjcb7RAJOERi6KYktD6Ka2?=
 =?Windows-1252?Q?MI3JuTET0WizVibna0TrVmtZ9nf3yj8GTmu5XrqixRuXlwEtzZHyic3r?=
 =?Windows-1252?Q?j7jFQ+tXhwmzuzob9S0SAHSXjoVyMtQ6L/6hpJp6ufen2fLK3zDcE74Z?=
 =?Windows-1252?Q?OccILwJ25c0UUTWSNEqA22ku+Ia9mHU34k+E4XBD0rved7o2RakAAXL+?=
 =?Windows-1252?Q?fUhSQWTYhJ6IB6LulF9/iSIjhDeDK2m2iiBRhh0VDqMIJXI2jUNv67+s?=
 =?Windows-1252?Q?fzYNRVfx6zynrU0jZYovbOD6q2kdSC3dCX52UJpaVvcYVTOOoCdjGlxg?=
 =?Windows-1252?Q?EGF0bCvbtJJFnsj2rX19G/a10D14RROLn5D7LLlqQoZ4wVE2SxqsHHxt?=
 =?Windows-1252?Q?DIQVjAzT71YP27fPgNsbmb+HXGXrtB6CNvuUe8da1n3rB8HlTolz154G?=
 =?Windows-1252?Q?OwrnUuP0jkizS+8LHHs96bOJwjRdhO2fMLAuzx1l3SeAMr/nlTx8UnVe?=
 =?Windows-1252?Q?Whd6ORxtqW2cH4N55L0BdHnC3GEUIi8EovqPl42hC1swExVchuh2dt6s?=
 =?Windows-1252?Q?w6SZ36Iy3FjyRVwBJUKyd0LUxZQVoZFOIALNNyqibcN0PnvwpwkFNWnj?=
 =?Windows-1252?Q?R4VuVyT9TjVlM6ylvge4hhcQvtViTUbxFx8sg8DzGUTOX9Wm5y29N1yZ?=
 =?Windows-1252?Q?YGQkPvUSG6+rLkLxdBkwxHSH2VJ9OAbUBrhQtemzfCy+2oC41G9Rt0KY?=
 =?Windows-1252?Q?hXwVYkGQNUDm9q+LYcekGhnuxxn6rfrzfpY0Ezo71Gy6BDNh4EJeiDR4?=
 =?Windows-1252?Q?mQqm0xIi/24+aN+vgjoG9cSInhKbvwVKFcEztW7HaDmrgvUwWYuJNfzw?=
 =?Windows-1252?Q?HCOAIRY1eh9neR/3CNywJA5gJKaaeuB1/hsp2KCitFRCyw7E6Oyaim42?=
 =?Windows-1252?Q?5NUoOQ4cbzZGvjoZlv5Ss3CfolHWiDS0EBahgBcce3s+xScu82o3YDZI?=
 =?Windows-1252?Q?XO96PsgwjYhEegrxGo3lWB9FKT5Be64SieEU9xErxLy86t9Lin4VXFoo?=
 =?Windows-1252?Q?dJYffMzUrvoL3Pyr8pwnHRuSX2owScJg1SD4upUJpzacbhkkHtbsZZUe?=
 =?Windows-1252?Q?QhIK1NgvjxCHvwwqgF0ltt7wlfk=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CO6PR02MB8740665A96A2D7D62109554FB21BACO6PR02MB8740namp_"
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR02MB8740.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7788a849-6562-4f1e-754e-08dba02c84c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2023 20:48:46.8763
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MFO1lN9X8oN9n2Y/p51NuKcB+5y4KQTPnGFF2q8dC9E1QCbvaZ8y6s7DTtpnnQs5/DJQZyulDyyZidnrN+CBpfVjYDFQ3nzCA/4FxqQlLx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR02MB8068
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Aug 2023 20:48:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60826

--_000_CO6PR02MB8740665A96A2D7D62109554FB21BACO6PR02MB8740namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I am not sure how well this would work for JARs (especially if they are lar=
ge).

But you may be able to drop the as-built JARs into a git repo and commit th=
em.

Then make use of the GIT AUTOREV facility to fetch from that GIT repo.

Each time you build after your GIT repo changes, will be built on the newer=
 rev.

If your version info used to derive PV is in that GIT repo (rather than say=
 date based) so that it stays the same after each rebuild of the same GIT r=
ev (and only changes when the GIT rev is changed as part of new commits), y=
ou may still be able to satisfy the repeatable build (at least repeatable w=
hen rebuilt multiple times with your GIT repo at the same revision.

I would suggest that for releases where you may want to tag your Yocto GIT =
repo, you set the SRCREV to a specific revision so that a rebuild of the re=
lease is based on the exact same JARs.  (i.e. just use the autorev while do=
ing development).

If this doesn=92t work for GIT, you could always try with an alternate revi=
sion control system for which Yocto has autorev support.



Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

Semtech | Sierra Wireless
Office  +1 604 231 1100
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[M4]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.semt=
ech.com<http://www.semtech.com>

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Konstantin Kletschke via lists.yoctoproject.org <konstantin.kletschke=
=3Dinside-m2m.de@lists.yoctoproject.org>
Date: Friday, August 18, 2023 at 1:33 PM
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Pick up ${PV} dynamically from environment or file or =
filename
Caution: This email originated outside of Sierra Wireless.


On Fri, Aug 18, 2023 at 05:30:50PM +0200, Alexander Kanavin wrote:
> You probably need to explain the use case. Why do you want to do
> something like that?

The yocto build is happening in a gitlab runner thingy.

What happens before is that inedependently from the yocto build is that
my colleauges are running a maven build which provides java jar files.

And I do not know on my side what version they are doing. It could
happen even that it alternates between X.Y.Z and X.Y.Z-SNAPSHOT.

Then my yocto comes and is picking those jars up and integrates them into
the rootfs to be started there by java. They are not processed or
executed or compiled, they are copied into the rootfs, symlinkd and
integrated into a systemd start.

Colleauges maven build: Their git tree.
Yocto build: My git tree.

> Generally, Yocto cares about build reproducibility, a lot. Thus,
> source must be stable, and verified against a checksum of some kind.

I learned to love its build reliability because of such stuff too.

Konsti

--_000_CO6PR02MB8740665A96A2D7D62109554FB21BACO6PR02MB8740namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I am not sure how w=
ell this would work for JARs (especially if they are large).&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">But you may be able=
 to drop the as-built JARs into a git repo and commit them.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Then make use of th=
e GIT AUTOREV facility to fetch from that GIT repo.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Each time you build=
 after your GIT repo changes, will be built on the newer rev.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">If your version inf=
o used to derive PV is in that GIT repo (rather than say date based) so tha=
t it stays the same after each rebuild of the same GIT rev (and only change=
s when the GIT rev is changed as part
 of new commits), you may still be able to satisfy the repeatable build (at=
 least repeatable when rebuilt multiple times with your GIT repo at the sam=
e revision.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I would suggest tha=
t for releases where you may want to tag your Yocto GIT repo, you set the S=
RCREV to a specific revision so that a rebuild of the release is based on t=
he exact same JARs.&nbsp; (i.e. just use
 the autorev while doing development).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">If this doesn=92t w=
ork for GIT, you could always try with an alternate revision control system=
 for which Yocto has autorev support.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">R=
egards,</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">D=
arcy</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">D=
arcy Watkins ::&nbsp;&nbsp;Senior Staff Engineer, Firmware</span></b><span =
lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">&=
nbsp;</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;co=
lor:#08DFCF">Semtech | Sierra Wireless<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Offi=
ce&nbsp;&nbsp;+1 604 231 1100<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">1381=
1 Wireless Way&nbsp; ::&nbsp;Richmond, BC Canada V6V 3A4<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">[M4]=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"mailto:d=
watkins@sierrawireless.com"><span style=3D"color:#0563C1">dwatkins@sierrawi=
reless.com</span></a>&nbsp;::&nbsp;<a href=3D"http://www.semtech.com"><span=
 style=3D"color:#0563C1">www.semtech.com</span></a>
</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div id=3D"mail-editor-reference-message-container">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Konstantin Klet=
schke via lists.yoctoproject.org &lt;konstantin.kletschke=3Dinside-m2m.de@l=
ists.yoctoproject.org&gt;<br>
<b>Date: </b>Friday, August 18, 2023 at 1:33 PM<br>
<b>To: </b>Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
<b>Cc: </b>yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject: </b>Re: [yocto] Pick up ${PV} dynamically from environment or f=
ile or filename<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Caution: This email=
 originated outside of Sierra Wireless.<br>
<br>
<br>
On Fri, Aug 18, 2023 at 05:30:50PM +0200, Alexander Kanavin wrote:<br>
&gt; You probably need to explain the use case. Why do you want to do<br>
&gt; something like that?<br>
<br>
The yocto build is happening in a gitlab runner thingy.<br>
<br>
What happens before is that inedependently from the yocto build is that<br>
my colleauges are running a maven build which provides java jar files.<br>
<br>
And I do not know on my side what version they are doing. It could<br>
happen even that it alternates between X.Y.Z and X.Y.Z-SNAPSHOT.<br>
<br>
Then my yocto comes and is picking those jars up and integrates them into<b=
r>
the rootfs to be started there by java. They are not processed or<br>
executed or compiled, they are copied into the rootfs, symlinkd and<br>
integrated into a systemd start.<br>
<br>
Colleauges maven build: Their git tree.<br>
Yocto build: My git tree.<br>
<br>
&gt; Generally, Yocto cares about build reproducibility, a lot. Thus,<br>
&gt; source must be stable, and verified against a checksum of some kind.<b=
r>
<br>
I learned to love its build reliability because of such stuff too.<br>
<br>
Konsti<o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CO6PR02MB8740665A96A2D7D62109554FB21BACO6PR02MB8740namp_--

