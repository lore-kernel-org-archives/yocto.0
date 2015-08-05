Return-Path: <Amit.Kumar@lnttechservices.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13789E00AB7; Tue,  4 Aug 2015 22:45:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Aug 2015 22:45:18 PDT
Received: from mailout1.ltindia.com (mailout1.ltindia.com [203.199.60.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4E93E00AB4
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 22:45:18 -0700 (PDT)
Received: from unknown (HELO POCITMSEXHUB03.LntUniverse.com) ([10.2.1.60])
	by mailout1.ltindia.com with ESMTP; 05 Aug 2015 11:14:10 +0530
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB03.LntUniverse.com ([10.2.1.60]) with mapi id
	14.03.0181.006; Wed, 5 Aug 2015 11:14:09 +0530
From: Amit Kumar <Amit.Kumar@LNTTECHSERVICES.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: qemux86 and generic86
Thread-Index: AdDPQF2QPAHAFt5eR2aEdSTDavew3g==
Date: Wed, 5 Aug 2015 05:44:08 +0000
Message-ID: <6A20517C7F5548459920A3A2C95FABA8770A25@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.1.199]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 05 Aug 2015 20:59:40 -0700
Subject: qemux86 and generic86
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
X-List-Received-Date: Wed, 05 Aug 2015 05:45:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6A20517C7F5548459920A3A2C95FABA8770A25POCITMSEXMB03LntU_"

--_000_6A20517C7F5548459920A3A2C95FABA8770A25POCITMSEXMB03LntU_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a basic doubts on qemux86 build application image is not working on =
generic86 target.
Suppose I have a application which I would like to test on target board, bu=
t the target board is not yet ready. If I will want to test that applicatio=
n I will use the qemu  to test.
But if I build the application for qemu, it does not work for actual target=
 board.
Could you please let me know the details reason. If I want to do like that =
what I should have to do.


Thanks & Regards
Amit

L&T Technology Services Ltd

www.LntTechservices.com<http://www.lnttechservices.com/>

This Email may contain confidential or privileged information for the inten=
ded recipient (s). If you are not the intended recipient, please do not use=
 or disseminate the information, notify the sender and delete it from your =
system.

--_000_6A20517C7F5548459920A3A2C95FABA8770A25POCITMSEXMB03LntU_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a basic doubts on qemux86 build application i=
mage is not working on generic86 target.
<o:p></o:p></p>
<p class=3D"MsoNormal">Suppose I have a application which I would like to t=
est on target board, but the target board is not yet ready. If I will want =
to test that application I will use the qemu&nbsp; to test.
<o:p></o:p></p>
<p class=3D"MsoNormal">But if I build the application for qemu, it does not=
 work for actual target board.
<o:p></o:p></p>
<p class=3D"MsoNormal">Could you please let me know the details reason. If =
I want to do like that what I should have to do.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks &amp; Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Amit &nbsp;<o:p></o:p></p>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</body>
</html>

--_000_6A20517C7F5548459920A3A2C95FABA8770A25POCITMSEXMB03LntU_--
