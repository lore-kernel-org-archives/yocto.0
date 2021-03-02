Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.5496.1614671430575834992
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 23:50:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@airborneinstruments.dk header.s=selector2 header.b=Lm3v7OEb;
 spf=fail (domain: airborneinstruments.dk, ip: 198.145.29.25, mailfrom: jve@airborneinstruments.dk)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80077.outbound.protection.outlook.com [40.107.8.77])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8C92138C0731
	for <yocto@yoctoproject.org>; Tue,  2 Mar 2021 07:50:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BkzERpM8TcPwCcOPpUBS+PWOMOU7ZI7YTw9d85kOWfxU7kTXPZ4G0WHPX1AH3UBnvTQfQskQZi9zKTtifSmXbglvjVRk4TkRATBRdMsUHZ3Kvb92m0DymcYwIGtnAtA+tzsorLpoIn60VEcmDY+P1Q+mzFYObAIbd6caxM5Lgb4Sgbe/uP4BhZ1x5pkLbgNAyHffTmTBj6Fpgr+OSpOfbxkT4YaEV4a8GDc2/QBCmai2uwPwelF0FehOxgvHsd2pkSrh1/n9l4kgRWSF9ihD2olFzwFUDEayG1y2Vs5IO3DJ3aZaPHpzirSFnlNWVhFO+8ASpBXgnWYylUP+JgvjjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M6NV4TEl4Ka1n4M95UsRO+QpfBmUI7EbJG4Cm9K190A=;
 b=MuBFQhaVXRhq8VvPtbdIwCOy+SN+L2BAB15rdlN0MdGX39dhZQs3hE1aXslGkH7xTeWU4tWm5fc01kWlEwXNeq30LzWf2Y0l1Fdt/uXYAAF+jrLlBN3czMxOonSu+PYcmjT9Ez1uLS5KGT7Fr6JywBXsqwQ7F0S5kDePlozEvLGaF0j1wz0zi0MI2sdN9OYukD32kOuUOhqg9EcwY0mrbIF0t+NfDbIpk4WSTnoHtUAQYA1iH/YU/AXl1a3ZA/PDj5ZfisDKfKr3CW5sRdZJFr4pGecnuhPg0VAfcgKPjOqG3OZVb4fBkuRuRgzC7sTLOnk0upVmK29CdpiEoApc7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=airborneinstruments.dk; dmarc=pass action=none
 header.from=airborneinstruments.dk; dkim=pass
 header.d=airborneinstruments.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=airborneinstruments.dk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M6NV4TEl4Ka1n4M95UsRO+QpfBmUI7EbJG4Cm9K190A=;
 b=Lm3v7OEbeg9ZH26GBUSoOBIEym+rSMLSXsV3rRY5Y+3Hz06pLPTHeh87cktdFym1p6w0lVewWgQO/nLUnu0sleIPmJz1Pxk+qBs6ha1eyxH2i9iYbPIgrLWMqHYmJ9IxDN/f3uQSdyphWoCwpsPCQ9UxHK51H4ilTLfACR+Adus=
Received: from AM0PR01MB4148.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:6b::29) by AM0PR01MB4481.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:ea::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Tue, 2 Mar
 2021 07:50:25 +0000
Received: from AM0PR01MB4148.eurprd01.prod.exchangelabs.com
 ([fe80::bd1f:36e6:dba3:4557]) by AM0PR01MB4148.eurprd01.prod.exchangelabs.com
 ([fe80::bd1f:36e6:dba3:4557%7]) with mapi id 15.20.3890.023; Tue, 2 Mar 2021
 07:50:25 +0000
From: jve@airborneinstruments.dk
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: VS: [meta-raspberrypi] Support for Raspberry pi CM4 (USB host support not working)
Thread-Topic: [meta-raspberrypi] Support for Raspberry pi CM4 (USB host
 support not working)
Thread-Index: AdcPNoqI/XLWQ2uFTNiC1AImC/PHowAAhVqA
Date: Tue, 2 Mar 2021 07:50:24 +0000
Message-ID: 
 <AM0PR01MB414829A11FAD5FFD3331BC63CA999@AM0PR01MB4148.eurprd01.prod.exchangelabs.com>
References: 
 <AM0PR01MB41483B2A56F8EE70DDC04FA6CA999@AM0PR01MB4148.eurprd01.prod.exchangelabs.com>
In-Reply-To: 
 <AM0PR01MB41483B2A56F8EE70DDC04FA6CA999@AM0PR01MB4148.eurprd01.prod.exchangelabs.com>
Accept-Language: da-DK, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=airborneinstruments.dk;
x-originating-ip: [212.10.114.103]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a4257801-a3f5-4115-3003-08d8dd4fd707
x-ms-traffictypediagnostic: AM0PR01MB4481:
x-ms-exchange-minimumurldomainage: meta-raspberrypi.readthedocs.io#0
x-microsoft-antispam-prvs: 
 <AM0PR01MB4481696975C0E075CF71EA62CA999@AM0PR01MB4481.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 j2UtwZtpBhnbYD/Mhv59PDd8RrSGnW7ffPT9a+hKbpyh0w4pYw7f7fCEy0M/NmKgUPMyOJMEBUCWDZ6eRyNft1x/lYWmaNg8vHfOwrzDYm2j7zagV5mzYw1RApp0tNVmA12pgA5Jnhj3pdohG8Y+cj7FbZTCQfrLNhnGe1pLxkqm8N2w7OeKsl2swN9x4HVgGQND1lrjdasDoeq3CCmve+5pBn1BzKwNHGt0OmWicELS73E0hPza2z+70QVIFzBdFxONM+1nmzyMCgHuG3XcqTxOfZd30aqP23TYtCGD0ShzGBvC3dPLjRkN327G1WV3rBzhWZVoBHUrFfiS6zyKqO/bwpK9jALJVfRh/hw/bZRKCO1ZGDvjx/6TLiUZw+45fZPpKn7ZJkzwz4bS6pIoBCygGJcEsXPqbx03EpIgRHg6GCnD8JbPFKIfx3emdPLwHajVX5HC0y6DDGYsdpt+/IXxiSdhYN+DuEFi/3Gg/B5UhfAx6q1adN1QpSbw8fFWeCwh5oN1lFYHqPGuYDu2t5Jk4Z+y2T7whly8tU+iu6B/WZvFpoNonUqOSB52zo4ktc/hHFwPYMYEBS/C4GI8YxjgFZWcpoiHQMS+uqsFO0A=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR01MB4148.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(136003)(366004)(396003)(39830400003)(966005)(55016002)(316002)(7696005)(478600001)(8676002)(186003)(8936002)(2906002)(2940100002)(52536014)(71200400001)(83380400001)(66946007)(66446008)(66476007)(66556008)(64756008)(26005)(6506007)(6916009)(33656002)(76116006)(166002)(86362001)(9686003)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?8doV1wnVxxpduD6WChyV9nJdbgmszHvi9xJZ5HhWCC5ol7zn0i8KXFwRdUqn?=
 =?us-ascii?Q?QAaEDx/SFp7gVpESUCgDeIm0D4xJbjIIsjPJOLZbEPSvoZhTPqZKq5/3VYrn?=
 =?us-ascii?Q?4axsLDitFu1s5q8hxK2Og5wVcY+5TfclMJW/xxkUfSSObanCmWokImIdd+Za?=
 =?us-ascii?Q?y0dlzZrk+mOCWHkhH1AtGp8kV+Na7P2UIFganb2R+8tTlZhbN4cUJFbvoZDD?=
 =?us-ascii?Q?GzYn4spXJ5xJwngD1HJ79vvdNrWimvK8A1J3fQxogEdXFb8/tT1Gqa5DyYP0?=
 =?us-ascii?Q?Gmyd+YtRaCFbOin4LoqaTlgjO/cdXCaaD7BBbBRq0GvL6XggdGWk+q/73i5l?=
 =?us-ascii?Q?fFoelTMrUczDjIUnyVwcDXeGNhCPQjP9Run05VNWpHcjPT9twtVcUXT8L4Ar?=
 =?us-ascii?Q?fYgVvEu/27ivz0khAFMmRh5OVqinvta3b2pmH7ZZryj5JkAk1+M0DjQaPSTz?=
 =?us-ascii?Q?t47gnX89Pa4RAm5dO9FkCFrC5ak8RjUGoA+xTasUxC2G5DqJ/btbWZNA+tl4?=
 =?us-ascii?Q?M+yAgxzuZPAr6CCb1mDwhFtZ/SWQaIh2GuRWkPyR7MwG1LIX9+HR2CH1pESU?=
 =?us-ascii?Q?o12zZTlX+qq23vx4EfhFO4xAIDrCaj7b+1mkpSEzE458PY7/xEz/4Dc2jcH/?=
 =?us-ascii?Q?epHvMaFr9dwmWnCSID5YDNxp0kTxi7Ej0rNdCviIgn9VkLsUVmGcgo3BHuhJ?=
 =?us-ascii?Q?N492EUFnj2YMhXWDFYwd9ba9gvfUChBMLfIy5RWOCWec9PyfiGymAH+JOMmQ?=
 =?us-ascii?Q?ktAdLci+jzWgzJhlAcF6jHBbUM9Xx2RoTO5ioonPN3/CRqfmdd+y+GgtvCvb?=
 =?us-ascii?Q?yF78zZlwe4jOM3rMrfy0lJNyYrbf2vmbBcqeZh2QcVi/qKIWsjjs50nMkXfH?=
 =?us-ascii?Q?fZxzvrgDoxdNbygG6ivEEi14RQrbXBX3ELZQmfASislh8w/CqnJuiAKQxVU+?=
 =?us-ascii?Q?4yvsnqg1sRbsjxJ01Wv0k4KJ5ofivdoyUwvi72sXDcbboBTXTlLbqjX4vTm+?=
 =?us-ascii?Q?4CSC+ZWYdw5cKZuhC2CVShNBKxkqKV3zUPGKLIqnQmKBpxuxfT2uDeAZzxBe?=
 =?us-ascii?Q?wiNloZDPbRjEwaF8sCWSlcJ69XpwhWa06NPl0w/i3ivCc8o0JPjJOs+q9xLL?=
 =?us-ascii?Q?SyoA4KF1nnXZ5AckiaVexs45f6gNyHaM/sIK6MhtlWgx6of0CQq/tFVSucre?=
 =?us-ascii?Q?2+4bGLb7Oq0ni/vaer6g17X2n4ds2Ekhzi50Cm4Han0IV9CRgRcwlrHIi+nv?=
 =?us-ascii?Q?l8Ku4e8kK3KEG4FXUkWN1B1CHaTUswdZVmKlCV7EpQ5ZcpaAUF72s2ekqMqc?=
 =?us-ascii?Q?hVAwK39K+OytCJEqrePfnXSn?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: airborneinstruments.dk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR01MB4148.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4257801-a3f5-4115-3003-08d8dd4fd707
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2021 07:50:25.1783
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 409031fd-5562-4b2b-bd49-1680a85128b5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wKRqIAtV3sh+aft08pprq6Z4QlQwPgp6EV3Xa6zzPPeyCJymemKF5MD4LC4/QQuAuf/swZ/O695PT4wvVfBPzRogKJ414HhELDlVQBpBEZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR01MB4481
Content-Language: da-DK
Content-Type: multipart/alternative;
	boundary="_000_AM0PR01MB414829A11FAD5FFD3331BC63CA999AM0PR01MB4148eurp_"

--_000_AM0PR01MB414829A11FAD5FFD3331BC63CA999AM0PR01MB4148eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I was wondering if the meta-raspberrypi layer has official support for the =
cm4 module?

I see a commit adding the .dtb files for the cm4 and 400 in the master bran=
ch.
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/conf/mach=
ine/raspberrypi4-64.conf?id=3D0c85f0150629e1f5eaf86289f2542744e38b5413&cont=
ext=3D3&ignorews=3D0&dt=3D0
In the documentation, it is also mentioned that USB host support has to be =
enabled for CM4 IO board.
https://meta-raspberrypi.readthedocs.io/en/latest/extra-build-config.html#e=
nable-usb-host-support

Since it is not listed under supported machines I assume that it is not sup=
ported.
If that is true, how long before it is going to be supported?

I haven't been able to get the USB host support to work.
I have been building from the master branch and set ' ENABLE_DWC2_HOST =3D =
"1" ' in my local.conf.
I have also confirmed that ' dtoverlay=3Ddwc2,dr_mode=3Dhost ' has been add=
ed to the config.txt, but so far I have had no luck getting it to work.
Any tips on how to get it to work?

I tried writing an image onto the CM4 with the RPI Imager and had success w=
ith enabling the USB host support that way.

--
Jonas Vennevold



--_000_AM0PR01MB414829A11FAD5FFD3331BC63CA999AM0PR01MB4148eurp_
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
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:3.0cm 2.0cm 3.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I was wondering if the meta-ras=
pberrypi layer has official support for the cm4 module?<br>
<br>
I see a commit adding the .dtb files for the cm4 and 400 in the master bran=
ch.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commi=
t/conf/machine/raspberrypi4-64.conf?id=3D0c85f0150629e1f5eaf86289f2542744e3=
8b5413&amp;context=3D3&amp;ignorews=3D0&amp;dt=3D0">http://git.yoctoproject=
.org/cgit/cgit.cgi/meta-raspberrypi/commit/conf/machine/raspberrypi4-64.con=
f?id=3D0c85f0150629e1f5eaf86289f2542744e38b5413&amp;context=3D3&amp;ignorew=
s=3D0&amp;dt=3D0</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In the documentation, it is als=
o mentioned that USB host support has to be enabled for CM4 IO board.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"https://meta-raspber=
rypi.readthedocs.io/en/latest/extra-build-config.html#enable-usb-host-suppo=
rt">https://meta-raspberrypi.readthedocs.io/en/latest/extra-build-config.ht=
ml#enable-usb-host-support</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Since it is not listed under su=
pported machines I assume that it is not supported.<br>
If that is true, how long before it is going to be supported?<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I haven&#8217;t been able to ge=
t the USB host support to work.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have been building from the m=
aster branch and set '
<b>ENABLE_DWC2_HOST =3D &quot;1&quot;</b> &#8217; in my local.conf.<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have also confirmed that &#82=
16; <b>dtoverlay=3Ddwc2,dr_mode=3Dhost</b> &#8216; has been added to the co=
nfig.txt, but so far I have had no luck getting it to work.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any tips on how to get it to wo=
rk?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tried writing an image onto t=
he CM4 with the RPI Imager and had success with enabling the USB host suppo=
rt that way.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.5pt;font-f=
amily:&quot;Verdana&quot;,sans-serif;color:black;mso-fareast-language:DA">-=
-
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt;fon=
t-family:&quot;Verdana&quot;,sans-serif;color:#002E5F;mso-fareast-language:=
DA">Jonas Vennevold</span></b><span lang=3D"EN-US" style=3D"font-size:8.5pt=
;font-family:&quot;Verdana&quot;,sans-serif;color:#848884;mso-fareast-langu=
age:DA"><br>
&nbsp;</span><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quo=
t;Verdana&quot;,sans-serif;mso-fareast-language:DA"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_AM0PR01MB414829A11FAD5FFD3331BC63CA999AM0PR01MB4148eurp_--
