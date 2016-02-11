Return-Path: <sagar.bhanagay@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08587E00C29; Thu, 11 Feb 2016 09:43:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.240.92.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 7792 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Feb 2016 09:43:00 PST
Received: from g9t5009.houston.hp.com (g9t5009.houston.hp.com [15.240.92.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD2F7E00C1F
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 09:43:00 -0800 (PST)
Received: from G9W8453.americas.hpqcorp.net (g9w8453.houston.hp.com
	[16.216.160.211])
	(using TLSv1.2 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t5009.houston.hp.com (Postfix) with ESMTPS id D360358
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 17:42:59 +0000 (UTC)
Received: from G9W8453.americas.hpqcorp.net (16.216.160.211) by
	G9W8453.americas.hpqcorp.net (16.216.160.211) with Microsoft SMTP
	Server (TLS) id 15.0.1076.9; Thu, 11 Feb 2016 17:42:42 +0000
Received: from G4W6305.americas.hpqcorp.net (16.210.26.230) by
	G9W8453.americas.hpqcorp.net (16.216.160.211) with Microsoft SMTP
	Server (TLS) id 15.0.1076.9 via Frontend Transport;
	Thu, 11 Feb 2016 17:42:42 +0000
Received: from G4W3233.americas.hpqcorp.net ([169.254.5.127]) by
	G4W6305.americas.hpqcorp.net ([16.210.26.230]) with mapi id
	14.03.0169.001; Thu, 11 Feb 2016 17:42:19 +0000
From: "Bhanagay, Sagar" <sagar.bhanagay@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Need some info regarding parsing all recipe files
Thread-Index: AdFk4Mzj5RAb0s8ETv6HWg0jBxykjgAEmPVg
Date: Thu, 11 Feb 2016 17:42:19 +0000
Message-ID: <EC8BB00EF68CF14E9A15000E115CBC8102C167@G4W3233.americas.hpqcorp.net>
References: <EC8BB00EF68CF14E9A15000E115CBC8102BE8A@G4W3233.americas.hpqcorp.net>
In-Reply-To: <EC8BB00EF68CF14E9A15000E115CBC8102BE8A@G4W3233.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.210.192.232]
MIME-Version: 1.0
Subject: Need some info regarding parsing all recipe files
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
X-List-Received-Date: Thu, 11 Feb 2016 17:43:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_EC8BB00EF68CF14E9A15000E115CBC8102C167G4W3233americashp_"

--_000_EC8BB00EF68CF14E9A15000E115CBC8102C167G4W3233americashp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm Sagar & I work for the HPE Openswitch project.
I'm new to Yocto & do forgive my naivety.

We use Yocto for building our NOS images & I plan to do the following -
I want to go through all the recipe files & print out one field (say SRCREV=
) from them (if it exists) to a file.
I also want this file to be packaged in the image (at say - /etc/srcrev.txt=
).
I can do that by writing a Python script, but I was exploring if there's an=
y native way that Yocto supports to do that.

I don't want to change any recipe file to include any "config_prepend" clau=
se or so.
Is there some way (maybe tweaking the base class?) in which I can achieve t=
his?

If I were to write a custom Python script, how do I trigger it during make?

Thanks
~Sagar

--_000_EC8BB00EF68CF14E9A15000E115CBC8102C167G4W3233americashp_
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
	{mso-style-type:personal;
	font-family:"Courier New";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Courier New";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
I&#8217;m Sagar &amp; I work for the HPE Openswitch project.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
I&#8217;m new to Yocto &amp; do forgive my naivety.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
We use <span style=3D"color:black">
Yocto for building our NOS images </span>&amp; I plan to do the following &=
#8211; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
I want to go through all the recipe files &amp; print out one field (say SR=
CREV) from them (if it exi<span style=3D"color:black">sts) to a file</span>=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;;c=
olor:black">I also want this file to be packaged in the image (at say - /et=
c/srcrev.txt).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
I can do that by writing a Python script, but I was exploring if there&#821=
7;s any native way that Yocto supports to do that.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
I don&#8217;t want to change any recipe file to include any &#8220;config_p=
repend&#8221; clause or so.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Is there some way (maybe tweaking the base class?) in which I can achieve t=
his?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
If I were to write a custom Python script, how do I trigger it during make?=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
~Sagar<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_EC8BB00EF68CF14E9A15000E115CBC8102C167G4W3233americashp_--
