Received: from FRA01-PR2-obe.outbound.protection.outlook.com (FRA01-PR2-obe.outbound.protection.outlook.com [40.107.12.80])
 by mx.groups.io with SMTP id smtpd.web11.16049.1598525224273074148
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Aug 2020 03:47:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=tzUqyQ6e;
 spf=pass (domain: niko.eu, ip: 40.107.12.80, mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NsfFpdfvoDZOW1NUpYnJ0127yQlNriYm0JPExyHdBUyHRijVkrjAgRiWF8ntWnAQBhZ/DTnt/a80jcqlzjy1x1gM/ftKAzu1vCDNp2Zj+6viuzq+T74tUFfPGx1RfUl5AvVzSWqQP++AG8qDD2C6g3YDaJqrQBbX5oN41+poRA9r8nf5nOMiskBKu2z7YG2h0Bvc7bv6iVToV3SRzdhFLqi9ec6P2yW7msUiKDKfoRrTWre+ZEd5579D4ZArrtOHuwcXDW773GtHm4h8+gt6Il6ZUJoOqpwOnoFxW97ugGSUpORW4wzU2f92B3kieq0HgEvjt+R8QPzdgbXY7pxVpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8ic14gpDYFBLrT3IKlBeNRPJGwJhRAdnUpeaDptiLI=;
 b=EQbqZNuhFb/w1h/R2qIFGVPMMXO/66EytRSrzo8exRq/JjnJtWo4+vnLk3QtaURyMc/MOZhA3ahArdk9RbHDqzGUWIJuL5hZAqi0+Y/oUl/PZEoDB4alCk69oTpmNESNJIeCc6/cGumDWq2M4qJYBDH3Kn3z7rbyDkKMrk8/8JXdBf7uXvihx0bQ8k0gYAJzuVF1jXUAh9h6bvHUFG9CC0RM621M0NIDaIXBTeGGohPpxnbIhquUgCyr39c1q4coXX/z7Ie/i3XI/OFEXg2xbZBqBj7NqSy8Z/QWa7MFsVsk+P7Bl4sS1C2X1LMPWVEHbQaWSR7zRSuvJVLb8tko9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8ic14gpDYFBLrT3IKlBeNRPJGwJhRAdnUpeaDptiLI=;
 b=tzUqyQ6e7Ob2FzTcIVQRJAM08DbYQiUjBJB8eEnlj/5bRBpDIgBsl4kNLMGfPEBKeOxWf1mkal7RYUmskeEARrNuBkbv5Zd4gGOU1wC8T9ft22Q5s1Fd3vOQFz8cKfpXKg8WFvQh1CHNOVElAL0wx84D67dKKMo2wAJ00uHXg2Y=
Received: from PR2PR08MB4651.eurprd08.prod.outlook.com (2603:10a6:101:1c::10)
 by PR2PR08MB4892.eurprd08.prod.outlook.com (2603:10a6:101:24::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.25; Thu, 27 Aug
 2020 10:47:01 +0000
Received: from PR2PR08MB4651.eurprd08.prod.outlook.com
 ([fe80::e9:a178:7f75:48c1]) by PR2PR08MB4651.eurprd08.prod.outlook.com
 ([fe80::e9:a178:7f75:48c1%4]) with mapi id 15.20.3261.026; Thu, 27 Aug 2020
 10:47:01 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: devtool add <npmmodule> ignores "devDependencies" from package.json when generates npm-shrinkwrap.json file
Thread-Topic: devtool add <npmmodule> ignores "devDependencies" from
 package.json when generates npm-shrinkwrap.json file
Thread-Index: AdZ8XcXi9MQZrVMUQJSSCxrVlimgQQ==
Date: Thu, 27 Aug 2020 10:47:01 +0000
Message-ID: 
 <PR2PR08MB4651C91870E245E47710A7388B550@PR2PR08MB4651.eurprd08.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=niko.eu;
x-originating-ip: [46.222.242.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd997050-6a7d-486e-7ed9-08d84a76879b
x-ms-traffictypediagnostic: PR2PR08MB4892:
x-microsoft-antispam-prvs: 
 <PR2PR08MB489218301C0B97E1B50FE2008B550@PR2PR08MB4892.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uBTLggDL7Kd82d7iJP5j2QjQhbYEW7EqaO8I+kQCh8CUq6H/IaVkpUG05z2ApZ2bGnw6kmJcE9aTt9DZvbc3RyHV/SSQRSJsGfruD93V2oOMV0Pg+4+SJWXon9CeZcOoOqadsEfQ8dMD+gwsx+ViltK5d0ZV9YYLb66GTtMdoV+c1YdTUR6/j9ACl9vavJpa7uDbx+SDvMYkRiJDvgwsopgPXdOSJwzqqA8L/FZBllwDehjAr6Kr30+cL0sKuAOn4oGn4/YCqC2+lbR/94yjtgiJpDUykY6YCCK62ZtWJcjIcHv/LKAA1PtxjcLkfpn3Sxc80LJSxwkZ0PdHYvSJXA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR2PR08MB4651.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(396003)(366004)(39850400004)(136003)(9686003)(55016002)(66446008)(66556008)(76116006)(64756008)(66476007)(26005)(6506007)(71200400001)(8936002)(186003)(7696005)(8676002)(66946007)(6916009)(478600001)(2906002)(52536014)(5660300002)(33656002)(316002)(4744005)(83380400001)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 V2m4iSGJ3zVq0sykMT4PbfqNbw3h0CNrhdNttZIj7/P9wrHWRsh2SklhE6EGejkhtVaCuTJdbfOf2WKGLZC2zXa2gOmm62rFiC7IyugSLnqEKOWdhRRx3T0egZIwFxFBbNB2UX/zfpWnMDNXf0xnrGf8T4lQK05LfPoNKyp9YrXfRIhazND2xpj5g8G2uudQR8SKZqGG8dywtbQNJz9jsT+ue/wBKjNHn1vXrP9Xoq+3xvNX25AAcXl+sf0HliD4nD44eylNr3DxaMReaXpGvrEhVmCGxzeCK2e//mUNgh4ir9EyVN9y6Uv80V8k3mANoWfvKUMyqti/iu8QL1KYdBITltEWz72jZr/PUYUYMq/JOt9VTKgI3NWDbRIzm9KW66cHVbQrwX0MlpcKCG7t1VXEk+MJHGOD4Bqk90h+86fYaRlqticAd6VO5MSi4Nrxf0pINmseh8hupMAhh0SC4Uqw+/+lmN9HayFrYCh7A6PO4Ac1x7pBMHJtOuxuWM+OHrth0PXvezTo7Yfjqqv3p9pR/vZltrMFMgrQaLZer2fLLioUaaF4o77r0m4ocKIXTrdBJ6M+1pOUCOkepXzZHdenwai5kdjkotD4DyFy9yNoAItvnhIPHeSLksVDpIVYxOPUGZqiqQGlRAN8l8Is7g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR2PR08MB4651.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd997050-6a7d-486e-7ed9-08d84a76879b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2020 10:47:01.3037
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TL7Yf/f2HmwEewnNvit8qJPU5CqjZWaRaysyT1oVopwd0vF86GJTHg8T5JLdMDfT3JKPXYZ12OZ6/wjIYVM2hPKEkKU2nLcSMVISgH+d7EY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4892
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PR2PR08MB4651C91870E245E47710A7388B550PR2PR08MB4651eurp_"

--_000_PR2PR08MB4651C91870E245E47710A7388B550PR2PR08MB4651eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Trying to create a recipe from scratch with "devtool add" tool, a npm-shrin=
kwrap.json file is created from reading of package.json from the module tha=
t is going to be installed.

The building goes fine but I can't run the application in the target becaus=
e nodejs misses the modules placed in "devDependencies" from package.json.
I have tried to include NPM_INSTALL_DEV =3D "1" in the recipe but I get an =
error because the modules that appears in "devDependencies" from package.js=
on are not included in npm-shrinkwrap.json.

There is any way to regenerate npm-shrinkwrap.json with devtool taking in a=
ccount devdependencies or a way to create npm-shrinkwrap.json with "devtool=
 add" in a way that takes in account devDependencies?

Regards
Jose

--_000_PR2PR08MB4651C91870E245E47710A7388B550PR2PR08MB4651eurp_
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Trying to create a recipe from =
scratch with &#8220;devtool add&#8221; tool, a npm-shrinkwrap.json file is =
created from reading of package.json from the module that is going to be in=
stalled.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The building goes fine but I ca=
n&#8217;t run the application in the target because nodejs misses the modul=
es placed in &#8220;devDependencies&#8221; from package.json.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have tried to include NPM_INS=
TALL_DEV =3D &quot;1&quot; in the recipe but I get an error because the mod=
ules that appears in &#8220;devDependencies&#8221; from package.json are no=
t included in npm-shrinkwrap.json.
<br>
<br>
There is any way to regenerate npm-shrinkwrap.json with devtool taking in a=
ccount devdependencies or a way to create npm-shrinkwrap.json with &#8220;d=
evtool add&#8221; in a way that takes in account devDependencies?<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Jose<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_PR2PR08MB4651C91870E245E47710A7388B550PR2PR08MB4651eurp_--
