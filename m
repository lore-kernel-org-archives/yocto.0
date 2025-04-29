Return-Path: <bjorn.gurnett@thermia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A3C4C369DC
	for <webhook@archiver.kernel.org>; Tue, 29 Apr 2025 13:03:57 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.106])
 by mx.groups.io with SMTP id smtpd.web10.19304.1745931825740444653
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Apr 2025 06:03:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thermia.com header.s=selector1 header.b=oIvgY6ZH;
 spf=pass (domain: thermia.com, ip: 40.107.20.106, mailfrom: bjorn.gurnett@thermia.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fo8bG3X3ePm5liLeK+cCCGOvrUC++hSR1P6xDsHRUko7K0EaPxhwzr4GUjEyDwcZGrZDlvyaxFiPKyJgJB/+hy5ghBwZki5kL7bl/TS9C4tA9UlnNJx09IcobvZo4IhDg562O+DxiOHyy3DAIl+ff0D2FgJVU9sD9CBZnbuwXIK/oIUAAoPAKb2vhhCQao6tvlnUiPUFfgAV+/0zq9o9ksbRIu2OUuipk6QQAIVZYFZ0GlmocACi0dTLWVhk9aALk0fs+5gmYMGJHuIPe+j7j6z9FvUCofghGen40YzIUa02GuEu2pG/ls+/qhHlsHODJHHzxsu9xdNb70jfa6YNHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9xjGhTxxX/Xf1Yq0CbicbYXF+x9B+fCozyzdDQLsZJo=;
 b=EO9idX/2N47j3X/3RmNyfHJEQGq9efYJOSZyqsGxBs2iiO9rznRrP4iPL4oV31mcbYEPuDVbFvGNAPhl3KcF8+0x7F1B0dxrjyV1jve4jSxYm9xUdvbqoar2gG74V0Qi7v+b5WXpbp6eq4J0zXtTorxRsw7FlvADkD/l/8Apz+coO2M8HGumx3PD/sO827BD4/UQoJJNbqqhfl7fZXV+VpAGSoI847ezOB2EUEj6ToUvLB+tbvj10s8p/7JEQ6epazfn6JpFHB7JgPQ1Ohb+yVZGAqxRxkOe5yzTNOaeVs2RSQ7Tz64ViD2Z6uer1v67iVjnp85FxnBwZFnJCXOnGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thermia.com; dmarc=pass action=none header.from=thermia.com;
 dkim=pass header.d=thermia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thermia.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9xjGhTxxX/Xf1Yq0CbicbYXF+x9B+fCozyzdDQLsZJo=;
 b=oIvgY6ZHETixlCnWS0X4DruD2DbLML31M/I5mcTapRrThba4ykKNkOPXonzYliNS0juje5oB3YB6KetV8zjeO0capNzyNbdrozmcTLr60uYVjL8U51aEy1A32cZzi895o/YbsuaegC/i+C3S0p5rA2p+gAQyKuTij87KtNK86lsUVsXtrnQux83WycPBCFOIJm2VlyrdIFRWVUPivXkQVaKkLdwVPxk9hjgT4w4W8ji++q1H80ZDkwtKPUkUIWl6JvxPV19RVp+yyTfctgnqUenZU7uCpvF9UnNsGtcQsx5H6I8k7TNVVoBQ+XgqElSvwSfFxuzgIOEoJu8mImROhw==
Received: from DB9PR05MB8105.eurprd05.prod.outlook.com (2603:10a6:10:251::24)
 by DU0PR05MB10420.eurprd05.prod.outlook.com (2603:10a6:10:440::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Tue, 29 Apr
 2025 13:03:41 +0000
Received: from DB9PR05MB8105.eurprd05.prod.outlook.com
 ([fe80::d882:2c9b:394:b12]) by DB9PR05MB8105.eurprd05.prod.outlook.com
 ([fe80::d882:2c9b:394:b12%3]) with mapi id 15.20.8678.025; Tue, 29 Apr 2025
 13:03:41 +0000
From: "Gurnett, Bjorn" <bjorn.gurnett@thermia.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Unable to add plymouth to image
Thread-Topic: Unable to add plymouth to image
Thread-Index: Adtz9230p4vyj/UzTamQQioI2uDHPA==
Date: Tue, 29 Apr 2025 13:03:40 +0000
Message-ID: 
 <DB9PR05MB810573901111D3E66D940FB8E5802@DB9PR05MB8105.eurprd05.prod.outlook.com>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_a778f0de-7455-48b1-94b1-e40d100647ac_ActionId=2ec873f9-7c81-4564-8c51-f50af64a9afb;MSIP_Label_a778f0de-7455-48b1-94b1-e40d100647ac_ContentBits=0;MSIP_Label_a778f0de-7455-48b1-94b1-e40d100647ac_Enabled=true;MSIP_Label_a778f0de-7455-48b1-94b1-e40d100647ac_Method=Standard;MSIP_Label_a778f0de-7455-48b1-94b1-e40d100647ac_Name=Internal
 - All
 company;MSIP_Label_a778f0de-7455-48b1-94b1-e40d100647ac_SetDate=2025-01-31T15:46:12Z;MSIP_Label_a778f0de-7455-48b1-94b1-e40d100647ac_SiteId=420c935a-f900-4995-aeb1-9af57e8e12fc;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=thermia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB8105:EE_|DU0PR05MB10420:EE_
x-ms-office365-filtering-correlation-id: a11ccb81-08b5-4870-98b7-08dd871e43c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?zbPq3LxVIz/ngktGzN++mCMI71ckzkQUnycozmdf+/oE8bpDGxrK3UMHzW2V?=
 =?us-ascii?Q?NbUHKUxOWfzvF8SGyB0Lik7u9TT+B67+fW4oVqwx8xleFbLVjc0NMs4WcEDV?=
 =?us-ascii?Q?Qr8OfES0R0JjZdRF8jaPdx/lZGtAaJG9BSZrrzEOUJmtI0NFCZSeaSAH9kZY?=
 =?us-ascii?Q?ea3qdlCczObCRl+oVja7Fx5q/Tm7+PMjci0RiFSxYdczVMi8ICsB8TRhHJb9?=
 =?us-ascii?Q?ekddHFK7GSXP8Qhp4bX5PmTRcnodD0dBIvYKuC+yzLka0M4UXQtuVJuapeoL?=
 =?us-ascii?Q?JDWPlsNyjzbik4dySRbpZPZ+GVJ0lByhdyz/IJkA+taMZXzIleYnL0OB9VHd?=
 =?us-ascii?Q?B8JV3JbxPkk6ATT643tT2RiWv+1muyKPRsr7VzHkfleYNMx4Cn0Pwg9Tme7N?=
 =?us-ascii?Q?K4D4V+JBNpmx6r0OiDLGM/NsJEhze1ckd9ALuKZDhpb4HPBCfXTkxZWZBaHU?=
 =?us-ascii?Q?//OgQ4JfFS5+I/eG119/i96OWuSlLTDjyMiqzQf11WpPBcxtmpiqNFBa+6EF?=
 =?us-ascii?Q?BkB3u4iSrHZs67siXD6dCIVeLL3MB70VaYeDlqMLu2hC1kyWBccznzWPAXh3?=
 =?us-ascii?Q?JVkztvHXOoc29t/Mo+z2Zq6GGZyUNc5cuagT28ZB+/49hc3S6BNi0fYkwD1e?=
 =?us-ascii?Q?IOOHQi55sSgfJ8uOCxjGNfiUK0CIwIdGNq1XbyZYo/wEuVPj+RPpWHMWMweP?=
 =?us-ascii?Q?BCjiaLggVDJW4eeAczrGIlbQbE1MtWr4hykoXTWIwRs8cdua/AZOhmBCzsm3?=
 =?us-ascii?Q?6t9lBV9Us9NKlKrNy5dU0f0IZfFM8YPsBVVn4Xd2tKN5+rQijnCOiThCji1J?=
 =?us-ascii?Q?IcIeGBVU5Uj3gdicaWWEELg+HGCNv3ydFUXHQtrjV5c26lik9d5EIKxGHQ1v?=
 =?us-ascii?Q?oEAs1LWpLaMCMuAspP0QjN6FskqGheki/8uYQc2Cc7glK63I0DwUWTZhnRkL?=
 =?us-ascii?Q?MJXuzKmAMtnpw9HTLPj/dKrXfvSdjfWxSKT33+IHaIMtKztOUpcOYHFTkVnD?=
 =?us-ascii?Q?oV3qeF1q9lFDn1Cplv4oroqX8AtxZ2pH7GuJJxiyHwzbSMKIvtStQmex8MUE?=
 =?us-ascii?Q?RdMafwiKXpUcQesKGOAGhVgJGU/OzUGD5ngoEH28rTMRp7RU3+Wm9vpr9oPV?=
 =?us-ascii?Q?DAMMDL7vSxXLfpjNRPsCfyuPLjL3PcQ8Yn2yNrCVeVmltgFp5kKHD7/BHm++?=
 =?us-ascii?Q?1pHcSBw+9VqA4N0V989+2odETqvTF069lpu3a/n4gCwWOiiB1w27EiFe6oon?=
 =?us-ascii?Q?ccB2Mmv4yAkFCvqAlT6sVpW0fca/+OXGhdePaRRJ7WUZa5VvejlUV9ZgrlKa?=
 =?us-ascii?Q?tRQaCuy6dE9X9fTxLr2iBIJ6QhpB4wV/UXSHQgZhKfjgB+TVSWQ7YfCVlb2L?=
 =?us-ascii?Q?973hYPEOKIY9isX2KoPMqcZ8XuyIvfhMdvMKZeY7zf4HwbBS4sIWHUAR3Dfn?=
 =?us-ascii?Q?YVFjM3Fa8UbC8LPsfUIgaNbQGJaRqZgVpwEJFRWuZ7nz+62cJmr4rg=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR05MB8105.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?YFRwIMPungM8R7L0WIxkGdZD3N81GcJBxILArJvnVMxkBwYQ5wR2aTcXFzHl?=
 =?us-ascii?Q?ONJVkGXfV9RihFg6N4CZsieCy4RsJQDDBqa2eKG987o4F2Dst+21AHXKrYPl?=
 =?us-ascii?Q?s4jnnzHy95I3CX7rgdBCdX1LXsA8qDQCU4vhdCxyHDywEOSUHjS5YlU1Y478?=
 =?us-ascii?Q?nk8zfhGIcxiQIXAHzmJSqY875nkPiObB2ITV1NTnDydSqgBytRPD4JuFkWgA?=
 =?us-ascii?Q?/0xS4VBfTWUiX8W8Zx/w70BIeObdRcXsTVtb/dyjirB4/B/o3qgnh2BM/fS6?=
 =?us-ascii?Q?KH/4Vfko6E5X5cn3j2DWxuP/2ol5i5iRVaa8DNKz3iY6iXMELcCtZ1T43Z5O?=
 =?us-ascii?Q?DEf1jv/75K8YTUKwhOimPUhsa9cxxuRWAicYW8NyU9ksdFrrlHDgOfAMDEP6?=
 =?us-ascii?Q?WJBs+RXoy8astkDf9QsIJXooD3ob2US7GJ/65k4v8Y5oZa8Fbw9T0Ej0hj4Z?=
 =?us-ascii?Q?wjgBFlP3cJOxcWHie+fRi6nJjUi7tWjexKgYOxmTfsLQCQBjL17+LDm0v/WO?=
 =?us-ascii?Q?U/Ij0J/BtvsfXG0YIg2R2Me7gSyW78Ouc7FAdAJaxoVt2/V4lHwCXdnU/1wa?=
 =?us-ascii?Q?9JBVRak1bs68hCLHiA1sdbeeyJEvs8kDtnoI0oiLT/r0MeVdO/jjGqSRFUDg?=
 =?us-ascii?Q?8H9m/yum9Yb0GBzl1Z5Jr83YiLMU/Dpe4FUjybNiWlljzDN/kk99GtOWRGcf?=
 =?us-ascii?Q?++VxoQIo5k1VBgFwH0a4yMBB0CShuxmjGDn88AspZH3GCyqxdEIvQW5wbGKj?=
 =?us-ascii?Q?fvwy/ybbGJl7zdRV/o02vLM+xdSJT5FtLumCeKHO/p3Hl3t+q6qIjYg7D9nz?=
 =?us-ascii?Q?gJDreqVEu9hywSjBPSnpLzHnHO/vbdrQC4adRb2jXSk+qLKytBGLYKlK9ILe?=
 =?us-ascii?Q?wLiPD/INeny+a00SQGB3H/toEo74SFEGxg5Jz8P3QKiC5HXMRqN2fL9AyYoa?=
 =?us-ascii?Q?oNS4M0+SQkoN0rAHnfNmHmppUmoBWF7gT3NgyysU77g4YfmdtwMq0fpiCoDZ?=
 =?us-ascii?Q?oUTqAqPrtIJSKIoLWawc+pfT+4HNjk6DfEBzqqeuII3wL8aJHCDZsK+q6sPN?=
 =?us-ascii?Q?8lY49fwY7O9J0cgOXuyBe9fqZTcoNnMlFZsfvQeEABhJz2/uidDKaKl3ebFf?=
 =?us-ascii?Q?Eqi0NMABzfb+aLC2/gB0qRSsOzAPvO4mFPLQ0WtYDvXgFXZiw8dCzJUA1C73?=
 =?us-ascii?Q?9yLNsktyb9pt6dBfGVlmC2ilGuQbcXIZD1gCZcMxYsK1jkZcdQek2+NGkMfM?=
 =?us-ascii?Q?k9ToV6Q52dzbFSusSpTPKQZToHeRfFUejqmLsdbBANUmeDqZK4Cw45Mg9FCW?=
 =?us-ascii?Q?ZzHs25UIKQ19pQU281IwWBN5911kSosXaLIs/L+fIsbizMjMHaN+MDkzPFKi?=
 =?us-ascii?Q?XxJWALSyUeNxbZvasx7kScji10XaN2Pz9s/MWMhajxB7sxiwHRshQb8tAvNp?=
 =?us-ascii?Q?sWfRHPn2/STOqx4CJaHUoDNmZy3yV2PQilzR5cee1iyBKSdohs66TxaChpRL?=
 =?us-ascii?Q?iFqD6vC46XtHxXuC5iRS3C0dtc3KcUw6seoYErVRW7xMr50GPvP/0BEnsnmE?=
 =?us-ascii?Q?lXGNCeRIuRha6Bx2iCAx51tV1cEWBd/4qjFf/+j1?=
Content-Type: multipart/alternative;
	boundary="_000_DB9PR05MB810573901111D3E66D940FB8E5802DB9PR05MB8105eurp_"
MIME-Version: 1.0
X-OriginatorOrg: thermia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB8105.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a11ccb81-08b5-4870-98b7-08dd871e43c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2025 13:03:41.1805
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 420c935a-f900-4995-aeb1-9af57e8e12fc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DE67zWe3WNvy0P1mHEnG0UYdEhwMWTLaF5Ng+kqlX0IpInuvv9aZ30XzTpIzw2Kpum8Uvtb5GfzAHGS+ucfwWGfXcbp/85XhdY4ex8oXVoE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR05MB10420
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Apr 2025 13:03:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65263

--_000_DB9PR05MB810573901111D3E66D940FB8E5802DB9PR05MB8105eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello
I am trying to add Plymouth on a mickledore based project. However, even th=
ough I can clearly see that it exists, bitbake claims Nothing RPROVIDES 'pl=
ymouth'.
If I try recipetool newappend, it does not create a bbappend file in our cu=
stom layer. If I try recipetool on other recipes in the same folder, bbappe=
nd files are created successfully. So it Is almost like the folder is there=
, but the system just doesn't know about it.

Any suggestions?

Thanks


--_000_DB9PR05MB810573901111D3E66D940FB8E5802DB9PR05MB8105eurp_
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
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"SV" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am trying to add Plymouth on =
a mickledore based project. However, even though I can clearly see that it =
exists, bitbake claims Nothing RPROVIDES 'plymouth'.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If I try recipetool newappend, =
it does not create a bbappend file in our custom layer. If I try recipetool=
 on other recipes in the same folder, bbappend files are created successful=
ly. So it Is almost like the folder
 is there, but the system just doesn&#8217;t know about it.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any suggestions?<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DB9PR05MB810573901111D3E66D940FB8E5802DB9PR05MB8105eurp_--

