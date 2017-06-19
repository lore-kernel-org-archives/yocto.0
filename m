Return-Path: <Alok.Pawar3@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 612ADE00B63; Sun, 18 Jun 2017 23:11:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, HTML_IMAGE_RATIO_08,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.251.6 listed in list.dnswl.org]
	* 0.0 HTML_IMAGE_RATIO_08 BODY: HTML has a low ratio of text to image
	area * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BD0AE00AF0
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 23:11:38 -0700 (PDT)
Received: from [216.82.250.51] by server-6.bemta-12.messagelabs.com id
	98/FC-31091-61B67495; Mon, 19 Jun 2017 06:11:34 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrIKsWRWlGSWpSXmKPExsVySpdNU1c02z3
	S4PJGeYtJL9ewOTB6tJ/oYwtgjGLNzEvKr0hgzVh09D5TwbNLjBWLzn1mbWA8eJqxi5GTQ0hg
	K6PEl2vaEPYWRokds126GLmA7L1A9r3ZLCAJNgEdiccf7rCC2CICphIvjn1hA7GFBZQkdny/y
	A4RV5d4vO4TE4StJ9H8rB+snkVAVeLVg3lgy3gF3CUu7ewAizMKiEl8P7UGrJ5ZQFzi1pP5YL
	aEgIjEw4un2SBsUYmXj/+xQtgGEluX7mOBsBUkVnY3QNVYS+yft5QVYk47o8SjzSYQuwQlTs5
	8wgLxmLLEnkcNjBMYRWYhWTcLScssJC0Q8RyJ2ada2CFsHYkFuz+xQdjaEssWvmaGsc8ceMyE
	Ka4rMWlvAyuErSjxbOsyIJsLyF7CKLFo7k4mmKF7tq1lhCma0v2QfQEj7ypGjeLUorLUIl0jQ
	72kosz0jJLcxMwcXUNDI73c1OLixPTUnMSkYr3k/NxNjMCor2dgYNzB2D7d6xCjJAeTkijva1
	P3SCG+pPyUyozE4oz4otKc1OJDjDIcHEoSvIsygXKCRanpqRVpmTnA9AOTluDgURLhlY8CSvM
	WFyTmFmemQ6ROMSpKifPaZgElBEASGaV5cG2wlHeJUVZKmJeRgYFBiKcgtSg3swRV/hWjOAej
	kjDvjTSgKTyZeSVw018BLWYCWsx8xgVkcUkiQkqqgbHgmWFcZenKPUoNKib39rCbK+np1ywwC
	FfiC9ycVqC+tmH28bmGmddPXZ7+/1rb3H7evR+zfz6+P1H0a9e2vrL6qFqr3wKWR0+5aGirWM
	z9cZ+7/vLSKFbXni7fhRuqGiJ9WqyV5p+zO+k/Z7HmBv8MrQ6v827RZVo81hE2wmbL6z8d7Ik
	+qcRSnJFoqMVcVJwIAFsJUm10AwAA
X-Env-Sender: Alok.Pawar3@harman.com
X-Msg-Ref: server-6.tower-108.messagelabs.com!1497852670!117637009!15
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.19; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 732 invoked from network); 19 Jun 2017 06:11:33 -0000
Received: from unknown (HELO HIBDWSMB10.ad.harman.com) (202.45.6.41)
	by server-6.tower-108.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 19 Jun 2017 06:11:33 -0000
Received: from HIBDWSMB04.ad.harman.com (10.99.236.94) by
	HIBDWSMB10.ad.harman.com (10.99.236.101) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Mon, 19 Jun 2017 11:41:21 +0530
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HIBDWSMB04.ad.harman.com (10.99.236.94) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Mon, 19 Jun 2017 11:41:20 +0530
Received: from HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348]) by
	HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348%13]) with mapi id
	15.00.1263.000; Mon, 19 Jun 2017 11:41:21 +0530
From: "Pawar, Alok" <Alok.Pawar3@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Openjdk-8 fetcher failure
Thread-Index: AdLowktVj4abpQzDTAGInlO0fa2utg==
Date: Mon, 19 Jun 2017 06:11:20 +0000
Message-ID: <2ea62f0ed3fc4c94960c6ac199d94061@HIBDWSMB03.ad.harman.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Subject: Openjdk-8 fetcher failure
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
X-List-Received-Date: Mon, 19 Jun 2017 06:11:49 -0000
X-Groupsio-MsgNum: 36646
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_2ea62f0ed3fc4c94960c6ac199d94061HIBDWSMB03adharmancom_"; 
	type="multipart/alternative"

--_004_2ea62f0ed3fc4c94960c6ac199d94061HIBDWSMB03adharmancom_
Content-Type: multipart/alternative;
	boundary="_000_2ea62f0ed3fc4c94960c6ac199d94061HIBDWSMB03adharmancom_"

--_000_2ea62f0ed3fc4c94960c6ac199d94061HIBDWSMB03adharmancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am using yocto 2.1.2 krogoth, and I added meta-java in it, but when I tri=
ed to bitbake. I faced fetcher failure, following are the Error :

ERROR: openjdk-8-102b14-r0 do_fetch: Fetcher failure: Fetch command failed =
with exit code 4, output:
Read error (Connection timed out) in headers.
Read error (Connection timed out) in headers.

ERROR: openjdk-8-102b14-r0 do_fetch: Function failed: Fetcher failure for U=
RL: 'http://hg.openjdk.java.net/jdk8u/jdk8u/hotspot/archive/ac29c9c1193a.ta=
r.bz2;name=3Dhotspot;unpack=3Dfalse'. Unable to fetch URL from any source.

Please give your inputs.


Best Regards
Alok Pawar
Sr. Engineer Product Development
Harman Connected Services

Building no:-10, Tower:-C, IInd floor, DLF cyber city, Gurgaon - 122002
Office: +911243884700
Mobile: +91 8505 88 7117
Email: alok.pawar3@harman.com<mailto:alok.pawar3@harman.com>
Web: www.harman.com<http://www.harman.com>
[Email_Signature_Template_Image]
Confidentiality Notice: This e-mail message, including any attachments, is =
for the sole use of the intended recipient(s) and may contain confidential =
and privileged information. Any unauthorized review, use, disclosure or dis=
tribution is prohibited. If you are not the intended recipient, please cont=
act the sender by return e-mail and destroy all copies of the original mess=
age.



--_000_2ea62f0ed3fc4c94960c6ac199d94061HIBDWSMB03adharmancom_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Gill Sans MT";
	panose-1:2 11 5 2 2 1 4 2 2 3;}
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
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using yocto 2.1.2 krogoth, and I added meta-jav=
a in it, but when I tried to bitbake. I faced fetcher failure, following ar=
e the Error :<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: openjdk-8-102b14-r0 do_fetch: Fetcher failure=
: Fetch command failed with exit code 4, output:<o:p></o:p></p>
<p class=3D"MsoNormal">Read error (Connection timed out) in headers.<o:p></=
o:p></p>
<p class=3D"MsoNormal">Read error (Connection timed out) in headers.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: openjdk-8-102b14-r0 do_fetch: Function failed=
: Fetcher failure for URL: 'http://hg.openjdk.java.net/jdk8u/jdk8u/hotspot/=
archive/ac29c9c1193a.tar.bz2;name=3Dhotspot;unpack=3Dfalse'. Unable to fetc=
h URL from any source.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please give your inputs.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Best Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Gill Sans MT&quot;,sans-serif">Alok Pawar<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Sr. Engineer Product Development<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Harman Connected Services<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Building no:-10, Tower:-C, IInd floor, DLF cybe=
r city, Gurgaon - 122002<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Office: &#43;911243884700<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Mobile: &#43;91 8505 88 7117<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Email:
<a href=3D"mailto:alok.pawar3@harman.com"><span style=3D"color:blue">alok.p=
awar3@harman.com</span></a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Web:
</span><a href=3D"http://www.harman.com"><span style=3D"font-size:8.0pt;fon=
t-family:&quot;Gill Sans MT&quot;,sans-serif;color:blue">www.harman.com</sp=
an></a><o:p></o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"779" height=3D"209" id=3D=
"Picture_x0020_1" src=3D"cid:image003.jpg@01D2E8F0.F7748790" alt=3D"Email_S=
ignature_Template_Image"><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"NL" style=3D"font-size:6.0pt">Confiden=
tiality Notice: This e-mail message, including any attachments, is for the =
sole use of the intended recipient(s) and may contain confidential and priv=
ileged information. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please contact the sender by return e-mail and destroy all copi=
es of the original message.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_2ea62f0ed3fc4c94960c6ac199d94061HIBDWSMB03adharmancom_--

--_004_2ea62f0ed3fc4c94960c6ac199d94061HIBDWSMB03adharmancom_
Content-Type: image/jpeg; name="image003.jpg"
Content-Description: image003.jpg
Content-Disposition: inline; filename="image003.jpg"; size=14139;
	creation-date="Mon, 19 Jun 2017 06:11:19 GMT";
	modification-date="Mon, 19 Jun 2017 06:11:19 GMT"
Content-ID: <image003.jpg@01D2E8F0.F7748790>
Content-Transfer-Encoding: base64

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

--_004_2ea62f0ed3fc4c94960c6ac199d94061HIBDWSMB03adharmancom_--
