Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E59E4E00C4D; Mon, 18 Mar 2019 08:01:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4053E00B58
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2019 08:00:59 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id n11so14881243ioh.1
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2019 08:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:user-agent
	:mime-version; bh=KKh1SMOAkcmcuMCJEARMcT7dG1+qUSexr/q7Mfj5ik0=;
	b=duj7L3DLv5w3gX0BIzkcsL7BksaWE0WiZsK80h7TKBJMJU7Jy0tUgtxjotUNPgkKMy
	TKFKmL4pDckgXyWG/tgM3S1gxlcp4lngpi4FGYXrIToVkKjMdO+UArNBTb1wXD2DODr4
	bLtE/XtGyCJghOByorqO6QlZ0tbKcOfiKGvwuSNXWi5ogx8uTu7AdFU0Eb0OTJI854Vd
	XfbHER7mmBn+UMppvr4t3nO5/20pYJEWDkkoZ8h3alQST44AO5gbQ719WcyeLa28mDCE
	PC07Xem+R3AW915Q/DiKxHpkKCw8tqKiI1DcljJzsNDAL5pLmZ6W0PqLjoUKDxeHJgoa
	22DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:user-agent:mime-version;
	bh=KKh1SMOAkcmcuMCJEARMcT7dG1+qUSexr/q7Mfj5ik0=;
	b=kAeracE/sceceMMREswsqeAMAdEczypSwnp1TpqmF27FkBszA+T3hojliEmakAthVI
	MOMFI6nLciicLx9+3kzjF4zt/eeDhF90VcExrce5BJwDXF2gAhJnUxVbrexWwnF2bQAT
	epqJivKkPfkGgRWnmG5iSZEKQHLKfJ1okSziY2QBRo+1wiqdjFek43vu2m8kEWLc+t3L
	OU8N322x7TIZBNmh7GHjvYdqFE38k4Z61XU/qTWjUmsUrL9bLrApNEgqe0+iDDZ/YAfT
	kQ4gzqP451snxPb8ilcUEA8f1kSjT6PklLkwSauoIZBENpila4XWj1xZ0n0NmYo8gv/M
	vPsA==
X-Gm-Message-State: APjAAAXH0KEq+atSWzXo/URhl3Y9HOMBffXal2y3Jkqq55ybwtGgfCA0
	25LDMHhfrKDH+g/mygkkzyY/VgSI
X-Google-Smtp-Source: APXvYqwkNv4EO7xiHxwrHB0dDqxO32uRRrQ8Wy7nNDUwPFHeqrp0NildrcYfn8o/ulkWor9V4DBoaA==
X-Received: by 2002:a5e:a51a:: with SMTP id 26mr12398789iog.254.1552921258811; 
	Mon, 18 Mar 2019 08:00:58 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	b9sm238130itc.20.2019.03.18.08.00.57
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 18 Mar 2019 08:00:57 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <df52e1ae8078b311668f81cfee634606e5b5469d.camel@gmail.com>
To: IGI - Moritz Porst <m.porst@igi-systems.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 18 Mar 2019 10:00:56 -0500
In-Reply-To: <AM6PR04MB5703FAD886539800513EA6CFA0470@AM6PR04MB5703.eurprd04.prod.outlook.com>
References: <AM6PR04MB5703FAD886539800513EA6CFA0470@AM6PR04MB5703.eurprd04.prod.outlook.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [meta-mingw] Windows SDK build fails using meta-qt5
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
X-List-Received-Date: Mon, 18 Mar 2019 15:01:00 -0000
Content-Type: multipart/alternative; boundary="=-67Pz4EYGPHGFYwagPHzZ"

--=-67Pz4EYGPHGFYwagPHzZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-03-18 at 13:58 +0000, IGI - Moritz Porst wrote:
> Hello everyone,
> 
> I am trying to compile a windows sdk for my image. I use meta-mingw
> and meta-qt, the target machine is based on meta-intel (corei7-64)
> and the distribution based on poky. My build machine is an ubuntu
> 16.04. I have checked
>  out all layers on their thud branch, except for meta-qt (master). I
> set SDK_MACHINE in local.conf to "x86_64-mingw32" "bitbake core-
> image-minimal -c populate_sdk" results on a clean rebuild (deleted
> sstate-cache and tmp) in (2 errors of this kind):
> 
> """ [...] x86_64-nativesdk-mingw32-pokysdk-mingw32/nativesdk-
> qtbase/5.12.0+gitAUTOINC+13ed06640c-
> r0/git/qmake/library/ioutils.cpp:249:31: error: cannot convert
> 'wchar_t*' to 'LPCSTR' {aka 'const char*'}
> 
> 
> 
> 
> [...] | Makefile:213: recipe for target 'ioutils.o' failed [...]
> 
> [...] ERROR: Task (/opt/thudPoky/meta-qt5/recipes-qt/qt5/nativesdk-
> qtbase_git.bb:do_configure) failed with exit code '1' [...] """

AFAIK, no one is building Qt host tools into the MinGW SDK. That's not
to say it *can't* be done, just that it probably hasn't.

> 
> So I decided to remove sdk tools, hoping to be able to cross compile
> them later, by commenting out in my image:  #inherit populate_sdk_qt5
> 
> 
> 
> This build also failed because the build system tried to invoke
> "cmake --install" on a non-cmake directory. commenting out "inherit
> cmake" however solved the problem and the sdk was created (1.1GB
> .tar.gz file BUT without meta-qt sdk tools). I needed cmake
>  only for a previous cross-compilation, thus commenting out was (at
> least now) no problem.

FYI: There is a known issue that nativesdk-cmake won't actually work on
MinGW if included in the SDK. I don't think this affects you, just be
aware of it. The problem AFAICT is that cmake only accepts unix style
path separators ("/"), but our toolchain environment setup uses the
windows style ("\"). I think it might be possible to switch our
toolchain setup over to use the unix style because Windows is supposed
to accept them as valid for everything but UNC paths, but I haven't
done it because 1) It's a somewhat dangerous change 2) No one has yet
asked to run cmake from the SDK.
> Is meta-mingw capable of compiling an sdk with meta-qt ? Could this
> be a bug ? If yes, should I rather refer to the meta-mingw
> maintainers or the meta-qt5 maintainers ?

It depends on what changes need to made to get it to work. Some changes
might be appropriate for meta-mingw, while others might be more
appropriate for meta-qt5. Getting the Qt maintainers involved to get
their thoughts would be good either way; they might have some ideas on
alternate ways to accomplish what you want.

> Best regards
> 
> Moritz
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> IGI mbH
> 
> Moritz Porst, 
> 
> 
> 
> Langenauer Str. 46
> 
> 57223 Kreuztal, Germany
> 
>  
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> Tel.:
> +49 2732 5525 0
> 
> 
> Fax:
> +49 2732 5525 25
> 
> 
> E-mail:
> m.porst@igi-systems.com
> 
> 
> Web:
> www.igi-systems.com
> 
> 
> Follow us:
>  
>   
> 
> 
> 
> 
> 
> 
> 
> 
> 
> Upcoming Events:
> 
> GeoBusiness 2019 London
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> Sitz der Gesellschaft / Company domiciled in: Kreuztal
> 
> Handelsregister / Register: Siegen HRB 1975
> 
> Ust ID Nr. / VAT Reg. No.: DE 126 580 027
> 
> Steuer Nr. / Tax No.: 342 / 5873 / 3332
> 
> Geschaeftsfuehrer / Managing Director: Christian GRIMM & Philipp
> GRIMM
> 
> 
> 
> DISCLAIMER
> 
> The information sent by means of this e-mail message is intended for
> the use of the addressee only! Publication, duplication, distribution
> and/or forwarding to third parties of this message, as well as use of
> the information by other persons than the intended
>  recipient, is strictly prohibited. If you have received this
> communication in error, please notify the sender
> immediately by returning it.
> 
> 
> 
-- 
Joshua Watt <JPEWhacker@gmail.com>

--=-67Pz4EYGPHGFYwagPHzZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr" style=3D"text-align:left; direction:ltr;"><div>On Mon, 20=
19-03-18 at 13:58 +0000, IGI - Moritz Porst wrote:</div><blockquote type=3D=
"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-le=
ft:1ex">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p style=3D"margin-top:0; margin-bottom:0">Hello everyone,</p>
<p style=3D"margin-top:0; margin-bottom:0">I am trying to compile a windows=
 sdk for my image. I use meta-mingw and meta-qt, the target machine is base=
d on meta-intel (corei7-64) and the distribution based on poky. My build ma=
chine is an ubuntu 16.04. I have checked
 out all layers on their thud branch, except for meta-qt (master). I set SD=
K_MACHINE in local.conf to "x86_64-mingw32" "bitbake core-image-minimal -c =
populate_sdk" results on a clean rebuild (deleted sstate-cache and tmp) in =
(2 errors of this kind):</p>
<p style=3D"margin-top:0; margin-bottom:0"><span>""" [...] x86_64-nativesdk=
-mingw32-pokysdk-mingw32/nativesdk-qtbase/5.12.0+gitAUTOINC+13ed06640c-r0/g=
it/qmake/library/ioutils.cpp:249:31: error: cannot convert 'wchar_t*' to 'L=
PCSTR' {aka 'const char*'}
<br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span>[...] <span>| Makefile:213=
: recipe for target 'ioutils.o' failed</span> [...]<br>
<span>[...]</span> <span>ERROR: Task (/opt/thudPoky/meta-qt5/recipes-qt/qt5=
/nativesdk-qtbase_git.bb:do_configure) failed with exit code '1'</span> [..=
.] """<br></span></p></div></blockquote><div><br></div><div><div>AFAIK, no =
one is building Qt host tools into the MinGW SDK. That's not to say it *can=
't* be done, just that it probably hasn't.</div><div><br></div></div><block=
quote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf sol=
id;padding-left:1ex"><div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"=
font-size: 12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans=
-serif, &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe U=
I Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android E=
moji&quot;, EmojiSymbols;"><p style=3D"margin-top:0; margin-bottom:0"><span=
>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span>So I decided to remove sdk=
 tools, hoping to be able to cross compile them later, by commenting out in=
 my image:&nbsp;<span> #</span>inherit populate_sdk_qt5<br></span></p></div=
><div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; col=
or: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiF=
ont&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoC=
olorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSym=
bols;"><p style=3D"margin-top:0; margin-bottom:0"><span>
</span></p>
This build also failed because the build system tried to invoke "cmake --in=
stall" on a non-cmake directory. commenting out "inherit cmake" however sol=
ved the problem and the sdk was created (1.1GB .tar.gz file BUT without met=
a-qt sdk tools). I needed cmake
 only for a previous cross-compilation, thus commenting out was (at least n=
ow) no problem.</div></blockquote><div><br></div><div>FYI: There is a known=
 issue that nativesdk-cmake won't actually work on MinGW if included in the=
 SDK. I don't think this affects you, just be aware of it. The problem AFAI=
CT is that cmake only accepts unix style path separators ("/"), but our too=
lchain environment setup uses the windows style ("\"). I think it might be =
possible to switch our toolchain setup over to use the unix style because W=
indows is supposed to accept them as valid for everything but UNC paths, bu=
t I haven't done it because 1) It's a somewhat dangerous change 2) No one h=
as yet asked to run cmake from the SDK.</div><div><br></div><blockquote typ=
e=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;paddin=
g-left:1ex"><div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size=
: 12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &=
quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&q=
uot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot=
;, EmojiSymbols;">
<div>Is meta-mingw capable of compiling an sdk with meta-qt ? Could this be=
 a bug ? If yes, should I rather refer to the meta-mingw maintainers or the=
 meta-qt5 maintainers ?</div></div></blockquote><div><br></div><div><div>It=
 depends on what changes need to made to get it to work. Some changes might=
 be appropriate for meta-mingw, while others might be more appropriate for =
meta-qt5. Getting the Qt maintainers involved to get their thoughts would b=
e good either way; they might have some ideas on alternate ways to accompli=
sh what you want.</div><div><br></div></div><blockquote type=3D"cite" style=
=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div=
 id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; color: r=
gb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&q=
uot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
">
<div>Best regards</div>
<div>Moritz<br></div></div><div id=3D"divtagdefaultwrapper" dir=3D"ltr" sty=
le=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica=
, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;, &quot;S=
egoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;And=
roid Emoji&quot;, EmojiSymbols;"><p style=3D"margin-top:0; margin-bottom:0"=
><span><br>
</span></p>
</div>




<table style=3D"WIDTH: 100%" cellspacing=3D"0" cellpadding=3D"0" width=3D"1=
00%" background=3D"" border=3D"0">
<tbody>
<tr>
<td valign=3D"top">
<p><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">IGI =
mbH<br>
Moritz Porst, <br>
<br>
Langenauer Str. 46<br>
57223 Kreuztal, Germany</font><br>
&nbsp;<br>
</p>
</td>
<td valign=3D"top" align=3D"right"><font style=3D"FONT-SIZE: 10pt; FONT-FAM=
ILY: Arial; COLOR: #000000"><a href=3D"http://www.igi.eu/news.html"><img st=
yle=3D"HEIGHT: 52px; WIDTH: 128px" border=3D"0" hspace=3D"0" alt=3D"IGI Log=
o" src=3D"http://www.igi.eu/tl_files/IGI/Logos/IGI-logo.jpg" width=3D"128" =
height=3D"52"></a></font>
</td>
</tr>
<tr>
<td>
<table style=3D"WIDTH: 400px" cellspacing=3D"1" cellpadding=3D"0" border=3D=
"0">
<tbody>
<tr>
<td width=3D"70"><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR:=
 #000000">Tel.:</font></td>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">+49=
 2732 5525 0</font></td>
</tr>
<tr>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">Fax=
:</font></td>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">+49=
 2732 5525 25</font></td>
</tr>
<tr>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">E-m=
ail:</font></td>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial"><a href=3D"mailto:m=
.porst@igi-systems.com">m.porst@igi-systems.com</a></font></td>
</tr>
<tr>
<td><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; COLOR: #000000">Web=
:</font></td>
<td><a href=3D"http://www.igi-systems.com/"><font style=3D"FONT-SIZE: 10pt;=
 FONT-FAMILY: Arial ">www.igi-systems.com</font></a></td>
</tr>
<tr>
<td valign=3D"middle"><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; C=
OLOR: #000000">Follow us:</font></td>
<td valign=3D"middle"><font style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Arial; C=
OLOR: #000000"><a title=3D"" href=3D"http://www.igi-systems.com/share/igi_n=
ews.xml"><img style=3D"HEIGHT: 24px; WIDTH: 24px" border=3D"0" hspace=3D"1"=
 alt=3D"IGI News Feed" vspace=3D"5" src=3D"http://www.igi-systems.com/files=
/IGI/Logos/rss_logo.png" align=3D"middle"></a>&nbsp;<a title=3D"" href=3D"h=
ttp://www.youtube.com/IGISystems"><img style=3D"HEIGHT: 24px; WIDTH: 24px" =
border=3D"0" hspace=3D"1" alt=3D"IGI at YouTube" vspace=3D"5" src=3D"http:/=
/www.igi-systems.com/files/IGI/Logos/youtube_logo.png" align=3D"middle"></a=
>
 &nbsp;<a title=3D"" href=3D"https://www.linkedin.com/company/igi-systems">=
<img style=3D"HEIGHT: 24px; WIDTH: 24px" border=3D"0" hspace=3D"1" alt=3D"L=
inkedIn" vspace=3D"5" src=3D"http://www.igi-systems.com/files/IGI/Logos/lin=
kedin_logo.png" align=3D"middle"></a>
</font></td>
</tr>
</tbody>
</table>
</td>
<td valign=3D"bottom" align=3D"right">
<table border=3D"0">
<tbody>
<tr>
<td valign=3D"top" align=3D"left"><font style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: Arial; COLOR: #000000">Upcoming Events:<br>
<a href=3D"https://www.igi-systems.com/events/articles/events.html">GeoBusi=
ness 2019 London</a><br>
</font></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

<p><font style=3D"FONT-SIZE: 7pt; FONT-FAMILY: Arial; COLOR: #a0a0a4">Sitz =
der Gesellschaft / Company domiciled in: Kreuztal<br>
Handelsregister / Register: Siegen HRB 1975<br>
Ust ID Nr. / VAT Reg. No.: DE 126 580 027<br>
Steuer Nr. / Tax No.: 342 / 5873 / 3332<br>
Geschaeftsfuehrer / Managing Director: Christian&nbsp;GRIMM &amp; Philipp G=
RIMM<br>
<br>
<span lang=3D"EN-GB">DISCLAIMER<br>
The information sent by means of this e-mail message is intended for the us=
e of the addressee only! Publication, duplication, distribution and/or forw=
arding to third parties of this message, as well as use of the information =
by other persons than the intended
 recipient, is strictly prohibited. If you have received this communication=
 in error, please notify the sender
</span><span lang=3D"DE">immediately by returning it.</span></font></p><fon=
t style=3D"FONT-SIZE: 7pt; FONT-FAMILY: Arial; COLOR: #a0a0a4">
</font>


</blockquote><div><span><pre>-- <br></pre>Joshua Watt &lt;<a href=3D"mailto=
:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a>&gt;</span></div></body></ht=
ml>

--=-67Pz4EYGPHGFYwagPHzZ--
