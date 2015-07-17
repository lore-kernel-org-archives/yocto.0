Return-Path: <krystian.gorny@wipotec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E4A5E009E4; Fri, 17 Jul 2015 05:47:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mx03.wipotec.com (mx01.wipotec.com [212.43.72.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A706E009D7
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 05:47:41 -0700 (PDT)
Received: from mx03.wipotec.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id F2A0C381D36
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 14:47:38 +0200 (CEST)
Received: from svr-exc-04.intern.wipotec.de (unknown [10.1.60.47])
	by mx03.wipotec.com (Postfix) with ESMTP id ED18D380CA1
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 14:47:38 +0200 (CEST)
Received: from SVR-EXC-03.intern.wipotec.de ([10.1.60.46]) by
	svr-exc-04.intern.wipotec.de ([10.1.60.47]) with mapi id 14.03.0158.001;
	Fri, 17 Jul 2015 14:47:38 +0200
From: Gorny Krystian <krystian.gorny@wipotec.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Kernel header missing for specific Target
Thread-Index: AdDAjpu7EeGePRnvSAuGIjYslKm29A==
Date: Fri, 17 Jul 2015 12:47:38 +0000
Message-ID: <10D57FBA9FD7C14FB49EE17590E1AF9453C901C3@svr-exc-03.intern.wipotec.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.21.216]
x-olx-disclaimer: Done
MIME-Version: 1.0
Subject: Kernel header missing for specific Target
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
X-List-Received-Date: Fri, 17 Jul 2015 12:47:45 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_10D57FBA9FD7C14FB49EE17590E1AF9453C901C3svrexc03internw_"

--_000_10D57FBA9FD7C14FB49EE17590E1AF9453C901C3svrexc03internw_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

I try add to my core-image-rt image on a x86 arch my own IO driver. I have =
already my own recipe, for normal user space programs everything is working=
 fine.
For the kernel space driver Yocto is missing at do_comile task the asm/atom=
ic.h header file. I have searched for the atomic.h file and found a lot of =
them in the ./build/tmp/work folder. Yocto should use one of them for the r=
ight hardware architecture right? Or is the a something else I have forget =
to do?

Many thanks
Krystian

_____________________________________________________________________

Krystian Gorny
Research & Development

Wipotec GmbH
Adam-Hoffmann-Str. 26
67657 Kaiserslautern

T +49.631.34146-0
F +49.631.34146-8640
http://www.wipotec.com


[http://www.wipotec.com/fileadmin/user_upload/Signatur/W_Standard.jpg]<http=
://www.wipotec.com>

Legal information:
Wipotec Wiege- und Positioniersysteme GmbH
HRB 2317 Kaiserslautern, Management: T. D?ppre, U. Wagner

This e-mail may contain confidential and/or privileged information.
If you are not the intended recipient (or have received this e-mail in erro=
r)
please notify the sender immediately and delete this e-mail. Any unauthoriz=
ed
copying, disclosure or distribution of the material in this e-mail is stric=
tly
forbidden.

--_000_10D57FBA9FD7C14FB49EE17590E1AF9453C901C3svrexc03internw_
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
span.E-MailFormatvorlage17
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
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I try add to my core-image-rt i=
mage on a x86 arch my own IO driver. I have already my own recipe, for norm=
al user space programs everything is working fine.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">For the kernel space driver Yoc=
to is missing at do_comile task the asm/atomic.h header file. I have search=
ed for the atomic.h file and found a lot of them in the ./build/tmp/work fo=
lder. Yocto should use one of them for
 the right hardware architecture right? Or is the a something else I have f=
orget to do?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Many thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Krystian<o:p></o:p></p>
</div>
<br>
_____________________________________________________________________
<p><font size=3D"2" face=3D"Arial"><b>Krystian Gorny</b> <br>
Research &amp; Development</p>
<p>Wipotec GmbH<br>
Adam-Hoffmann-Str. 26 <br>
67657 Kaiserslautern </p>
<p>T &#43;49.631.34146-0 <br>
F &#43;49.631.34146-8640 <br>
<a href=3D"http://www.wipotec.com">http://www.wipotec.com</a> </font></p>
<p><br>
<br>
<font size=3D"4" face=3D"Arial"><a href=3D"http://www.wipotec.com"><img src=
=3D"http://www.wipotec.com/fileadmin/user_upload/Signatur/W_Standard.jpg"><=
/a></font><br>
</p>
<p><font size=3D"1" face=3D"Arial">Legal information:<br>
Wipotec Wiege- und Positioniersysteme GmbH<br>
HRB 2317 Kaiserslautern, Management: T. D&uuml;ppre, U. Wagner </p>
This e-mail may contain confidential and/or privileged information.<br>
If you are not the intended recipient (or have received this e-mail in erro=
r)<br>
please notify the sender immediately and delete this e-mail. Any unauthoriz=
ed<br>
copying, disclosure or distribution of the material in this e-mail is stric=
tly<br>
forbidden. </font><br>
</body>
</html>

--_000_10D57FBA9FD7C14FB49EE17590E1AF9453C901C3svrexc03internw_--
