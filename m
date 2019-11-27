Received: from EUR03-VE1-obe.outbound.protection.outlook.com (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.76])
 by mx.groups.io with SMTP id smtpd.web10.1139.1574895404663329546
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 14:56:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@spinetix.com header.s=selector2 header.b=LAwuny/o;
 spf=pass (domain: spinetix.com, ip: 40.107.5.76, mailfrom: diego.santacruz@spinetix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LYgwXe1pYSDJSmSOGZxJcNehi6f989B5v3BpCCNdN0AzyVK5am6AwROyLUTvNG4ykuhWzxLT+md9cV5XPwewnT5HaIsKn4ku6Vm5WjQVRIX5dox9l72TUFBJJN9ZJecJ+BkUEzbYV0Zh51OrC/PqXQ16UVF1xSUcZR+NU6+5CzS0CbZlalewyelWihxz310pTtPDmVpeNwgrXGu4U9NjHT9RFZsG/9/7UKgvCt6nauBMyIFk592ROh4/29qG3zrOyHIjq8adOFpObEGKYfDPvDcV3BRQH20TJo/Ns4LqZCtNzOW97zOsPoQXeH0iCP6CTqW6ScNV8WYd9NqQgUMmvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=03WWCVKJZXpj1DS2Qoe1vwD/RPkGVwMgITPQvVbApm0=;
 b=jDWBcyMbZQ67CelYB5UDBhi4fguHuPO9mrEJJIZC/ZLdWsjq59IKh2u+Ph3MYbs8fPMEuHtTcVQID2l/oh008WvdEalIjO3yW6O6FMS39qxfeFE9c5/z3lpXjhPAkre8N+urzUjASRTbiRBfEbYiHNVRE8sz3piV32ZTFbXASZjJrZdfYoOGQWG3mG8Pn/jOQg6an85ERyUOZDdsCxnWhKnxxy7/lRYd0VgeWeJIhLIhpiqeV+1rHagnPLEoZ0uDLo84ZAuvCYYnda8WygV0xum51HvP8iroRnVTyqHl+HBPpP8RH5VUxZ3qd0Z0hKYPPJ6hnpwEWRcIkyvOTmFMYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=03WWCVKJZXpj1DS2Qoe1vwD/RPkGVwMgITPQvVbApm0=;
 b=LAwuny/ojwpbUX5QGl+lkgAMzeSEJAVkih61lUSe4bLekEYZXlIcdC5tuM7uvNi8Gg7Q8Il+jXysozTC15zMUvDVosYn4pe+rU/VMna9MnVzvXuQmng7Wp7buRf06BhCqWrvfPhUoxWb2CGgJchQ+86xfIDmiTUUFGDakcJRSmA=
Received: from DB7PR01MB5161.eurprd01.prod.exchangelabs.com (20.178.107.160)
 by DB7PR01MB4377.eurprd01.prod.exchangelabs.com (52.135.140.152) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.21; Wed, 27 Nov
 2019 22:56:40 +0000
Received: from DB7PR01MB5161.eurprd01.prod.exchangelabs.com
 ([fe80::e077:9893:49c1:bdf0]) by DB7PR01MB5161.eurprd01.prod.exchangelabs.com
 ([fe80::e077:9893:49c1:bdf0%3]) with mapi id 15.20.2474.023; Wed, 27 Nov 2019
 22:56:39 +0000
From: "Diego Santa Cruz" <diego.santacruz@spinetix.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Which layer is best for tpm2 stack
Thread-Topic: Which layer is best for tpm2 stack
Thread-Index: AdWlcj+pFY+xnJxWQbad3tCR4DjgXw==
Date: Wed, 27 Nov 2019 22:56:39 +0000
Message-ID: 
 <DB7PR01MB5161A4966BAC929095385B4488440@DB7PR01MB5161.eurprd01.prod.exchangelabs.com>
Accept-Language: en-GB, fr-CH, fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Diego.SantaCruz@spinetix.com; 
x-originating-ip: [83.79.97.41]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 375e46a8-2e55-4ca5-64f0-08d7738d104c
x-ms-traffictypediagnostic: DB7PR01MB4377:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: 
 <DB7PR01MB43770FED855CDCE29D4B056088440@DB7PR01MB4377.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 023495660C
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(39840400004)(396003)(346002)(376002)(366004)(136003)(189003)(199004)(66476007)(2906002)(99286004)(6116002)(66446008)(3846002)(81156014)(66556008)(8936002)(81166006)(790700001)(6506007)(86362001)(33656002)(74316002)(9686003)(6916009)(7736002)(8676002)(55016002)(6306002)(54896002)(25786009)(52536014)(2501003)(71190400001)(71200400001)(5640700003)(236005)(2351001)(9326002)(256004)(102836004)(14454004)(26005)(66066001)(64756008)(1730700003)(7696005)(66946007)(6436002)(606006)(14444005)(5660300002)(186003)(76116006)(316002)(508600001);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR01MB4377;H:DB7PR01MB5161.eurprd01.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:3;
received-spf: None (protection.outlook.com: spinetix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xJudPVjtEQjOdDAVu3QIu+myBjOycou044GGHZ+2lXVSbHCphtFqcMyfgvOTiiG+X1Ch6zbEHKMivGo/JKmKwdT/ERTdgvya0M3LhJy+vxhEmSnR1dYqcjTBQ+DWvbZXPZNyv0leAQZ+GSODv0qQhkH1hy9gRsRcOG6PQJk0CC7Tv0I9sXiuExiCYCAHjm/H8c4QNM29rgltfD21WbCy/HR8pNErNRROXexWiVzSGQ+JXNdTihjZG2081eDpfAVoF6UJ2W/wesgJW6UhjKyeu5I0nEvbv9z+fkgK+IIbK0gdcuFkHXnb0ZbViB74jj2r3YoaYquedmLIab8jsmQ0va9kRRdgOu6PZ+CWHZfLzQvyTRGKqlfppbaj+aiNYkBK9dv9O8qIBpzOKkkypIZRAQkP7zgc7Mb2bD4NG2AnAWb/WiNE8xFtepyG7je1rKuurA5SCVpUwBKu7A4PA3ZO57gMMGArbnTL9mGhwfo+ZL4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 375e46a8-2e55-4ca5-64f0-08d7738d104c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2019 22:56:39.5590
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ljLWhXeKf+6NXvm/PtD/px2Q6mpgH4/je/fCg0ZRfGw28nDGXzgMwGD7saNau3sctiMefLBLPGPbCKldDSj3d9BhfLtyQup3HHLiw2WIxh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR01MB4377
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB7PR01MB5161A4966BAC929095385B4488440DB7PR01MB5161eurp_"

--_000_DB7PR01MB5161A4966BAC929095385B4488440DB7PR01MB5161eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I need to use a TPM2 software stack for my project (tpm2-tools, tpm2-abrmd,=
 tpm2-tss, etc.), where I am already using Yocto, meta-intel, meta-oe, meta=
-networking, etc.

I see there are at least the following three layers that carry the necessar=
y TPM2 bits, with varying recipe versions.

  *   meta-tpm in meta-security repo (https://git.yoctoproject.org/cgit/cgi=
t.cgi/meta-security/)
  *   meta-tpm2 in meta-secure-core repo (https://github.com/jiazhang0/meta=
-secure-core)
  *   meta-measured (https://github.com/flihp/meta-measured)

My current objective is to use the TPM2 as a security chip from our softwar=
e (in the future we may extend its use to root fs encryption keys and the l=
ike). Are there any recommendations as to which of these layers would be mo=
re appropriate, is better maintained, etc.?

BTW, the meta-tpm layer in meta-security repo is not listed in the OpenEmbe=
dded Layer index, although meta-security itself and some of the other layer=
s in that repo are listed. Is that because of a name clash with the ones un=
der the meta-secure-core repo, which also carries layers named meta-tpm and=
 meta-integrity?

Thanks,

Diego
--
Diego Santa Cruz, PhD
Technology Architect
spinetix.com


--_000_DB7PR01MB5161A4966BAC929095385B4488440DB7PR01MB5161eurp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
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
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1711883202;
	mso-list-type:hybrid;
	mso-list-template-ids:1580730678 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I need to use a TPM2 software stack for my project (=
tpm2-tools, tpm2-abrmd, tpm2-tss, etc.), where I am already using Yocto, me=
ta-intel, meta-oe, meta-networking, etc.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I see there are at least the following three layers =
that carry the necessary TPM2 bits, with varying recipe versions.<o:p></o:p=
></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1">meta-tpm in meta-security repo (<a href=3D"https://git.yoctoproject.o=
rg/cgit/cgit.cgi/meta-security/">https://git.yoctoproject.org/cgit/cgit.cgi=
/meta-security/</a>)<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D=
"margin-left:0cm;mso-list:l0 level1 lfo1">meta-tpm2 in meta-secure-core rep=
o (<a href=3D"https://github.com/jiazhang0/meta-secure-core">https://github=
.com/jiazhang0/meta-secure-core</a>)<o:p></o:p></li><li class=3D"MsoListPar=
agraph" style=3D"margin-left:0cm;mso-list:l0 level1 lfo1">meta-measured (<a=
 href=3D"https://github.com/flihp/meta-measured">https://github.com/flihp/m=
eta-measured</a>)<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My current objective is to use the TPM2 as a securit=
y chip from our software (in the future we may extend its use to root fs en=
cryption keys and the like). Are there any recommendations as to which of t=
hese layers would be more appropriate,
 is better maintained, etc.?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BTW, the meta-tpm layer in meta-security repo is not=
 listed in the OpenEmbedded Layer index, although meta-security itself and =
some of the other layers in that repo are listed. Is that because of a name=
 clash with the ones under the meta-secure-core
 repo, which also carries layers named meta-tpm and meta-integrity?<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Diego<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-=
serif">--
<br>
<b>Diego Santa Cruz, PhD<br>
</b><span style=3D"color:gray">Technology Architect<br>
spinetix.com</span></span><span style=3D"font-size:12.0pt;font-family:&quot=
;Times New Roman&quot;,serif;color:gray"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DB7PR01MB5161A4966BAC929095385B4488440DB7PR01MB5161eurp_--
