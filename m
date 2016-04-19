Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD030E00DC3; Mon, 18 Apr 2016 20:48:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.100 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1923 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Apr 2016 20:48:20 PDT
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0100.outbound.protection.outlook.com [157.55.234.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A78E00C64
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 20:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
	s=selector1-nxp-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=bIqtsbeck7kIxd6mJPKYcGaPlFUJ2YX9NXsFW3iN0yY=;
	b=mzvs0ha4iSZQ+M5zMMxDMCGLQt/eRLrmMumaYXX9G4AnVMoVtft3cFKYj3KrWDW7JZnhiFPBgUpQRY8l3cg1kwr/jxVol0efrXUEI75JDkWk33uata8VdG2nzymvmbRih641q26C/8SPpiUYY4x4q067IUSfo9zGsjzz26mICJw=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) by DB3PR04MB0683.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::13) with Microsoft SMTP Server (TLS) id
	15.1.453.26; Tue, 19 Apr 2016 03:16:16 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::146:e906:837c:99e5]) by DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::146:e906:837c:99e5%15]) with mapi id 15.01.0453.030;
	Tue, 19 Apr 2016 03:16:16 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Thread-Topic: [yocto] Using Yocto with NXP QorIQ Processors
Thread-Index: AQHRmXp0nusNybYWb0mkf/UAakHJB5+QnsLQ
Date: Tue, 19 Apr 2016 03:16:16 +0000
Message-ID: <DB3PR04MB0684BEADE641C36BCF5386BAEE6C0@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DUB130-W6513A15021890FD826A907DA6B0@phx.gbl>
In-Reply-To: <DUB130-W6513A15021890FD826A907DA6B0@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: hotmail.com; dkim=none (message not signed)
	header.d=none; hotmail.com; dmarc=none action=none header.from=nxp.com; 
x-originating-ip: [199.59.225.131]
x-ms-office365-filtering-correlation-id: 4ca68794-3439-4912-8ea0-08d36800f82b
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0683;
	5:In3fMANJ3MPtzC+Jg3OseUsDjc2ubEqSIF9Y1VY1TGPkh25V2tnkV8RIUgrS5VpfH2tRFtVVG53VnhyNxOgeyKNdMPSeUVQo4pWpeOHQeyfRKv9caE9+3U8E2UvpJ0PlPwtRzMqu2/Biev3b1l6BUg==;
	24:4+NJq6s5BVk34egrcmHyNvF7W1SND17kvleuNx4Ug7C4K6v/+hdZmBWxJ7iYzCtYtXZcj49Dk6+opSKyfMK9YHoXKeAjXV6Ffiuqk/Bi7gU=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0683;
x-microsoft-antispam-prvs: <DB3PR04MB0683FCE6A326A519D1EFE5C2EE6C0@DB3PR04MB0683.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(220618547472400);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521026)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:DB3PR04MB0683; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0683; 
x-forefront-prvs: 0917DFAC67
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(377454003)(74316001)(1680700002)(5004730100002)(19300405004)(3660700001)(76576001)(4326007)(5008740100001)(19625215002)(19580405001)(86362001)(11100500001)(76176999)(3280700002)(5002640100001)(15975445007)(81166005)(50986999)(110136002)(92566002)(54356999)(5003600100002)(87936001)(9686002)(19580395003)(2950100001)(66066001)(19617315012)(16236675004)(2900100001)(5250100002)(6116002)(586003)(16601075003)(790700001)(189998001)(2906002)(106116001)(33656002)(1096002)(3846002)(1220700001)(102836003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0683;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2016 03:16:16.0858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0683
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using Yocto with NXP QorIQ Processors
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
X-List-Received-Date: Tue, 19 Apr 2016 03:48:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB3PR04MB0684BEADE641C36BCF5386BAEE6C0DB3PR04MB0684eurp_"

--_000_DB3PR04MB0684BEADE641C36BCF5386BAEE6C0DB3PR04MB0684eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Chris,

The QorIQ SDK uses recent Yocto version, e.g. the SDK 2.0  is based on Yoct=
o 2.0(Jethro).  When the SDK is formally released in Q2/2016, the SDK recip=
es will be upstreamed to master of community layers.

You can use either SDK ISOs available in NXP official website(www.nxp.com<h=
ttp://www.nxp.com>) or the BSP layers in Yocto website (http://git.yoctopro=
ject.org/cgit.cgi/).

*         QorIQ ARM targets: meta-fsl-arm

*         QorIQ PPC targets: meta-fsl-ppc


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Chris Trobridge
Sent: Monday, April 18, 2016 9:58 PM
To: yocto@yoctoproject.org
Subject: [yocto] Using Yocto with NXP QorIQ Processors

Has anyone attempted to use the Qoriq BSP layers with them main Yocto relea=
se rather than the NXP (ex Freescale) SDK they come bundled in?

I ask because the NXP SDK is somewhat behind the main Yocto release schedul=
e.

It should be easier to port the BSP to the current Yocto but I have no idea=
 what issues I am likely to hit.

I will try this at some point when I have enough free time but for planning=
 purposes I would interested in how anyone else has got on attempting this.

Are Qoriq users restricted to the official SDK or would they get third-part=
y support?

Regards,
Chris


--_000_DB3PR04MB0684BEADE641C36BCF5386BAEE6C0DB3PR04MB0684eurp_
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1990401579;
	mso-list-type:hybrid;
	mso-list-template-ids:354999732 -1570329826 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:SimSun;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Hi Chris,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">The QorIQ SDK uses recent Yocto versi=
on, e.g. the SDK 2.0 &nbsp;is based on Yocto 2.0(Jethro). &nbsp;When the SD=
K is formally released in Q2/2016, the SDK recipes will
 be upstreamed to master of community layers.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">You can use either SDK ISOs available=
 in NXP official website(<a href=3D"http://www.nxp.com">www.nxp.com</a>) or=
 the BSP layers in Yocto website (<a href=3D"http://git.yoctoproject.org/cg=
it.cgi/">http://git.yoctoproject.org/cgit.cgi/</a>).
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0=
pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1F497D">QorIQ ARM targets: meta-fsl-a=
rm<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Symbol;col=
or:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0=
pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1F497D">QorIQ PPC targets: meta-fsl-p=
pc<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Zhenhua<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject.org=
 [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Chris Trobridge<br>
<b>Sent:</b> Monday, April 18, 2016 9:58 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Using Yocto with NXP QorIQ Processors<o:p></o:p></s=
pan></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Has anyone attempted to use the Qoriq BSP layers with them main Yoct=
o release rather than the NXP (ex Freescale) SDK they come bundled in?<o:p>=
</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">I ask because the NXP SDK is somewhat behind the main Yocto release =
schedule.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">It should be easier to port the BSP to the current Yocto but I have =
no idea what issues I am likely to hit.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">I will try this at some point when I have enough free time but for p=
lanning purposes I would interested in how anyone else has got on attemptin=
g this.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Are Qoriq users restricted to the official SDK or would they get thi=
rd-party support?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Regards,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Chris<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DB3PR04MB0684BEADE641C36BCF5386BAEE6C0DB3PR04MB0684eurp_--
