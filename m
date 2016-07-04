Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30AC1E00D15; Sun,  3 Jul 2016 20:02:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7217 seconds by postgrey-1.32 at yocto-www;
	Sun, 03 Jul 2016 20:02:03 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0097.outbound.protection.outlook.com [104.47.33.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86561E00CF2
	for <yocto@yoctoproject.org>; Sun,  3 Jul 2016 20:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=xZFuLgFQXgm7oeHxt52Kr92c5JjrJXivESLfMEjWvio=;
	b=W4kVHCaFHvF0rfetps+SYIXqZgvPKABA8VVA4TQzT4W+ewXJpBrmyiWby3G/OupdZav/z0jFCOL84+y4veY7OR41N9cT96roxgE/v+ay/hTSUABEEPKkZzgqwlbPuMc9r+ukV5kKiHiUvog6W+YV+8OA16vPc0d/hoyIAFp1Z9s=
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com (10.165.76.133) by
	BN3PR1201MB0962.namprd12.prod.outlook.com (10.165.76.26) with Microsoft
	SMTP Server (TLS) id 15.1.534.14; Mon, 4 Jul 2016 00:29:04 +0000
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) by
	BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) with
	mapi id 15.01.0534.015; Mon, 4 Jul 2016 00:29:04 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Toaster fail to luanch bitbake
Thread-Index: AdHViwf/4uKKa3NnTQOgzKc1Q35FDA==
Date: Mon, 4 Jul 2016 00:29:03 +0000
Message-ID: <BN3PR1201MB09632782B810BA463C9BB091A5380@BN3PR1201MB0963.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [118.144.133.39]
x-ms-office365-filtering-correlation-id: 6c1aeaf9-f830-45b6-66df-08d3a3a23433
x-microsoft-exchange-diagnostics: 1; BN3PR1201MB0962;
	6:0eakvlbllOpkN+wKy5FSnCnUKvzL3CL26C2bYZKoIm2rHTlnsfOy9SlGBt63X2zeXaHCl+ERgOV/HCmcqnbpFH05zfL45RqB2kO9Bl7aPaT3xh7txKsbyfvDTChtwALqJqnSA0/T5I61hfyKOps58QbHiYfsEcDXAjJnCfBO+b47cKJZzHBq7BVDHsfnBYYbpbT5DNa4xcjiJyYMEL5xcOffuCRT6afcjgsGc8WiTrZ5Et5844p5H2bp4aTiDtvsQfkWsS8HuHzPAxXxPQGqaqtSHjZQH0Hd9NWH6Mp145yXYcrUSH4M3fHCapa56MsU;
	5:j/5N7h1jsS1a2TNWCp45Xfly8AmvokLaDZxVre7ar/yVT15Oo4uFBif1vh5BGzlsyZ+TcAksHuDmeoGor8Ah/40aot8vZvWBMuET3nHziC+Dg1St9utzjPZrT79tNuKDt2tfLElFKxXzZ3juyjcp7g==;
	24:eCxuDZKOcI7C27UI89v/zPFNvcKrhK4uoBOv/OAm42HWCE4T9rSbp/M//oVFy5IsL/G/Xxgw5hJpW87IewYxcds47DPhAUgthmPfGFJ+jkw=;
	7:LBegU0iDxoMo5foS7b+nmm+eUYDkf39xYTM8IPew55vVIy5IEiNUzGMB2wKsCuoND6CEJIdzlxlYmzigjSWPH3yB+ElzUfI994aAaEbVG1XQ+tBmT9iuMYBfPDOXzA/Dc8/crQ9RgzJUa2KqmL6ZlQSIa7n5IhdGUZQXIAcb2KXIiYvMJRhvX1+/oky6gCuoYu9/nWFf8dJfn4XUBPPurdYLDsxfAq3aoRKfjZtHfya7Cm1IMooYtkn9uapCeU0i
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR1201MB0962;
x-microsoft-antispam-prvs: <BN3PR1201MB096291676010E0764B27394EA5380@BN3PR1201MB0962.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040130)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041072)(6043046);
	SRVR:BN3PR1201MB0962; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR1201MB0962; 
x-forefront-prvs: 0993689CD1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(199003)(189002)(5002640100001)(3846002)(74316002)(450100001)(7846002)(7736002)(77096005)(99286002)(5630700001)(5640700001)(107886002)(790700001)(558084003)(586003)(6116002)(2900100001)(110136002)(122556002)(102836003)(189998001)(15975445007)(8936002)(81166006)(81156014)(1730700003)(8676002)(7696003)(11100500001)(92566002)(3280700002)(97736004)(2501003)(5003600100003)(9686002)(19300405004)(10400500002)(19625215002)(101416001)(86362001)(50986999)(68736007)(19580395003)(229853001)(87936001)(54356999)(16236675004)(76576001)(66066001)(105586002)(33656002)(3660700001)(2906002)(2351001)(106356001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR1201MB0962;
	H:BN3PR1201MB0963.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2016 00:29:03.6648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR1201MB0962
Subject: Toaster fail to luanch bitbake
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
X-List-Received-Date: Mon, 04 Jul 2016 03:02:07 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BN3PR1201MB09632782B810BA463C9BB091A5380BN3PR1201MB0963_"

--_000_BN3PR1201MB09632782B810BA463C9BB091A5380BN3PR1201MB0963_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi:



    After setup toaster I can't finish build progress with bitbake.







some ERROR log into :



/opt/yocto/poky/build-toaster-4/toaster_ui.log



ERROR: can't set event mask: None





Is this ERROR come with Environment variant?





Thanks.





Richard Zhang


--_000_BN3PR1201MB09632782B810BA463C9BB091A5380BN3PR1201MB0963_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"\7EAF\6587\672C Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.Char
	{mso-style-name:"\7EAF\6587\672C Char";
	mso-style-priority:99;
	mso-style-link:\7EAF\6587\672C;
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"text-justi=
fy-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Hi:<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; After set=
up toaster I can't finish build progress with bitbake.<o:p></o:p></span></p=
>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">&nbsp; &nbsp;<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">some ERROR log into :<o:p></=
o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">/opt/yocto/poky/build-toaste=
r-4/toaster_ui.log&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">ERROR: can't set event mask:=
 None<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Is this ERROR come with Envi=
ronment variant?<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Thanks.<o:p></o:p></span></p=
>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Richard Zhang<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_BN3PR1201MB09632782B810BA463C9BB091A5380BN3PR1201MB0963_--
