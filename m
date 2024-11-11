Return-Path: <Logan.Grosz@b9c.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD876D3ABD1
	for <webhook@archiver.kernel.org>; Mon, 11 Nov 2024 17:10:20 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.127])
 by mx.groups.io with SMTP id smtpd.web10.64668.1731345018473188395
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Nov 2024 09:10:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@b9c.com header.s=selector1 header.b=YG37uMWn;
 spf=pass (domain: b9c.com, ip: 40.107.223.127, mailfrom: logan.grosz@b9c.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YEe8EgtpRyivlkfhrtx61Ce4iRfvYyHN815DXG9irdYdffaZ4fhi03Q3sQpw1x8DnaeuCg/Xy364adirA1973I2NQWdVZwUxDHjlEbn/4bcmbe91f/LToSaU9UK6D6Qwxsa1XCvJo9bL2ewvcJFXQzd8MygvzlHlPYL7bNpXPXSSwHfoFIq2mQ9fYn1oM2n4vYvDHdrbcsAapYymDnqn2ovXLER9Ik0i+I7h5l0CiPFWX5jZNpHJFKg9Mc4qPoLdl1KpXg6nO2b7usmWFxEIpRFbRWMzL7/ZqYuJxfLUnwsVn7LWJOj5yYDnowzKz0UIQP8wjaO0s4R79Oox/RVwoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BavIIhrHr0WFDs89I2iOU587rlMMx0KMxBnfhOZf720=;
 b=gpUMyZ9nJqIDqS34cxZ9/9Ki6rUmXrO5qYfrhRmkiTl7TWT+Emm6uBuW2ZDy4swbcv579dZOzyQZP3MU2VO7viQ1jlxO2ruI7rP5fC7OIxBhokoMqRVZS6z/O7Gu4Dqa1XEK4Gbs+BHNw1BgsnbBM00K9FA4n1yNBuqAZRV5Ri30Ang3jO+Zt1Ng49XnlccnPXHuCv9S+NFM5c+e1EVjAEMsMhjEJBLyLAnA+l0JFHNAlW/KbbkgkN47BIbL6ER00bwIoAeLl2A4OZ9lNS4UfNwEHKrgwFSa/zofpIWtnTJc5ktg9xtm1gMhmM2iRLjoJ+8UykPAxeY++/x9hP9p4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=b9c.com; dmarc=pass action=none header.from=b9c.com; dkim=pass
 header.d=b9c.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=b9c.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BavIIhrHr0WFDs89I2iOU587rlMMx0KMxBnfhOZf720=;
 b=YG37uMWnNn7xYSGIzmCnLRCHuial3BK8/7rx/ytL5M+iv8wtlA9wFzZA+I1QbkKVIREhWVzjUlkoPqVfDTMeEWEEPkErBcntVyneBgKb1DnqN4AGmJhH1fOHIcR4OOkBYBOzWqSIo2N5yzRuYhW2wpS1OrTvoLcRGxsHGxYc4Gw=
Received: from MW4PR16MB5087.namprd16.prod.outlook.com (2603:10b6:303:1be::18)
 by LV3PR16MB6066.namprd16.prod.outlook.com (2603:10b6:408:1ae::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Mon, 11 Nov
 2024 17:10:10 +0000
Received: from MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::dd82:bdb7:3ca1:2b8]) by MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::dd82:bdb7:3ca1:2b8%4]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 17:10:10 +0000
From: Logan Grosz <Logan.Grosz@b9c.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"H.Wulff@kruss.de" <H.Wulff@kruss.de>
Subject: Re: [yocto] Conditionally set SYSTEMD_SERVICE_${PN} based on version
 of another package
Thread-Topic: [yocto] Conditionally set SYSTEMD_SERVICE_${PN} based on version
 of another package
Thread-Index: AQHbMSmFn2uCk95IKU6w+uInypq9tbKx1euAgAB/cRM=
Date: Mon, 11 Nov 2024 17:10:10 +0000
Message-ID: 
 <MW4PR16MB5087847F0DFCF6FAAA0F3C5FBB582@MW4PR16MB5087.namprd16.prod.outlook.com>
References: 
 <MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
 <20128.1731317333035757411@lists.yoctoproject.org>
In-Reply-To: <20128.1731317333035757411@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=b9c.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR16MB5087:EE_|LV3PR16MB6066:EE_
x-ms-office365-filtering-correlation-id: da310d94-9a2e-4273-e31c-08dd0273b2ce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?krbch3cMbj/N8qiF2n0rhFCq3kuc4zFbNHVrzYjIrhfFOkHp1DiCLdGHcjx3?=
 =?us-ascii?Q?evaKOD8DbJn0rQkA1X/YXJMoUCnlBo39zSQgbvQhEiMQBfbJyEDqxYYSw26w?=
 =?us-ascii?Q?eqUPQzgWBSED67gTiBPGqSXm4Ye592vh6/d2VQq7ZSUJDzHXOlYllW35q5nj?=
 =?us-ascii?Q?BgFAHE6AaxHVYHDwG7WrgSugAP1uEnu3eiKYdHAC7/jzurpb4rvmjIE4Yloa?=
 =?us-ascii?Q?geR603JC4E1n64zmQxc78Cflxw+56xXgrkEkdzV6s6UVENYDAeyMhdoaKr3Y?=
 =?us-ascii?Q?NfD9IedFK7L/HQPQgJulCexka5SuV7f3ZQgkTrunvHVfgGf32GkQMW7GR/uk?=
 =?us-ascii?Q?UY9aFF/WftOuvrav3MMj3d0PL4oE4ZZZSVT6crLqmoPBWN1SFTs0fv2DKmLe?=
 =?us-ascii?Q?omSeoCbSlKNp9SfDj7lmMrAuzy9l32dnvxAlfI95tzzDnxsFXywj4yvZkfTy?=
 =?us-ascii?Q?5pSn8T833R39CegGV6MQUlBGCeWyrfrldO3Xs0KCVlbzweAI9K3YX9OhxZyr?=
 =?us-ascii?Q?tQiAGIQJmlLCdysrndY22963qVy44kEEDJt8OJc6rohKDSLn5gXi86sh2KZi?=
 =?us-ascii?Q?5n/iuq36pXTnG2k0ouSzvEs3/Z35caOtU3TyzDjjrtFMQc7CHzOcKYpMl2n7?=
 =?us-ascii?Q?Kn1Yby7wawttei+/WpTc+Ma0SgHFLNVmdic/vrxDYBgnUS2YLUGNcQ9nMsd2?=
 =?us-ascii?Q?56MOZSGjPYPeEALqNqfAc/qoTOCbKIUUJwQ2j35uT88hKS0OQNAtZ+rg/dQ6?=
 =?us-ascii?Q?y09M9zrpzE4iXt7K3ju4qja69ULXw7xJLPvLiSBnJjE3U46Hqha3dJV8BPg+?=
 =?us-ascii?Q?eyQmN/XzWVlhzEJvuBRRXYZ0Nrhleneek56zJ7ODVNhd4k1MkyJ3ymkpeIus?=
 =?us-ascii?Q?QWcQIOwnG6WBxTU3HZEJakRI4bzVYjX6iCLN9nGOsOmmI1V3qAMqxicfXBCV?=
 =?us-ascii?Q?z2oVxBAiQ8cb2UdHwBxPMUVVvZFjsTRACWWq7A4K/GEl641j1ULvz2iJ3h/g?=
 =?us-ascii?Q?XLGierKIye+ZVFpgc7VWOh9qGgPXXXUGedN+CLHwAwk2Mkbz9ozejnO7l64w?=
 =?us-ascii?Q?9hwWxyjkSwH8tnyddryCrgl/m1cZYS1MVH/twIkrwrkDEo698EbrcOS7zz7n?=
 =?us-ascii?Q?mIJkpOc23Y22MYlWWWeBjuUO28wcfmeMT6Yyx423zgBHpjYWYgzCmUbKiYT9?=
 =?us-ascii?Q?QOpbnX+DgUVl2DcXKc5yUtaYxh0cXmi+yEtWfzHumq/yF4WKK8uaHEHU39eq?=
 =?us-ascii?Q?bkpY12bwtqnR218OHsLagTZuVKUHQpWVDTPBbdU8gVVkMB6tdvJaikBMMjPe?=
 =?us-ascii?Q?STpa+Pkr4FMaL/eBBwnlSS2Pk3ofN28+hihcYNakQNgYOK2O9cSITZLp6KFZ?=
 =?us-ascii?Q?RkVvXTY=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR16MB5087.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?m6iX0sl/wCHMFThiWuHy9yD9pSfmrZf98wOF0FDchFshrHhsnX5K1wtOsjlm?=
 =?us-ascii?Q?1wmNRmuPrGZ1Yg15f3NBf21bVuqWVLagHjNldIYpk0deoju85+QfVVuK6W1j?=
 =?us-ascii?Q?I5qYcbWvVLSDOlAvf8xwjGCKka4X1p0Uzka2RrQalvRkSQXOB+ucr973l9YF?=
 =?us-ascii?Q?eweRL7/XZ/y7QO4hboKp7BoZsPNPxrGcw0F2DHJWlNGAzbSV/Nk6Pq+6FHIB?=
 =?us-ascii?Q?0sivpHdM1P63CaRu+79IqLgX6ilbGRssaILXHn6axmTPXivFM5An6L36GGns?=
 =?us-ascii?Q?yKQSs7PVPiroTTYNhLH+ypMokUvXuN3MYTUFWPzDqrCuhUTePTplr4QNGh2T?=
 =?us-ascii?Q?fT1IBkJcCtT3pMF14coN5mqBbm5Lrdus5NCzPxGXEGWFbMFRIxTCc50/pg56?=
 =?us-ascii?Q?klrGRT/fsvjP14RGuMPBqFE1a7RtNPfMNn+fIbreoJi6+ITZaFykUTZj6W/u?=
 =?us-ascii?Q?6J4MYFck59wTEppTecazaGECvzpz+glQE1LyAm0Gt7a3+AWHaVLLaxsgeQg5?=
 =?us-ascii?Q?7krduAvzl4OIBosOwOO002nCaiQpRFsoKCMiXArYJddIRAmGmDHj9z5RUx60?=
 =?us-ascii?Q?HobDA0BxZI8DipQIH7mFGlF+uMYK3Gl7iX1e3TDg48w1TzDa16NkCevKKD0Q?=
 =?us-ascii?Q?LcOjAzK68cM8XtPSzAD6l1lv6CTULV+947i7hIenSkV6BWxIWwWKNvdgx7gK?=
 =?us-ascii?Q?8nXjIvXF3NN+c/TZZ4FJKVzsxg0bBssWga2iBMb9letU6wnkIFvQcUUQ/AFA?=
 =?us-ascii?Q?komZv/xc5rn1PHeyebP4u/ZTVj13MxTnD/Dd/U+B419WVydN9abP473YET04?=
 =?us-ascii?Q?UAtPhHaU9XCTKYxmvd0jyXMIxJIdb5j9xKJWEDQgQj5YjzoLS+Ng7Lvm+VLN?=
 =?us-ascii?Q?6rCmSIQSGrg3t6mIQCbbo6R2ku64Tg/yBiJnIP22TirbE5PGSPIBUbpROP06?=
 =?us-ascii?Q?vAtCTBii6vrlWPFAVOTlKTpnFLou2jrPK4nr1GNIqQCM/N3t9fzrCryGmqSz?=
 =?us-ascii?Q?yUd+Yl5ZhCPe7FnXl0gv+Mwbypqjcg+w/Jyjl4JC3IFmp910YFVEYrvVqzEY?=
 =?us-ascii?Q?5imHhFifOFhsN9k+ngWZ7x93bPY8SwWdhZ1+rnAVnESqWqhJ2wrYUs646Ch9?=
 =?us-ascii?Q?UcQ0apYlw6of1TgnTClwuGJRk+SlXnNmtEGxQK2j9Hm++tgkNIvnC7KXH+FZ?=
 =?us-ascii?Q?oWht2pT2QIBunxpc12D5SZKpVA2oowHJRWJmfMJtxhgjIHaXfZcEehyFupPV?=
 =?us-ascii?Q?a4n3/CU1Pt57g8J3ha1f1w5VgErlLHd6YXYW81DArZYaxujSReBvdDbiG49L?=
 =?us-ascii?Q?e6TKVPagfap8yxVTZXwercSFQ8bHVPZvlLXDvi4pRsrVoWUkv2+m+Z8FWFeu?=
 =?us-ascii?Q?Ba8pLQF2Fn15V5V/4PLtWWBhaywlC2J8v34LV9f5sNis8TVlhYRMlES0FmNT?=
 =?us-ascii?Q?ggac62umDWZ1uSDEYwqqf+sZajLRRptBwfFyNmoyXpfieQ5Z7reLkkZNgQRV?=
 =?us-ascii?Q?e37su/zyYhEsZXg2lbVFSXpW1m5rn85I2EpjsFEP1CLQPn5Fd+7mXmNMw/OA?=
 =?us-ascii?Q?6AZ5+dashr5RgY6K+dxJSKMkn4Xi9zGd3bWrIfJN?=
Content-Type: multipart/alternative;
	boundary="_000_MW4PR16MB5087847F0DFCF6FAAA0F3C5FBB582MW4PR16MB5087namp_"
MIME-Version: 1.0
X-OriginatorOrg: b9c.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR16MB5087.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da310d94-9a2e-4273-e31c-08dd0273b2ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 17:10:10.0321
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ace18e3-3825-4b3e-be2a-b5c73f048d39
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rg9AvULKVyNexeD5pBkWJGBMntvZ3XvJy9p3FkLE0kL6uTkwDFmFv7XlaJEjBNRe3SwU7CxphQ4gt1G2rqwNCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR16MB6066
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Nov 2024 17:10:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64254

--_000_MW4PR16MB5087847F0DFCF6FAAA0F3C5FBB582MW4PR16MB5087namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I think doing this would still require using pkg-config at parse-time (sinc=
e SYSTEMD_VERSION can only be known by using pkg-config).. which, from what=
 I understand, is not possible. It's not a big deal, and probably not worth=
 introducing more complexity to the recipe if I can just apply the patch be=
fore updating my Poky dependency.

Thank you,
Logan
________________________________
From: Hauke Wulff via Lists.Yoctoproject.Org <H.Wulff=3Dkruss.de@lists.yoct=
oproject.org>
Sent: Monday, November 11, 2024 2:28 AM
To: Logan Grosz <Logan.Grosz@b9c.com>; yocto@lists.yoctoproject.org <yocto@=
lists.yoctoproject.org>
Subject: Re: [yocto] Conditionally set SYSTEMD_SERVICE_${PN} based on versi=
on of another package

You don't often get email from h.wulff=3Dkruss.de@lists.yoctoproject.org. L=
earn why this is important<https://aka.ms/LearnAboutSenderIdentification>

How about replacing the recipe by a .bbappend and replacing the systemd fil=
e(s) with something like:

FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"

SRC_URI:remove =3D "${@bb.utils.contains('SYSTEMD_VERSION', '250', ' file:/=
/factory-reset-yocto.target', '', d)}"
SRC_URI:append =3D "${@bb.utils.contains('SYSTEMD_VERSION', '250', ' file:/=
/your-factory-reset.target', '', d)}"


If you can live with touching your recipe.

--_000_MW4PR16MB5087847F0DFCF6FAAA0F3C5FBB582MW4PR16MB5087namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I think doing this would still require using <code>pkg-config</code>&nbsp;a=
t parse-time (since SYSTEMD_VERSION can only be known by using pkg-config).=
. which, from what I understand, is not possible. It's not a big deal, and =
probably not worth introducing more complexity
 to the recipe if I can just apply the patch before updating my Poky depend=
ency.</div>
<div id=3D"Signature" class=3D"elementToProof" style=3D"color: inherit;">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Logan</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Hauke Wulff via Lists=
.Yoctoproject.Org &lt;H.Wulff=3Dkruss.de@lists.yoctoproject.org&gt;<br>
<b>Sent:</b> Monday, November 11, 2024 2:28 AM<br>
<b>To:</b> Logan Grosz &lt;Logan.Grosz@b9c.com&gt;; yocto@lists.yoctoprojec=
t.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Conditionally set SYSTEMD_SERVICE_${PN} based o=
n version of another package</font>
<div>&nbsp;</div>
</div>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"background:revert!important; border:revert!important; b=
ottom:revert!important; color:revert!important; direction:revert!important;=
 display:revert!important; font-size:revert!important; height:revert!import=
ant; letter-spacing:revert!important; line-height:revert!important; margin:=
revert!important; opacity:revert!important; order:revert!important; outline=
:revert!important; overflow:revert!important; padding:revert!important; pos=
ition:revert!important; tab-size:revert!important; table-layout:revert!impo=
rtant; text-align:revert!important; text-indent:revert!important; text-orie=
ntation:revert!important; text-overflow:revert!important; text-transform:re=
vert!important; top:revert!important; vertical-align:revert!important; visi=
bility:revert!important; white-space:revert!important; width:revert!importa=
nt; word-break:revert!important; word-spacing:revert!important; writing-mod=
e:revert!important; zoom:revert!important; border:0!important; display:tabl=
e!important; width:100%!important; table-layout:fixed!important; border-col=
lapse:seperate!important; float:none!important; border-spacing:0px 0px!impo=
rtant">
<tbody style=3D"background:revert!important; border:revert!important; botto=
m:revert!important; color:revert!important; direction:revert!important; dis=
play:revert!important; font-size:revert!important; height:revert!important;=
 letter-spacing:revert!important; line-height:revert!important; margin:reve=
rt!important; opacity:revert!important; order:revert!important; outline:rev=
ert!important; overflow:revert!important; padding:revert!important; positio=
n:revert!important; tab-size:revert!important; table-layout:revert!importan=
t; text-align:revert!important; text-indent:revert!important; text-orientat=
ion:revert!important; text-overflow:revert!important; text-transform:revert=
!important; top:revert!important; vertical-align:revert!important; visibili=
ty:revert!important; white-space:revert!important; width:revert!important; =
word-break:revert!important; word-spacing:revert!important; writing-mode:re=
vert!important; zoom:revert!important; display:block!important">
<tr style=3D"background:revert!important; border:revert!important; bottom:r=
evert!important; color:revert!important; direction:revert!important; displa=
y:revert!important; font-size:revert!important; height:revert!important; le=
tter-spacing:revert!important; line-height:revert!important; margin:revert!=
important; opacity:revert!important; order:revert!important; outline:revert=
!important; overflow:revert!important; padding:revert!important; position:r=
evert!important; tab-size:revert!important; table-layout:revert!important; =
text-align:revert!important; text-indent:revert!important; text-orientation=
:revert!important; text-overflow:revert!important; text-transform:revert!im=
portant; top:revert!important; vertical-align:revert!important; visibility:=
revert!important; white-space:revert!important; width:revert!important; wor=
d-break:revert!important; word-spacing:revert!important; writing-mode:rever=
t!important; zoom:revert!important">
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"background:revert!important; border:revert!important;=
 bottom:revert!important; color:revert!important; direction:revert!importan=
t; display:revert!important; font-size:revert!important; height:revert!impo=
rtant; letter-spacing:revert!important; line-height:revert!important; margi=
n:revert!important; opacity:revert!important; order:revert!important; outli=
ne:revert!important; overflow:revert!important; padding:revert!important; p=
osition:revert!important; tab-size:revert!important; table-layout:revert!im=
portant; text-align:revert!important; text-indent:revert!important; text-or=
ientation:revert!important; text-overflow:revert!important; text-transform:=
revert!important; top:revert!important; vertical-align:revert!important; vi=
sibility:revert!important; white-space:revert!important; width:revert!impor=
tant; word-break:revert!important; word-spacing:revert!important; writing-m=
ode:revert!important; zoom:revert!important; padding:7px 2px 7px 2px!import=
ant; background-color:#A6A6A6!important; width:0px!important">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"background:revert!important; bord=
er:revert!important; bottom:revert!important; color:revert!important; direc=
tion:revert!important; display:revert!important; font-size:revert!important=
; height:revert!important; letter-spacing:revert!important; line-height:rev=
ert!important; margin:revert!important; opacity:revert!important; order:rev=
ert!important; outline:revert!important; overflow:revert!important; padding=
:revert!important; position:revert!important; tab-size:revert!important; ta=
ble-layout:revert!important; text-align:revert!important; text-indent:rever=
t!important; text-orientation:revert!important; text-overflow:revert!import=
ant; text-transform:revert!important; top:revert!important; vertical-align:=
revert!important; visibility:revert!important; white-space:revert!important=
; width:revert!important; word-break:revert!important; word-spacing:revert!=
important; writing-mode:revert!important; zoom:revert!important; width:100%=
!important; background-color:#EAEAEA!important; padding:7px 5px 7px 15px!im=
portant; font-family:wf_segoe-ui_normal,Segoe UI,Segoe WP,Tahoma,Arial,sans=
-serif!important; font-size:12px!important; font-weight:normal!important; c=
olor:#212121!important; text-align:left!important; word-wrap:break-word!imp=
ortant">
<div style=3D"background:revert!important; border:revert!important; bottom:=
revert!important; color:revert!important; direction:revert!important; displ=
ay:revert!important; font-size:revert!important; height:revert!important; l=
etter-spacing:revert!important; line-height:revert!important; margin:revert=
!important; opacity:revert!important; order:revert!important; outline:rever=
t!important; overflow:revert!important; padding:revert!important; position:=
revert!important; tab-size:revert!important; table-layout:revert!important;=
 text-align:revert!important; text-indent:revert!important; text-orientatio=
n:revert!important; text-overflow:revert!important; text-transform:revert!i=
mportant; top:revert!important; vertical-align:revert!important; visibility=
:revert!important; white-space:revert!important; width:revert!important; wo=
rd-break:revert!important; word-spacing:revert!important; writing-mode:reve=
rt!important; zoom:revert!important">
You don't often get email from h.wulff=3Dkruss.de@lists.yoctoproject.org. <=
a href=3D"https://aka.ms/LearnAboutSenderIdentification" style=3D"backgroun=
d:revert!important; color:revert!important; direction:revert!important; dis=
play:revert!important; font-size:revert!important; opacity:revert!important=
; visibility:revert!important">
Learn why this is important</a> </div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"background:revert!i=
mportant; border:revert!important; bottom:revert!important; color:revert!im=
portant; direction:revert!important; display:revert!important; font-size:re=
vert!important; height:revert!important; letter-spacing:revert!important; l=
ine-height:revert!important; margin:revert!important; opacity:revert!import=
ant; order:revert!important; outline:revert!important; overflow:revert!impo=
rtant; padding:revert!important; position:revert!important; tab-size:revert=
!important; table-layout:revert!important; text-align:revert!important; tex=
t-indent:revert!important; text-orientation:revert!important; text-overflow=
:revert!important; text-transform:revert!important; top:revert!important; v=
ertical-align:revert!important; visibility:revert!important; white-space:re=
vert!important; width:revert!important; word-break:revert!important; word-s=
pacing:revert!important; writing-mode:revert!important; zoom:revert!importa=
nt; width:75px!important; background-color:#EAEAEA!important; padding:7px 5=
px 7px 5px!important; font-family:wf_segoe-ui_normal,Segoe UI,Segoe WP,Taho=
ma,Arial,sans-serif!important; font-size:12px!important; font-weight:normal=
!important; color:#212121!important; text-align:left!important; word-wrap:b=
reak-word!important">
</td>
</tr>
</tbody>
</table>
<div>
<p>How about replacing the recipe by a .bbappend and replacing the systemd =
file(s) with something like:</p>
<pre class=3D"x_prettyprint"><code class=3D"x_language-unknown">FILESEXTRAP=
ATHS:prepend :=3D &quot;${THISDIR}/files:&quot;

SRC_URI:remove =3D &quot;${@bb.utils.contains('SYSTEMD_VERSION', '250', ' f=
ile://factory-reset-yocto.target', '', d)}&quot;
SRC_URI:append =3D &quot;${@bb.utils.contains('SYSTEMD_VERSION', '250', ' f=
ile://your-factory-reset.target', '', d)}&quot;
</code></pre>
<p>If you can live with touching your recipe.</p>
</div>
</div>
</body>
</html>

--_000_MW4PR16MB5087847F0DFCF6FAAA0F3C5FBB582MW4PR16MB5087namp_--

