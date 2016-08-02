Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5CCEE00F65; Tue,  2 Aug 2016 06:17:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.79 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0079.outbound.protection.outlook.com [104.47.2.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 414E0E00F5C
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 06:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=WCKpdfwLvaH0Tw7oeZq0R7Gh8ml9/QXzSf0xPxjzcCM=;
	b=REcVySPaQuNo+FFCEsxjrJ/J3720NowNxCvan6gJmqa3CLh320Su13JaYnCXZN+Z9BbKmPa3ySgYK0uDG7/sZEzGfzloxs5TG/z1K159De7yBaQUBtTNgF8lFtDGlRiOc54Chrq5j6G+j+kkXy0PFWFyrDi4w/ALEt7n03e7ldA=
Received: from VI1PR0401MB2638.eurprd04.prod.outlook.com (10.168.66.10) by
	VI1PR0401MB2638.eurprd04.prod.outlook.com (10.168.66.10) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.557.8; Tue, 2 Aug 2016 08:46:40 +0000
Received: from VI1PR0401MB2638.eurprd04.prod.outlook.com ([10.168.66.10]) by
	VI1PR0401MB2638.eurprd04.prod.outlook.com ([10.168.66.10]) with mapi id
	15.01.0557.009; Tue, 2 Aug 2016 08:46:40 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto rootfs to support auto-login or remove the login prompt
Thread-Index: AdHsmlR90SB/DGLqTvmAYv/rPpZORg==
Date: Tue, 2 Aug 2016 08:46:39 +0000
Message-ID: <VI1PR0401MB2638304EB5805908380CE4ABEE050@VI1PR0401MB2638.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.231.64]
x-ms-office365-filtering-correlation-id: 7381cd9a-882d-4ad9-3b66-08d3bab1857d
x-microsoft-exchange-diagnostics: 1; VI1PR0401MB2638;
	6:EGpxJY93yp+GV1Dsn4Mwkn3C5yt5++/3LBoiX2qXrrZCXcubF/DxvJGUKamPIf6S7WlYPKpzrBasRuixyPoGBnDWNW8DPVuvROv0ClLjJqnzuW67pCAvsGLU5zVs/+sBGZlwwt3/KsPev27FTrEHk7TyJZI8EEufetuTuBo4ZAjAs/sfBoZhM5wOOpaH4NbHQVPJcMSTWKxKjyYH/O9sfec0CSpFmcKBPKv1nwW4kSAVnsxxSmdqPREeqeNOdrmAAeR/PFHF1JRaPsM3uAxq3EbuD1X6T6VVo0/TF8o67qHkzahs4zeVedTz2RDuE2mutnJVqTUIUragZMfpTVbfBQ==;
	5:D3SC7/RZha/8F3ElvYpUA/74SarpqAObDHzaI25goxne2iPPH38NNbmK6gNcVROjUV1IfhXozw9Fb1c5qliNGGYRpVP6oBlOMbV2SlPWIxwHMIj1P/LviRSpNp+GlFL85lgMvOFhXyTOqq9Dg/vVpg==;
	24:Bx6UX2sNP/lPp+/ssl8t+17RY5WghHH9gNr7Sbd8utKxVsV+GrqTZxNLnoAkof9QPe7585N9vHwgtATJzFqBd6epX2iU5uLN6MvtHosoN8Y=;
	7:dUDGMol5uSzLnXURv8X9rwV8i6UWDLviyummV5bWoKaoip/xqe2cmt14UMtQeocyjc3/YeVGGLwvU+GcbVwaWMJSZ/MLG4Er7FUGyHQPQeQHgMgWP4IsyQWGrh8wFdOB1YGXJiGFMk80O4GFz3haylglYjUqNcaBU97fRtOpO+AKUruKPbAhh5RI/m2W7/OjiTxqlbSYOaA9dzHngmXoaLh/kzD3P5OGxrsaXHzGDVKPrgFWxv5ayj8IzLDfHSvW
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:VI1PR0401MB2638;
x-microsoft-antispam-prvs: <VI1PR0401MB2638C2EEC50963A49A558F1BEE050@VI1PR0401MB2638.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:VI1PR0401MB2638; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0401MB2638; 
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(6116002)(86362001)(2351001)(77096005)(110136002)(229853001)(9686002)(3660700001)(106356001)(19300405004)(3280700002)(189998001)(87936001)(2501003)(16236675004)(2906002)(586003)(5640700001)(66066001)(8936002)(5630700001)(19580395003)(7696003)(15975445007)(11100500001)(102836003)(107886002)(790700001)(3846002)(5002640100001)(558084003)(97736004)(19625215002)(7736002)(92566002)(81156014)(8676002)(81166006)(105586002)(122556002)(450100001)(2900100001)(9326002)(54356999)(101416001)(76576001)(50986999)(1730700003)(7846002)(74316002)(10400500002)(33656002)(68736007);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2638;
	H:VI1PR0401MB2638.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2016 08:46:39.9255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2638
Subject: Yocto rootfs to support auto-login or remove the login prompt
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
X-List-Received-Date: Tue, 02 Aug 2016 13:17:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0401MB2638304EB5805908380CE4ABEE050VI1PR0401MB2638_"

--_000_VI1PR0401MB2638304EB5805908380CE4ABEE050VI1PR0401MB2638_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I want to generate a rootfs image which can skip the Linux login prompt or =
auto-login Linux? Is it possible in Yocto? If yes, may I know how to implem=
ent it?


Best Regards,

Zhenhua

--_000_VI1PR0401MB2638304EB5805908380CE4ABEE050VI1PR0401MB2638_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
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
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">I want to generate a rootfs image which can skip the=
 Linux login prompt or auto-login Linux? Is it possible in Yocto? If yes, m=
ay I know how to implement it?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua <o:p></o:p></p>
</div>
</body>
</html>

--_000_VI1PR0401MB2638304EB5805908380CE4ABEE050VI1PR0401MB2638_--
