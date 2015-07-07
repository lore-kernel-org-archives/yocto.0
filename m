Return-Path: <krystian.gorny@wipotec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00763E00A2C; Tue,  7 Jul 2015 05:02:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 330 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Jul 2015 05:02:18 PDT
Received: from mx03.wipotec.com (mx01.wipotec.com [212.43.72.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD8FEE009F0
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 05:02:18 -0700 (PDT)
Received: from mx03.wipotec.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 8687A381D02
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 13:56:46 +0200 (CEST)
Received: from svr-exc-04.intern.wipotec.de (unknown [10.1.60.47])
	by mx03.wipotec.com (Postfix) with ESMTP id 7FD64381CF2
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 13:56:46 +0200 (CEST)
Received: from SVR-EXC-03.intern.wipotec.de ([10.1.60.46]) by
	svr-exc-04.intern.wipotec.de ([10.1.60.47]) with mapi id 14.03.0158.001;
	Tue, 7 Jul 2015 13:56:46 +0200
From: Gorny Krystian <krystian.gorny@wipotec.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Creating image with genericx86 machine and RT-Preempt Patch
Thread-Index: AdC4q+S7P0sSVMe5TGqHq8DQhNaF/A==
Date: Tue, 7 Jul 2015 11:56:45 +0000
Message-ID: <10D57FBA9FD7C14FB49EE17590E1AF9453C8FA0A@svr-exc-03.intern.wipotec.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.21.216]
x-olx-disclaimer: Done
MIME-Version: 1.0
Subject: Creating image with genericx86 machine and RT-Preempt Patch
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
X-List-Received-Date: Tue, 07 Jul 2015 12:02:22 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_10D57FBA9FD7C14FB49EE17590E1AF9453C8FA0Asvrexc03internw_"

--_000_10D57FBA9FD7C14FB49EE17590E1AF9453C8FA0Asvrexc03internw_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I try to build an image for a x86 architecture with RT-Preemtp Patch. So I =
use the genericx86 machine and try to build the core-image-rt recipe. This =
fails with the following errors:

> ERROR: Nothing PROVIDES 'linux-yocto-rt' (but /media/disk/myYocto/poky/me=
ta/recipes-rt/images/core-image-rt.bb DEPENDS on or otherwise requires it)
> ERROR: linux-yocto-rt was skipped: incompatible with machine genericx86 (=
not in COMPATIBLE_MACHINE)
> ERROR: Required build target 'core-image-rt' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-rt', 'linux-yoc=
to-rt']

So I add the following parameter to my local.conf file:

> COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
> COMPATIBLE_MACHINE_quilt-native =3D "genericx86"
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-rt"

But I get this error:

> ERROR: Task 80 (/media/disk/myYocto/poky/meta/recipes-kernel/linux/linux-=
yocto-rt_3.14.bb, do_compile) failed with exit code '1'

In the log.do_compile file I see:

> NOTE: make -j 4 bzImage CC=3Di686-poky-linux-gcc  LD=3Di686-poky-linux-ld=
.bfd
> make[3]: Nothing to be done for `all'.
>   CHK     include/config/kernel.release
>   GEN     /media/disk/myYocto/poky/build/tmp/work/genericx86-poky-linux/l=
inux-yocto-rt/3.14.36+gitAUTOINC+a996d95104_3428de7103-r0/linux-genericx86p=
reempt-$
>   CHK     include/generated/uapi/linux/version.h
>   CHK     include/generated/utsrelease.h
>   HOSTCC  scripts/conmakehash
>   HOSTCC  scripts/sortextable
>   CC      scripts/mod/empty.o
> /media/disk/myYocto/poky/build/tmp/work-shared/genericx86/kernel-source/s=
cripts/mod/empty.c:1:0: error: code model 'kernel' not supported in the 32 =
bit >mode
>  /* empty file to figure out endianness / word size */
>  ^
> /media/disk/myYocto/poky/build/tmp/work-shared/genericx86/kernel-source/s=
cripts/mod/empty.c:1:0: sorry, unimplemented: 64-bit mode not compiled in
> make[4]: *** [scripts/mod/empty.o] Error 1
> make[4]: *** Waiting for unfinished jobs....
>   HOSTCC  scripts/mod/mk_elfconfig
> make[3]: *** [scripts/mod] Error 2
> make[3]: *** Waiting for unfinished jobs....
> make[2]: *** [scripts] Error 2
> make[1]: *** [sub-make] Error 2
> make: *** [all] Error 2
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.

I already tried genericx86_64 machine and it's still not working. Are the g=
enericx86 machine incompatible with the core-image-rt recipy? If yes how ca=
n I build a x86 image with the RT patch?

Many Thanks

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

--_000_10D57FBA9FD7C14FB49EE17590E1AF9453C8FA0Asvrexc03internw_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
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
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt">Hi,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt">I tr=
y to build an image for a x86 architecture with RT-Preemtp Patch. So I use =
the genericx86 machine and try to build the core-image-rt recipe. This fail=
s with the following errors:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; ERROR: Nothing PROVIDES 'linux-yocto-rt' (but /media/disk/myYocto/poky/=
meta/recipes-rt/images/core-image-rt.bb DEPENDS on or otherwise requires it=
)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; ERROR: linux-yocto-rt was skipped: incompatible with machine genericx86=
 (not in COMPATIBLE_MACHINE)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; ERROR: Required build target 'core-image-rt' has no buildable providers=
.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; Missing or unbuildable dependency chain was: ['core-image-rt', 'linux-y=
octo-rt']<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt">So I=
 add the following parameter to my local.conf file:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; COMPATIBLE_MACHINE_genericx86 =3D &quot;genericx86&quot;<o:p></o:p></sp=
an></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; COMPATIBLE_MACHINE_quilt-native =3D &quot;genericx86&quot;<o:p></o:p></=
span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-yocto-rt&quot;<o:p></=
o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt">But =
I get this error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; ERROR: Task 80 (/media/disk/myYocto/poky/meta/recipes-kernel/linux/linu=
x-yocto-rt_3.14.bb, do_compile) failed with exit code '1'<o:p></o:p></span>=
</i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt">In t=
he log.do_compile file I see:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; NOTE: make -j 4 bzImage CC=3Di686-poky-linux-gcc&nbsp; LD=3Di686-poky-l=
inux-ld.bfd<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; make[3]: Nothing to be done for `all'.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; &nbsp;&nbsp;CHK&nbsp;&nbsp;&nbsp;&nbsp; include/config/kernel.release<o=
:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; &nbsp;&nbsp;GEN&nbsp;&nbsp;&nbsp;&nbsp; /media/disk/myYocto/poky/build/=
tmp/work/genericx86-poky-linux/linux-yocto-rt/3.14.36&#43;gitAUTOINC&#43;a9=
96d95104_3428de7103-r0/linux-genericx86preempt-$<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; &nbsp;&nbsp;CHK&nbsp;&nbsp;&nbsp;&nbsp; include/generated/uapi/linux/ve=
rsion.h<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; &nbsp;&nbsp;CHK&nbsp;&nbsp;&nbsp;&nbsp; include/generated/utsrelease.h<=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; &nbsp;&nbsp;HOSTCC&nbsp; scripts/conmakehash<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; &nbsp;&nbsp;HOSTCC&nbsp; scripts/sortextable<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; &nbsp;&nbsp;CC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; scripts/mod/empty.o<o:p></=
o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; /media/disk/myYocto/poky/build/tmp/work-shared/genericx86/kernel-source=
/scripts/mod/empty.c:1:0: error: code model 'kernel' not supported in the 3=
2 bit &gt;mode<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; &nbsp;/* empty file to figure out endianness / word size */<o:p></o:p><=
/span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; &nbsp;^<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; /media/disk/myYocto/poky/build/tmp/work-shared/genericx86/kernel-source=
/scripts/mod/empty.c:1:0: sorry, unimplemented: 64-bit mode not compiled in=
<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; make[4]: *** [scripts/mod/empty.o] Error 1<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; make[4]: *** Waiting for unfinished jobs....<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; &nbsp;&nbsp;HOSTCC&nbsp; scripts/mod/mk_elfconfig<o:p></o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; make[3]: *** [scripts/mod] Error 2<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; make[3]: *** Waiting for unfinished jobs....<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; make[2]: *** [scripts] Error 2<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; make[1]: *** [sub-make] Error 2<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; make: *** [all] Error 2<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; ERROR: oe_runmake failed<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt">&=
gt; WARNING: exit code 1 from a shell command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt">I al=
ready tried genericx86_64 machine and it&#8217;s still not working. Are the=
 genericx86 machine incompatible with the core-image-rt recipy? If yes how =
can I build a x86 image with the RT patch?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Many Thanks<o:p></o:p></span></=
p>
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

--_000_10D57FBA9FD7C14FB49EE17590E1AF9453C8FA0Asvrexc03internw_--
