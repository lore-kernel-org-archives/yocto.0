Return-Path: <vincent.chin.keong.kok@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 673B1E00DEB; Tue,  9 Jan 2018 03:55:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA7A8E00A00
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 03:55:36 -0800 (PST)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jan 2018 03:55:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,335,1511856000"; 
	d="png'150?scan'150,208,217,150";a="8998085"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
	by orsmga007.jf.intel.com with ESMTP; 09 Jan 2018 03:55:33 -0800
Received: from pgsmsx111.gar.corp.intel.com ([169.254.2.98]) by
	PGSMSX103.gar.corp.intel.com ([169.254.2.108]) with mapi id
	14.03.0319.002; Tue, 9 Jan 2018 19:55:32 +0800
From: "Kok, Vincent Chin Keong" <vincent.chin.keong.kok@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Upgrading Yocto Project Version - To Rocko
Thread-Index: AdOJQKWKB5lhfWrJSMemlihxJ3AcTw==
Date: Tue, 9 Jan 2018 11:55:25 +0000
Message-ID: <04146D936EE8544DA96D472768509EC31AAD3DA9@PGSMSX111.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNGJlMDM0YTQtOWVkZi00Y2E5LTlmNTgtODZkZTI3ODE0MzRiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJjOGNrXC9SWHJNZ1pRQTRDZytyd0pzU2pCVnJXczdaN3dhdlZvRkk4Ylo5ZkpRaHpad2NcL2R0cFdENkpKcnVKRGkifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Upgrading Yocto Project Version - To Rocko
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
X-List-Received-Date: Tue, 09 Jan 2018 11:55:37 -0000
X-Groupsio-MsgNum: 39460
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_04146D936EE8544DA96D472768509EC31AAD3DA9PGSMSX111garcor_";
	type="multipart/alternative"

--_004_04146D936EE8544DA96D472768509EC31AAD3DA9PGSMSX111garcor_
Content-Type: multipart/alternative;
	boundary="_000_04146D936EE8544DA96D472768509EC31AAD3DA9PGSMSX111garcor_"

--_000_04146D936EE8544DA96D472768509EC31AAD3DA9PGSMSX111garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi there,



I am new to the Yocto project and currently I have Yocto version 1.8 (Fido)=
 installed on my Linux workstation.



I was wondering, how can I upgrade to Yocto version 2.4 (Rocko)? Do I just =
remove the previous poky folder I downloaded and re-download a newer versio=
n of poky and checkout the branch and tags?



Do share with me if any of you have the experience.


THANK YOU! :)

Vincent Kok
Platform Application Engineer
IOTG Customer Engineering Division (Transportation)
Internet of Things Group (IOTG)
[For makers]


--_000_04146D936EE8544DA96D472768509EC31AAD3DA9PGSMSX111garcor_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
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
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Brush Script MT";
	panose-1:3 6 8 2 4 4 6 7 3 4;}
@font-face
	{font-family:"Intel Clear Pro";
	panose-1:2 11 8 4 2 2 2 6 2 1;}
@font-face
	{font-family:"Intel Clear";
	panose-1:2 11 6 4 2 2 3 2 2 4;}
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Intel Clear",sans-serif;
	color:#002060;}
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
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:4.5pt;mar=
gin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#1D2129">Hi there,<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:4.5pt;margin-right:0in;margin-bottom:4.5pt;m=
argin-left:0in;background:white;font-variant-ligatures: normal;font-variant=
-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-stroke-wid=
th: 0px;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#1D2129"><o:p>&nbsp;</o:p></span></p>
<p style=3D"mso-margin-top-alt:4.5pt;margin-right:0in;margin-bottom:4.5pt;m=
argin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#1D2129">I am new to the Yocto project and currently I have Yocto v=
ersion 1.8 (Fido) installed on my Linux workstation.
<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:4.5pt;margin-right:0in;margin-bottom:4.5pt;m=
argin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#1D2129"><o:p>&nbsp;</o:p></span></p>
<p style=3D"mso-margin-top-alt:4.5pt;margin-right:0in;margin-bottom:4.5pt;m=
argin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#1D2129">I was wondering, how can I upgrade to Yocto version 2.4 (R=
ocko)? Do I just remove the previous poky folder I downloaded and re-downlo=
ad a newer version of poky and checkout the
 branch and tags?<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:4.5pt;margin-right:0in;margin-bottom:4.5pt;m=
argin-left:0in;background:white;font-variant-ligatures: normal;font-variant=
-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-stroke-wid=
th: 0px;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#1D2129"><o:p>&nbsp;</o:p></span></p>
<p style=3D"mso-margin-top-alt:4.5pt;margin-right:0in;margin-bottom:4.5pt;m=
argin-left:0in;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#1D2129">Do share with me if any of you have the experience.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear&quot;,s=
ans-serif;color:#002060"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Intel Clear&quot;,s=
ans-serif;color:#002060"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;font-family:&quot;In=
tel Clear Pro&quot;,sans-serif;color:#002060">THANK YOU!
</span><span style=3D"font-size:16.0pt;font-family:Wingdings;color:#002060"=
>J</span><span style=3D"font-size:16.0pt;font-family:&quot;Intel Clear Pro&=
quot;,sans-serif;color:#002060"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:16.0pt;font-family:&quot;In=
tel Clear Pro&quot;,sans-serif;color:#002060"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><i><span style=3D"font-size:18.0pt;font-family:&q=
uot;Brush Script MT&quot;;color:#0070C0">Vincent Kok<o:p></o:p></span></i><=
/b></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:8.0pt;font-family:&quot;=
Intel Clear&quot;,sans-serif;color:#0070C0">Platform Application Engineer
<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:8.0pt;font-family:&quot;=
Intel Clear&quot;,sans-serif;color:#0070C0">IOTG Customer Engineering Divis=
ion (Transportation)
<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:8.0pt;font-family:&quot;=
Intel Clear&quot;,sans-serif;color:#0070C0">Internet of Things Group (IOTG)=
<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Int=
el Clear&quot;,sans-serif;color:#0070C0"><img width=3D"167" height=3D"54" i=
d=3D"Picture_x0020_1" src=3D"cid:image002.png@01D38983.C9A19F90" alt=3D"For=
 makers"></span><span style=3D"color:#002060"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_04146D936EE8544DA96D472768509EC31AAD3DA9PGSMSX111garcor_--

--_004_04146D936EE8544DA96D472768509EC31AAD3DA9PGSMSX111garcor_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=22727;
	creation-date="Tue, 09 Jan 2018 11:55:25 GMT";
	modification-date="Tue, 09 Jan 2018 11:55:25 GMT"
Content-ID: <image002.png@01D38983.C9A19F90>
Content-Transfer-Encoding: base64

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

--_004_04146D936EE8544DA96D472768509EC31AAD3DA9PGSMSX111garcor_--
