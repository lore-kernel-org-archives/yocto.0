Return-Path: <external.vrajendran@de.adit-jv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AEF2E00C89; Mon, 18 Sep 2017 23:40:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp1.de.adit-jv.com (smtp1.de.adit-jv.com [62.225.105.245])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27CC4E00A38
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 23:40:00 -0700 (PDT)
Received: from localhost (smtp1.de.adit-jv.com [127.0.0.1])
	by smtp1.de.adit-jv.com (Postfix) with ESMTP id 2E6943C02A3
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 08:39:59 +0200 (CEST)
Received: from smtp1.de.adit-jv.com ([127.0.0.1])
	by localhost (smtp1.de.adit-jv.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id e5ylKSMfQAWU for <yocto@yoctoproject.org>;
	Tue, 19 Sep 2017 08:39:53 +0200 (CEST)
Received: from HI2EXCH01.adit-jv.com (hi2exch01.adit-jv.com [10.72.92.24])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp1.de.adit-jv.com (Postfix) with ESMTPS id 730673C0012
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 08:39:53 +0200 (CEST)
Received: from HI2EXCH01.adit-jv.com ([fe80::69bf:8148:2f13:f289]) by
	HI2EXCH01.adit-jv.com ([fe80::69bf:8148:2f13:f289%12]) with mapi id
	14.03.0361.001; Tue, 19 Sep 2017 08:39:53 +0200
From: "Rajendran, Vignesh (RBEI/ECF3; ADITG/SW2)"
	<external.vrajendran@de.adit-jv.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] externalsrc: enable sstate for git srctrees based on
	makefile
Thread-Index: AdMxEfh1VjXkmzhIS3GAWqwcUECkoA==
Date: Tue, 19 Sep 2017 06:39:52 +0000
Message-ID: <AA675284509C9741BF10EAC9FAA8BCC25939FD@HI2EXCH01.adit-jv.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.72.92.124]
MIME-Version: 1.0
Subject: externalsrc: enable sstate for git srctrees based on makefile
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
X-List-Received-Date: Tue, 19 Sep 2017 06:40:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AA675284509C9741BF10EAC9FAA8BCC25939FDHI2EXCH01aditjvco_"

--_000_AA675284509C9741BF10EAC9FAA8BCC25939FDHI2EXCH01aditjvco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Yocto,

I am already aware of sstate never works for externalsrc recipes.

My environment is using externalsrc in recipes for makefile based sources i=
n git.

I am aware that the source is not going to change and only builds one time =
in my production build.

I want to use sstate if nothing has changed in my next build/bitbake.

Is it possible to enable setscene tasks if the source is in git and srctree=
_hash_files reports nothing has been changed in git srctree?
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/externals=
rc.bbclass#n181

Do I have to consider some other constraints as well?

Thanks in Advance.

Best regards

Vignesh Rajendran

--_000_AA675284509C9741BF10EAC9FAA8BCC25939FDHI2EXCH01aditjvco_
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Yocto,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am already aware of sstate never works for externa=
lsrc recipes.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My environment is using externalsrc in recipes for m=
akefile based sources in git.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am aware that the source is not going to change an=
d only builds one time in my production build.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I want to use sstate if nothing has changed in my ne=
xt build/bitbake.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it possible to enable setscene tasks if the sourc=
e is in git and srctree_hash_files reports nothing has been changed in git =
srctree?<o:p></o:p></p>
<p class=3D"MsoNormal">https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree=
/meta/classes/externalsrc.bbclass#n181<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do I have to consider some other constraints as well=
?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in Advance.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Best regard=
s</span><span style=3D"font-size:8.0pt;font-family:&quot;Times New Roman&qu=
ot;,&quot;serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;text-autospace:none"><=
b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;">Vignesh Rajendran</span></b><span style=3D"font-size:8.0pt;fon=
t-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span><=
/p>
</div>
</body>
</html>

--_000_AA675284509C9741BF10EAC9FAA8BCC25939FDHI2EXCH01aditjvco_--
