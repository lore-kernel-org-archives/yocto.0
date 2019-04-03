Return-Path: <johann.obermayr@sigmatek.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9441AE00CEE; Wed,  3 Apr 2019 18:24:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.14.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 18056 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Apr 2019 18:24:39 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr140103.outbound.protection.outlook.com [40.107.14.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27EC6E00CD6
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 18:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigmatek.at;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=L1ywrI1u+kkbLZWTi3lYSW+OQc559Yu+6lkOGX6xhQA=;
	b=FPCYFjHUGQBSzFTxEHfi89GI87ac3wQuQqyA/KnqYuiOzchlVXpGiXBFrUPa+0YhdYVI4yRE3kRNumWLAdxCqO5BFc0TIsqTGj8v6Xtjyln6lqId1tO/Ym2hSx9rrHrJ9IEuiFSHTHJmqdv2yhXACCf3EjUU6H1k70cN+cT06O8=
Received: from AM6PR08MB3366.eurprd08.prod.outlook.com (20.177.113.224) by
	AM6PR08MB3397.eurprd08.prod.outlook.com (20.177.112.222) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1750.17; Wed, 3 Apr 2019 18:50:12 +0000
Received: from AM6PR08MB3366.eurprd08.prod.outlook.com
	([fe80::501f:cd56:27ca:c6dc]) by
	AM6PR08MB3366.eurprd08.prod.outlook.com
	([fe80::501f:cd56:27ca:c6dc%5]) with mapi id 15.20.1750.014;
	Wed, 3 Apr 2019 18:50:12 +0000
From: Johann Obermayr <johann.obermayr@sigmatek.at>
To: "yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: grub-efi
Thread-Index: AdTqTTqLo5vfs3k0S06Ak/fm7xoKXA==
Date: Wed, 3 Apr 2019 18:50:12 +0000
Message-ID: <AM6PR08MB33665CAE79E2E27832B78647F5570@AM6PR08MB3366.eurprd08.prod.outlook.com>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=johann.obermayr@sigmatek.at; 
x-originating-ip: [83.215.235.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a0416b5-0173-4eb6-d742-08d6b86533ff
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600139)(711020)(4605104)(2017052603328)(7193020);
	SRVR:AM6PR08MB3397; 
x-ms-traffictypediagnostic: AM6PR08MB3397:
x-microsoft-antispam-prvs: <AM6PR08MB33971259AC16401558D94437F5570@AM6PR08MB3397.eurprd08.prod.outlook.com>
x-forefront-prvs: 0996D1900D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39840400004)(136003)(366004)(346002)(396003)(376002)(199004)(189003)(55016002)(476003)(6306002)(54896002)(9686003)(4744005)(102836004)(478600001)(25786009)(316002)(110136005)(53936002)(6436002)(68736007)(5660300002)(66066001)(74482002)(86362001)(486006)(2906002)(450100002)(44832011)(2501003)(81156014)(186003)(8936002)(71190400001)(256004)(7696005)(99286004)(19627235002)(8676002)(71200400001)(26005)(52536014)(3480700005)(97736004)(81166006)(6506007)(14454004)(105586002)(106356001)(6116002)(790700001)(3846002)(7736002)(74316002)(33656002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR08MB3397;
	H:AM6PR08MB3366.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sigmatek.at does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kdsfKWOpYovyubf/fLaPQCoZ2wzIYmHIoDwhJY4+f3ShednSTAuNBVzm+ZLYesWHDepgeGORnI2ERd4HHIslZSkWkOC5YTxiGueQ8wDEgDSU6CJS5R1AlLvGrP9OhMEEMR9oXYVuXWHNe5P7WQKNjfxRd1a3W9AQdgTflMIjtvBLH0pSzKbDJ9SHzRsuD8ru4YaBvGQ4J34AlSEtzyNMu0dpcFrmsMdFxDDWdMSQ2vXRjZOLokO2bcmryzqkVSseWRbl6m49Oy5IFGyH9uf77Ple0GmWE9ZBmEtFzSGefPXHQODl28a7dyAQSSqT96lbmI+wZ4Jsir27gu91YLHSJdzDCU6Gu4HoYz8sCSmNSv1YvP4h2dg57Bt3SqTOthbCb3PC7RzWPOkru6hetRMMKi3H5u+3RmhCdAGOwovgcDI=
MIME-Version: 1.0
X-OriginatorOrg: sigmatek.at
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a0416b5-0173-4eb6-d742-08d6b86533ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2019 18:50:12.2816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bcb1d87a-d2bc-486e-a62b-9ac9c746bc1b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3397
Subject: grub-efi
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
X-List-Received-Date: Thu, 04 Apr 2019 01:24:41 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM6PR08MB33665CAE79E2E27832B78647F5570AM6PR08MB3366eurp_"

--_000_AM6PR08MB33665CAE79E2E27832B78647F5570AM6PR08MB3366eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

now i build a wic image. This has bootia32.efi included.

How can I add bootx64.efi & legacy bios boot ?

Because the image must boot on different x64 machines.
One machine has only efi 64 bit boot support.
Another (older) has  only legacy boot support.

After create a image I have copy grubx64.efi  from a ubuntu installation to=
 my disk into /EFI/BOOT/bootx64.efi
And now it will booting.

We will have a 32 bit system, but only the kernel must be a 64bit.
Xenomai only support 64bit x86.
But our user space application must be 32bit.

Mit freundlichen Gr=FC=DFen / Best regards
                Johann Obermayr

--_000_AM6PR08MB33665CAE79E2E27832B78647F5570AM6PR08MB3366eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">now i build a wic image. This h=
as bootia32.efi included.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">How can I add bootx64.efi &amp;=
 legacy bios boot ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Because the image must boot on =
different x64 machines.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">One machine has only efi 64 bit=
 boot support.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Another (older) has &nbsp;only =
legacy boot support.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After create a image I have cop=
y grubx64.efi &nbsp;from a ubuntu installation to my disk into /EFI/BOOT/bo=
otx64.efi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And now it will booting.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We will have a 32 bit system, b=
ut only the kernel must be a 64bit.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Xenomai only support 64bit x86.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But our user space application =
must be 32bit.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE">Mit freundli=
chen Gr=FC=DFen / Best regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE">&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; Johann Obermayr<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_AM6PR08MB33665CAE79E2E27832B78647F5570AM6PR08MB3366eurp_--
