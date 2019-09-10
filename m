Return-Path: <mvelasco@aertecsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D279FE00D84; Tue, 10 Sep 2019 02:44:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.14.42 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr140042.outbound.protection.outlook.com [40.107.14.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 378A5E003E1
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 02:44:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=ahqQJiDo//HS5mEZ8sWtkpwgkor6dSZ3vzsicFs1egT+Zo71QLz5FMylGuTxR2vGLs5FZgUmXNV79skhrxvC0HwERCeUXNeEJJS/ze8DXueIoaAtPMr0DUx3ZV8n+DxF7QmCi3GkIfQEZGG8noUj6/8o6+Mc4XtmXvlpMJA6W++ZGD3JRlxvlyQ2RGlH72aXgICq30bC6Au4rbFKj20qFvEwAafBSFapnDg+KyDlCDFmPXAR7IsX0h9Jk1TLLEGR3FRQ4zE2PuONewOQU87HxzqrB88XXorUTMYX1OezsQnDoFT/ZJ2woIahMz9riIicFrZZUeHj1pANUastdLRfbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=CLeadtmpBmFqlvE9y4CK/6dfHUebCNQSfjXRMTR9mPE=;
	b=GSV3VSS3OFbIDaRsLa5kiPobTAHsFil/FdI0TX6JnD0sFyi7Yw96ScqC6i8kw8H0CRXo2ZZf91CdXsNWfJsRaaNz4oXAKREuJVK3jczh7y8XkLqMci48A3BuFqEX+l9dKXqjeHiPBc8vfPrvdNVF/KNxRvehGMEOidQ+nf+++CYhzZbMzhKCpgQJ1zTQL4MZP8bMqtXgv7OUgmDjGcDdmDTZ13L6G5dsXaN9fAgrdcEydbY8f1EbJVVYE+6D3nRqtu9vAf2fPPIPxtx4ejzU44dDdsOGTfEXOltmpvMxNEo1Gcc9u/hTY8iV2tmuq7Kb4W0C/lDzmkvRbFyrl/mcZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=aertecsolutions.com; dmarc=pass action=none
	header.from=aertecsolutions.com; dkim=pass header.d=aertecsolutions.com;
	arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=aertec.onmicrosoft.com; s=selector2-aertec-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=CLeadtmpBmFqlvE9y4CK/6dfHUebCNQSfjXRMTR9mPE=;
	b=t0Ob+ex7Wu3QAnhmeB/mBdd9jE+QeHSDDZPBbmioajLlamnI/gM/AHTBREG690k/htAp24dC0CaxsMnUmu+TBp+IR46jAjflPaP2wuC8sDN5lvMTV4f1l7sueVgoHxblT5L8HsbV137sOV1TU5vLROImKk7NoYzCaBh015+nTDE=
Received: from AM0PR09MB4066.eurprd09.prod.outlook.com (10.186.131.71) by
	AM0PR09MB2884.eurprd09.prod.outlook.com (20.178.118.154) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2241.18; Tue, 10 Sep 2019 09:44:20 +0000
Received: from AM0PR09MB4066.eurprd09.prod.outlook.com
	([fe80::48d6:a616:fa54:bcd2]) by
	AM0PR09MB4066.eurprd09.prod.outlook.com
	([fe80::48d6:a616:fa54:bcd2%2]) with mapi id 15.20.2241.018;
	Tue, 10 Sep 2019 09:44:19 +0000
From: =?Windows-1252?Q?Mar=EDa_del_Mar_Velasco_AERTEC_Solutions_=96_Aerospace_?=
	=?Windows-1252?Q?=26_Aviation?= <mvelasco@aertecsolutions.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: incohenrence between defconf, .config and /proc/config.gz
Thread-Index: AdVkjhqPUNjLy42xQOmzmeHDxxKLqwDLSiAg
Date: Tue, 10 Sep 2019 09:44:19 +0000
Message-ID: <AM0PR09MB4066729BBE9B88AE768A14E9D7B60@AM0PR09MB4066.eurprd09.prod.outlook.com>
References: <AM0PR09MB4066613CAEC7FB9A7434EECFD7BA0@AM0PR09MB4066.eurprd09.prod.outlook.com>
In-Reply-To: <AM0PR09MB4066613CAEC7FB9A7434EECFD7BA0@AM0PR09MB4066.eurprd09.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mvelasco@aertecsolutions.com; 
x-originating-ip: [46.25.25.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d82694d6-9ed1-4cec-bdd2-08d735d3742f
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:AM0PR09MB2884; 
x-ms-traffictypediagnostic: AM0PR09MB2884:
x-microsoft-antispam-prvs: <AM0PR09MB288458E04A9126BE36A49E01D7B60@AM0PR09MB2884.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01565FED4C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(366004)(376002)(346002)(136003)(396003)(39850400004)(51874003)(199004)(189003)(53754006)(64756008)(54896002)(99286004)(14454004)(256004)(316002)(6916009)(66476007)(66556008)(76116006)(5660300002)(19627235002)(6436002)(2501003)(71190400001)(71200400001)(66946007)(9686003)(5640700003)(446003)(11346002)(86362001)(81156014)(8676002)(26005)(7696005)(1730700003)(476003)(229853002)(66446008)(6306002)(45776006)(53936002)(33656002)(6506007)(102836004)(186003)(76176011)(66066001)(486006)(2351001)(52536014)(6116002)(3846002)(790700001)(2906002)(81166006)(8936002)(74316002)(478600001)(7736002)(55016002)(25786009)(6246003)(21314003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR09MB2884;
	H:AM0PR09MB4066.eurprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: aertecsolutions.com does not
	designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lIc4P7KV5D1FVHNmx0ZgNJHXtfWXTD1Ez69laOaTib/8iOvjrL2xp4890SX/PPf4oAh+EoLSAaXMVSPkfZcJKHeLlhmx50L5hr5KtEal6qUBSqe4VYYIWfoSKHaLhCADaGrGG2FSSV83sEa+9/jkv9nyIz1bS4iiq9yYZB5hxb6GZUMRzJ01tU/u+LH2mCtaGwytTwfJdIR0c0kTHnhRdUk1bXZOf4Q2bdwQryLCznQKiHthDJ8jG2Ariwu6D1ApKSG9xW6lihaV4Cqj0OgywzvZKos+ZXqLfluPS7qZ07F+XkRMHMalHrdW91sg6rHtemAu+uI+pXIzd9XNKQhYlZ8WrNrepoPKr6XjChdkKYLli0UX7TnVpyolHF6rCP/3cDs/VtuGkfTHjYRj4Vr8IWVFKdhz8JmBv7uTY2gztMw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aertecsolutions.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d82694d6-9ed1-4cec-bdd2-08d735d3742f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2019 09:44:19.8100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ab98a94e-6e04-48d7-be01-b54a8cfe74b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ky8sBsh2r5lmDPxHGriNugPxIcU/TqL/caBLmvV7JCKAEUjbkuDsFRtnGOvwdOzbrwVXMRxOKJlaBF3WKS2dxMJWcIDYMovj6+4Jz5xiCk4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB2884
Subject: Re: incohenrence between defconf, .config and /proc/config.gz
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
X-List-Received-Date: Tue, 10 Sep 2019 09:44:24 -0000
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_AM0PR09MB4066729BBE9B88AE768A14E9D7B60AM0PR09MB4066eurp_"

--_000_AM0PR09MB4066729BBE9B88AE768A14E9D7B60AM0PR09MB4066eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello all,

I have found that if I write the image using the created *.wic file, kernel=
 config is correctly updated (/proc/config.gz and .config are coherent). Ho=
wever if I use the created *.ext4 file to write a rootfs partition of targe=
t, previous kernel config still remains (kernel config used when target was=
 written for first time using *.wic file still remains).

Any idea about how to keep kernel config updates in *.ext4 file?

Thanks in advance

De: Mar=EDa del Mar Velasco AERTEC Solutions =96 Aerospace & Aviation
Enviado el: viernes, 6 de septiembre de 2019 10:50
Para: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
Asunto: incohenrence between defconf, .config and /proc/config.gz

Dear all,

I have built an image after doing changes in kernel config by adding a laye=
r that adds lines in .config file. This changes lead me to an undesired con=
figuration, so I decided to undo the last kernel config. When I remove the =
layer that adds lines in .config file, I ensure that kernel is clean by doi=
ng bitbake -c cleanall linux-xxx. Then I build again the image. I can see .=
config file is exactly equal than defconf kernel file. However, when I writ=
e image into the target, /proc/config.gz file is inconsistent with .config =
file and it preserves some lines that are missing in .config file.

Could somebody give me an advice about this issue? Why /proc/config.gz is n=
ot equal than .config file?

Thanks in advance

--_000_AM0PR09MB4066729BBE9B88AE768A14E9D7B60AM0PR09MB4066eurp_
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
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EstiloCorreo18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EstiloCorreo19
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
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have found that if I write the image using the cre=
ated *.wic file, kernel config is correctly updated (/proc/config.gz and .c=
onfig are coherent). However if I use the created *.ext4 file to write a ro=
otfs partition of target, previous
 kernel config still remains (kernel config used when target was written fo=
r first time using *.wic file still remains).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any idea about how to keep kernel config updates in =
*.ext4 file?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"ES" style=3D"mso-fareast-language:E=
N-GB">De:</span></b><span lang=3D"ES" style=3D"mso-fareast-language:EN-GB">=
 Mar=EDa del Mar Velasco AERTEC Solutions =96 Aerospace &amp; Aviation
<br>
<b>Enviado el:</b> viernes, 6 de septiembre de 2019 10:50<br>
<b>Para:</b> 'yocto@yoctoproject.org' &lt;yocto@yoctoproject.org&gt;<br>
<b>Asunto:</b> incohenrence between defconf, .config and /proc/config.gz<o:=
p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Dear all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have built an image after doing changes in kernel =
config by adding a layer that adds lines in .config file. This changes lead=
 me to an undesired configuration, so I decided to undo the last kernel con=
fig. When I remove the layer that
 adds lines in .config file, I ensure that kernel is clean by doing bitbake=
 -c cleanall linux-xxx. Then I build again the image. I can see .config fil=
e is exactly equal than defconf kernel file. However, when I write image in=
to the target, /proc/config.gz file
 is inconsistent with .config file and it preserves some lines that are mis=
sing in .config file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Could somebody give me an advice about this issue? W=
hy /proc/config.gz is not equal than .config file?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance<o:p></o:p></p>
</div>
</body>
</html>

--_000_AM0PR09MB4066729BBE9B88AE768A14E9D7B60AM0PR09MB4066eurp_--
