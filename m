Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BDC9E00F60; Wed, 27 Jul 2016 23:35:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.1.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7300 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Jul 2016 23:35:12 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0049.outbound.protection.outlook.com [104.47.1.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E328E00F57;
	Wed, 27 Jul 2016 23:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=oveE2OWJipxuvSRpoNEhz+zwpkQxKZv+jrxgdBramrk=;
	b=Hy9gmO7ruAFcvEXeKwVEGYoj7Qz8E5ienm9aEhZy4yT7Xl4GfGJRBRo/38VxPCAk2a5hBVHTz7/WDzjV5RN12NGOXSXktuJcGfFI6Lu14BZ/nAj2LdLG9huh2gxc5vC1TF97n1b0Ny7CDWybkpKDa7ez8vI9w1uoBJxnmJg9B8w=
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com (10.169.225.139) by
	DB6PR0401MB2632.eurprd04.prod.outlook.com (10.169.225.141) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384)
	id 15.1.557.8; Thu, 28 Jul 2016 04:00:26 +0000
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) by
	DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) with
	mapi id 15.01.0557.009; Thu, 28 Jul 2016 04:00:26 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>
Thread-Topic: The kernel versions used by Yocto
Thread-Index: AdHohD7c9zLHL9PbRt6teTLzDnj0rw==
Date: Thu, 28 Jul 2016 04:00:26 +0000
Message-ID: <DB6PR0401MB2630D6994223E53162C77D4CEE000@DB6PR0401MB2630.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.226.141]
x-ms-office365-filtering-correlation-id: c2802546-6f46-4319-863c-08d3b69bb548
x-microsoft-exchange-diagnostics: 1; DB6PR0401MB2632;
	6:X7AJM3/PJ04yeLb649ZJK2qvF0Vqw490pXk/eg6q6sbCRrZvxSPTw1fk4FeniKmeULtDLWnU7WWPmxRfeDP2tW/wjgjNL45nhEiixnEUcyOaUC5o4oPK15uj/4UNsUiXd7RmBoeoNyuihSBjEUgLVlyfL8K22Crqy6xq+FmfhdZbcg06cIwdhBUYvjaCwHzVVkn5sYTkx+x7TVDGxFoPo6sP96wJz7PNDXR9ZS5LIXCeN4OVmP/tP/e/2Zd6VrUtbJxICAeCY/sTuBdb0QW/zqUsNLGP/2cEZ0Yvwy1ehdH3oDPjYv5YscJFuR4l3lOq+1vuMMPWKpSH9QXU4LW1Cw==;
	5:wDOxVOaLynPisGnB/ItF4YuFd2K2y/ddGPzq5gu3KfC+gS5ia2414x4XRY6ptSkHec0ORkoK1TcN5zGl65n+yn/3GFF2n0simWOYXyzOVzbj9YRrdo6u0dowa87orYjN3wdwmmxyEai+yNs00EVjtA==;
	24:XpAlrKRB9gZTV8GIFzfxoJ+Q4uvVSxYajWOwmSKXvpMZCZoE8qI1Z7UIIpe2WksPbV/lh4a0i2gtVGv4jtC7cXuZKrqCg0Fb/1vkdBGZlwA=;
	7:FU5P83Nfb5LVe/z2OyHmETSw07H6k5Aa1fRSpPv7zK56wN61k5/3xv/yF2plu7PAo0UkwG0pObU4vpdmV6FVPFaTo9ymMRjE7kt1qUqq8N07dIfeN0rFgb4RqjSLBAREgdlGImz5BJ87fprKI7w46q1VGG/UrXV1CKieLW/CqfIvDAYlV6h7/L6gt2UDK5voRl7y3nt191CSh+LfvLQR95UHtm9Sl2G7+VJBviOM8b3s2FJhti2YE6F/wrfc15GU
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0401MB2632;
x-microsoft-antispam-prvs: <DB6PR0401MB26323F26E4A0775A9255600BEE000@DB6PR0401MB2632.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:DB6PR0401MB2632; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0401MB2632; 
x-forefront-prvs: 00179089FD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(199003)(54356999)(7846002)(790700001)(8676002)(586003)(3660700001)(77096005)(102836003)(86362001)(50986999)(122556002)(74316002)(7696003)(15975445007)(101416001)(7736002)(81156014)(3280700002)(6116002)(3846002)(81166006)(2906002)(87936001)(5003600100003)(2351001)(66066001)(19625215002)(229853001)(450100001)(2501003)(5630700001)(92566002)(68736007)(189998001)(558084003)(2900100001)(19580395003)(8936002)(33656002)(16236675004)(9686002)(19300405004)(97736004)(5640700001)(76576001)(9326002)(11100500001)(110136002)(4326007)(105586002)(10400500002)(106356001)(5002640100001)(554374003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0401MB2632;
	H:DB6PR0401MB2630.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2016 04:00:26.5135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2632
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: The kernel versions used by Yocto
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
X-List-Received-Date: Thu, 28 Jul 2016 06:35:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0401MB2630D6994223E53162C77D4CEE000DB6PR0401MB2630_"

--_000_DB6PR0401MB2630D6994223E53162C77D4CEE000DB6PR0401MB2630_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I want to understand the kernel version selection criteria of Yocto release=
, can somebody please help to comment on it? I recall that Yocto uses the L=
TSI kernel, may I know if this is still the case?


Best Regards,

Zhenhua

--_000_DB6PR0401MB2630D6994223E53162C77D4CEE000DB6PR0401MB2630_
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
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\5B8B\4F53";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I want to understand the kernel version selection cr=
iteria of Yocto release, can somebody please help to comment on it? I recal=
l that Yocto uses the LTSI kernel, may I know if this is still the case?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua&nbsp; <o:p></o:p></p>
</div>
</body>
</html>

--_000_DB6PR0401MB2630D6994223E53162C77D4CEE000DB6PR0401MB2630_--
