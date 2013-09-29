Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DF4EE0160F
	for <yocto@yoctoproject.org>; Sun, 29 Sep 2013 07:39:56 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id tp5so8109418ieb.12
	for <yocto@yoctoproject.org>; Sun, 29 Sep 2013 07:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hy6pGGuLtXiu0wFUnDQ0dtHOsuBkUQkH1LWzbdjbLNY=;
	b=IVwf9QQ4jyiz3Laorkq1dKzZMckb8Euns4ucgB4PDxDcgmHCl3UQtHE8DHIJK9X+yX
	+1v/N9yal+C4evtAtRJRfiHLZXA63CasVBh1wFzYXLezmEYuChA8BJ+YDL3b7dEwjHHj
	CrCDQ99Zo+OWSGyQuuHI3pOyZzd3dIkpf+fjng9zOzVj8lKv1BWXYPW2HTt/UemZUI0n
	Vr2Zo0E4jXUWLqNtq8zpWRzk/7No8lkz6YoK32do3BrjdKOXhwAxTCI1qOHrwIrHyKyN
	yQWV0dufW9K0sGsHbqxirmOWYYi4soixlQ6Nr4UDvIBznIZGPjokYbTD8V4oHPbLR+nP
	hJqw==
X-Received: by 10.50.1.84 with SMTP id 20mr10363186igk.17.1380465595202; Sun,
	29 Sep 2013 07:39:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.15.137 with HTTP; Sun, 29 Sep 2013 07:39:35 -0700 (PDT)
In-Reply-To: <CAMCfZKEexAqUoQ_2mYM4VzsMhy7z+d8w+mYCPey681p5AKoJMA@mail.gmail.com>
References: <CAMCfZKFWU43x4-2qua2CFG8cTNHk3XbDg6-zpooVThBGXS-uBg@mail.gmail.com>
	<000601cebca7$0a377510$1ea65f30$@annabooks.com>
	<CAMCfZKEexAqUoQ_2mYM4VzsMhy7z+d8w+mYCPey681p5AKoJMA@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Sun, 29 Sep 2013 11:39:35 -0300
Message-ID: <CAMCfZKEJc8=_iNEZbnHqmVJqPQwUYkoRqb0DzOjHOPsCBcwupQ@mail.gmail.com>
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
X-List-Received-Date: Sun, 29 Sep 2013 14:39:59 -0000
Content-Type: multipart/alternative; boundary=047d7bdc188c6d449e04e786b1a1

--047d7bdc188c6d449e04e786b1a1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2013/9/29 Diego Sueiro <diego.sueiro@gmail.com>

> 2013/9/28 Sean Liming <sean.liming@annabooks.com>
>
>> Do you have a serial connections between the D2550 system and your host
>> PC?****
>>
>> ** **
>>
>> There is an install for USB to HDD installation. The serial connection i=
s
>> needed to see the console output selection. Modify either the grub.cfg o=
r
>> syslinux.cfg and change the default to =E2=80=9Cinstall=E2=80=9D****
>>
>> ** **
>>
>> Regards,****
>>
>> ** **
>>
>> Sean Liming****
>>
>> Owner****
>>
>> [image: ablogo color - 500] <http://www.annabooks.com/>****
>>
>> Tel: 714-970-7523 / Cell: 858-774-3176****
>>
>> **
>>
> Just a correction I'm using D2500 processor with NM10 Express Chip and
> this motherboard:
>
> http://www.intel.com/content/www/us/en/motherboards/desktop-motherboards/=
desktop-board-d2500hn.html
>
> I'm sorry about the wrong info sent before.
>
> Sean,
>
> Yes, the serial cable is connected between motherboard and the host PC. I
> can get syslinux output from serial console.
>
> Changing "boot" to "install" doesn't resolved the issue. I believe that i=
s
> something wrong with rootfs since init claims about "udevd: not found".
> Here is my syslinux.cfg:
>
> # Automatically created by OE
> serial 0 115200
> ALLOWOPTIONS 1
> DEFAULT install
> TIMEOUT 10
> PROMPT 1
> LABEL boot
> KERNEL /vmlinuz
> APPEND initrd=3D/initrd LABEL=3Dboot  root=3D/dev/ram0   console=3DttyS0,=
115200
> console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e
> LABEL install
> KERNEL /vmlinuz
> APPEND initrd=3D/initrd LABEL=3Dinstall  root=3D/dev/ram0   console=3Dtty=
S0,115200
> console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e
>
>
> Here is my grub.cfg:
>
> # Automatically created by OE
> serial --unit=3D0 --speed=3D115200 --word=3D8 --parity=3Dno --stop=3D1
> default=3Dinstall
> timeout=3D10
>
> menuentry 'boot'{
> linux /vmlinuz LABEL=3Dboot root=3D/dev/ram0   console=3DttyS0,115200
> console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e
> initrd /initrd
> }
>
> menuentry 'install'{
> linux /vmlinuz LABEL=3Dinstall-efi root=3D/dev/ram0   console=3DttyS0,115=
200
> console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e
> initrd /initrd
> }
>
>
>
> Using poky dylan branch and meta-ti-contrib with cdt-vesa machine I can
> boot a core-image-minimal and get logged in just on display. There is
> nothing on serial console after syslinux.
>
>
>
>
Folks,

Serial console issue solved. On this board the DB9 connector is mapped on
ttyS1.

But I can't still get logged on system with images generated with
meta-cedartrail on danny branch.

Any hint about udev reported error?

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

Engenheiro de Controle e Automa=C3=A7=C3=A3o
UNIVERSIDADE FEDERAL DE ITAJUB=C3=80

/*long live rock 'n roll*/



>
>
>> **
>>
>> *From:* yocto-bounces@yoctoproject.org [mailto:
>> yocto-bounces@yoctoproject.org] *On Behalf Of *Diego Sueiro
>> *Sent:* Saturday, September 28, 2013 4:40 PM
>> *To:* yocto@yoctoproject.org
>> *Subject:* [yocto] Issues on booting cedartrail image****
>>
>> ** **
>>
>> Folks,****
>>
>> ** **
>>
>> I'm having troubles to boot a cedartrail image. I tried both
>> core-image-minimal and core-image-cdv-media-cedartrail. I tried to boot
>> from USB drive and hard disk.****
>>
>> I'm using this hardware:
>> http://www.intel.com/content/www/us/en/motherboards/desktop-motherboards=
/desktop-board-d2550mud2.html
>> ****
>>
>> ** **
>>
>> I've followed the instructions from:****
>>
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-cedartrai=
l/README?h=3Ddanny
>> ****
>>
>>
>> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_h=
ard_drive.3F
>> ****
>>
>> ** **
>>
>> For core-image-minimal****
>>
>> Syslinux console output:****
>>
>> SYSLINUX 4.03 2010-10-22  Copyright (C) 1994-2010 H. Peter Anvin et al**=
*
>> *
>>
>> boot: ****
>>
>> Loading /vmlinuz.......****
>>
>> Loading /initrd.........ready.****
>>
>> ** **
>>
>> Syslinux display outuput (VGA):****
>>
>> SYSLINUX 4.03 2010-10-22  Copyright (C) 1994-2010 H. Peter Anvin et al**=
*
>> *
>>
>> boot: ****
>>
>> Loading /vmlinuz.......****
>>
>> Loading /initrd.........ready.****
>>
>> ** **
>>
>> Decompressing Linux... Parsing ELF... done.****
>>
>> Booting the kernel.****
>>
>> ** **
>>
>> But I cannot see any kernel or system prints after that.****
>>
>> ** **
>>
>> For core-image-cdv-media****
>>
>> Syslinux console output:****
>>
>> SYSLINUX 4.03 2010-10-22  Copyright (C9 1994-2010 H. Peter Anvin et al**=
*
>> *
>>
>> boot: ****
>>
>> Loading /vmlinuz.......****
>>
>> Load=EF=BF=BDng /initrd.........ready.****
>>
>> ** **
>>
>> For syslinux display outuput (VGA) it prints kernel boot end the last 3
>> lines are:****
>>
>> Freeing unusued kernel memory: 500k freed****
>>
>> /init: line 69: udevd: not found****
>>
>> Waiting for removable media****
>>
>> ** **
>>
>> ** **
>>
>> With GRUB method (second link above) nothing appears on console and
>> display for both images.****
>>
>> ** **
>>
>> Here is my build environment:****
>>
>> Build Configuration:****
>>
>> BB_VERSION        =3D "1.16.0"****
>>
>> TARGET_ARCH       =3D "i586"****
>>
>> TARGET_OS         =3D "linux"****
>>
>> MACHINE           =3D "cedartrail"****
>>
>> DISTRO            =3D "poky"****
>>
>> DISTRO_VERSION    =3D "1.3.2"****
>>
>> TUNE_FEATURES     =3D "m32 core2"****
>>
>> TARGET_FPU        =3D ""****
>>
>> meta              ****
>>
>> meta-yocto        ****
>>
>> meta-yocto-bsp    =3D "danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec"**=
**
>>
>> meta-intel        ****
>>
>> meta-cedartrail   =3D "danny:cc42fb6ec5900ad9f034014c3ddce04223908608"**=
**
>>
>> meta-oe           =3D "danny:f00028caf257e386c0f3ae46bd4b3ba53dd0729d"**=
**
>>
>> meta-videofone    =3D "danny:70ca9ff6422a03c26cfa78e76f6334bcf3fe47ec"**=
**
>>
>> ** **
>>
>> Someone has some tips?****
>>
>> ** **
>>
>> Kind regards,****
>>
>> ** **
>>
>> --
>> *dS
>> Diego Sueiro
>>
>> Administrador do Embarcados
>> www.embarcados.com.br
>>
>> Engenheiro de Controle e Automa=C3=A7=C3=A3o
>> UNIVERSIDADE FEDERAL DE ITAJUB=C3=80
>>
>> /*long live rock 'n roll*/****
>>
>
>

--047d7bdc188c6d449e04e786b1a1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div dir=3D"ltr"><div>2013=
/9/29 Diego Sueiro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gma=
il.com" target=3D"_blank">diego.sueiro@gmail.com</a>&gt;</span><br></div></=
div></div>

<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"=
gmail_extra">

<div><div>2013/9/28 Sean Liming <span dir=3D"ltr">&lt;<a href=3D"mailto:sea=
n.liming@annabooks.com" target=3D"_blank">sean.liming@annabooks.com</a>&gt;=
</span><br></div></div>
<div class=3D"gmail_quote"><div class=3D"im"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-col=
or:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div lang=3D"=
EN-US" link=3D"blue" vlink=3D"purple">


<div><p><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:=
rgb(31,73,125)">Do you have a serial connections between the D2550 system a=
nd your host PC?<u></u><u></u></span></p><p>
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)"><u></u>=C2=A0<u></u></span></p><p><span style=3D"font-size:11pt;fon=
t-family:Calibri,sans-serif;color:rgb(31,73,125)">There is an install for U=
SB to HDD installation. The serial connection is needed to see the console =
output selection. Modify either the grub.cfg or=C2=A0 syslinux.cfg and chan=
ge the default to =E2=80=9Cinstall=E2=80=9D<u></u><u></u></span></p>


<p><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)"><u></u>=C2=A0<u></u></span></p><p><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)">Regards,<u></u><u></u>=
</span></p>


<p><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)"><u></u>=C2=A0<u></u></span></p><p><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)">Sean Liming<u></u><u><=
/u></span></p>


<p><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)">Owner<u></u><u></u></span></p><p><a href=3D"http://www.annabooks=
.com/" target=3D"_blank"><span style=3D"font-size:11pt;font-family:Calibri,=
sans-serif;text-decoration:none"><img border=3D"0" width=3D"160" height=3D"=
34" alt=3D"ablogo color - 500"></span></a><span style=3D"font-size:11pt;fon=
t-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span></p>


<p><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)">Tel: <a href=3D"tel:714-970-7523" value=3D"+17149707523" target=
=3D"_blank">714-970-7523</a> / Cell: <a href=3D"tel:858-774-3176" value=3D"=
+18587743176" target=3D"_blank">858-774-3176</a><u></u><u></u></span></p>


<p><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)"><u></u>=C2=A0</span></p></div></div></blockquote></div><div clas=
s=3D"gmail_extra">Just a correction I&#39;m using D2500 processor with NM10=
 Express Chip and this motherboard:</div>


<div class=3D"gmail_extra"><a href=3D"http://www.intel.com/content/www/us/e=
n/motherboards/desktop-motherboards/desktop-board-d2500hn.html" target=3D"_=
blank">http://www.intel.com/content/www/us/en/motherboards/desktop-motherbo=
ards/desktop-board-d2500hn.html</a><br>


</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I&#39=
;m sorry about the wrong info sent before.</div><div class=3D"gmail_extra">=
<br></div><div class=3D"gmail_extra">Sean,</div><div class=3D"gmail_extra">
<br></div><div class=3D"gmail_extra">Yes, the serial cable is connected bet=
ween motherboard and the host PC. I can get syslinux output from serial con=
sole.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">
Changing &quot;boot&quot; to &quot;install&quot; doesn&#39;t resolved the i=
ssue. I believe that is something wrong with rootfs since init claims about=
 &quot;udevd: not found&quot;.</div><div class=3D"gmail_extra">Here is my s=
yslinux.cfg:</div>


</div></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddin=
g:0px"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div class=3D"=
gmail_extra"><div class=3D"gmail_extra"># Automatically created by OE</div>
<div class=3D"gmail_extra">serial 0 115200</div><div class=3D"gmail_extra">=
ALLOWOPTIONS 1</div><div class=3D"gmail_extra">DEFAULT install</div><div cl=
ass=3D"gmail_extra">TIMEOUT 10</div><div class=3D"gmail_extra">
PROMPT 1</div><div class=3D"gmail_extra">LABEL boot</div><div class=3D"gmai=
l_extra">KERNEL /vmlinuz</div><div class=3D"gmail_extra">APPEND initrd=3D/i=
nitrd LABEL=3Dboot =C2=A0root=3D/dev/ram0 =C2=A0 console=3DttyS0,115200 con=
sole=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e</div>


<div class=3D"gmail_extra">LABEL install</div><div class=3D"gmail_extra">KE=
RNEL /vmlinuz</div><div class=3D"gmail_extra">APPEND initrd=3D/initrd LABEL=
=3Dinstall =C2=A0root=3D/dev/ram0 =C2=A0 console=3DttyS0,115200 console=3Dt=
ty0 video=3DLVDS-1:d video=3DVGA-1:e</div>


</div></div></div></blockquote><br><div class=3D"gmail_extra"><div class=3D=
"gmail_quote"><div class=3D"gmail_extra"><div>Here is my grub.cfg:</div></d=
iv></div></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;pad=
ding:0px">


<div class=3D"gmail_extra"><div class=3D"gmail_quote"><div class=3D"gmail_e=
xtra"><div><div># Automatically created by OE</div><div>serial --unit=3D0 -=
-speed=3D115200 --word=3D8 --parity=3Dno --stop=3D1</div><div>default=3Dins=
tall</div>
<div>timeout=3D10</div><div><br></div><div>menuentry &#39;boot&#39;{</div><=
div>linux /vmlinuz LABEL=3Dboot root=3D/dev/ram0 =C2=A0 console=3DttyS0,115=
200 console=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e</div><div>initrd /initr=
d</div><div>}</div>


<div><br></div><div>menuentry &#39;install&#39;{</div><div>linux /vmlinuz L=
ABEL=3Dinstall-efi root=3D/dev/ram0 =C2=A0 console=3DttyS0,115200 console=
=3Dtty0 video=3DLVDS-1:d video=3DVGA-1:e</div><div>initrd /initrd</div><div=
>}</div></div>

</div>
</div></div></blockquote><div class=3D"gmail_extra"><div class=3D"gmail_quo=
te"><div class=3D"gmail_extra"><div><br></div><div><br></div><div>Using pok=
y dylan branch and meta-ti-contrib with cdt-vesa machine I can boot a core-=
image-minimal and get logged in just on display. There is nothing on serial=
 console after syslinux.</div>

<div><div class=3D"h5">
<div><br></div><div><br></div><div><br></div></div></div></div></div></div>=
</div></blockquote><div><br></div><div><div dir=3D"ltr"><div style>Folks,</=
div><div style><br></div><div style>Serial console issue solved. On this bo=
ard the DB9 connector is mapped on ttyS1.</div>

<div style><br></div><div style>But I can&#39;t still get logged on system =
with images generated with meta-cedartrail on danny branch.</div><div style=
><br></div><div style>Any hint about udev reported error?</div><div><br>

</div><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Ad=
ministrador do Embarcados<br><a href=3D"http://www.embarcados.com.br/" targ=
et=3D"_blank">www.embarcados.com.br</a><br><br>Engenheiro de Controle e Aut=
oma=C3=A7=C3=A3o<br>

UNIVERSIDADE FEDERAL DE ITAJUB=C3=80<br><br>/*long live rock &#39;n roll*/<=
/div></div><div>=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-col=
or:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div=
><div class=3D"h5"><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex">


<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div><p><span style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u><=
/span></p><div style=3D"border-style:none none none solid;border-left-color=
:blue;border-left-width:1.5pt;padding:0in 0in 0in 4pt">


<div><div style=3D"border-style:solid none none;border-top-color:rgb(181,19=
6,223);border-top-width:1pt;padding:3pt 0in 0in"><p><b><span style=3D"font-=
size:10pt;font-family:Tahoma,sans-serif">From:</span></b><span style=3D"fon=
t-size:10pt;font-family:Tahoma,sans-serif"> <a href=3D"mailto:yocto-bounces=
@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [ma=
ilto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yo=
cto-bounces@yoctoproject.org</a>] <b>On Behalf Of </b>Diego Sueiro<br>


<b>Sent:</b> Saturday, September 28, 2013 4:40 PM<br><b>To:</b> <a href=3D"=
mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>=
<br><b>Subject:</b> [yocto] Issues on booting cedartrail image<u></u><u></u=
></span></p>


</div></div><div><div><p><u></u>=C2=A0<u></u></p><div><p>Folks,<u></u><u></=
u></p><div><p><u></u>=C2=A0<u></u></p></div><div><p>I&#39;m having troubles=
 to boot a cedartrail image. I tried both core-image-minimal and core-image=
-cdv-media-cedartrail. I tried to boot from USB drive and hard disk.<u></u>=
<u></u></p>


</div><div><p>I&#39;m using this hardware:=C2=A0<a href=3D"http://www.intel=
.com/content/www/us/en/motherboards/desktop-motherboards/desktop-board-d255=
0mud2.html" target=3D"_blank">http://www.intel.com/content/www/us/en/mother=
boards/desktop-motherboards/desktop-board-d2550mud2.html</a><u></u><u></u><=
/p>


</div><div><p><u></u>=C2=A0<u></u></p></div><div><p>I&#39;ve followed the i=
nstructions from:<u></u><u></u></p></div><div><p><a href=3D"http://git.yoct=
oproject.org/cgit/cgit.cgi/meta-intel/tree/meta-cedartrail/README?h=3Ddanny=
" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tr=
ee/meta-cedartrail/README?h=3Ddanny</a><u></u><u></u></p>


</div><div><p><a href=3D"https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How=
_do_I_put_Yocto_on_a_hard_drive.3F" target=3D"_blank">https://wiki.yoctopro=
ject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F</a><u></u><=
u></u></p>


</div><div><p><u></u>=C2=A0<u></u></p></div><div><p>For core-image-minimal<=
u></u><u></u></p></div><div><p>Syslinux console output:<u></u><u></u></p></=
div><div>
<blockquote style=3D"margin-left:30pt;margin-right:0in"><div><div><p>SYSLIN=
UX 4.03 2010-10-22 =C2=A0Copyright (C) 1994-2010 H. Peter Anvin et al<u></u=
><u></u></p></div><div><p>boot:=C2=A0<u></u><u></u></p>
</div><div><p>Loading /vmlinuz.......<u></u><u></u></p></div><div><p>Loadin=
g /initrd.........ready.<u></u><u></u></p></div><div><p><u></u>=C2=A0<u></u=
></p></div></div>
</blockquote><p>Syslinux display outuput (VGA):<u></u><u></u></p></div><div=
><blockquote style=3D"margin-left:30pt;margin-right:0in"><div><div><p>SYSLI=
NUX 4.03 2010-10-22 =C2=A0Copyright (C) 1994-2010 H. Peter Anvin et al<u></=
u><u></u></p>


</div><div><p>boot:=C2=A0<u></u><u></u></p></div><div><p>Loading /vmlinuz..=
.....<u></u><u></u></p></div><div><p>Loading /initrd.........ready.<u></u><=
u></u></p></div>
<div><p><u></u>=C2=A0<u></u></p></div></div></blockquote><blockquote style=
=3D"margin-left:30pt;margin-right:0in"><div><div><p>Decompressing Linux... =
Parsing ELF... done.<u></u><u></u></p>
</div></div></blockquote><blockquote style=3D"margin-left:30pt;margin-right=
:0in"><div><div><p>Booting the kernel.<u></u><u></u></p></div></div></block=
quote><blockquote style=3D"margin-left:30pt;margin-right:0in">
<div><div><p><u></u>=C2=A0<u></u></p></div></div></blockquote></div><div><p=
>But I cannot see any kernel or system prints after that.<u></u><u></u></p>=
</div><div><p>
<u></u>=C2=A0<u></u></p></div><div><p>For=C2=A0core-image-cdv-media<u></u><=
u></u></p></div><div><p>Syslinux console output:<u></u><u></u></p></div><di=
v><blockquote style=3D"margin-left:30pt;margin-right:0in">
<div><div><p>SYSLINUX 4.03 2010-10-22 =C2=A0Copyright (C9 1994-2010 H. Pete=
r Anvin et al<u></u><u></u></p></div><div><p>boot:=C2=A0<u></u><u></u></p><=
/div><div><p>
Loading /vmlinuz.......<u></u><u></u></p></div><div><p>Load<span style=3D"f=
ont-family:Tahoma,sans-serif">=EF=BF=BD</span>ng /initrd.........ready.<u><=
/u><u></u></p></div></div></blockquote><div><p>
<u></u>=C2=A0<u></u></p></div><p>For syslinux display outuput (VGA) it prin=
ts kernel boot end the last 3 lines are:<u></u><u></u></p></div><div><block=
quote style=3D"margin-left:30pt;margin-right:0in"><div>
<p>Freeing unusued kernel memory: 500k freed<u></u><u></u></p></div></block=
quote><blockquote style=3D"margin-left:30pt;margin-right:0in"><div><p>/init=
: line 69: udevd: not found<u></u><u></u></p>
</div></blockquote><blockquote style=3D"margin-left:30pt;margin-right:0in">=
<div><p>Waiting for removable media<u></u><u></u></p></div></blockquote></d=
iv><div><blockquote style=3D"margin-left:30pt;margin-right:0in">
<div><div><p><u></u>=C2=A0<u></u></p></div></div></blockquote></div><div><p=
><u></u>=C2=A0<u></u></p></div><div><p>With GRUB method (second link above)=
 nothing appears on console and display for both images.<u></u><u></u></p>
</div><div><blockquote style=3D"margin-left:30pt;margin-right:0in"><div><p>=
<u></u>=C2=A0<u></u></p></div></blockquote></div><div><div><p>Here is my bu=
ild environment:<u></u><u></u></p>
</div></div><blockquote style=3D"margin-left:30pt;margin-right:0in"><div><p=
>Build Configuration:<u></u><u></u></p></div><div><div><p>BB_VERSION =C2=A0=
 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.16.0&quot;<u></u><u></u></p>
</div></div><div><div><p>TARGET_ARCH =C2=A0 =C2=A0 =C2=A0 =3D &quot;i586&qu=
ot;<u></u><u></u></p></div></div><div><div><p>TARGET_OS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;linux&quot;<u></u><u></u></p></div></div>
<div><div><p>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;cedartrai=
l&quot;<u></u><u></u></p></div></div><div><div><p>DISTRO =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;<u></u><u></u></p></div></div><=
div>
<div><p>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.3.2&quot;<u></u><u></u></p>=
</div></div><div><div><p>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;m32 core2&qu=
ot;<u></u><u></u></p></div></div><div><div>
<p>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;<u></u><u></u></p>=
</div></div><div><div><p>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0<u></u><u></u></p></div></div><div><div><p>meta-yocto =C2=A0 =C2=A0 =C2=
=A0 =C2=A0<u></u><u></u></p>
</div></div><div><div><p>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;danny:70ca9f=
f6422a03c26cfa78e76f6334bcf3fe47ec&quot;<u></u><u></u></p></div></div><div>=
<div><p>meta-intel =C2=A0 =C2=A0 =C2=A0 =C2=A0<u></u><u></u></p>
</div></div><div><div><p>meta-cedartrail =C2=A0 =3D &quot;danny:cc42fb6ec59=
00ad9f034014c3ddce04223908608&quot;<u></u><u></u></p></div></div><div><div>=
<p>meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;danny:f00028caf257e=
386c0f3ae46bd4b3ba53dd0729d&quot;<u></u><u></u></p>


</div></div><div><div><p>meta-videofone =C2=A0 =C2=A0=3D &quot;danny:70ca9f=
f6422a03c26cfa78e76f6334bcf3fe47ec&quot;<u></u><u></u></p></div></div></blo=
ckquote><div><div><p><u></u>=C2=A0<u></u></p>
</div><div><p>Someone has some tips?<u></u><u></u></p></div><div><p><u></u>=
=C2=A0<u></u></p></div><div><div><div><p>Kind regards,<u></u><u></u></p></d=
iv>
<div><p><u></u>=C2=A0<u></u></p></div><p>--<br>*dS<br>Diego Sueiro<br><br>A=
dministrador do Embarcados<br><a href=3D"http://www.embarcados.com.br" targ=
et=3D"_blank">www.embarcados.com.br</a><br><br>
Engenheiro de Controle e Automa=C3=A7=C3=A3o<br>UNIVERSIDADE FEDERAL DE ITA=
JUB=C3=80<br><br>/*long live rock &#39;n roll*/<u></u><u></u></p></div></di=
v></div></div></div></div></div></div></div></blockquote></div></div></div>=
</div><div class=3D"gmail_extra">


<br></div></div>
</blockquote></div><br></div></div>

--047d7bdc188c6d449e04e786b1a1--
