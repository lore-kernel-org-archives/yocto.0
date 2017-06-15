Return-Path: <f.furic@madelin-sa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B836E00B83; Thu, 15 Jun 2017 06:48:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [31.222.193.162 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1070 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Jun 2017 06:48:13 PDT
Received: from mx01.iliane.fr (mx01.iliane.fr [31.222.193.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E064DE00B57
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 06:48:13 -0700 (PDT)
Received: from email.madelin-sa.com (email.madelin-sa.com [77.158.74.182])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx01.iliane.fr (mx00.iliane.fr) with ESMTPS id C3BB652060
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 15:30:21 +0200 (CEST)
Received: from SRV-EXCHANGE.madelin.fr ([::1]) by srv-exchange.madelin.fr
	([::1]) with mapi id 14.02.0247.003; Thu, 15 Jun 2017 15:30:19 +0200
From: Franck Furic <f.furic@madelin-sa.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build my Yocto edison image
Thread-Index: AdLl2o15adDzcM2hSSuHfyfzYSFQiA==
Date: Thu, 15 Jun 2017 13:30:18 +0000
Message-ID: <0CF626E6464FB94BB209647252516D85832DF9@srv-exchange.madelin.fr>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.10.27]
MIME-Version: 1.0
X-VRSPAM-SCORE: 0
X-VRSPAM-STATE: legit
X-VRSPAM-CAUSE: gggruggvucftvghtrhhoucdtuddrfeeljedrjeejgdeijecutefuodetggdotefrucfrrhhofhhilhgvmecuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffuthffkfhitgggsehrtddtredttddunecuhfhrohhmpefhrhgrnhgtkhcuhfhurhhitgcuoehfrdhfuhhrihgtsehmrgguvghlihhnqdhsrgdrtghomheqnecuffhomhgrihhnpehinhhtvghlrdgtohhmpdhsthhorhgvmhgruggvlhhinhdqshgrrdgtohhmpdihohhuthhusggvrdgtohhmpdhfrggtvggsohhokhdrtghomhdpmhgruggvlhhinhdqshgrrdgtohhmnecukfhppeduledvrdduieekrddutddrvdejnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhht
X-VRSPAM-EXTCAUSE: mhhouggvpehsmhhtphhouhht
Subject: Build my Yocto edison image
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
X-List-Received-Date: Thu, 15 Jun 2017 13:48:16 -0000
X-Groupsio-MsgNum: 36585
Content-Language: fr-FR
Content-Type: multipart/related;
	boundary="_006_0CF626E6464FB94BB209647252516D85832DF9srvexchangemadeli_";
	type="multipart/alternative"

--_006_0CF626E6464FB94BB209647252516D85832DF9srvexchangemadeli_
Content-Type: multipart/alternative;
	boundary="_000_0CF626E6464FB94BB209647252516D85832DF9srvexchangemadeli_"

--_000_0CF626E6464FB94BB209647252516D85832DF9srvexchangemadeli_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I have bought an Intel Edison board and I would like build my image includi=
ng Qt Framework (meta-qt5).

In the past, (2 years ago) I have success to compile C++ program using Qt b=
y build my image with meta-qt5 I think it was 1.6.x version of yocto projec=
t.

Now, it's impossible for me to build an image including qt on yocto. I have=
 tried many thinks in different ways but nothing at the end.

Some people help me to do this here https://communities.intel.com/thread/11=
5234.

I have tried on dizzy branch and morty branch but i have always errors.

Someone can help me tell me the correct procedure to build an image contain=
ing meta-qt5 on any version of yocto.

I need to develop some code with Qt Framework.


[Description=A0: FranckFuric]

[Description=A0: Facebook]<https://www.facebook.com/madelin.sa.france>  [De=
scription=A0: youtube-logo] <https://www.youtube.com/user/MADELINSA49>     =
Site web : www.madelin-sa.com<http://www.madelin-sa.com/>  |  E-boutique : =
www.storemadelin-sa.com<http://www.storemadelin-sa.com/>
___________________________________________________________________________=
___________________
Ce message contient des informations confidentielles ou appartenant =E0 la =
soci=E9t=E9 MADELIN SA et est =E9tabli =E0 l'attention  exclusive de ses de=
stinataires.
Toute divulgation, utilisation, diffusion ou reproduction (totale ou partie=
lle) de ce message, ou des informations qu'il contient, doit =EAtre pr=E9al=
ablement autoris=E9e.
Si vous n'=EAtes pas destinataire de ce message, merci de le d=E9truire imm=
=E9diatement et d'avertir l'exp=E9diteur de l'erreur de distribution et de =
la destruction du message


--_000_0CF626E6464FB94BB209647252516D85832DF9srvexchangemadeli_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Century Gothic";
	panose-1:2 11 5 2 2 2 2 2 2 4;}
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Texte de bulles Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.TextedebullesCar
	{mso-style-name:"Texte de bulles Car";
	mso-style-priority:99;
	mso-style-link:"Texte de bulles";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have bought an Intel Edison board and I would like=
 build my image including Qt Framework (meta-qt5).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In the past, (2 years ago) I have success to compile=
 C&#43;&#43; program using Qt by build my image with meta-qt5 I think it wa=
s 1.6.x version of yocto project.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now, it&#8217;s impossible for me to build an image =
including qt on yocto. I have tried many thinks in different ways but nothi=
ng at the end.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Some people help me to do this here <a href=3D"https=
://communities.intel.com/thread/115234">
https://communities.intel.com/thread/115234</a>.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have tried on dizzy branch and morty branch but i =
have always errors.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Someone can help me tell me the correct procedure to=
 build an image containing meta-qt5 on any version of yocto.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I need to develop some code with Qt Framework.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:FR"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#494D55;mso-fareast-language:FR"><im=
g border=3D"0" width=3D"682" height=3D"136" id=3D"Image_x0020_1" src=3D"cid=
:image001.jpg@01D2E5EC.4B5A5720" alt=3D"Description&nbsp;: FranckFuric"><o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:FR"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"https://www.facebook.com/madelin.sa.franc=
e"><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;;color:blue;mso-fareast-language:FR;text-decoration:none"><img =
border=3D"0" width=3D"38" height=3D"36" id=3D"Image_x0020_2" src=3D"cid:ima=
ge002.jpg@01D2E5EC.4B5A5720" alt=3D"Description&nbsp;: Facebook"></span></a=
><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:#494D55;mso-fareast-language:FR">&nbsp;
</span><a href=3D"https://www.youtube.com/user/MADELINSA49"><span style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:blue;mso-fareast-language:FR;text-decoration:none"><img border=3D"0" width=
=3D"50" height=3D"33" id=3D"Image_x0020_3" src=3D"cid:image003.gif@01D2E5EC=
.4B5A5720" alt=3D"Description&nbsp;: youtube-logo"></span></a><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:#494D55;mso-fareast-language:FR">&nbsp;&nbsp;&nbsp;</span><span style=
=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;co=
lor:#494D55;mso-fareast-language:FR">&nbsp;</span><span style=3D"font-size:=
9.0pt;font-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:#=
494D55;mso-fareast-language:FR">Site
 web&nbsp;: <a href=3D"http://www.madelin-sa.com/"><span style=3D"color:#49=
4D55">www.madelin-sa.com</span></a>&nbsp; |&nbsp; E-boutique&nbsp;:
<a href=3D"http://www.storemadelin-sa.com/"><span style=3D"color:#494D55">w=
ww.storemadelin-sa.com</span></a></span><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:#494D55;ms=
o-fareast-language:FR"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:#BFBFBF;mso-fareast-language:FR">____________________=
__________________________________________________________________________<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><a name=3D"OLE_LINK3"><span style=3D"font-size:7.0pt=
;font-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:#A6A6A=
6;mso-fareast-language:FR">Ce message contient des informations confidentie=
lles ou appartenant =E0 la soci=E9t=E9 MADELIN SA et est =E9tabli
 =E0 l'attention&nbsp; exclusive de ses destinataires.</span></a><span styl=
e=3D"font-size:7.0pt;font-family:&quot;Century Gothic&quot;,&quot;sans-seri=
f&quot;;color:#A6A6A6;mso-fareast-language:FR">
</span><span style=3D"font-size:7.0pt;font-family:&quot;Century Gothic&quot=
;,&quot;sans-serif&quot;;color:#A6A6A6;mso-fareast-language:FR"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.0pt;font-family:&quot;Cen=
tury Gothic&quot;,&quot;sans-serif&quot;;color:#A6A6A6;mso-fareast-language=
:FR">Toute divulgation, utilisation, diffusion ou reproduction (totale ou p=
artielle) de ce message, ou des informations qu'il contient,
 doit =EAtre pr=E9alablement autoris=E9e. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.0pt;font-family:&quot;Cen=
tury Gothic&quot;,&quot;sans-serif&quot;;color:#A6A6A6;mso-fareast-language=
:FR">Si vous n'=EAtes pas destinataire de ce message, merci de le d=E9truir=
e imm=E9diatement et d'avertir l'exp=E9diteur de l'erreur de distribution
 et de la destruction du message<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0CF626E6464FB94BB209647252516D85832DF9srvexchangemadeli_--

--_006_0CF626E6464FB94BB209647252516D85832DF9srvexchangemadeli_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=14072;
	creation-date="Thu, 15 Jun 2017 13:30:18 GMT";
	modification-date="Thu, 15 Jun 2017 13:30:18 GMT"
Content-ID: <image001.jpg@01D2E5EC.4B5A5720>
Content-Transfer-Encoding: base64

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

--_006_0CF626E6464FB94BB209647252516D85832DF9srvexchangemadeli_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=1104;
	creation-date="Thu, 15 Jun 2017 13:30:18 GMT";
	modification-date="Thu, 15 Jun 2017 13:30:18 GMT"
Content-ID: <image002.jpg@01D2E5EC.4B5A5720>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCAAkACYDASIA
AhEBAxEB/8QAGgAAAwEBAQEAAAAAAAAAAAAAAAQFBgIDB//EADMQAAEDAwEECAMJAAAAAAAAAAEC
AxEABAUGBxITMRQhIkFkc7GyFlOSJjJRcXJ0kcHS/8QAFwEAAwEAAAAAAAAAAAAAAAAAAgMEBf/E
ACARAAIBAwUBAQAAAAAAAAAAAAABAgMSMgQRITEzE1H/2gAMAwEAAhEDEQA/AKGayFy5mbzffc7L
ykJAWQAAYAFJdMe+c59ZrjMuRm78eIc9xpLi1t09rEQS33ZVtlXl4+GbYvuOHklKzVK5wObs7Zx9
+Q02neUQ/JA/mntnCUOKv3oBWncQD+AMn+hSOotXX6r3IY4FlNsFKZjclRHLnPOkurN1LIpcBqKU
bmVtB3rzrt2y46pbaUpUnfMwZPKilNnC969v/LR6miotT6MfSwRkM47GfyI8S57jS9hctNZC2cfj
godSpcieyCJ6u/qrnPuRqLJjxTnuNT+JWhDmCJn2fasHlMTkA+cQlsJQRxNxnh85juE99Z7VOdwn
QchaMoaORnhk9HghU9o70fn10psycljJfrb9FVktROfaTJfuV+tSwpL6Nfg6U3abLZivevsh5SPU
0V4bKVb2QyXlI9TRSNR6MOnijrVOkbBWcdeSu4Qq4PEWEqTG8ecSKlfB9l8+6+pP+aKKspN2oTLs
0OmMa1hGrxNs44sOLRPEIMfe5QBUXKaZtLnLXjy3rgKceWowpIAM93VRRQRzYbxRsdF6dtMJZvPW
ynVuPqhanCD1CYAgCiiipKubGR6P/9k=

--_006_0CF626E6464FB94BB209647252516D85832DF9srvexchangemadeli_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=2194;
	creation-date="Thu, 15 Jun 2017 13:30:18 GMT";
	modification-date="Thu, 15 Jun 2017 13:30:18 GMT"
Content-ID: <image003.gif@01D2E5EC.4B5A5720>
Content-Transfer-Encoding: base64

R0lGODlhMgAhAOYAAOwtLb5JTNwlJcvLy+w6O+8+PVlZWeucnL8uMfBHQ+Tl5WZmZtVHSPCWl/Wl
pHd3eMkZG/3+/vNkVdlXWPK7vPmjkiQkJO4zM4CAgNplZeqlpZOTk/RxYvrr69XMzNtvb+22tvn+
/vzh4tE/QPJUSuyJit3d3fXf3/PV1fbBwdrV1c0hIvnExOxbXPn6+tnY2OuFhYmJifm9vfv19aKi
oveThry8vPvT09Xa2v75+dPU1PrLy+MzNKqqqtLDw+tBQgUFBvJbVxMTFMgdIPXr69swMOrq6u1z
cux/f+BRUdM0NPSxruxtbvf39+U7PPaBbvP6+r81OO9NSPBBP9g9PeSFhkdHR+Tr6+tUVOSLjMcg
I+JaWuR7fOZsa+JiYrCwsO6PkORGR+t4d/NqassmKPOFhPbk5NEqK78oLPzb2/B4eeE3OO84OPC/
v8xPUMFmZ8F9fr4/Qvzn59iVlvPPz/Gfn9J+fuxPTuiZmeF3d+z29eDGx+pZVO1hYt5GRv///yH/
C1hNUCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRj
emtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRv
YmUgWE1QIENvcmUgNS4wLWMwNjEgNjQuMTQwOTQ5LCAyMDEwLzEyLzA3LTEwOjU3OjAxICAgICAg
ICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRm
LXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXBNTT0i
aHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5h
ZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtbG5zOnhtcD0iaHR0cDovL25z
LmFkb2JlLmNvbS94YXAvMS4wLyIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo3OTYzMzIyN0Y4
NzgxMUUzOTVFMUIwQUFDMTZFMzI1RCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo3OTYzMzIy
NkY4NzgxMUUzOTVFMUIwQUFDMTZFMzI1RCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3No
b3AgQ1M1IFdpbmRvd3MiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0iMzEw
MzgwNTA0OERDOTcxOUJGQzZEM0MyMTdDRjgwNEUiIHN0UmVmOmRvY3VtZW50SUQ9IjMxMDM4MDUw
NDhEQzk3MTlCRkM2RDNDMjE3Q0Y4MDRFIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+
IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+Af/+/fz7+vn49/b19PPy8fDv7u3s6+rp
6Ofm5eTj4uHg397d3Nva2djX1tXU09LR0M/OzczLysnIx8bFxMPCwcC/vr28u7q5uLe2tbSzsrGw
r66trKuqqainpqWko6KhoJ+enZybmpmYl5aVlJOSkZCPjo2Mi4qJiIeGhYSDgoGAf359fHt6eXh3
dnV0c3JxcG9ubWxramloZ2ZlZGNiYWBfXl1cW1pZWFdWVVRTUlFQT05NTEtKSUhHRkVEQ0JBQD8+
PTw7Ojk4NzY1NDMyMTAvLi0sKyopKCcmJSQjIiEgHx4dHBsaGRgXFhUUExIREA8ODQwLCgkIBwYF
BAMCAQAAIfkEAAAAAAAsAAAAADIAIQAAB/+Af4KDhIWGh4iJiouMjY6PkJGSk5SVlpeYljkdImk3
OzssKTKkpSwsOzc3aSJyEZkyQQlTBQRstxe5F7cFCVIkEhxPNTVlIpcoBQAAuhcFz9BsF1O+wMI1
SxVHLoM2PU1/AzQKjDAARw3pDWAJ0AVsTA1SBdS/wU8VHG2DC0A2fwaEvFjkogWAJYRyYGED7YKD
Py0YUktAIoiEJxzwDPoCJEYTC1YYEbnDJsiYG3/KjCngTJrDP1gASHxXAJgEGK/+KLBgwAaQDX9M
bPjCTUcPFy++mfnxDkAKmOdKFGAChsDDIwfE2MJSpw4fX2JCDDJgYYEQHS8sCAHy4M8DIAr/YgDB
caIhC4hOc/xYEuFHnT9y/sy4c6eDIDN3CnQRK4iGECEhHwixYdYIBiFxheBA4YQAy6cGZeRwwtfv
nz4NICL5w0TNHyQAvDDWaYEtQAsu5Jq4HHcuCh4ECPB4GpPCaL5O/oZZ3aLEHy9d/pQAsIXbWH8A
hTTRjQGu3M081qwp8jSJAONrkCtfvcX5IBgCJlgX1G9A9u1Adnv3XYQHjyL7mGdcEXytccAffrDn
HBhMdOFHfLMBBIR9AeWWX3dGfHeCEkUUIUCA5+VQhAYRKHEgFVz8MUEVCFIBghcCZBChARP+0Y8C
b+EIhAr94ECEEmcUQUaAK4CQAwN05KCE5UYTZPFHEnn8kcEHf3ABwQc5CUKjfRytFVJ3agGhwwwj
nHHGCvswAIEGf3TQwQxL/mGGYCNQYVibfkBgR5Z/0LCACX9EQIMBf/6hgwEx9LCAAiG4scIZZGSQ
hRIrMKBBBiueseIEB3xARqV4HMDACkPMUUkEdkBABhlDqPopBEO0SoYWENA6xKq01jrrHpaoEAWs
sQ6hxbDEFltssBBA8AYUlkTgwxsBxBFHFAhUi8a12F5bbRRRSBsAHORgoscVCpjwggoepOvDuuym
64EKL5igwBXMZmLvvfjmq+++/Pbr77+XBAIAOw==

--_006_0CF626E6464FB94BB209647252516D85832DF9srvexchangemadeli_--
