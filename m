Return-Path: <JAEWON@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7969AE00C77; Thu, 14 Feb 2019 19:05:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.82.70 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 5110 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Feb 2019 19:05:55 PST
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr820070.outbound.protection.outlook.com [40.107.82.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8183AE00B43
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 19:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=6iiqpi97X7qhwX2W7L13NvynaSbj9wDG4+tjfaWNGAI=;
	b=3io1i3IYTqoj0qtjgvXBZLIfETp1ag4UqUj3RBZXu5f0QxVh7ryx9M/xF/vPTt76wV6QrXktvZKFb0caZbuzfskkcQt6EIVL498LBbRKpJ1GPb1jIasaK0etcJD08sbs5Eiv5D4WefGr53EtXrLCpYgxYT93I+ovGMGWJtUQ7po=
Received: from MWHPR02MB2768.namprd02.prod.outlook.com (10.175.49.146) by
	MWHPR02MB2191.namprd02.prod.outlook.com (10.168.243.9) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1601.22; Thu, 14 Feb 2019 00:26:50 +0000
Received: from MWHPR02MB2768.namprd02.prod.outlook.com
	([fe80::50c6:4927:8a6b:7300]) by
	MWHPR02MB2768.namprd02.prod.outlook.com
	([fe80::50c6:4927:8a6b:7300%10]) with mapi id 15.20.1601.023;
	Thu, 14 Feb 2019 00:26:50 +0000
From: Jaewon Lee <JAEWON@xilinx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: devtool sdk-update question
Thread-Index: AdTD+nNbKUNmMyK+RhWbzVbQ9to0xg==
Date: Thu, 14 Feb 2019 00:26:50 +0000
Message-ID: <MWHPR02MB2768804F1C7F6C192D893A51AF670@MWHPR02MB2768.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=JAEWON@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7365a0c6-d891-40a9-32bd-08d692131d09
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:MWHPR02MB2191; 
X-MS-TrafficTypeDiagnostic: MWHPR02MB2191:|MWHPR02MB2191:
x-ms-exchange-purlcount: 1
x-microsoft-exchange-diagnostics: =?us-ascii?Q?1; MWHPR02MB2191;
	23:JOZR7lDh1tvkQOvmDZ0yZikttUqxjhIgHUk4r0bVM?=
	=?us-ascii?Q?a7WcOFJpiSr2zXO8QOy4eBEfmQI2yJdxmcXreAX4fqtrD7pw5eCUTb7QNLgy?=
	=?us-ascii?Q?tgm4bEpgnX9uMPOvflhBAn7mJxw16F1Ii7sUScyUW/+sq0rwLaeiX7EiBMyB?=
	=?us-ascii?Q?qglRKnz314mHdMGu4zO75NzAyq/YhVkyoisg56GOMn+lMw7YUbyGVQCteFlc?=
	=?us-ascii?Q?/jotrZyZVgv4raYdoTmDTSqA7CxK+rWDh9zvDH/DcG+dbRcNdAQ1cUH5m+DQ?=
	=?us-ascii?Q?TzgnDYYu/8eF+RFogy9oWOtIlNoaVDtC6hIqaIVtGvPD83RTWPRQGLFoLVQJ?=
	=?us-ascii?Q?F5Sg7m02X1dVOcoSoreB7YiHUZexk87w4usVDPXLGOqAw7u/yCwAYMkqurKZ?=
	=?us-ascii?Q?9zOKJDK3yquWflkBGDXgB8fqNGUCNzk1ivxVKvw7WU2D+vzXEWWQ2osrhfXF?=
	=?us-ascii?Q?XJSNNg+YThQvfNpZqwIYM8G20iAVuZcto9nYKigM/nxZ2ZTiKbjgcFvFNuqL?=
	=?us-ascii?Q?utAobfEoDPg5p/isPtazXsExtGNqPdIHF/4yf3uQIbBr0aQaNAV8uMHCN6Cb?=
	=?us-ascii?Q?Eqhvk9NTIf3bIBSru7sDDMEpzlz9xFb6oc7r2689ghhSvVq7Tuvw2Xh/2515?=
	=?us-ascii?Q?RHSZdHzX87Z7A15M78GsDR5ghrIA86erI0DYqKsB9MPM0HokZrUcNJDLfnkT?=
	=?us-ascii?Q?EAmuPoIFrI+B/tGqUsPFwX+adaTHkQ1XFzLX1bhEWT/7eKJ2KLX/PJQwsfgX?=
	=?us-ascii?Q?muV3Mem8f0RYrx9ZQyPJHIXRkrSGL86x50/H61tu8A/O1d5f/orNa/ivca4b?=
	=?us-ascii?Q?cFxW4ax9RlEueumgdjh5JF/TRRXlQgkwH66fhvaf8p/uNZC3ouvviWG8supl?=
	=?us-ascii?Q?sURAdzsgKsImKcvMZoe7brlXS9Tb+P7gUJQLf2V0DLir8S+3oU3PDlLvnqWD?=
	=?us-ascii?Q?XEmOPVpdLi7uUMSuLX2dTU4w8P38aZQ3feZtm3m/AwvWKGy9dKKxJm13ExqA?=
	=?us-ascii?Q?bdGdAucGoYYbVJzvkoY+ZkEI2XSJd8Zhmb74Hd+7eDiE5vs1cNXFt7m9phgI?=
	=?us-ascii?Q?4qcYpIY78gTXKUv3x6h78B3SU2+/6gHxEj50UquNm6R4LPYZl5pH6gvYtr9v?=
	=?us-ascii?Q?gN5ft1RPWV+8FfB4kBcXWGLNwPRh+sECMSyx7BX0RycCcDZOMpALwElXJ0Ns?=
	=?us-ascii?Q?8CG4A+1LqSoyA0o1+I8zBKFKXnxaFCLhull2AhewcTYUZKyTCThtgJ6nSWAZ?=
	=?us-ascii?Q?SRPQw9Egdy1kMAZ27xzTO3iIMQaJ6XU6stxGBGmS8xDLYDq4HcaaVzMQBChK?=
	=?us-ascii?Q?p2WzDfn4CtarY4lb8GCnH1T19ZCAJkiA2RTyydh8RBaoBtGwTwuvIIGMp9NC?=
	=?us-ascii?Q?rka7b5xaTvUMvh3XV05oCFZVwsxeQAYh+SEhWylrQvmC1rs2i5eQR9d62r8X?=
	=?us-ascii?Q?N5p9V1Buw=3D=3D?=
x-microsoft-antispam-prvs: <MWHPR02MB2191C7C471307482EBC4C3EBAF670@MWHPR02MB2191.namprd02.prod.outlook.com>
x-forefront-prvs: 09480768F8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(136003)(376002)(39860400002)(396003)(346002)(189003)(199004)(478600001)(7736002)(2420400007)(6916009)(72206003)(68736007)(53936002)(81156014)(8676002)(1730700003)(81166006)(316002)(2501003)(966005)(55016002)(6306002)(54896002)(236005)(86362001)(74316002)(9686003)(71200400001)(71190400001)(3480700005)(4744005)(14444005)(97736004)(606006)(256004)(25786009)(14454004)(99286004)(2351001)(33656002)(106356001)(7696005)(3846002)(6116002)(105586002)(15650500001)(26005)(6436002)(5640700003)(486006)(6506007)(102836004)(790700001)(66066001)(9326002)(10710500007)(2906002)(8936002)(7110500001)(186003)(476003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2191;
	H:MWHPR02MB2768.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OpEGVUTe1A73IGdQKiVQU8NxxNmxeEjij8cbfU3ZiDHyzJNWzYRojhEgnzk+9ney5P5IVoInhtfosGm2VvP4NY5JYWB/wdIjXm8/T8I3vXxoYWHuqEQfGQjEzLdrSPtJbiNWaGZ8lFMXrn4VXQyu81rXZ3/Jy74hEatoaxzHA2XqVTH8ogHmllbpNKOth01ru+dLfzKsXCmROlG0aj4lV9yULk63XVPzz2+lDIfx7YjmjAS9hmZ3n6YaH/LwgIOpusV+fwyJ/ekUyK7p6SM5NFnpAdalFt6JahYmpWIavCmEU9ATo206I0xIq6bK8azEx3Zg8IkSyu7HnIa10yaNsjTQG0KXne3c2fWwaOpcOF9Pp5vheHsPX9y+oq0BQmfIOBFKf4wnNOGwEYWeCEMP0PjCeNvqhv1548NsxOHKIRs=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7365a0c6-d891-40a9-32bd-08d692131d09
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2019 00:26:50.6978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2191
X-Microsoft-Exchange-Diagnostics: 1; MWHPR02MB2191;
	23:aTY+ewMkrxa5WTri/J1Cwip7LgYDe+7DQ1BWChirDSZIz7vGWtGYcyeSEGDHkA8Opo0VUqK0Sv9H/D/sq0hLHtcCopyriGCL79NgbYU/Kk1F5ofpOPMsJsHTtU9ouaAgeCa590h+Mgg67KKuP8dolQ==
X-OriginatorOrg: xilinx.com
Subject: devtool sdk-update question
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
X-List-Received-Date: Fri, 15 Feb 2019 03:05:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR02MB2768804F1C7F6C192D893A51AF670MWHPR02MB2768namp_"

--_000_MWHPR02MB2768804F1C7F6C192D893A51AF670MWHPR02MB2768namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a question on devtool sdk-update.
We have a requirement that our esdk is extracted in publish mode as it's on=
 an nfs mountpoint and bitbake doesnt like nfs.
There used to be two ways to update sstate,
(1)through the install_sstate_objects function which manually copies sstate=
 objects (for local updates) and
(2) setting SOURCE_MIRROR in site.conf to the updateserver and running bitb=
ake setscene (for remote updates),  after this patch https://gitenterprise.=
xilinx.com/Yocto/poky/commit/02986886fc40c0fcd33359a279ba9520fd5cac2a
the former is no longer supported.

What would be the best way for us to update sstate through sdk-update now? =
as we can't do use bitbake setscene.. seems this is a gap?
Any thoughts here would be appreciated

Thanks,
Jaewon



--_000_MWHPR02MB2768804F1C7F6C192D893A51AF670MWHPR02MB2768namp_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a question on devtool sdk-update.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">We have a requirement that our esdk is extracted in =
publish mode as it&#8217;s on an nfs mountpoint and bitbake doesnt like nfs=
.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal">There used to be two ways to update sstate, <o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">(1)through the install_ss=
tate_objects function which manually copies sstate objects (for local updat=
es) and
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">(2) setting SOURCE_MIRROR=
 in site.conf to the updateserver and running bitbake setscene (for remote =
updates),&nbsp; after this patch
<a href=3D"https://gitenterprise.xilinx.com/Yocto/poky/commit/02986886fc40c=
0fcd33359a279ba9520fd5cac2a">
https://gitenterprise.xilinx.com/Yocto/poky/commit/02986886fc40c0fcd33359a2=
79ba9520fd5cac2a</a><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">the former is no longer s=
upported. <o:p>
</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What would be the best way for us to update sstate t=
hrough sdk-update now? as we can't do use bitbake setscene.. seems this is =
a gap?
<o:p></o:p></p>
<p class=3D"MsoNormal">Any thoughts here would be appreciated<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jaewon<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MWHPR02MB2768804F1C7F6C192D893A51AF670MWHPR02MB2768namp_--
