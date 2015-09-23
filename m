Return-Path: <thshin@telechips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED8EBE00E5D; Tue, 22 Sep 2015 23:53:23 -0700 (PDT)
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
Received: from telegweb.telechips.com (unknown [219.240.43.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5658CE00B5E
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 23:53:14 -0700 (PDT)
x-mimeole: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Wed, 23 Sep 2015 15:52:15 +0900
Message-ID: <F4F751F96C54D346898D4C77E196E3DB0F1ACB9F@telegweb.telechips.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: RE: error in do_rootfs 
Thread-Index: AdD1zGGYXaJaVMUiQH+9LOhaioYC/Q==
From: =?ks_c_5601-1987?B?vcXFw8f2IChUYWVrIEh5dW4gU2hpbik=?=
	<thshin@telechips.com>
To: <yocto@yoctoproject.org>
Subject: Re: error in do_rootfs
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
X-List-Received-Date: Wed, 23 Sep 2015 06:53:24 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01D0F5CC.D2BBE1AA"

------_=_NextPart_001_01D0F5CC.D2BBE1AA
Content-Type: text/plain;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

bitbake -u depexp -g name segfault because of not gui environment

you can get dpendency dot file using bitbake image-name -g. not bitbake =
bash -g

=20

I think that the problem is do_rootfs error cause is busybox=20

when you create rootfs, it is stranged to create a bash link not /bin/sh

>> Error: not linking /1.0-r0/rootfs//bin/bash to /bin/busybox.nosuid =
since

>> rootfs//bin/bash exists and is not a link

=20

Also, if you use systemd, bash is installed because of the dependence of =
systemd.

=20

Thanks

=20

Best regards,

Wily Taekhyun Shin

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



=20


------_=_NextPart_001_01D0F5CC.D2BBE1AA
Content-Type: text/html;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dks_c_5601-1987"><meta name=3DGenerator content=3D"Microsoft =
Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:=B1=BC=B8=B2;
	panose-1:2 11 6 0 0 1 1 1 1 1;}
@font-face
	{font-family:=B1=BC=B8=B2;
	panose-1:2 11 6 0 0 1 1 1 1 1;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"=B1=DB=C0=DA=B8=B8 Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-autospace:none;
	word-break:break-hangul;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"=B8=BC=C0=BA =B0=ED=B5=F1";
	color:windowtext;}
span.Char
	{mso-style-name:"=B1=DB=C0=DA=B8=B8 Char";
	mso-style-priority:99;
	mso-style-link:=B1=DB=C0=DA=B8=B8;
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:3.0cm 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DKO link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US>bitbake -u depexp -g name segfault because of not gui =
environment<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>you can get dpendency dot file using bitbake image-name -g. =
not bitbake bash -g<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I think that the problem is do_rootfs error cause is =
busybox <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>when you create rootfs, it is stranged to create a bash =
link not /bin/sh<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>&gt;&gt; Error: not linking /1.0-r0/rootfs//bin/bash to =
/bin/busybox.nosuid since<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>&gt;&gt; rootfs//bin/bash exists =
and is not a link<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Also, if you use systemd, bash is installed because of the =
dependence of systemd.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Thanks<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;text-autospace:ideograph-n=
umeric;word-break:keep-all'><span lang=3DEN-US =
style=3D'color:black'>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;text-autospace:ideograph-n=
umeric;word-break:keep-all'><span lang=3DEN-US =
style=3D'color:black'>Wily Taekhyun Shin<o:p></o:p></span></p><p =
class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;text-autospace:ideograph-n=
umeric;word-break:keep-all'><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:black'><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;text-autospace:ideograph-n=
umeric;word-break:keep-all'><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:black'>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><sp=
an lang=3DEN-US =
style=3D'font-family:=B1=BC=B8=B2;color:#00695A'><br></span><b><span =
lang=3DEN-US style=3D'font-family:"Arial","sans-serif";color:blue'>Wily =
Taekhyun Shin<o:p></o:p></span></b></p><p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;text-autospace:ideograph-n=
umeric;word-break:keep-all'><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:#00695A'>Research =
Engineer<br>R&amp;D Center<br></span><b><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:blue'>Telechips =
Inc.<br></span></b><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:teal'>Tel : + =
82-2-3443-6792(Ext.390)</span><b><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:blue'><o:p></o:p></span><=
/b></p><p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;text-autospace:ideograph-n=
umeric;word-break:keep-all'><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:teal'>Fax : + =
82-2-6424-7793 </span><span lang=3DEN-US =
style=3D'font-size:12.0pt;font-family:=B1=BC=B8=B2'><o:p></o:p></span></p=
><p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;text-autospace:ideograph-n=
umeric;word-break:keep-all'><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:teal'>Mobile : + =
82-10-4376-5530<o:p></o:p></span></p><p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;text-autospace:ideograph-n=
umeric;word-break:keep-all'><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:#00695A'>E-mail : =
</span><span lang=3DEN-US =
style=3D'font-family:=B1=BC=B8=B2;color:#00695A'><a =
href=3D"blocked::blocked::blocked::blocked::blocked::blocked::blocked::bl=
ocked::blocked::blocked::mailto:ksjeon@telechips.com" target=3D"_blank" =
title=3D"blocked::blocked::blocked::blocked::blocked::blocked::blocked::b=
locked::blocked::blocked::blocked::mailto:ksjeon@telechips.com&#10;blocke=
d::blocked::blocked::blocked::blocked::blocked::blocked::blocked::blocked=
::blocked::mailto:ksjeon@telechips.com&#10;blocked::b"><b><span =
style=3D'font-family:"Arial","sans-serif";color:blue'>thshin@telechips.co=
m</span></b></a><br></span><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:black'>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><sp=
an lang=3DEN-US =
style=3D'font-family:=B1=BC=B8=B2;color:#00695A'><br><br></span><span =
lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif"'><o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------_=_NextPart_001_01D0F5CC.D2BBE1AA--
