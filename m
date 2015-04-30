Return-Path: <thshin@telechips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33442E00992; Thu, 30 Apr 2015 05:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RDNS_NONE,T_FILL_THIS_FORM_SHORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Apr 2015 05:18:34 PDT
Received: from telegweb.telechips.com (unknown [219.240.43.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EF2DE007CC
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 05:18:34 -0700 (PDT)
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Thu, 30 Apr 2015 21:17:11 +0900
Message-ID: <F4F751F96C54D346898D4C77E196E3DB0E35A09A@telegweb.telechips.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: gdk-pixbuf-native build error on YP 1.8 Fido
Thread-Index: AdCDP5WvHKvGatVuTPm+hPfzc3pfmg==
From: =?ks_c_5601-1987?B?vcXFw8f2IChUYWVrIEh5dW4gU2hpbik=?=
	<thshin@telechips.com>
To: <yocto@yoctoproject.org>
Subject: gdk-pixbuf-native build error on YP 1.8 Fido
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
X-List-Received-Date: Thu, 30 Apr 2015 12:18:37 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01D0833F.B28A0574"

------_=_NextPart_001_01D0833F.B28A0574
Content-Type: text/plain;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

Hi all,

=20

First sorry, my English is poor

=20

I try to use on YP 1.8 Fido

I add DISTRO_FEATURES_append =3D " directfb" because of I must use =
directfb

When I build gdk-pixbuf-native, error occured below

=20

~/works/Yocto/build/test$ bitbake gdk-pixbuf-native

WARNING: Host distribution "Fedora-17" has not been validated with this =
version of the build system; you may possibly experience unexpected =
failures. It is recommended that you use a tested distribution.

Parsing recipes: 100% =
|########################################################################=
#########################################################################=
#####################################################| Time: 00:00:04

Parsing of 871 .bb files complete (0 cached, 871 parsed). 1265 targets, =
39 skipped, 0 masked, 0 errors.

NOTE: Resolving any missing task queue dependencies

ERROR: Nothing PROVIDES 'directfb-native' (but =
virtual:native:/home/B110141/works/git/poky-fido/meta/recipes-graphics/ca=
iro/cairo_1.12.18.bb DEPENDS on or otherwise requires it). Close =
matches:

  db-native

  orc-native

  icu-native

ERROR: Required build target 'gdk-pixbuf-native' has no buildable =
providers.

Missing or unbuildable dependency chain was: ['gdk-pixbuf-native', =
'harfbuzz-native', 'cairo-native', 'directfb-native']

=20

Summary: There was 1 WARNING message shown.

Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.

=20

I can not find why gdk-pixbuf-native have dependency harfbuzz-native

On YP 1.7 Dizzy, gdk-pixbuf-native have not dependency harfbuzz-native

=20

Help me please

=20

=20

Thanks

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
Wily Taekhyun Shin

Research Engineer
R&D Center
Telechips Inc.
Tel : + 82-2-3443-6792(Ext.390)

Fax : + 82-2-6424-7793=20

Mobile : + 82-10-4376-5530

E-mail : thshin@telechips.com =
<blocked::blocked::blocked::blocked::blocked::blocked::blocked::blocked::=
blocked::blocked::mailto:ksjeon@telechips.com>=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

This mail and attachments contain confidential information of Telechips =
Inc. which has its own authority.
It is not allowed to disclose,transmit or use this confidential =
information to the third parties without the=20
prior written consent of Telechips Inc. by any form or means.=20
If you are not the intended recipient, please notify the sender =
immediately and do not disclose the=20
contents and destroy all copies of the original message.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

=20


------_=_NextPart_001_01D0833F.B28A0574
Content-Type: text/html;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dks_c_5601-1987">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:=B1=BC=B8=B2;
	panose-1:2 11 6 0 0 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"=B8=BC=C0=BA =B0=ED=B5=F1";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"\@=B8=BC=C0=BA =B0=ED=B5=F1";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"\@=B1=BC=B8=B2";
	panose-1:2 11 6 0 0 1 1 1 1 1;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-autospace:none;
	word-break:break-hangul;
	font-size:10.0pt;
	font-family:"=B8=BC=C0=BA =B0=ED=B5=F1";}
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
	font-family:"=B8=BC=C0=BA =B0=ED=B5=F1";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
 /* Page Definitions */
 @page Section1
	{size:612.0pt 792.0pt;
	margin:3.0cm 72.0pt 72.0pt 72.0pt;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DKO link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span lang=3DEN-US>Hi all,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>First sorry, my English is =
poor<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I try to use on YP 1.8 =
Fido<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I add DISTRO_FEATURES_append =3D =
&quot;
directfb&quot; because of I must use directfb<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>When I build gdk-pixbuf-native, =
error
occured below<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>~/works/Yocto/build/test$ =
bitbake
gdk-pixbuf-native<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>WARNING: Host distribution
&quot;Fedora-17&quot; has not been validated with this version of the =
build
system; you may possibly experience unexpected failures. It is =
recommended that
you use a tested distribution.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Parsing recipes: 100%
|########################################################################=
#########################################################################=
#####################################################|
Time: 00:00:04<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Parsing of 871 .bb files =
complete (0
cached, 871 parsed). 1265 targets, 39 skipped, 0 masked, 0 =
errors.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>NOTE: Resolving any missing task =
queue
dependencies<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>ERROR: Nothing PROVIDES =
'directfb-native'
(but
virtual:native:/home/B110141/works/git/poky-fido/meta/recipes-graphics/ca=
iro/cairo_1.12.18.bb
DEPENDS on or otherwise requires it). Close =
matches:<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>&nbsp; =
db-native<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>&nbsp; =
orc-native<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>&nbsp; =
icu-native<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>ERROR: Required build target
'gdk-pixbuf-native' has no buildable providers.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Missing or unbuildable =
dependency chain
was: ['gdk-pixbuf-native', 'harfbuzz-native', 'cairo-native',
'directfb-native']<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Summary: There was 1 WARNING =
message shown.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Summary: There were 2 ERROR =
messages shown,
returning a non-zero exit code.<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>I can not find why =
gdk-pixbuf-native have
dependency harfbuzz-native<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>On YP 1.7 Dizzy, =
gdk-pixbuf-native have not
dependency harfbuzz-native<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>Help me =
please<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;
text-autospace:ideograph-numeric;word-break:keep-all'><span lang=3DEN-US
style=3D'color:black'>Thanks<o:p></o:p></span></p>

<p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;
text-autospace:ideograph-numeric;word-break:keep-all'><span lang=3DEN-US
style=3D'font-family:"Arial","sans-serif";color:black'><o:p>&nbsp;</o:p><=
/span></p>

<p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;
text-autospace:ideograph-numeric;word-break:keep-all'><span lang=3DEN-US
style=3D'font-family:"Arial","sans-serif";color:black'>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><sp=
an
lang=3DEN-US style=3D'font-family:=B1=BC=B8=B2;color:#00695A'><br>
</span><b><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:blue'>Wily
Taekhyun Shin<o:p></o:p></span></b></p>

<p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;
text-autospace:ideograph-numeric;word-break:keep-all'><span lang=3DEN-US
style=3D'font-family:"Arial","sans-serif";color:#00695A'>Research =
Engineer<br>
R&amp;D Center<br>
</span><b><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:blue'>Telechips
Inc.<br>
</span></b><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:teal'>Tel
: + 82-2-3443-6792(Ext.390)</span><b><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";
color:blue'><o:p></o:p></span></b></p>

<p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;
text-autospace:ideograph-numeric;word-break:keep-all'><span lang=3DEN-US
style=3D'font-family:"Arial","sans-serif";color:teal'>Fax : + =
82-2-6424-7793 </span><span
lang=3DEN-US =
style=3D'font-size:12.0pt;font-family:=B1=BC=B8=B2'><o:p></o:p></span></p=
>

<p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;
text-autospace:ideograph-numeric;word-break:keep-all'><span lang=3DEN-US
style=3D'font-family:"Arial","sans-serif";color:teal'>Mobile : + =
82-10-4376-5530<o:p></o:p></span></p>

<p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;
text-autospace:ideograph-numeric;word-break:keep-all'><span lang=3DEN-US
style=3D'font-family:"Arial","sans-serif";color:#00695A'>E-mail : =
</span><span
lang=3DEN-US style=3D'font-family:=B1=BC=B8=B2;color:#00695A'><a
href=3D"blocked::blocked::blocked::blocked::blocked::blocked::blocked::bl=
ocked::blocked::blocked::mailto:ksjeon@telechips.com"
target=3D"_blank"
title=3D"blocked::blocked::blocked::blocked::blocked::blocked::blocked::b=
locked::blocked::blocked::blocked::mailto:ksjeon@telechips.com&#10;blocke=
d::blocked::blocked::blocked::blocked::blocked::blocked::blocked::blocked=
::blocked::mailto:ksjeon@telechips.com&#10;blocked::b"><b><span
style=3D'font-family:"Arial","sans-serif";color:blue'>thshin@telechips.co=
m</span></b></a><br>
</span><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:black'>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><sp=
an
lang=3DEN-US style=3D'font-family:=B1=BC=B8=B2;color:#00695A'><br>
</span><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif"'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><span
lang=3DEN-US =
style=3D'font-size:12.0pt;font-family:=B1=BC=B8=B2'><o:p></o:p></span></p=
>

<p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;
text-autospace:ideograph-numeric;word-break:keep-all'><span lang=3DEN-US
style=3D'font-family:"Arial","sans-serif"'>This mail and attachments =
contain
confidential information of Telechips Inc. which has its own =
authority.<br>
It is not allowed to disclose,transmit or use this confidential =
information to
the third parties without the <br>
prior written consent of Telechips Inc. by any form or means. <br>
If you are not the intended recipient, please notify the sender =
immediately and
do not disclose the <br>
contents and destroy all copies of the original message.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

</div>

</body>

</html>

------_=_NextPart_001_01D0833F.B28A0574--
