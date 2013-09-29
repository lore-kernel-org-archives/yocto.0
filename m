Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19F84E0166E
	for <yocto@yoctoproject.org>; Sun, 29 Sep 2013 04:14:14 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id at1so7778782iec.16
	for <yocto@yoctoproject.org>; Sun, 29 Sep 2013 04:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=eX/pjZxeZpzgt8CwKh+nZyW+WEt4l8KcMAbdIBYrGzI=;
	b=pb89AAtqttSNM3gY6YqoKcArzlkNKQucWblPY6ES/dO/nfMJCtEIZruuzzaMllHNtK
	adDuqSgCKgnXn0NGmt5TSoXSnAAuEtZv/HETmZ4nDiJKm57dML6GnskPsFnWmbJ+JIOA
	tc0u1ue7RvPuSK2evO3tiKuFdU2etySg1hQKtCX4gOr6tcn0jTY620p2vcXD0cp1ql7v
	hZty98ZYR1AlIsFJtMwF50LLHTSm3WtHLWf5xQf2lT0yncl4ZETGfaU6zpxOS0sp9kyO
	XtzsjmOG7HojVpbe5kv5gLWpWpKjnbGm28mh8+KbC+H4OzMUUvkrmMf4Ns20ZdHZJryF
	OJsw==
X-Received: by 10.43.125.4 with SMTP id gq4mr12794313icc.1.1380453253511; Sun,
	29 Sep 2013 04:14:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.15.137 with HTTP; Sun, 29 Sep 2013 04:13:53 -0700 (PDT)
In-Reply-To: <000601cebca7$0a377510$1ea65f30$@annabooks.com>
References: <CAMCfZKFWU43x4-2qua2CFG8cTNHk3XbDg6-zpooVThBGXS-uBg@mail.gmail.com>
	<000601cebca7$0a377510$1ea65f30$@annabooks.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Sun, 29 Sep 2013 08:13:53 -0300
Message-ID: <CAMCfZKEexAqUoQ_2mYM4VzsMhy7z+d8w+mYCPey681p5AKoJMA@mail.gmail.com>
To: Sean Liming <sean.liming@annabooks.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 29 Sep 2013 11:14:17 -0000
Content-Type: multipart/alternative; boundary=bcaec5182492ce098b04e783d186

--bcaec5182492ce098b04e783d186
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2013/9/28 Sean Liming <sean.liming@annabooks.com>

> Do you have a serial connections between the D2550 system and your host P=
C?
> ****
>
> ** **
>
> There is an install for USB to HDD installation. The serial connection is
> needed to see the console output selection. Modify either the grub.cfg or
> syslinux.cfg and change the default to =E2=80=9Cinstall=E2=80=9D****
>
> ** **
>
> Regards,****
>
> ** **
>
> Sean Liming****
>
> Owner****
>
> [image: ablogo color - 500] <http://www.annabooks.com/>****
>
> Tel: 714-970-7523 / Cell: 858-774-3176****
>
> **
>
Just a correction I'm using D2500 processor with NM10 Express Chip and this
motherboard:
http://www.intel.com/content/www/us/en/motherboards/desktop-motherboards/de=
sktop-board-d2500hn.html

I'm sorry about the wrong info sent before.

Sean,

Yes, the serial cable is connected between motherboard and the host PC. I
can get syslinux output from serial console.

Changing "boot" to "install" doesn't resolved the issue. I believe that is
something wrong with rootfs since init claims about "udevd: not found".
Here is my syslinux.cfg:

# Automatically created by OE
serial 0 115200
ALLOWOPTIONS 1
DEFAULT install
TIMEOUT 10
PROMPT 1
LABEL boot
KERNEL /vmlinuz
APPEND initrd=3D/initrd LABEL=3Dboot  root=3D/dev/ram0   console=3DttyS0,11=
5200
console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e
LABEL install
KERNEL /vmlinuz
APPEND initrd=3D/initrd LABEL=3Dinstall  root=3D/dev/ram0   console=3DttyS0=
,115200
console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e


Here is my grub.cfg:

# Automatically created by OE
serial --unit=3D0 --speed=3D115200 --word=3D8 --parity=3Dno --stop=3D1
default=3Dinstall
timeout=3D10

menuentry 'boot'{
linux /vmlinuz LABEL=3Dboot root=3D/dev/ram0   console=3DttyS0,115200
console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e
initrd /initrd
}

menuentry 'install'{
linux /vmlinuz LABEL=3Dinstall-efi root=3D/dev/ram0   console=3DttyS0,11520=
0
console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e
initrd /initrd
}



Using poky dylan branch and meta-ti-contrib with cdt-vesa machine I can
boot a core-image-minimal and get logged in just on display. There is
nothing on serial console after syslinux.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

Engenheiro de Controle e Automa=C3=A7=C3=A3o
UNIVERSIDADE FEDERAL DE ITAJUB=C3=80

/*long live rock 'n roll*/


> **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Diego Sueiro
> *Sent:* Saturday, September 28, 2013 4:40 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Issues on booting cedartrail image****
>
> ** **
>
> Folks,****
>
> ** **
>
> I'm having troubles to boot a cedartrail image. I tried both
> core-image-minimal and core-image-cdv-media-cedartrail. I tried to boot
> from USB drive and hard disk.****
>
> I'm using this hardware:
> http://www.intel.com/content/www/us/en/motherboards/desktop-motherboards/=
desktop-board-d2550mud2.html
> ****
>
> ** **
>
> I've followed the instructions from:****
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-cedartrail=
/README?h=3Ddanny
> ****
>
>
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_ha=
rd_drive.3F
> ****
>
> ** **
>
> For core-image-minimal****
>
> Syslinux console output:****
>
> SYSLINUX 4.03 2010-10-22  Copyright (C) 1994-2010 H. Peter Anvin et al***=
*
>
> boot: ****
>
> Loading /vmlinuz.......****
>
> Loading /initrd.........ready.****
>
> ** **
>
> Syslinux display outuput (VGA):****
>
> SYSLINUX 4.03 2010-10-22  Copyright (C) 1994-2010 H. Peter Anvin et al***=
*
>
> boot: ****
>
> Loading /vmlinuz.......****
>
> Loading /initrd.........ready.****
>
> ** **
>
> Decompressing Linux... Parsing ELF... done.****
>
> Booting the kernel.****
>
> ** **
>
> But I cannot see any kernel or system prints after that.****
>
> ** **
>
> For core-image-cdv-media****
>
> Syslinux console output:****
>
> SYSLINUX 4.03 2010-10-22  Copyright (C9 1994-2010 H. Peter Anvin et al***=
*
>
> boot: ****
>
> Loading /vmlinuz.......****
>
> Load=EF=BF=BDng /initrd.........ready.****
>
> ** **
>
> For syslinux display outuput (VGA) it prints kernel boot end the last 3
> lines are:****
>
> Freeing unusued kernel memory: 500k freed****
>
> /init: line 69: udevd: not found****
>
> Waiting for removable media****
>
> ** **
>
> ** **
>
> With GRUB method (second link above) nothing appears on console and
> display for both images.****
>
> ** **
>
> Here is my build environment:****
>
> Build Configuration:****
>
> BB_VERSION        =3D "1.16.0"****
>
> TARGET_ARCH       =3D "i586"****
>
> TARGET_OS         =3D "linux"****
>
> MACHINE           =3D "cedartrail"****
>
> DISTRO            =3D "poky"****
>
> DISTRO_VERSION    =3D "1.3.2"****
>
> TUNE_FEATURES     =3D "m32 core2"****
>
> TARGET_FPU        =3D ""****
>
> meta              ****
>
> meta-yocto        ****
>
> meta-yocto-bsp    =3D "danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec"***=
*
>
> meta-intel        ****
>
> meta-cedartrail   =3D "danny:cc42fb6ec5900ad9f034014c3ddce04223908608"***=
*
>
> meta-oe           =3D "danny:f00028caf257e386c0f3ae46bd4b3ba53dd0729d"***=
*
>
> meta-videofone    =3D "danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec"***=
*
>
> ** **
>
> Someone has some tips?****
>
> ** **
>
> Kind regards,****
>
> ** **
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br
>
> Engenheiro de Controle e Automa=C3=A7=C3=A3o
> UNIVERSIDADE FEDERAL DE ITAJUB=C3=80
>
> /*long live rock 'n roll*/****
>

--bcaec5182492ce098b04e783d186
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra" style><div style><div style>201=
3/9/28 Sean Liming <span dir=3D"ltr">&lt;<a href=3D"mailto:sean.liming@anna=
books.com" target=3D"_blank">sean.liming@annabooks.com</a>&gt;</span><br></=
div></div>

<div class=3D"gmail_quote" style><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,2=
04,204);border-left-style:solid;padding-left:1ex"><div lang=3D"EN-US" link=
=3D"blue" vlink=3D"purple" style>

<div style><p class=3D"" style><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)">Do you have a serial connections bet=
ween the D2550 system and your host PC?<u></u><u></u></span></p><p class=3D=
"" style>

<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"" style><span style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">There is=
 an install for USB to HDD installation. The serial connection is needed to=
 see the console output selection. Modify either the grub.cfg or=C2=A0 sysl=
inux.cfg and change the default to =E2=80=9Cinstall=E2=80=9D<u></u><u></u><=
/span></p>

<p class=3D"" style><span style=3D"font-size:11pt;font-family:Calibri,sans-=
serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"" st=
yle><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(=
31,73,125)">Regards,<u></u><u></u></span></p>

<p class=3D"" style><span style=3D"font-size:11pt;font-family:Calibri,sans-=
serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"" st=
yle><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(=
31,73,125)">Sean Liming<u></u><u></u></span></p>

<p class=3D"" style><span style=3D"font-size:11pt;font-family:Calibri,sans-=
serif;color:rgb(31,73,125)">Owner<u></u><u></u></span></p><p class=3D"" sty=
le><a href=3D"http://www.annabooks.com/" target=3D"_blank"><span style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif;text-decoration:none"><img bor=
der=3D"0" width=3D"160" height=3D"34" alt=3D"ablogo color - 500"></span></a=
><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,=
73,125)"><u></u><u></u></span></p>

<p class=3D"" style><span style=3D"font-size:11pt;font-family:Calibri,sans-=
serif;color:rgb(31,73,125)">Tel: <a href=3D"tel:714-970-7523" value=3D"+171=
49707523" target=3D"_blank">714-970-7523</a> / Cell: <a href=3D"tel:858-774=
-3176" value=3D"+18587743176" target=3D"_blank">858-774-3176</a><u></u><u><=
/u></span></p>

<p class=3D"" style><span style=3D"font-size:11pt;font-family:Calibri,sans-=
serif;color:rgb(31,73,125)"><u></u>=C2=A0</span></p></div></div></blockquot=
e><div class=3D"gmail_extra" style>Just a correction I&#39;m using D2500 pr=
ocessor with NM10 Express Chip and this motherboard:</div>

<div class=3D"gmail_extra" style><a href=3D"http://www.intel.com/content/ww=
w/us/en/motherboards/desktop-motherboards/desktop-board-d2500hn.html">http:=
//www.intel.com/content/www/us/en/motherboards/desktop-motherboards/desktop=
-board-d2500hn.html</a><br>

</div><div class=3D"gmail_extra" style><br></div><div class=3D"gmail_extra"=
 style>I&#39;m sorry about the wrong info sent before.</div><div class=3D"g=
mail_extra" style><br></div><div class=3D"gmail_extra" style>Sean,</div><di=
v class=3D"gmail_extra" style>

<br></div><div class=3D"gmail_extra" style>Yes, the serial cable is connect=
ed between motherboard and the host PC. I can get syslinux output from seri=
al console.</div><div class=3D"gmail_extra" style><br></div><div class=3D"g=
mail_extra" style>

Changing &quot;boot&quot; to &quot;install&quot; doesn&#39;t resolved the i=
ssue. I believe that is something wrong with rootfs since init claims about=
 &quot;udevd: not found&quot;.</div><div class=3D"gmail_extra" style>Here i=
s my syslinux.cfg:</div>

</div></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddin=
g:0px"><div class=3D"gmail_extra" style><div class=3D"gmail_quote" style><d=
iv class=3D"gmail_extra" style><div class=3D"gmail_extra" style># Automatic=
ally created by OE</div>

<div class=3D"gmail_extra" style>serial 0 115200</div><div class=3D"gmail_e=
xtra" style>ALLOWOPTIONS 1</div><div class=3D"gmail_extra" style>DEFAULT in=
stall</div><div class=3D"gmail_extra" style>TIMEOUT 10</div><div class=3D"g=
mail_extra" style>

PROMPT 1</div><div class=3D"gmail_extra" style>LABEL boot</div><div class=
=3D"gmail_extra" style>KERNEL /vmlinuz</div><div class=3D"gmail_extra" styl=
e>APPEND initrd=3D/initrd LABEL=3Dboot =C2=A0root=3D/dev/ram0 =C2=A0 consol=
e=3DttyS0,115200 console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e</div>

<div class=3D"gmail_extra" style>LABEL install</div><div class=3D"gmail_ext=
ra" style>KERNEL /vmlinuz</div><div class=3D"gmail_extra" style>APPEND init=
rd=3D/initrd LABEL=3Dinstall =C2=A0root=3D/dev/ram0 =C2=A0 console=3DttyS0,=
115200 console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e</div>

</div></div></div></blockquote><br><div class=3D"gmail_extra" style><div cl=
ass=3D"gmail_quote" style><div class=3D"gmail_extra" style><div style>Here =
is my grub.cfg:</div></div></div></div><blockquote style=3D"margin:0px 0px =
0px 40px;border:none;padding:0px">

<div class=3D"gmail_extra" style><div class=3D"gmail_quote" style><div clas=
s=3D"gmail_extra" style><div style><div># Automatically created by OE</div>=
<div>serial --unit=3D0 --speed=3D115200 --word=3D8 --parity=3Dno --stop=3D1=
</div><div>
default=3Dinstall</div>
<div>timeout=3D10</div><div><br></div><div>menuentry &#39;boot&#39;{</div><=
div>linux /vmlinuz LABEL=3Dboot root=3D/dev/ram0 =C2=A0 console=3DttyS0,115=
200 console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e</div><div>initrd /initr=
d</div><div>}</div>

<div><br></div><div>menuentry &#39;install&#39;{</div><div>linux /vmlinuz L=
ABEL=3Dinstall-efi root=3D/dev/ram0 =C2=A0 console=3DttyS0,115200 console=
=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e</div><div>initrd /initrd</div><div=
>}</div></div>
</div>
</div></div></blockquote><div class=3D"gmail_extra" style><div class=3D"gma=
il_quote" style><div class=3D"gmail_extra" style><div style><br></div><div =
style><br></div><div style>Using poky dylan branch and meta-ti-contrib with=
 cdt-vesa machine I can boot a core-image-minimal and get logged in just on=
 display. There is nothing on serial console after syslinux.</div>

<div style><br></div><div style><br></div><div style>Regards,</div><div sty=
le><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<b=
r><a href=3D"http://www.embarcados.com.br/" target=3D"_blank">www.embarcado=
s.com.br</a><br>

<br>Engenheiro de Controle e Automa=C3=A7=C3=A3o<br>UNIVERSIDADE FEDERAL DE=
 ITAJUB=C3=80<br><br></div><div style>/*long live rock &#39;n roll*/</div><=
div style>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex">

<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style><div style><p clas=
s=3D"" style><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;c=
olor:rgb(31,73,125)"><u></u></span></p><div style=3D"border-style:none none=
 none solid;border-left-color:blue;border-left-width:1.5pt;padding:0in 0in =
0in 4pt">

<div style><div style=3D"border-style:solid none none;border-top-color:rgb(=
181,196,223);border-top-width:1pt;padding:3pt 0in 0in"><p class=3D"" style>=
<b><span style=3D"font-size:10pt;font-family:Tahoma,sans-serif">From:</span=
></b><span style=3D"font-size:10pt;font-family:Tahoma,sans-serif"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] <b>On Behalf Of <=
/b>Diego Sueiro<br>

<b>Sent:</b> Saturday, September 28, 2013 4:40 PM<br><b>To:</b> <a href=3D"=
mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>=
<br><b>Subject:</b> [yocto] Issues on booting cedartrail image<u></u><u></u=
></span></p>

</div></div><div style><div class=3D"h5" style><p class=3D"" style><u></u>=
=C2=A0<u></u></p><div style><p class=3D"" style>Folks,<u></u><u></u></p><di=
v style><p class=3D"" style><u></u>=C2=A0<u></u></p></div><div style><p cla=
ss=3D"" style>I&#39;m having troubles to boot a cedartrail image. I tried b=
oth core-image-minimal and core-image-cdv-media-cedartrail. I tried to boot=
 from USB drive and hard disk.<u></u><u></u></p>

</div><div style><p class=3D"" style>I&#39;m using this hardware:=C2=A0<a h=
ref=3D"http://www.intel.com/content/www/us/en/motherboards/desktop-motherbo=
ards/desktop-board-d2550mud2.html" target=3D"_blank">http://www.intel.com/c=
ontent/www/us/en/motherboards/desktop-motherboards/desktop-board-d2550mud2.=
html</a><u></u><u></u></p>

</div><div style><p class=3D"" style><u></u>=C2=A0<u></u></p></div><div sty=
le><p class=3D"" style>I&#39;ve followed the instructions from:<u></u><u></=
u></p></div><div style><p class=3D"" style><a href=3D"http://git.yoctoproje=
ct.org/cgit/cgit.cgi/meta-intel/tree/meta-cedartrail/README?h=3Ddanny" targ=
et=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/met=
a-cedartrail/README?h=3Ddanny</a><u></u><u></u></p>

</div><div style><p class=3D"" style><a href=3D"https://wiki.yoctoproject.o=
rg/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F" target=3D"_blank=
">https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_ha=
rd_drive.3F</a><u></u><u></u></p>

</div><div style><p class=3D"" style><u></u>=C2=A0<u></u></p></div><div sty=
le><p class=3D"" style>For core-image-minimal<u></u><u></u></p></div><div s=
tyle><p class=3D"" style>Syslinux console output:<u></u><u></u></p></div><d=
iv style>

<blockquote style=3D"margin-left:30pt;margin-right:0in"><div style><div sty=
le><p class=3D"" style>SYSLINUX 4.03 2010-10-22 =C2=A0Copyright (C) 1994-20=
10 H. Peter Anvin et al<u></u><u></u></p></div><div style><p class=3D"" sty=
le>boot:=C2=A0<u></u><u></u></p>

</div><div style><p class=3D"" style>Loading /vmlinuz.......<u></u><u></u><=
/p></div><div style><p class=3D"" style>Loading /initrd.........ready.<u></=
u><u></u></p></div><div style><p class=3D"" style><u></u>=C2=A0<u></u></p><=
/div></div>

</blockquote><p class=3D"" style>Syslinux display outuput (VGA):<u></u><u><=
/u></p></div><div style><blockquote style=3D"margin-left:30pt;margin-right:=
0in"><div style><div style><p class=3D"" style>SYSLINUX 4.03 2010-10-22 =C2=
=A0Copyright (C) 1994-2010 H. Peter Anvin et al<u></u><u></u></p>

</div><div style><p class=3D"" style>boot:=C2=A0<u></u><u></u></p></div><di=
v style><p class=3D"" style>Loading /vmlinuz.......<u></u><u></u></p></div>=
<div style><p class=3D"" style>Loading /initrd.........ready.<u></u><u></u>=
</p></div>

<div style><p class=3D"" style><u></u>=C2=A0<u></u></p></div></div></blockq=
uote><blockquote style=3D"margin-left:30pt;margin-right:0in"><div style><di=
v style><p class=3D"" style>Decompressing Linux... Parsing ELF... done.<u><=
/u><u></u></p>

</div></div></blockquote><blockquote style=3D"margin-left:30pt;margin-right=
:0in"><div style><div style><p class=3D"" style>Booting the kernel.<u></u><=
u></u></p></div></div></blockquote><blockquote style=3D"margin-left:30pt;ma=
rgin-right:0in">

<div style><div style><p class=3D"" style><u></u>=C2=A0<u></u></p></div></d=
iv></blockquote></div><div style><p class=3D"" style>But I cannot see any k=
ernel or system prints after that.<u></u><u></u></p></div><div style><p cla=
ss=3D"" style>

<u></u>=C2=A0<u></u></p></div><div style><p class=3D"" style>For=C2=A0core-=
image-cdv-media<u></u><u></u></p></div><div style><p class=3D"" style>Sysli=
nux console output:<u></u><u></u></p></div><div style><blockquote style=3D"=
margin-left:30pt;margin-right:0in">

<div style><div style><p class=3D"" style>SYSLINUX 4.03 2010-10-22 =C2=A0Co=
pyright (C9 1994-2010 H. Peter Anvin et al<u></u><u></u></p></div><div styl=
e><p class=3D"" style>boot:=C2=A0<u></u><u></u></p></div><div style><p clas=
s=3D"" style>

Loading /vmlinuz.......<u></u><u></u></p></div><div style><p class=3D"" sty=
le>Load<span style=3D"font-family:Tahoma,sans-serif">=EF=BF=BD</span>ng /in=
itrd.........ready.<u></u><u></u></p></div></div></blockquote><div style><p=
 class=3D"" style>

<u></u>=C2=A0<u></u></p></div><p class=3D"" style>For syslinux display outu=
put (VGA) it prints kernel boot end the last 3 lines are:<u></u><u></u></p>=
</div><div style><blockquote style=3D"margin-left:30pt;margin-right:0in"><d=
iv style>

<p class=3D"" style>Freeing unusued kernel memory: 500k freed<u></u><u></u>=
</p></div></blockquote><blockquote style=3D"margin-left:30pt;margin-right:0=
in"><div style><p class=3D"" style>/init: line 69: udevd: not found<u></u><=
u></u></p>

</div></blockquote><blockquote style=3D"margin-left:30pt;margin-right:0in">=
<div style><p class=3D"" style>Waiting for removable media<u></u><u></u></p=
></div></blockquote></div><div style><blockquote style=3D"margin-left:30pt;=
margin-right:0in">

<div style><div style><p class=3D"" style><u></u>=C2=A0<u></u></p></div></d=
iv></blockquote></div><div style><p class=3D"" style><u></u>=C2=A0<u></u></=
p></div><div style><p class=3D"" style>With GRUB method (second link above)=
 nothing appears on console and display for both images.<u></u><u></u></p>

</div><div style><blockquote style=3D"margin-left:30pt;margin-right:0in"><d=
iv style><p class=3D"" style><u></u>=C2=A0<u></u></p></div></blockquote></d=
iv><div style><div style><p class=3D"" style>Here is my build environment:<=
u></u><u></u></p>

</div></div><blockquote style=3D"margin-left:30pt;margin-right:0in"><div st=
yle><p class=3D"" style>Build Configuration:<u></u><u></u></p></div><div st=
yle><div style><p class=3D"" style>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;1.16.0&quot;<u></u><u></u></p>

</div></div><div style><div style><p class=3D"" style>TARGET_ARCH =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;i586&quot;<u></u><u></u></p></div></div><div style>=
<div style><p class=3D"" style>TARGET_OS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &q=
uot;linux&quot;<u></u><u></u></p></div></div>

<div style><div style><p class=3D"" style>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;cedartrail&quot;<u></u><u></u></p></div></div><div sty=
le><div style><p class=3D"" style>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;poky&quot;<u></u><u></u></p></div></div><div style>

<div style><p class=3D"" style>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.3.2&=
quot;<u></u><u></u></p></div></div><div style><div style><p class=3D"" styl=
e>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;m32 core2&quot;<u></u><u></u></p></=
div></div><div style><div style>

<p class=3D"" style>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;<=
u></u><u></u></p></div></div><div style><div style><p class=3D"" style>meta=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<u></u><u></u></p></div></=
div><div style><div style><p class=3D"" style>meta-yocto =C2=A0 =C2=A0 =C2=
=A0 =C2=A0<u></u><u></u></p>

</div></div><div style><div style><p class=3D"" style>meta-yocto-bsp =C2=A0=
 =C2=A0=3D &quot;danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec&quot;<u></u=
><u></u></p></div></div><div style><div style><p class=3D"" style>meta-inte=
l =C2=A0 =C2=A0 =C2=A0 =C2=A0<u></u><u></u></p>

</div></div><div style><div style><p class=3D"" style>meta-cedartrail =C2=
=A0 =3D &quot;danny:cc42fb6ec5900ad9f034014c3ddce04223908608&quot;<u></u><u=
></u></p></div></div><div style><div style><p class=3D"" style>meta-oe =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;danny:f00028caf257e386c0f3ae46bd4=
b3ba53dd0729d&quot;<u></u><u></u></p>

</div></div><div style><div style><p class=3D"" style>meta-videofone =C2=A0=
 =C2=A0=3D &quot;danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec&quot;<u></u=
><u></u></p></div></div></blockquote><div style><div style><p class=3D"" st=
yle><u></u>=C2=A0<u></u></p>

</div><div style><p class=3D"" style>Someone has some tips?<u></u><u></u></=
p></div><div style><p class=3D"" style><u></u>=C2=A0<u></u></p></div><div s=
tyle><div style><div style><p class=3D"" style>Kind regards,<u></u><u></u><=
/p></div>

<div style><p class=3D"" style><u></u>=C2=A0<u></u></p></div><p class=3D"" =
style>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a hr=
ef=3D"http://www.embarcados.com.br" target=3D"_blank">www.embarcados.com.br=
</a><br>
<br>
Engenheiro de Controle e Automa=C3=A7=C3=A3o<br>UNIVERSIDADE FEDERAL DE ITA=
JUB=C3=80<br><br>/*long live rock &#39;n roll*/<u></u><u></u></p></div></di=
v></div></div></div></div></div></div></div></blockquote></div></div><div c=
lass=3D"gmail_extra" style>

<br></div></div>

--bcaec5182492ce098b04e783d186--
