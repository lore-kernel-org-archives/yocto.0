Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98C61E00E04; Mon, 19 Dec 2016 06:47:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.96 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0096.outbound.protection.outlook.com [104.47.2.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97CC6E00D2B
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 06:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=aoLiQMZCFxg95uz3GOFmRgr9B06Fbf3zZpWTruM9G5o=;
	b=Zur73gKjNNe7NKut440bu8rbL8qsY58EbanPCgXQvfxyVziH/h4beJQXLImEdIFq8+n87mx6oKgPxzGQASc7yUL8WbGkffoOVqFwdYa30v++MXi3OksFFuiMsB2Lc2DurPTWvg54ebHUn2sLfvCqVjBjGleLJ9tV5bhHX8N3MP8=
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) by
	DB6PR0701MB1880.eurprd07.prod.outlook.com (10.168.10.152) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.5; Mon, 19 Dec 2016 14:13:46 +0000
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com ([10.168.10.151]) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com ([10.168.10.151]) with
	mapi id 15.01.0803.010; Mon, 19 Dec 2016 14:13:46 +0000
From: Thomas Thorne <Thomas.Thorne@net2edge.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build one package from a split package recipe
Thread-Index: AdJZ6oM16Dp+Z5fTSPyfeud9NppEEgAF2Akg
Date: Mon, 19 Dec 2016 14:13:46 +0000
Message-ID: <DB6PR0701MB187973F62E2ADC0D6CD6D67BD3910@DB6PR0701MB1879.eurprd07.prod.outlook.com>
References: <F38A866CD026F746A3BF0928A84397BE3E80F585@AZ-FFEXMB01.global.avaya.com>
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3E80F585@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Thorne@net2edge.com; 
x-originating-ip: [81.128.174.58]
x-ms-office365-filtering-correlation-id: 9ae257e2-4374-4371-3c0d-08d428193f11
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DB6PR0701MB1880; 
x-microsoft-exchange-diagnostics: 1; DB6PR0701MB1880;
	7:Sh27rreUgKPRrgA+uu2zhjf/6ffjBfyPXO4ygvH55yuYUu/N2Y9tGrfn7Sm70xIloH65LlZqcMDNhiLiaWEGyqA7fE286OzH118WGCcO4dyJFSU4nY1x49k5EeBOzd8pSIVQ0NK0+CS4lM9uJ9O/MFi2kYh/UtjskhHfFu/x7D1Ptzb1DMTtd9bJQj4SfBLnFTThmruPhXwM0v/439ELB9iNYZI2igPKUoY11xBFDqst9nW7AIOci7TekBZGUfszrNAR4GVskui9hIuFqv3Z8khNCdY5RLBzll1nZnk1JRl1WmLn9gMhdwDeB0/Utng4kBjQocRR+RcdmFrtQBdLvFKVNZTqImW37l7t/6kJGdQ7uo0OdBRHWXeDSqCqyLyhrRPN0YkWUhTJCO0BqbSiEFbfsbhsjO8XQJQupyQOmTgID+y5mh1UYgjlatSKTkReRQlfbluS3kQty5yGs7NXxw==
x-microsoft-antispam-prvs: <DB6PR0701MB1880C498E2F63B10739D0BABD3910@DB6PR0701MB1880.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(20558992708506)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123555025)(20161123560025)(20161123564025)(2016111802025)(20161123562025)(6072148)(6043046);
	SRVR:DB6PR0701MB1880; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0701MB1880; 
x-forefront-prvs: 01613DFDC8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(7916002)(39450400003)(39830400002)(39410400002)(199003)(189002)(92566002)(38730400001)(189998001)(7736002)(3846002)(5001770100001)(7906003)(2906002)(229853002)(6116002)(86362001)(790700001)(102836003)(97736004)(8666005)(5660300001)(122556002)(2501003)(25786008)(3660700001)(105586002)(66066001)(81156014)(8676002)(106356001)(54356999)(50986999)(81166006)(76176999)(101416001)(68736007)(6506006)(77096006)(8936002)(33656002)(7696004)(2900100001)(9686002)(606005)(74316002)(76576001)(6436002)(3280700002)(107886002)(2950100002)(7059030);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB1880;
	H:DB6PR0701MB1879.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: net2edge.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2016 14:13:46.1708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 851184e8-8658-4a6a-973d-aa012bcc8794
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB1880
Subject: Re: Build one package from a split package recipe
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
X-List-Received-Date: Mon, 19 Dec 2016 14:47:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0701MB187973F62E2ADC0D6CD6D67BD3910DB6PR0701MB1879_"

--_000_DB6PR0701MB187973F62E2ADC0D6CD6D67BD3910DB6PR0701MB1879_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

?  Now when I fire a bitbake command like "bitbake test" all the packages l=
isted into the recipe get build. But sometime I need to build only one pack=
age say test1.

?

?  How that can be achieved as when I tried "bitbake test1" its reports bel=
ow error

?  ERROR: Nothing PROVIDES test1'

I think you would need to define a recipe for each target you wanted to bui=
ld.  You could still have a top level recipe that depended on them all and =
caused them all to be generated.

Thomas A. F. Thorne<mailto:Thomas.Thorne@Net2Edge.com>  Software Engineer  =
Net2Edge<http://www.net2edge.com/>


--_000_DB6PR0701MB187973F62E2ADC0D6CD6D67BD3910DB6PR0701MB1879_
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
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
	{mso-list-id:861554516;
	mso-list-type:hybrid;
	mso-list-template-ids:130066992 198989114 134807555 134807557 134807553 13=
4807555 134807557 134807553 134807555 134807557;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:Arial;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
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
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span style=3D"font-family:Wingdings;color:#0=
06600;mso-fareast-language:EN-US"><span style=3D"mso-list:Ignore">&Oslash;<=
span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-family:&quot;Arial&quot;=
,sans-serif;color:#006600;mso-fareast-language:EN-US">Now when I fire a bit=
bake command like &#8220;bitbake test&#8221; all the packages listed into t=
he recipe get build. But sometime I need to build only one
 package say test1.<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span style=3D"font-family:Wingdings;color:#0=
06600;mso-fareast-language:EN-US"><span style=3D"mso-list:Ignore">&Oslash;<=
span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-family:&quot;Arial&quot;=
,sans-serif;color:#006600;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span style=3D"font-family:Wingdings;color:#0=
06600;mso-fareast-language:EN-US"><span style=3D"mso-list:Ignore">&Oslash;<=
span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-family:&quot;Arial&quot;=
,sans-serif;color:#006600;mso-fareast-language:EN-US">How that can be achie=
ved as when I tried &#8220;bitbake test1&#8221; its reports below error<o:p=
></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span style=3D"font-family:Wingdings;color:#0=
06600;mso-fareast-language:EN-US"><span style=3D"mso-list:Ignore">&Oslash;<=
span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;
</span></span></span><![endif]><span style=3D"font-family:&quot;Arial&quot;=
,sans-serif;color:#006600;mso-fareast-language:EN-US">ERROR: Nothing PROVID=
ES test1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#006600;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#006600;mso-fareast-language:EN-US">I think you would need to def=
ine a recipe for each target you wanted to build.&nbsp; You could still hav=
e a top level recipe that depended on them all and
 caused them all to be generated.&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#006600;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#434244"><a href=3D"mailto:Thomas.Thorne@Net2Edge.com"><span styl=
e=3D"color:#434244;text-decoration:none">Thomas A. F. Thorne</span></a>&nbs=
p;
<b>Software Engineer</b>&nbsp; <a href=3D"http://www.net2edge.com/"><span s=
tyle=3D"color:#434244;text-decoration:none">Net</span><span style=3D"color:=
#208CA6;text-decoration:none">2</span><span style=3D"color:#434244;text-dec=
oration:none">Edge</span></a><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DB6PR0701MB187973F62E2ADC0D6CD6D67BD3910DB6PR0701MB1879_--
