Received: from EUR03-DB5-obe.outbound.protection.outlook.com (EUR03-DB5-obe.outbound.protection.outlook.com [40.107.4.71])
 by mx.groups.io with SMTP id smtpd.web12.5146.1606967143749496415
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 19:45:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nz.abb.com header.s=selector1 header.b=Por40095;
 spf=pass (domain: nz.abb.com, ip: 40.107.4.71, mailfrom: andrew.loader@nz.abb.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HxBHCa5xm7TzaPtlgtxlQYjVcJ9IhIHYbY1ftJVc6Qee0Mrht3BKsji0aUxhDnP8M4c5mNcxvFWb0L9imE9h/BUpkKpExymLrWGMgGVemueDXfGACoO0kvXWXca1G7SCzN5cKp6/S0OJteS/A6P85ccTWPC6HtJfB9l+E8ZuLJjVCZtBbVkrzFFNxIyZ1ZGTcfgNng++JBDNZIwsRv5UrICE1Sjv7UCOUXAChIid7qtCVLU8zDCzhoId7KWVL4cNEvaYIzvMI4nXpUOi1jGNeIjlLC9FOj5vMZf0kZSYIOf9dVEVTDWRukz3KVHTmblf6nZSdQ2M9Aw6vsXLhsMbmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o8F0u9+0RgzP+4gIUfb4a6rfnzoAwfMETyb41YYM/0k=;
 b=Vx1PuwYdnB11tzGVCSG6cL27uWKj7zzxejutQT5qata0HcoOFRJDwEk+xx3+2i0b+YSvHjPwwM3dwigp1vFI9zjaX17zVAfRsNn2fRCtaxFGasv0GlXRSH0HzDzgNCQ4XKqpJIUE1uAxFR4ZhwDNrQceAjwlcR9oUElaZbITQYUWgE3vgckPXOvrlOP1xL92hiMC5Xtx4FPuGm2KEcU4A3t3axsRxsnsCJI0XbRdKmiVdlpc+MxCAViCeS/eC2o//id0Y6mQZV9nTyUAi44vCzGZxOTUp741od8oqzVVm62o1QrYNAvuS4ERRSXPonIIyx87dTEC31NK4FdXPf8Rqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nz.abb.com; dmarc=pass action=none header.from=nz.abb.com;
 dkim=pass header.d=nz.abb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nz.abb.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o8F0u9+0RgzP+4gIUfb4a6rfnzoAwfMETyb41YYM/0k=;
 b=Por40095HBNbIB7QSGRr4CzaPTw1eVoYM8vTXRD1bomEgzag1D0LnyKItaOR6LiIRoyX8M1fmWPIsC60dVVsI+Y4CgqyS2OAo53Mi64tFAhHOPJ1krXB1Y/Nu3Ai3VHS810UwOhAoMbyjA22xj5VCiKBW0z+8Y4rC0/M7xNYapR9JlOh0y0TXAcrnmi0kkOietVjCXnAwsDXO6zj4Zr/jKGyU/5j0I8fDEKulWhvbEnKb8wRQtXoC+fsgfdnpS7300bU4M0IXRz6cPlQ+Lvp5mNVoGNv1oLzCdzHolfzp0Ssqomm85DCT3uK2j3SLv2I5U4+n6l3vPpHFd/g6bl72Q==
Received: from VI1PR0602MB3487.eurprd06.prod.outlook.com (2603:10a6:803:d::15)
 by VI1PR0601MB2495.eurprd06.prod.outlook.com (2603:10a6:801:f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Thu, 3 Dec
 2020 03:45:41 +0000
Received: from VI1PR0602MB3487.eurprd06.prod.outlook.com
 ([fe80::cdb3:1fa0:1131:ac5b]) by VI1PR0602MB3487.eurprd06.prod.outlook.com
 ([fe80::cdb3:1fa0:1131:ac5b%7]) with mapi id 15.20.3611.025; Thu, 3 Dec 2020
 03:45:41 +0000
From: andrew.loader@nz.abb.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Using OVERRIDES to set variables from outside the recipe file
Thread-Topic: Using OVERRIDES to set variables from outside the recipe file
Thread-Index: AdbJI1Xutw/6W9L9S8WWm4hYJquk0A==
Date: Thu, 3 Dec 2020 03:45:41 +0000
Message-ID: 
 <VI1PR0602MB34879BEDC0B4831D84C6C3EADAF20@VI1PR0602MB3487.eurprd06.prod.outlook.com>
Accept-Language: en-NZ, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=nz.abb.com;
x-originating-ip: [134.159.174.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2e8c3941-dea8-4a0a-f70d-08d8973de812
x-ms-traffictypediagnostic: VI1PR0601MB2495:
x-microsoft-antispam-prvs: 
 <VI1PR0601MB2495977EF11DAAB3F5CA95D3DAF20@VI1PR0601MB2495.eurprd06.prod.outlook.com>
x-abb-o365-outbound: ABBOUTBOUND1
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Wkb3R6ZuDLAUqKcySzCXLmB9ggnJvutxs1FuiZ4dwhNxNZrDaAsnQ6X8QOEZNRr08pQ20ONwn9PboBn3uMdnRFkEmLuNKx/Y0XQo133XEaq4qfczzWoNeLvM67dBRKtTfeUQxxaBqxkjazf8+QmkKoqscYbboGiLq/Wye4Zt3VvApWb/cURNFMM0v01CLdI+L6V6mQ+mj73lKsEn6qk8QIjL1x6VVrgozBTW8THD2imWcskSa/JKU1Bn92isuGnI+Ygon7uAG9wI0wpd8ED2lQf8IeXKK1abT+vyavJ4h6+uJCeBtLADG5cEhAZvQCjzdYvFBrthjkwTA2Rlyj5oRg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0602MB3487.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(396003)(376002)(346002)(86362001)(2906002)(9686003)(316002)(186003)(7696005)(64756008)(44832011)(55016002)(66476007)(76116006)(66446008)(6506007)(71200400001)(66556008)(52536014)(66946007)(83380400001)(5660300002)(8676002)(33656002)(478600001)(26005)(8936002)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?B/lqD6Xl2uRjcvSydO3IvQKoiFR0cvwiyn+R15Y+Nl7Lk0zZS22iT3umHDpO?=
 =?us-ascii?Q?idiCL0hMTNV2KBAjnPNusxGVgGNA+MN5lOtOKD+BNz/RjYXW1iybaSAWSuzT?=
 =?us-ascii?Q?QBSNZ2rjX+oC3LpM3soVbqZ/z20bVbDoSursvARw4j6uuTQj/02o3R4L9S8W?=
 =?us-ascii?Q?t8c5bpCVb88ab3b6nivzLKNbd3tpXV5KRtZJ6eJ8h2pvc2qCLdZetiTPG8Zv?=
 =?us-ascii?Q?zZwa2CODvNkCc04wVAwO1498Nz6MbKyyEDWX21gl5nn3oUQMm0ok9q8WUe9k?=
 =?us-ascii?Q?9nOIY+1e1e7AIfW5NOklYFzt5TS4c94VF6Eu8FxTal9xh58kGKvwlgAbDIw5?=
 =?us-ascii?Q?QdzAskmjDgxoPIqdzhYKIw39HXqlt7rmJderxMTNkrQhVJB3vBnIRyi96Ar4?=
 =?us-ascii?Q?u1OfqDx+4MOwbM0eWmlEJudhsUGh0TXOq6gmY3G6DXU2QfIKk8hJFLywdwMu?=
 =?us-ascii?Q?XWrPU0+3iypApvywvDT8LJI2vecVzOUxAxKR+rPH89SJ9FlS/saZiha8p6Ok?=
 =?us-ascii?Q?tRUGqIdoXqLGJ00EoHLHTC2J33kKFiuMcYiO0oLo2da7MTbify4UO53dyNXf?=
 =?us-ascii?Q?f9eKH+mmW1Vh1BsEEWxdBqu/hAiUbo+9CqgbR+0ecqdKuPjDfCPUUtv5/eDy?=
 =?us-ascii?Q?ddy/c44y55jF98EPLGpu88ay/NGcAe7+PKYn4oDSGjuScj3zu1TQM8UGkMcf?=
 =?us-ascii?Q?tm/j+8+Q/kZrzvteuNE5Im34sxFJOLB1CczOyqi853lOEAxnGCcl7Zm3cIav?=
 =?us-ascii?Q?lsaZGeQo53FoQsy8q7unmFFwZQAFiueYvhEP6l4SXLhcxzSOijsbICbrkv4Y?=
 =?us-ascii?Q?M+m/iT6SZilQZNiZJQG/KOZB0gFjOJmgVbSatpKxq0MeAEe45S5cb8yndcBy?=
 =?us-ascii?Q?1NdpABfjttyLw9DlU7l1RFh61Q5ta+xOZ6lm2uAns7mghSPgiXbUyl7eoUKv?=
 =?us-ascii?Q?uXcup3Q7ouSgjgEHk0QyD9VSjfX485MqtmhJUFDPt14=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nz.abb.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0602MB3487.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e8c3941-dea8-4a0a-f70d-08d8973de812
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2020 03:45:41.4591
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 372ee9e0-9ce0-4033-a64a-c07073a91ecd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RUOHconEbLJJuDAsqa9w7k3SraKOTeYfg0JCTN5wX6EOAEl25KK74jqiqIB5cAwVYLk5mtUmvQl8xWgOVd2Wm9htzvxTvnO29o4OCtIBqcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0601MB2495
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0602MB34879BEDC0B4831D84C6C3EADAF20VI1PR0602MB3487_"

--_000_VI1PR0602MB34879BEDC0B4831D84C6C3EADAF20VI1PR0602MB3487_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

In the bitbake user manual it has an example of how to set the variable val=
ue using the OVERRIDE variable

OVERRIDES =3D "architecture:os:machine"
TEST =3D "default"
TEST_os =3D "osspecific"
TEST_nooverride =3D "othercondvalue"

Lets say this is in the recipe called "test_0.1.bb" and we remove the OVERR=
IDES line from it

If we want to the OVERRIDES value to configure the recipe externally say in=
 local.conf as I do not want to change the recipe how would I do that?

Setting the OVERRIDES inside the same recipe seems limited it seems to give=
 me just an easy way of having all the options and selecting one. I could u=
se an append file to set it but I am sure it can be used in a better way.
I see in the Conditional Metadata section of the user manual there is anoth=
er example using KBANCH with different architures being set but it does not=
 explain how or were the OVERRIDES value is set.  Can some one explain how =
this works?

I have tried adding OVERRIDES_pn-test =3D "os" in the local.conf file but t=
his results in a mess  or errors

Thanks
Andrew


--_000_VI1PR0602MB34879BEDC0B4831D84C6C3EADAF20VI1PR0602MB3487_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">In the bitbake user manual it has an example of how =
to set the variable value using the OVERRIDE variable<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#333333">OVERRIDES =3D &qu=
ot;architecture:os:machine&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#333333">TEST =3D &quot;de=
fault&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#333333">TEST_os =3D &quot=
;osspecific&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#333333">TEST_nooverride =
=3D &quot;othercondvalue&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Lets say this is in the recipe called &#8220;test_0.=
1.bb&#8221; and we remove the OVERRIDES line from it
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If we want to the OVERRIDES value to configure the r=
ecipe externally say in local.conf as I do not want to change the recipe ho=
w would I do that?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Setting the OVERRIDES inside the same recipe seems l=
imited it seems to give me just an easy way of having all the options and s=
electing one. I could use an append file to set it but I am sure it can be =
used in a better way.<o:p></o:p></p>
<p class=3D"MsoNormal">I see in the Conditional Metadata section of the use=
r manual there is another example using KBANCH with different architures be=
ing set but it does not explain how or were the OVERRIDES value is set. &nb=
sp;Can some one explain how this works?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have tried adding OVERRIDES_pn-test =3D &#8220;os&=
#8221; in the local.conf file but this results in a mess &nbsp;or errors<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Andrew<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_VI1PR0602MB34879BEDC0B4831D84C6C3EADAF20VI1PR0602MB3487_--
