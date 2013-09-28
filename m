Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCFAAE015A2
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2013 16:40:13 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id u16so6979421iet.5
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2013 16:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=1vVUYUSY9AsDa/hxY3PAYYfCIykE6iWKFa9dwqhq3b8=;
	b=X7TRDcvsorBWOsRQF+BEjuOY/DzPVONyjy1sUmO2wryA72HT4wamima3LdIRhnhCzR
	HGxx7tjx0yp2e+V/qZyWBrIP7+ddP6dGMSRYDKlWHtXGdlrPECZ91Rk0wakMG9lFa8zy
	qrOBjspcHNZwDf8FSgqNJNEuc5xxIDLP5vkP5pdT2MbINKFiqrF5FNGdG1trlMI311Gk
	yzXOojMq8Ae0PROhCbKFYWvXzM562fCKMWt0rinUQsqEKpKo+/FQB+4pfjEFRfnw6iru
	kzozY6dfmC7tYtuNt8OzO+o0TlK2p28QfaCK1UFNbRdipX2BRwqbDxaPb3tClZiQerSm
	z9qA==
X-Received: by 10.43.178.135 with SMTP id ow7mr171634icc.43.1380411612467;
	Sat, 28 Sep 2013 16:40:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.15.137 with HTTP; Sat, 28 Sep 2013 16:39:52 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Sat, 28 Sep 2013 20:39:52 -0300
Message-ID: <CAMCfZKFWU43x4-2qua2CFG8cTNHk3XbDg6-zpooVThBGXS-uBg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Issues on booting cedartrail image
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
X-List-Received-Date: Sat, 28 Sep 2013 23:40:14 -0000
Content-Type: multipart/alternative; boundary=001a11c30becce1d9704e77a1fd5

--001a11c30becce1d9704e77a1fd5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Folks,

I'm having troubles to boot a cedartrail image. I tried both
core-image-minimal and core-image-cdv-media-cedartrail. I tried to boot
from USB drive and hard disk.
I'm using this hardware:
http://www.intel.com/content/www/us/en/motherboards/desktop-motherboards/de=
sktop-board-d2550mud2.html

I've followed the instructions from:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-cedartrail/R=
EADME?h=3Ddanny
https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard=
_drive.3F

For core-image-minimal
Syslinux console output:

SYSLINUX 4.03 2010-10-22  Copyright (C) 1994-2010 H. Peter Anvin et al
boot:
Loading /vmlinuz.......
Loading /initrd.........ready.

Syslinux display outuput (VGA):

SYSLINUX 4.03 2010-10-22  Copyright (C) 1994-2010 H. Peter Anvin et al
boot:
Loading /vmlinuz.......
Loading /initrd.........ready.

Decompressing Linux... Parsing ELF... done.

Booting the kernel.


But I cannot see any kernel or system prints after that.

For core-image-cdv-media
Syslinux console output:

SYSLINUX 4.03 2010-10-22  Copyright (C9 1994-2010 H. Peter Anvin et al
boot:
Loading /vmlinuz.......
Load=EF=BF=BDng /initrd.........ready.


For syslinux display outuput (VGA) it prints kernel boot end the last 3
lines are:

Freeing unusued kernel memory: 500k freed

/init: line 69: udevd: not found

Waiting for removable media



With GRUB method (second link above) nothing appears on console and display
for both images.


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
meta
meta-yocto
meta-yocto-bsp    =3D "danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec"
meta-intel
meta-cedartrail   =3D "danny:cc42fb6ec5900ad9f034014c3ddce04223908608"
meta-oe           =3D "danny:f00028caf257e386c0f3ae46bd4b3ba53dd0729d"
meta-videofone    =3D "danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec"


Someone has some tips?

Kind regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

Engenheiro de Controle e Automa=C3=A7=C3=A3o
UNIVERSIDADE FEDERAL DE ITAJUB=C3=80

/*long live rock 'n roll*/

--001a11c30becce1d9704e77a1fd5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div style>I&#39;m having troubles to=
 boot a cedartrail image. I tried both core-image-minimal and core-image-cd=
v-media-cedartrail. I tried to boot from USB drive and hard disk.</div><div=
 style>

I&#39;m using this hardware:=C2=A0<a href=3D"http://www.intel.com/content/w=
ww/us/en/motherboards/desktop-motherboards/desktop-board-d2550mud2.html">ht=
tp://www.intel.com/content/www/us/en/motherboards/desktop-motherboards/desk=
top-board-d2550mud2.html</a></div>

<div style><br></div><div style>I&#39;ve followed the instructions from:</d=
iv><div style><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-int=
el/tree/meta-cedartrail/README?h=3Ddanny">http://git.yoctoproject.org/cgit/=
cgit.cgi/meta-intel/tree/meta-cedartrail/README?h=3Ddanny</a><br>

</div><div style><a href=3D"https://wiki.yoctoproject.org/wiki/How_do_I#Q:_=
How_do_I_put_Yocto_on_a_hard_drive.3F">https://wiki.yoctoproject.org/wiki/H=
ow_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F</a><br></div><div style>

<br></div><div style>For core-image-minimal</div><div style>Syslinux consol=
e output:</div><div style><blockquote style=3D"margin:0px 0px 0px 40px;bord=
er:none;padding:0px"><div style><div style>SYSLINUX 4.03 2010-10-22 =C2=A0C=
opyright (C) 1994-2010 H. Peter Anvin et al</div>

<div style>boot:=C2=A0</div><div style>Loading /vmlinuz.......</div><div st=
yle>Loading /initrd.........ready.</div><div style><br></div></div></blockq=
uote>Syslinux display outuput (VGA):</div><div style><blockquote style=3D"m=
argin:0px 0px 0px 40px;border:none;padding:0px">

<div style><div>SYSLINUX 4.03 2010-10-22 =C2=A0Copyright (C) 1994-2010 H. P=
eter Anvin et al</div><div>boot:=C2=A0</div><div>Loading /vmlinuz.......</d=
iv><div>Loading /initrd.........ready.</div><div><br></div></div></blockquo=
te><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">

<div style><div style>Decompressing Linux... Parsing ELF... done.</div></di=
v></blockquote><blockquote style=3D"margin:0px 0px 0px 40px;border:none;pad=
ding:0px"><div style><div style>Booting the kernel.</div></div></blockquote=
>

<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div =
style><div style><br></div></div></blockquote></div><div style>But I cannot=
 see any kernel or system prints after that.</div><div style><br></div><div=
 style>

For=C2=A0core-image-cdv-media</div><div style>Syslinux console output:</div=
><div style><blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddin=
g:0px"><div style><div style>SYSLINUX 4.03 2010-10-22 =C2=A0Copyright (C9 1=
994-2010 H. Peter Anvin et al</div>

<div style>boot:=C2=A0</div><div style>Loading /vmlinuz.......</div><div st=
yle>Load=EF=BF=BDng /initrd.........ready.</div></div></blockquote><div sty=
le><br></div>For syslinux display outuput (VGA) it prints kernel boot end t=
he last 3 lines are:<br>

</div><div style><blockquote style=3D"margin:0 0 0 40px;border:none;padding=
:0px"><div style>Freeing unusued kernel memory: 500k freed</div></blockquot=
e><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div styl=
e>

/init: line 69: udevd: not found</div></blockquote><blockquote style=3D"mar=
gin:0 0 0 40px;border:none;padding:0px"><div style>Waiting for removable me=
dia</div></blockquote></div><div style><blockquote style=3D"margin:0px 0px =
0px 40px;border:none;padding:0px">

<div style><div style><br></div></div></blockquote></div><div style><br></d=
iv><div style>With GRUB method (second link above) nothing appears on conso=
le and display for both images.</div><div style><blockquote style=3D"margin=
:0px 0px 0px 40px;border:none;padding:0px">

<div style><br></div></blockquote></div><div style><div style>Here is my bu=
ild environment:</div></div><blockquote style=3D"margin:0px 0px 0px 40px;bo=
rder:none;padding:0px"><div style>Build Configuration:</div><div style><div=
 style>

BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.16.0&quot;</div></div><di=
v style><div style>TARGET_ARCH =C2=A0 =C2=A0 =C2=A0 =3D &quot;i586&quot;</d=
iv></div><div style><div style>TARGET_OS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &q=
uot;linux&quot;</div></div><div style><div style>MACHINE =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;cedartrail&quot;</div>

</div><div style><div style>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;poky&quot;</div></div><div style><div style>DISTRO_VERSION =C2=
=A0 =C2=A0=3D &quot;1.3.2&quot;</div></div><div style><div style>TUNE_FEATU=
RES =C2=A0 =C2=A0 =3D &quot;m32 core2&quot;</div></div>

<div style><div style>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot=
;</div></div><div style><div style>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</div></div><div style><div style>meta-yocto =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</div></div><div style><div style>meta-yocto-bsp =C2=A0 =C2=A0=3D=
 &quot;danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec&quot;</div>

</div><div style><div style>meta-intel =C2=A0 =C2=A0 =C2=A0 =C2=A0</div></d=
iv><div style><div style>meta-cedartrail =C2=A0 =3D &quot;danny:cc42fb6ec59=
00ad9f034014c3ddce04223908608&quot;</div></div><div style><div style>meta-o=
e =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;danny:f00028caf257e386c0f3ae=
46bd4b3ba53dd0729d&quot;</div>

</div><div style><div style>meta-videofone =C2=A0 =C2=A0=3D &quot;danny:70c=
a9ff6422a03c26cfa78e76f6334bcf3fe47ec&quot;</div></div></blockquote><div><d=
iv><br></div><div style>Someone has some tips?</div><div><br></div><div><di=
v dir=3D"ltr">

<div>Kind regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Adm=
inistrador do Embarcados<br><a href=3D"http://www.embarcados.com.br" target=
=3D"_blank">www.embarcados.com.br</a><br><br>Engenheiro de Controle e Autom=
a=C3=A7=C3=A3o<br>

UNIVERSIDADE FEDERAL DE ITAJUB=C3=80<br><br>/*long live rock &#39;n roll*/<=
/div></div>
</div></div>

--001a11c30becce1d9704e77a1fd5--
