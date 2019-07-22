Return-Path: <mvelasco@aertecsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16473E00D63; Mon, 22 Jul 2019 04:25:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.14.87 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr140087.outbound.protection.outlook.com [40.107.14.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42E32E00BE6
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 04:25:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=JN7+q00z+ojybP9HdvUYznqElZbVdZN1SXCJv3uEjtf5X+2IzlpSYoyoJJyb24FC7snBUfOV865a70KXZVWP3sCcaSh1taJfGuSmLyIZ0rtMr3/Sk9GeBrpZ6nvndPs8pZK9WpFoz69cTRh/DhodntmNl/0asI1LULGCeGIjkkiGYS2juQyvIeGGScsBoKl7pVRh1No+AkMKkHk00SNyhjfbwEPkrBfbNOQMBRmuzCgYSYGf1IS5yhH2N93yKb7x/3xCBGPGr3dBan2O9ScXUFfxA2Uk/BHqfwztUmLcLdCL89jwDDp25rrauugCBg72JSSVCzwcYNvI6JC1Zu+2WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=/q3oToh4lZe38vY5XvsSJMrtCfcvrjwl5DLOj1YDBgc=;
	b=WixOMpjh6+yNiKiVBH/ge6s7CgvYIuoJOh3rygP/wf33JsW9Ecw/EhBZttPzgS8UTyA+b5XU+lZ7gK+ncOf3fE8gWSj/jQk9oipIx0BZ74yAW3/E/UX9dOdYpk2WGB58XKe2ncqD94YwvH0fT/4GD1SFNwB27uWChAXBBmg9ek4dWlNUU5VHfzi56qJZcnWthsEmDblh2tTsxnDd1/FgMqg8iVNiLiqw0opEK/LebFD50yejoDKXaU4lx3RuzhFGRUOCfVj8LpbZGFlSY0c6JzSJXMYwBtDK3wwvWFgkEdBnWCCpCnVCLWGCZYvAtXJ+ZBbKYyJe4CtyCGukUZIfgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=aertecsolutions.com;dmarc=pass action=none
	header.from=aertecsolutions.com;dkim=pass
	header.d=aertecsolutions.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=aertec.onmicrosoft.com; s=selector2-aertec-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=/q3oToh4lZe38vY5XvsSJMrtCfcvrjwl5DLOj1YDBgc=;
	b=Fiag/V2YhKk5AXML4GWCl2zp8k9zpBWRHfKPRf7CZi7sAc7aylp/hY27iAcsaPyOPIg2RZKuoZTep6A/MjOPPwOH49xwLsYcO+GSZssxJM606PjFOw0C0KGqhXSz1XjXqxYQ9Vl4zUooED3SsOCrFAkqdFBp2z25SWFkdFClBEc=
Received: from AM0PR09MB4066.eurprd09.prod.outlook.com (10.186.131.71) by
	AM0PR09MB3666.eurprd09.prod.outlook.com (52.132.213.82) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2094.17; Mon, 22 Jul 2019 11:25:13 +0000
Received: from AM0PR09MB4066.eurprd09.prod.outlook.com
	([fe80::b4ed:ee1a:3ea1:c7ca]) by
	AM0PR09MB4066.eurprd09.prod.outlook.com
	([fe80::b4ed:ee1a:3ea1:c7ca%3]) with mapi id 15.20.2094.013;
	Mon, 22 Jul 2019 11:25:13 +0000
From: =?Windows-1252?Q?Mar=EDa_del_Mar_Velasco_AERTEC_Solutions_=96_Aerospace_?=
	=?Windows-1252?Q?=26_Aviation?= <mvelasco@aertecsolutions.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] ERROR: Actual rootfs size is larger than allowed
Thread-Index: AdU+IjU1BCxGWT8RTvqRgQEQttLEMAAHpnaAAIdtFtA=
Date: Mon, 22 Jul 2019 11:25:13 +0000
Message-ID: <AM0PR09MB40661845D52FD98BFA97D6AFD7C40@AM0PR09MB4066.eurprd09.prod.outlook.com>
References: <AM0PR09MB4066402C6F9DCEC298A30B89D7CB0@AM0PR09MB4066.eurprd09.prod.outlook.com>
	<b523de05-b217-4faa-4e7c-bd8bcfcf26e5@gmail.com>
In-Reply-To: <b523de05-b217-4faa-4e7c-bd8bcfcf26e5@gmail.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mvelasco@aertecsolutions.com; 
x-originating-ip: [77.230.158.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2b0a353f-aa6b-4796-0a47-08d70e97438d
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:AM0PR09MB3666; 
x-ms-traffictypediagnostic: AM0PR09MB3666:
x-microsoft-antispam-prvs: <AM0PR09MB3666AF456A1CF332D7D1B0A2D7C40@AM0PR09MB3666.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39840400004)(189003)(199004)(316002)(14454004)(74316002)(256004)(19627235002)(53936002)(4270600006)(33656002)(5660300002)(9686003)(55016002)(6306002)(54896002)(8936002)(81156014)(81166006)(8676002)(71200400001)(71190400001)(68736007)(6246003)(6436002)(7736002)(25786009)(99286004)(446003)(476003)(11346002)(2501003)(52536014)(486006)(790700001)(6116002)(102836004)(229853002)(76116006)(26005)(558084003)(186003)(6506007)(66066001)(45776006)(66446008)(64756008)(66476007)(66556008)(66946007)(7696005)(76176011)(2906002)(86362001)(478600001)(110136005)(3846002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR09MB3666;
	H:AM0PR09MB4066.eurprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: aertecsolutions.com does not
	designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IUEaCrLpu/fdzvV7VRkw61+rGzBPdsbKJf7v+cof4GuM5hRDpfApq74nMpyUl4rMjQz6CxDiSROOTCAbudPZdPx5Z/b59cbuM0cIBuDvgJWx7N6TZu5reeoTRYKivxmRj7JNPJORLCPwy1DiSCrl/2XPlPQIKG5E41fgYJlLA2SbQzKAQ1hikVLyXx+gJL4ApStKmponTM6v2QFTm+R4rxLhTHOD9dsLL8mDdibFXcOCj1vNo9tLRT10MW33NXLYmYnR9LoWLFPf4lUYmTRcLYDF5x7kmxpgmxdkgX0eDjku1X6GmvpS0rCYxg2eu8WkHHmFq8ds58JiW7kfcME+DIVBeP9KvAu7/I7mm6OipAjbnQCcmetj8vyzTNqAH1xuzT4fI4M+J9ejeOn57ihOgeUKeMViRocSaCaKghddszM=
MIME-Version: 1.0
X-OriginatorOrg: aertecsolutions.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b0a353f-aa6b-4796-0a47-08d70e97438d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 11:25:13.1080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ab98a94e-6e04-48d7-be01-b54a8cfe74b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mvelasco@aertecsolutions.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB3666
Subject: Re: ERROR: Actual rootfs size is larger than allowed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Jul 2019 11:25:20 -0000
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_AM0PR09MB40661845D52FD98BFA97D6AFD7C40AM0PR09MB4066eurp_"

--_000_AM0PR09MB40661845D52FD98BFA97D6AFD7C40AM0PR09MB4066eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable


Thanks you very much for your reply! You=92ve helped me a lot!

Grateful

--_000_AM0PR09MB40661845D52FD98BFA97D6AFD7C40AM0PR09MB4066eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	color:black;
	mso-fareast-language:EN-US;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
span.EstiloCorreo19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EstiloCorreo20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body bgcolor=3D"white" lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>&nbsp;</o:p></=
span></p>
<div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Thanks you very muc=
h for your reply! You=92ve helped me a lot!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext;mso-fareast-language=
:EN-GB">Grateful<o:p></o:p></span></p>
</blockquote>
</div>
</div>
</body>
</html>

--_000_AM0PR09MB40661845D52FD98BFA97D6AFD7C40AM0PR09MB4066eurp_--
