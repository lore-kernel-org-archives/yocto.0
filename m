Return-Path: <Alok.Pawar3@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA70CE00BE2; Wed, 28 Jun 2017 21:30:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.209 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47CCEE00BDC
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 21:30:21 -0700 (PDT)
Received: from [216.82.241.195] by server-17.bemta-8.messagelabs.com id
	8E/3C-01734-C5284595; Thu, 29 Jun 2017 04:30:20 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOKsWRWlGSWpSXmKPExsVySpdNUzemKST
	S4Ekfj8Wkl2vYHBg92k/0sQUwRrFm5iXlVySwZrz5uI+94JdcxbrvH9kbGJtluhi5OIQEtjJK
	HD54hw3C2cIosbh1M1MXIyeQs5dRYsHyOhCbTUBH4vGHO6wgtoiAqcSLY1/YQGxhATOJHatus
	EPErSWuvFoMVaMnMf3wW7A5LAKqEnc6TzKD2LwC7hIb160Hq2EUEJP4fmoNWA2zgLjErSfzwW
	wJAQGJJXvOM0PYohIvH/9jhbANJLYu3ccCYStIrOxuYIOwrSX2z1vKCjEnR2LX7TWMELsEJU7
	OfMIC8YuyxJ5HDYwTGEVmIVk3C0nLLCQtEHEdiQW7P7FB2NoSyxa+Zoaxzxx4zIQsvoCRfRWj
	RnFqUVlqka6RoV5SUWZ6RkluYmaOrqGBhV5uanFxYnpqTmJSsV5yfu4mRmCE1TMwMO5g3Hne/
	RCjJAeTkihvdEJIpBBfUn5KZUZicUZ8UWlOavEhRhkODiUJ3rhGoJxgUWp6akVaZg4w1mHSEh
	w8SiK87wuB0rzFBYm5xZnpEKlTjIpS4ryWIH0CIImM0jy4Nlh6ucQoKyXMy8jAwCDEU5BalJt
	Zgir/ilGcg1FJmDcYZApPZl4J3PRXQIuZgBazzAsAWVySiJCSamCsVNKpnnLnsVfvLJuFRr7W
	VxcFHr0uWBHd5+2Suf4Vh63tJ643MVOVd+z4rnn2hAtXYNs1s6QLxuZ9jpNXXHyawtDCMuXMt
	wd3Wivj9n00CMj+Z30wq/jB7LbXxXd6NxUZPZu5RNz429LZl1bzx0j1M3PyGpttfjj9wMXQ1C
	VBGm1CMUdP7mhVYinOSDTUYi4qTgQA+fcWNCoDAAA=
X-Env-Sender: Alok.Pawar3@harman.com
X-Msg-Ref: server-7.tower-119.messagelabs.com!1498710616!112290900!2
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.19; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 30288 invoked from network); 29 Jun 2017 04:30:19 -0000
Received: from unknown (HELO HIBDWSMB10.ad.harman.com) (202.45.6.41)
	by server-7.tower-119.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 29 Jun 2017 04:30:19 -0000
Received: from HIBDWSMB05.ad.harman.com (10.99.236.95) by
	HIBDWSMB10.ad.harman.com (10.99.236.101) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Thu, 29 Jun 2017 09:59:33 +0530
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HIBDWSMB05.ad.harman.com (10.99.236.95) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Thu, 29 Jun 2017 09:59:31 +0530
Received: from HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348]) by
	HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348%13]) with mapi id
	15.00.1263.000; Thu, 29 Jun 2017 09:59:31 +0530
From: "Pawar, Alok" <Alok.Pawar3@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Compilation error : No GNU_HASH in elf bianry
Thread-Index: AdLwkESRv3QxBVYnT06vjvqmbmUdgg==
Date: Thu, 29 Jun 2017 04:29:31 +0000
Message-ID: <2f3e1cd085204ac480e2435922a9cce1@HIBDWSMB03.ad.harman.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Subject: Compilation error : No GNU_HASH in elf bianry
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
X-List-Received-Date: Thu, 29 Jun 2017 04:30:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2f3e1cd085204ac480e2435922a9cce1HIBDWSMB03adharmancom_"

--_000_2f3e1cd085204ac480e2435922a9cce1HIBDWSMB03adharmancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using krogoth release and I am facing one issue in custom bitbake file=
.

When I am doing bitbake with custom bb file the following error is coming :
"No GNU_HASH in the elf binary"
In custom bb file, I am trying to copy precompiled binary and library.
I tried also with Flag : FILES_${PN} +=3D , but face same issue.

Best Regards
Alok Pawar
Sr. Engineer Product Development
Harman Connected Services



--_000_2f3e1cd085204ac480e2435922a9cce1HIBDWSMB03adharmancom_
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
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using krogoth release and I am facing one issue=
 in custom bitbake file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I am doing bitbake with custom bb file the foll=
owing error is coming :<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;No GNU_HASH in the elf binary&#8221;<o:p></o:=
p></p>
<p class=3D"MsoNormal">In custom bb file, I am trying to copy precompiled b=
inary and library.<o:p></o:p></p>
<p class=3D"MsoNormal">I tried also with Flag : FILES_${PN} &#43;=3D , but =
face same issue.<o:p></o:p></p>
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_2f3e1cd085204ac480e2435922a9cce1HIBDWSMB03adharmancom_--
