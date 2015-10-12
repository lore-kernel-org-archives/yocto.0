Return-Path: <thshin@telechips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1322FE00ACC; Mon, 12 Oct 2015 02:37:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D675DE00985
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 02:37:54 -0700 (PDT)
x-mimeole: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Mon, 12 Oct 2015 18:36:48 +0900
Message-ID: <F4F751F96C54D346898D4C77E196E3DB0F379F62@telegweb.telechips.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Re: Toolchain with debug support (atulkumar singh)
Thread-Index: AdEE0YR3xsF2Lo9RQ7uia/IanJkG+Q==
From: =?ks_c_5601-1987?B?vcXFw8f2IChUYWVrIEh5dW4gU2hpbik=?=
	<thshin@telechips.com>
To: <yocto@yoctoproject.org>
Subject: Re: Toolchain with debug support (atulkumar singh)
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
X-List-Received-Date: Mon, 12 Oct 2015 09:37:58 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01D104D1.FF20C54E"

------_=_NextPart_001_01D104D1.FF20C54E
Content-Type: text/plain;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

Hi,

Try the following:

TARGET_CFLAGS_append =3D " -g -O0"

TARGET_CXXFLAGS_append =3D " -g -O0"

=20

=20

Thanks,

=20

Best Regards, Wily Taekhyun Shin

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
=BA=BB =B8=DE=C0=CF=B0=FA =C3=B7=BA=CE =B9=AE=BC=AD=B4=C2 =
=A2=DF=C5=DA=B7=B9=C4=A8=BD=BA=C0=C7 =B0=ED=C0=AF =B1=C7=C7=D1=C0=CE =
=BA=F1=B9=D0 =C1=A4=BA=B8=B8=A6 =C6=F7=C7=D4=C7=CF=B0=ED =
=C0=D6=BD=C0=B4=CF=B4=D9.
=A2=DF=C5=DA=B7=B9=C4=A8=BD=BA=C0=C7 =BB=E7=C0=FC =BC=AD=B8=E9 =
=BD=C2=C0=CE =BE=F8=C0=CC =BE=EE=B6=B0=C7=D1 =C7=FC=C5=C2=B3=AA =
=B9=E6=B9=FD=C0=B8=B7=CE=B5=B5 =BA=BB =BA=F1=B9=D0=C1=A4=BA=B8=B8=A6 =
=C1=A63=C0=DA=BF=A1=B0=D4
=B4=A9=BC=B3=C7=CF=B0=C5=B3=AA, =C0=FC=B4=DE=C7=CF=B0=C5=B3=AA, =
=BB=E7=BF=EB=C7=D2 =BC=F6 =BE=F8=BD=C0=B4=CF=B4=D9. =B8=B8=C0=CF =
=B1=CD=C7=CF=B0=A1 =B8=DE=C0=CF=C0=C7 =BF=C3=B9=D9=B8=A5 =
=BC=F6=BD=C5=C0=CE=C0=CC =BE=C6=B4=D2 =B0=E6=BF=EC,
=BA=BB =B8=DE=C0=CF=C0=BB =B9=DD=BC=DB=C7=CF=B0=ED =
=BB=E8=C1=A6=C7=CF=BF=A9 =C1=D6=BD=C3=B1=E2 =B9=D9=B6=F8=B4=CF=B4=D9.=20
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


------_=_NextPart_001_01D104D1.FF20C54E
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
lang=3DEN-US>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Try the following:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>TARGET_CFLAGS_append =3D &quot; -g =
-O0&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>TARGET_CXXFLAGS_append =3D &quot; -g =
-O0&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>Thanks,<o:p></o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span =
lang=3DEN-US>Best Regards, Wily Taekhyun Shin<o:p></o:p></span></p><p =
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
style=3D'font-family:=B1=BC=B8=B2;color:#00695A'><br></span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BA=BB</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B8=DE=C0=CF=B0=FA</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=C3=B7=BA=CE</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B9=AE=BC=AD=B4=C2</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=A2=DF=C5=DA=B7=B9=C4=A8=BD=BA=C0=C7</=
span><span style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B0=ED=C0=AF</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B1=C7=C7=D1=C0=CE</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BA=F1=B9=D0</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=C1=A4=BA=B8=B8=A6</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=C6=F7=C7=D4=C7=CF=B0=ED</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=C0=D6=BD=C0=B4=CF=B4=D9</span><span =
lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif"'>.<br></span><span =
style=3D'font-family:=B1=BC=B8=B2'>=A2=DF=C5=DA=B7=B9=C4=A8=BD=BA=C0=C7</=
span><span style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BB=E7=C0=FC</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BC=AD=B8=E9</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BD=C2=C0=CE</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BE=F8=C0=CC</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BE=EE=B6=B0=C7=D1</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=C7=FC=C5=C2=B3=AA</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B9=E6=B9=FD=C0=B8=B7=CE=B5=B5</span><=
span style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BA=BB</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BA=F1=B9=D0=C1=A4=BA=B8=B8=A6</span><=
span style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=C1=A6</span><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif"'>3</span><span =
style=3D'font-family:=B1=BC=B8=B2'>=C0=DA=BF=A1=B0=D4</span><span =
lang=3DEN-US style=3D'font-family:"Arial","sans-serif"'><br></span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B4=A9=BC=B3=C7=CF=B0=C5=B3=AA</span><=
span lang=3DEN-US style=3D'font-family:"Arial","sans-serif"'>, =
</span><span =
style=3D'font-family:=B1=BC=B8=B2'>=C0=FC=B4=DE=C7=CF=B0=C5=B3=AA</span><=
span lang=3DEN-US style=3D'font-family:"Arial","sans-serif"'>, =
</span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BB=E7=BF=EB=C7=D2</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BC=F6</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BE=F8=BD=C0=B4=CF=B4=D9</span><span =
lang=3DEN-US style=3D'font-family:"Arial","sans-serif"'>. </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B8=B8=C0=CF</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B1=CD=C7=CF=B0=A1</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B8=DE=C0=CF=C0=C7</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BF=C3=B9=D9=B8=A5</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BC=F6=BD=C5=C0=CE=C0=CC</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BE=C6=B4=D2</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B0=E6=BF=EC</span><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif"'>,<br></span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BA=BB</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B8=DE=C0=CF=C0=BB</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B9=DD=BC=DB=C7=CF=B0=ED</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=BB=E8=C1=A6=C7=CF=BF=A9</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=C1=D6=BD=C3=B1=E2</span><span =
style=3D'font-family:"Arial","sans-serif"'> </span><span =
style=3D'font-family:=B1=BC=B8=B2'>=B9=D9=B6=F8=B4=CF=B4=D9</span><span =
lang=3DEN-US style=3D'font-family:"Arial","sans-serif"'>. =
<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</span><span lang=3DEN-US =
style=3D'font-size:12.0pt;font-family:=B1=BC=B8=B2'><o:p></o:p></span></p=
><p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left;layout-grid-mode:char;text-autospace:ideograph-n=
umeric;word-break:keep-all'><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif"'>This mail and attachments =
contain confidential information of Telechips Inc. which has its own =
authority.<br>It is not allowed to disclose,transmit or use this =
confidential information to the third parties without the <br>prior =
written consent of Telechips Inc. by any form or means. <br>If you are =
not the intended recipient, please notify the sender immediately and do =
not disclose the <br>contents and destroy all copies of the original =
message.<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------_=_NextPart_001_01D104D1.FF20C54E--
