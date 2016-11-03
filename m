Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A33D3E00BB0; Thu,  3 Nov 2016 03:53:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.106 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0106.outbound.protection.outlook.com [104.47.2.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 185CCE00A64
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 03:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=xCx4b6F94CPhjpSRTvXKJBeR0PGv7yYT6yIQHe4bJlM=;
	b=OF68FYRU6IHeqEsSz176VGIH6wjtBpT4/pZQ9VnpTzHq6EMC9S1nq+T4/TQps1xWwyNQOmu534kKVkgb4p2Y4u1uRj+GLBFNT3dmwsqTgaMA6UuwMKx2OCa3ovIsm0SzsDLnPM+8ZgJsCIJ3CC3YUGrCKEG13xXL27kqBpI0xqE=
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) by
	DB6PR0701MB1880.eurprd07.prod.outlook.com (10.168.10.152) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.707.1; Thu, 3 Nov 2016 09:21:07 +0000
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com ([10.168.10.151]) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com ([10.168.10.151]) with
	mapi id 15.01.0707.004; Thu, 3 Nov 2016 09:21:06 +0000
From: Thomas Thorne <Thomas.Thorne@net2edge.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] How do I used Yocto to build an sdcard image for my
	Raspberry Pi 3 Model B?
Thread-Index: AQHSNQqEfdxswGkrfkuACWfeyICKLaDGv9EAgAA5AyA=
Date: Thu, 3 Nov 2016 09:21:06 +0000
Message-ID: <DB6PR0701MB1879F74E3194F73877BCB7E0D3A30@DB6PR0701MB1879.eurprd07.prod.outlook.com>
References: <150d439e-c90f-9252-ab12-6ba0ac99668c@Net2Edge.com>
	<7EEDF13B-E1D4-46F1-99B9-1419B69F3DD1@gmail.com>
In-Reply-To: <7EEDF13B-E1D4-46F1-99B9-1419B69F3DD1@gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Thorne@net2edge.com; 
x-originating-ip: [81.128.174.58]
x-ms-office365-filtering-correlation-id: 69ce9ed2-935f-4987-eff0-08d403cabdc9
x-microsoft-exchange-diagnostics: 1; DB6PR0701MB1880;
	7:9Nlu+yCEi4jy8nyzFEqjKIvWqMb2uz9qlo0dMCnk+KRxqqQnVByj8OqvzrqeIM7fl+NS/049tjX+qJFnvbv3BwLetJLNbFRJXMSdZeX2cJ4zXxADjH9FDufHapW3XvJ5/J1kNp1LR32Y+a/YKVwYyn+D23fiF8GgGU8moniWDngAYX3+RJVkksZ+culQ6sE4iIglRP+wouyR3Fr3DOIrs30LO4TJGyOTbE7Tm+6UPFLDcnun0M1wE9bdwj/hnVteRye6cmAED7/BaR5BvI6FB+JZ1TFB8EXDXCR4qU3Q4iOKC3BykBFf0ZVUdw7xE9iqUFdM6b/V3Dh4Jjxaxv046toOvY2YT5ZuG5HwUy+aA+0=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0701MB1880;
x-microsoft-antispam-prvs: <DB6PR0701MB1880ABAB1FB5C1A2E0B4CE38D3A30@DB6PR0701MB1880.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6042046)(6043046);
	SRVR:DB6PR0701MB1880; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0701MB1880; 
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(7916002)(189002)(199003)(54356999)(33656002)(66066001)(19625215002)(19617315012)(3660700001)(106356001)(3280700002)(50986999)(101416001)(110136003)(122556002)(2950100002)(86362001)(6916009)(105586002)(106116001)(16236675004)(189998001)(81156014)(3846002)(4326007)(6116002)(790700001)(5660300001)(92566002)(2906002)(586003)(9686002)(102836003)(10400500002)(7696004)(97736004)(81166006)(15975445007)(87936001)(76576001)(8936002)(19300405004)(2900100001)(5002640100001)(74316002)(19580405001)(19580395003)(8676002)(7846002)(7906003)(7736002)(68736007)(77096005)(76176999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB1880;
	H:DB6PR0701MB1879.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: net2edge.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2016 09:21:06.5895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 851184e8-8658-4a6a-973d-aa012bcc8794
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB1880
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I used Yocto to build an sdcard image for my Raspberry Pi 3 Model B?
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
X-List-Received-Date: Thu, 03 Nov 2016 10:53:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0701MB1879F74E3194F73877BCB7E0D3A30DB6PR0701MB1879_"

--_000_DB6PR0701MB1879F74E3194F73877BCB7E0D3A30DB6PR0701MB1879_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Do you see an image with .rpi-sdimg in deploy/images/raspberrypi3

No, files such as that not turning up is exactly what I am asking about.

thomasthorne@thorne-ul-dt:~/work/rpi-layer/build$ ls tmp/deploy/images/rasp=
berrypi3/*.rpi-sdimg
ls: cannot access 'tmp/deploy/images/raspberrypi3/*.rpi-sdimg': No such fil=
e or directory
thomasthorne@thorne-ul-dt:~/work/rpi-layer/build$ ls tmp/deploy/images/rasp=
berrypi2/*.rpi-sdimg
ls: cannot access 'tmp/deploy/images/raspberrypi2/*.rpi-sdimg': No such fil=
e or directory

I have tried building for Pi 2 and Pi 3.  rpi-test-image, rpi-basic-image, =
console-image, core-image-minimal, core-image-full but none of them seem to=
 have generated an SD image.  Plenty of other files I could put together bu=
t no ready formed image to dd across.

Thomas A. F. Thorne<mailto:Thomas.Thorne@Net2Edge.com>  Software Engineer  =
Net2Edge<http://www.net2edge.com/>

--_000_DB6PR0701MB1879F74E3194F73877BCB7E0D3A30DB6PR0701MB1879_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
h2
	{mso-style-priority:9;
	mso-style-link:"Heading 2 Char";
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:18.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.Heading2Char
	{mso-style-name:"Heading 2 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 2";
	font-family:"Cambria",serif;
	color:#365F91;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle24
	{mso-style-type:personal-reply;
	font-family:"Arial",sans-serif;
	color:#006600;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:231473462;
	mso-list-template-ids:1197517934;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
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
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#006600;mso-fareast-language:EN-US">&gt;
</span>Do you see an image with .rpi-sdimg in&nbsp;deploy/images/raspberryp=
i3<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#006600;mso-fareast-language:EN-US"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#006600;mso-fareast-language:EN-US">No, files su=
ch as that not turning up is exactly what I am asking about.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#006600;mso-fareast-language:EN-US"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#006600;mso-fareast-language:EN-US">thomasthorne@thorne-ul-dt:~/work=
/rpi-layer/build$ ls tmp/deploy/images/raspberrypi3/*.rpi-sdimg<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#006600;mso-fareast-language:EN-US">ls: cannot access 'tmp/deploy/im=
ages/raspberrypi3/*.rpi-sdimg': No such file or directory<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#006600;mso-fareast-language:EN-US">thomasthorne@thorne-ul-dt:~/work=
/rpi-layer/build$ ls tmp/deploy/images/raspberrypi2/*.rpi-sdimg<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#006600;mso-fareast-language:EN-US">ls: cannot access 'tmp/deploy/im=
ages/raspberrypi2/*.rpi-sdimg': No such file or directory<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#006600;mso-fareast-language:EN-US"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#006600;mso-fareast-language:EN-US">I have tried=
 building for Pi 2 and Pi 3. &nbsp;rpi-test-image, rpi-basic-image, console=
-image, core-image-minimal, core-image-full but none
 of them seem to have generated an SD image.&nbsp; Plenty of other files I =
could put together but no ready formed image to dd across.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#006600;mso-fareast-language:EN-US"><o:p>&nbsp;<=
/o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#434244"><a href=3D"mailto:Thomas.Thorne@Net2Edg=
e.com"><span style=3D"color:#434244;text-decoration:none">Thomas A. F. Thor=
ne</span></a>&nbsp;
<b>Software Engineer</b>&nbsp; <a href=3D"http://www.net2edge.com/"><span s=
tyle=3D"color:#434244;text-decoration:none">Net</span><span style=3D"color:=
#208CA6;text-decoration:none">2</span><span style=3D"color:#434244;text-dec=
oration:none">Edge</span></a><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_DB6PR0701MB1879F74E3194F73877BCB7E0D3A30DB6PR0701MB1879_--
