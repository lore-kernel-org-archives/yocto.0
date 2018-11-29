Return-Path: <Klaus.Noeske@indu-sol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC9C2E00C94; Thu, 29 Nov 2018 00:34:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 300 seconds by postgrey-1.32 at yocto-www;
	Thu, 29 Nov 2018 00:34:08 PST
Received: from mail.indu-sol.com (mail.indu-sol.com [92.79.72.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43EF5E00BFD
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2018 00:34:07 -0800 (PST)
From: =?iso-8859-1?Q?Indu-Sol_GmbH=2C_Klaus_N=F6ske?=
	<Klaus.Noeske@indu-sol.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto version thud busybox build failed: rpc/rpc.h - No such file
Thread-Index: AdSHvJYVICes6ng4ShmFpGEJ03xbpw==
Date: Thu, 29 Nov 2018 08:29:05 +0000
Message-ID: <A2C130CD097EC048BAC89FFB315E00FC939C61EE@INDU-EXC.indu-sol.intra>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Yocto version thud busybox build failed: rpc/rpc.h - No such file
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
X-List-Received-Date: Thu, 29 Nov 2018 08:34:09 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_A2C130CD097EC048BAC89FFB315E00FC939C61EEINDUEXCindusoli_"

--_000_A2C130CD097EC048BAC89FFB315E00FC939C61EEINDUEXCindusoli_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I try to migrate my project from fido to thud. Currently I have problems to=
 build busybox. It fails with error: rpc/rpc.h - No such file. This was alr=
eady mentioned here: https://lists.yoctoproject.org/pipermail/yocto/2018-Ma=
y/041163.html. But I was not able to find the solution there.
My build host is Ubuntu 16.04 (x86_64) and my target is an ARM board/device=
.
The "thud" commit I use is: 94b13882510561b4ab7c08fd0343038c154680a4 (sanit=
y: Add check for WSL)

What can I do to solve this problem?
Thanks

BR
Klaus

--_000_A2C130CD097EC048BAC89FFB315E00FC939C61EEINDUEXCindusoli_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I try to migrate my project fro=
m fido to thud. Currently I have problems to build busybox. It fails with e=
rror: rpc/rpc.h - No such file. This was already mentioned here:
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-May/041163.h=
tml">https://lists.yoctoproject.org/pipermail/yocto/2018-May/041163.html</a=
>. But I was not able to find the solution there.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">My build host is Ubuntu 16.04 (=
x86_64) and my target is an ARM board/device.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">The &#8220;thud&#8221; commit I=
 use is: 94b13882510561b4ab7c08fd0343038c154680a4 (sanity: Add check for WS=
L)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">What can I do to solve this pro=
blem?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">BR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Klaus<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_A2C130CD097EC048BAC89FFB315E00FC939C61EEINDUEXCindusoli_--
