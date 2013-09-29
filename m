Return-Path: <sean.liming@annabooks.com>
Received: from mail16c40.carrierzone.com (mail16c40.carrierzone.com
	[209.235.156.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEA28E015A2
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2013 17:01:45 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail16c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r8T01e1G021543; Sun, 29 Sep 2013 00:01:42 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Diego Sueiro'" <diego.sueiro@gmail.com>, <yocto@yoctoproject.org>
References: <CAMCfZKFWU43x4-2qua2CFG8cTNHk3XbDg6-zpooVThBGXS-uBg@mail.gmail.com>
In-Reply-To: <CAMCfZKFWU43x4-2qua2CFG8cTNHk3XbDg6-zpooVThBGXS-uBg@mail.gmail.com>
Date: Sat, 28 Sep 2013 17:01:23 -0700
Message-ID: <000601cebca7$0a377510$1ea65f30$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQHJRQWP3We6ItBsmqHJh28POPPLQZnmwhmQ
X-CSC: 0
X-CHA: v=2.0 cv=C6deP3z+ c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=FbD0QTcAewkA:10 a=_DgR7O7FQkkA:10 a=IjdlZ_XXAAAA:8 a=03f_5I_pu2IA:10
	a=iGHA9ds3AAAA:8 a=QyXUC8HyAAAA:8 a=N7BZ2ebXAAAA:8 a=kVmFmj_YAAAA:8
	a=fcDmhZ9_dfyUJH4fwjkA:9 a=QEXdDO2ut3YA:10 a=FCaQVidmf_IA:10
	a=nHK3ipOpxeAA:10 a=eFJlo2if4nwA:10 a=XDKM753qmDAA:10 a=yMhMjlubAAAA:8
	a=SSmOFEACAAAA:8 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
	a=frz4AuCg-hUA:10 a=tXsnliwV7b4A:10 a=AxOefgk263EA:10
	a=Ppu8N8LyTiumP3e6:21
	a=vrtpD_qjSwHea3sYWLsA:9 a=KQqxNPgzF0kA:10 a=ucH7BwLj_I8A:10
	a=WDYU2s7p4Hx7m9Zq:18 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A02020A.52476DE7.0030, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: Issues on booting cedartrail image
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
X-List-Received-Date: Sun, 29 Sep 2013 00:01:49 -0000
X-Groupsio-MsgNum: 16279
Content-Type: multipart/related;
	boundary="----=_NextPart_000_0007_01CEBC6C.5DDAE700"
Content-Language: en-us

------=_NextPart_000_0007_01CEBC6C.5DDAE700
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0008_01CEBC6C.5DDAE700"

------=_NextPart_001_0008_01CEBC6C.5DDAE700
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Do you have a serial connections between the D2550 system and your host =
PC?

=20

There is an install for USB to HDD installation. The serial connection =
is needed to see the console output selection. Modify either the =
grub.cfg or  syslinux.cfg and change the default to =
=E2=80=9Cinstall=E2=80=9D

=20

Regards,

=20

Sean Liming

Owner

 <http://www.annabooks.com/> ablogo color - 500

Tel: 714-970-7523 / Cell: 858-774-3176

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Diego Sueiro
Sent: Saturday, September 28, 2013 4:40 PM
To: yocto@yoctoproject.org
Subject: [yocto] Issues on booting cedartrail image

=20

Folks,

=20

I'm having troubles to boot a cedartrail image. I tried both =
core-image-minimal and core-image-cdv-media-cedartrail. I tried to boot =
from USB drive and hard disk.

I'm using this hardware: =
http://www.intel.com/content/www/us/en/motherboards/desktop-motherboards/=
desktop-board-d2550mud2.html

=20

I've followed the instructions from:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-cedartrail=
/README?h=3Ddanny

https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_ha=
rd_drive.3F

=20

For core-image-minimal

Syslinux console output:

SYSLINUX 4.03 2010-10-22  Copyright (C) 1994-2010 H. Peter Anvin et al

boot:=20

Loading /vmlinuz.......

Loading /initrd.........ready.

=20

Syslinux display outuput (VGA):

SYSLINUX 4.03 2010-10-22  Copyright (C) 1994-2010 H. Peter Anvin et al

boot:=20

Loading /vmlinuz.......

Loading /initrd.........ready.

=20

Decompressing Linux... Parsing ELF... done.

Booting the kernel.

=20

But I cannot see any kernel or system prints after that.

=20

For core-image-cdv-media

Syslinux console output:

SYSLINUX 4.03 2010-10-22  Copyright (C9 1994-2010 H. Peter Anvin et al

boot:=20

Loading /vmlinuz.......

Load=EF=BF=BDng /initrd.........ready.

=20

For syslinux display outuput (VGA) it prints kernel boot end the last 3 =
lines are:

Freeing unusued kernel memory: 500k freed

/init: line 69: udevd: not found

Waiting for removable media

=20

=20

With GRUB method (second link above) nothing appears on console and =
display for both images.

=20

Here is my build environment:

Build Configuration:

BB_VERSION        =3D "1.16.0"

TARGET_ARCH       =3D "i586"

TARGET_OS         =3D "linux"

MACHINE           =3D "cedartrail"

DISTRO            =3D "poky"

DISTRO_VERSION    =3D "1.3.2"

TUNE_FEATURES     =3D "m32 core2"

TARGET_FPU        =3D ""

meta             =20

meta-yocto       =20

meta-yocto-bsp    =3D "danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec"

meta-intel       =20

meta-cedartrail   =3D "danny:cc42fb6ec5900ad9f034014c3ddce04223908608"

meta-oe           =3D "danny:f00028caf257e386c0f3ae46bd4b3ba53dd0729d"

meta-videofone    =3D "danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec"

=20

Someone has some tips?

=20

Kind regards,

=20

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

Engenheiro de Controle e Automa=C3=A7=C3=A3o
UNIVERSIDADE FEDERAL DE ITAJUB=C3=80

/*long live rock 'n roll*/


------=_NextPart_001_0008_01CEBC6C.5DDAE700
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 14 (filtered medium)"><!--[if =
!mso]><style>v\:* {behavior:url(#default#VML);}
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Do you have a serial connections between the D2550 system and your =
host PC?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>There is an install for USB to HDD installation. The serial =
connection is needed to see the console output selection. Modify either =
the grub.cfg or=C2=A0 syslinux.cfg and change the default to =
=E2=80=9Cinstall=E2=80=9D<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Sean Liming<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Owner<o:p></o:p></span></p><p class=3DMsoNormal><a =
href=3D"http://www.annabooks.com/"><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";text-decorat=
ion:none'><img border=3D0 width=3D160 height=3D34 id=3D"Picture_x0020_1" =
src=3D"cid:image002.jpg@01CEBC6C.5C30E080" alt=3D"ablogo color - =
500"></span></a><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>Tel: 714-970-7523 / Cell: 858-774-3176<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'><o:p>&nbsp;</o:p></span></p><div =
style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF =
1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Diego Sueiro<br><b>Sent:</b> Saturday, September 28, =
2013 4:40 PM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> =
[yocto] Issues on booting cedartrail =
image<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal>Folks,<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>I'm having troubles to boot a cedartrail image. I =
tried both core-image-minimal and core-image-cdv-media-cedartrail. I =
tried to boot from USB drive and hard disk.<o:p></o:p></p></div><div><p =
class=3DMsoNormal>I'm using this hardware:&nbsp;<a =
href=3D"http://www.intel.com/content/www/us/en/motherboards/desktop-mothe=
rboards/desktop-board-d2550mud2.html">http://www.intel.com/content/www/us=
/en/motherboards/desktop-motherboards/desktop-board-d2550mud2.html</a><o:=
p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>I've followed the instructions =
from:<o:p></o:p></p></div><div><p class=3DMsoNormal><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-ce=
dartrail/README?h=3Ddanny">http://git.yoctoproject.org/cgit/cgit.cgi/meta=
-intel/tree/meta-cedartrail/README?h=3Ddanny</a><o:p></o:p></p></div><div=
><p class=3DMsoNormal><a =
href=3D"https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto=
_on_a_hard_drive.3F">https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_d=
o_I_put_Yocto_on_a_hard_drive.3F</a><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>For core-image-minimal<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Syslinux console =
output:<o:p></o:p></p></div><div><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><div><p =
class=3DMsoNormal>SYSLINUX 4.03 2010-10-22 &nbsp;Copyright (C) 1994-2010 =
H. Peter Anvin et al<o:p></o:p></p></div><div><p =
class=3DMsoNormal>boot:&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Loading /vmlinuz.......<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Loading =
/initrd.........ready.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></blockquote><p =
class=3DMsoNormal>Syslinux display outuput =
(VGA):<o:p></o:p></p></div><div><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><div><p =
class=3DMsoNormal>SYSLINUX 4.03 2010-10-22 &nbsp;Copyright (C) 1994-2010 =
H. Peter Anvin et al<o:p></o:p></p></div><div><p =
class=3DMsoNormal>boot:&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Loading /vmlinuz.......<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Loading =
/initrd.........ready.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></blockquote><blockquo=
te style=3D'margin-left:30.0pt;margin-right:0in'><div><div><p =
class=3DMsoNormal>Decompressing Linux... Parsing ELF... =
done.<o:p></o:p></p></div></div></blockquote><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><div><p =
class=3DMsoNormal>Booting the =
kernel.<o:p></o:p></p></div></div></blockquote><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></blockquote></div><di=
v><p class=3DMsoNormal>But I cannot see any kernel or system prints =
after that.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>For&nbsp;core-image-cdv-media<o:p></o:p></p></div><div>=
<p class=3DMsoNormal>Syslinux console =
output:<o:p></o:p></p></div><div><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><div><p =
class=3DMsoNormal>SYSLINUX 4.03 2010-10-22 &nbsp;Copyright (C9 1994-2010 =
H. Peter Anvin et al<o:p></o:p></p></div><div><p =
class=3DMsoNormal>boot:&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Loading /vmlinuz.......<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Load<span =
style=3D'font-family:"Tahoma","sans-serif"'>=EF=BF=BD</span>ng =
/initrd.........ready.<o:p></o:p></p></div></div></blockquote><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p class=3DMsoNormal>For =
syslinux display outuput (VGA) it prints kernel boot end the last 3 =
lines are:<o:p></o:p></p></div><div><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><p =
class=3DMsoNormal>Freeing unusued kernel memory: 500k =
freed<o:p></o:p></p></div></blockquote><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><p =
class=3DMsoNormal>/init: line 69: udevd: not =
found<o:p></o:p></p></div></blockquote><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><p =
class=3DMsoNormal>Waiting for removable =
media<o:p></o:p></p></div></blockquote></div><div><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></blockquote></div><di=
v><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>With GRUB method (second link above) nothing appears =
on console and display for both =
images.<o:p></o:p></p></div><div><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></blockquote></div><div><div=
><p class=3DMsoNormal>Here is my build =
environment:<o:p></o:p></p></div></div><blockquote =
style=3D'margin-left:30.0pt;margin-right:0in'><div><p =
class=3DMsoNormal>Build Configuration:<o:p></o:p></p></div><div><div><p =
class=3DMsoNormal>BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;1.16.0&quot;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>TARGET_ARCH &nbsp; &nbsp; &nbsp; =3D =
&quot;i586&quot;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>TARGET_OS &nbsp; &nbsp; &nbsp; &nbsp; =3D =
&quot;linux&quot;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D =
&quot;cedartrail&quot;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;poky&quot;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>DISTRO_VERSION &nbsp; &nbsp;=3D =
&quot;1.3.2&quot;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>TUNE_FEATURES &nbsp; &nbsp; =3D &quot;m32 =
core2&quot;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;&quot;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>meta-yocto &nbsp; &nbsp; &nbsp; =
&nbsp;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>meta-yocto-bsp &nbsp; &nbsp;=3D =
&quot;danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec&quot;<o:p></o:p></p>=
</div></div><div><div><p class=3DMsoNormal>meta-intel &nbsp; &nbsp; =
&nbsp; &nbsp;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal>meta-cedartrail &nbsp; =3D =
&quot;danny:cc42fb6ec5900ad9f034014c3ddce04223908608&quot;<o:p></o:p></p>=
</div></div><div><div><p class=3DMsoNormal>meta-oe &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; =3D =
&quot;danny:f00028caf257e386c0f3ae46bd4b3ba53dd0729d&quot;<o:p></o:p></p>=
</div></div><div><div><p class=3DMsoNormal>meta-videofone &nbsp; =
&nbsp;=3D =
&quot;danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec&quot;<o:p></o:p></p>=
</div></div></blockquote><div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Someone has some tips?<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><div><div><p =
class=3DMsoNormal>Kind regards,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p =
class=3DMsoNormal>--<br>*dS<br>Diego Sueiro<br><br>Administrador do =
Embarcados<br><a href=3D"http://www.embarcados.com.br" =
target=3D"_blank">www.embarcados.com.br</a><br><br>Engenheiro de =
Controle e Automa=C3=A7=C3=A3o<br>UNIVERSIDADE FEDERAL DE =
ITAJUB=C3=80<br><br>/*long live rock 'n =
roll*/<o:p></o:p></p></div></div></div></div></div></div></body></html>

------=_NextPart_001_0008_01CEBC6C.5DDAE700--

------=_NextPart_000_0007_01CEBC6C.5DDAE700
Content-Type: image/jpeg;
	name="image002.jpg"
Content-Transfer-Encoding: base64
Content-ID: <image002.jpg@01CEBC6C.5C30E080>

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
AKUpQBis0pQgFKUoA//Z

------=_NextPart_000_0007_01CEBC6C.5DDAE700--
