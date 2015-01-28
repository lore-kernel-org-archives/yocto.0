Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29CB0E0087C; Wed, 28 Jan 2015 13:57:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-ut.atk.com (mx-ut.atk.com [192.107.250.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0786E00858
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 13:56:44 -0800 (PST)
Received: from unknown (HELO UT40SVEH3.atk.com) ([146.168.70.140])
	by mx-ut.atk.com with ESMTP; 28 Jan 2015 15:50:38 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.192]) by UT40SVEH3.atk.com
	([146.168.78.8]) with mapi id 14.03.0174.001;
	Wed, 28 Jan 2015 14:56:43 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Shell not processing color escape codes
Thread-Index: AdA7RN4B0XDa1KMrRzKoHECUhWqgmQ==
Date: Wed, 28 Jan 2015 21:56:42 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7416E7@UT40SVCWEM001.atk.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.32.35]
MIME-Version: 1.0
Subject: Shell not processing color escape codes
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
X-List-Received-Date: Wed, 28 Jan 2015 21:57:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7416E7UT40SVCWEM001at_"

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7416E7UT40SVCWEM001at_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

In my image, I've included systemd. I've noticed that when running the syst=
emctl command, the shell (/bin/sh) is not processing the color escape codes=
. Here's an example of what it looks like:

[[1;39m82 loaded units listed.[[0m Pass -all to see loaded but inactive uni=
ts, too.

Any suggestions on how I can either get the shell to process the escape cod=
es or prevent systemctl from generating them?

Thanks,

Thomas


--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7416E7UT40SVCWEM001at_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In my image, I&#8217;ve included systemd. I&#8217;ve=
 noticed that when running the systemctl command, the shell (/bin/sh) is no=
t processing the color escape codes. Here&#8217;s an example of what it loo=
ks like:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[[1;39m82 loaded units listed.[[0m Pass &#8211;all t=
o see loaded but inactive units, too.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any suggestions on how I can either get the shell to=
 process the escape codes or prevent systemctl from generating them?<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Thomas</b><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7416E7UT40SVCWEM001at_--
