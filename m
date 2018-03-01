Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7BC1E00EB4; Thu,  1 Mar 2018 08:15:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B498E00B1A
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 08:15:26 -0800 (PST)
Received: by mail-it0-f50.google.com with SMTP id d13so5629606itf.0
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 08:15:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=l07RZc8xM5s6zHUplvFwt8EFak1Xh7ygHLmbMELwE18=;
	b=BQ01+PqL4avLCo3961tphVkj77EhAGvy0AYBUQay0QnoHw7SPCTf96SBFy9xyxOGRH
	yHkWHSyrq1z7d+KZ8MWRJbjMNCZSKhu101AnUI4c+A265sDBWBuZ9dlyZ4xTfZpE+06I
	jrAM44WZ3t0cy2lSes4az5k5jNjDUB6ZlUKoo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=l07RZc8xM5s6zHUplvFwt8EFak1Xh7ygHLmbMELwE18=;
	b=mJIhgvn6/pPDdfC79owFvLwo3OuqoH/jVKgQtyFzVOgWYs3F1orDEXSqIl+j9eYZEa
	pe7Xv5sr+DwM90R6a1qtWthRMujHbRpdHjuJpOhAHNl/rLe+6APKlmVtUR01rRMugiSc
	9Frub7X8P3zSh4yLJGLzsuuDYz0X1Su7FPjacsZVMF3Q6b6EqXvRHvNjSMVzvN52Buve
	/9NFSLNr+Fo0O3XSlVyYmYsqxl+TkGMaBbcnV3/1B2ccz8qDiv4IuPlN9tGqBsIBQlI3
	SztFBWPNaqfgadeTQfXV5VlmPo+iAU7t0a7sU6ziKVW6tpKBSrTfcQPU+XbD3IcrKDkS
	DS5g==
X-Gm-Message-State: AElRT7HihVBwupCB6M+sqCcsDssC/0ygc9ZkYS6PICCPEDx59Ztx5TGg
	aFK2JT1GQNPnRqAYAeTmDQzSspe5P5A0E/eQQKyKpGxr
X-Google-Smtp-Source: AG47ELtfL9Ek4uwJS9nooyZ5KcCC8u01mZ69VQ1JHu7vurpLM7ZHymQWsTGswi+wnjfGguyQpr2qfFbBwDbEkxt2ISA=
X-Received: by 10.36.19.202 with SMTP id 193mr3363067itz.6.1519920926144; Thu,
	01 Mar 2018 08:15:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Thu, 1 Mar 2018 08:15:25 -0800 (PST)
In-Reply-To: <CAALXFYzHCrGKX=5_WL+=mez7aiYOv7q8+9XLREwaPqTL_4WpBA@mail.gmail.com>
References: <CAALXFYzHCrGKX=5_WL+=mez7aiYOv7q8+9XLREwaPqTL_4WpBA@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Thu, 1 Mar 2018 17:15:25 +0100
Message-ID: <CAALXFYzZZPGLar5rouYu_+58sefZKGGMSmFWM=PLK1hgc-qNNw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto procedure to write generated image to hdd
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
X-List-Received-Date: Thu, 01 Mar 2018 16:15:28 -0000
Content-Type: multipart/alternative; boundary="001a11446240e3d07705665c2a9c"

--001a11446240e3d07705665c2a9c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

After writting the .hddimg file to a USB-pendrive I have mounted the
pendrive to analyze contents in my laptop. It contains the following files:

    ./EFI/BOOT/grub.cfg
    ./EFI/BOOT/bootx64.efi
    ./initrd
    ./ldlinux.sys
    ./libcom32.c32
    ./libutil.c32
    ./rootfs.img
    ./startup.nsh
    ./syslinux.cfg
    ./vesamenu.c32
    ./vmlinuz
    ./ldlinux.c32

This is the content of /EFI/BOOT/grub.cfg file:

    $ cat EFI/BOOT/grub.cfg
    # Automatically created by OE
    serial --unit=3D0 --speed=3D115200 --word=3D8 --parity=3Dno --stop=3D1
    default=3Dinstall
    timeout=3D3

    menuentry 'install'{
    linux /vmlinuz LABEL=3Dinstall-efi root=3D/dev/ram0
rootwait console=3DttyS0,115200 console=3Dtty0
    initrd /initrd
    }

    menuentry 'boot'{
    linux /vmlinuz LABEL=3Dboot root=3D/dev/ram0  rootwait console=3DttyS0,=
115200
console=3Dtty0
    initrd /initrd
    }

I found this link with useful information:

    https://www.yoctoproject.org/downloads/bsps/danny13/atom-pc

According to it, "it is likely the BIOS cannot understand the physical
layout of the disk".

This sounds strange to me, because USB-pendrive boots fine when the .wic
image is burned into the USB-pendrive. But anyway, I have checked BIOS
USB-related settings and this is my current setup:

Main information:

    BIOS Vendor: American Megratrends
    Core Version 5.009
    Compilancy: UEFI 2.3; PI 1.2
    BIOS ID: N29NL009 x64

USB-related information:

    USB Module version: 8.11.02
    Legacy USB Support [Enabled]
    USB 2.0 Controller Mode [HiSpeed]
    XHCI Hand-off [Enabled]
    EHCI Hand-off [Disabled]
    USB Mass Storage Driver Support is [Enabled]

    General UDisk 5.00 [Auto]

I don't know what can I do to manage this issue. I'm really blocked on
this, any help to would be very helpful. Thanks in advance!!




2018-03-01 12:20 GMT+01:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:

> Hello forum.
>
> Working with 'rocko' yocto branch. Yocto generates .ext4, .hddimg and .wi=
c
> images. I want to install the proper image to the HDD of my PC, in order =
to
> use it as my default Linux distro.
>
> I have been using the .wic image to boot from the USB pendrive until now,
> writing it to the USB using 'dd'. This works fine, but because of some BI=
OS
> issues, I had to modify mkefidisk.wks script to add 'noapic' option
> (probably this is relevant).
>
> To try to install the generated image in my hard disk, I write the .hddim=
g
> file to a USB-pendrive using dd and the plug the pendrive and boot the PC=
.
> A boot menu of GNU GRUB version 2.02 appears with two options:
>
>     * install
>     * noot
>
> Editing the install option I can see this:
>
>     setparams 'install'
>     linux /vmlinuz LABEL=3Dinstall-efi root=3D/dev/ram0 rootwait
> console=3DttyS0,115200 console=3Dtty0
>     initrd /initrd
>
> And editing boot options I can see this:
>
>     setparams 'boot'
>     linux /vmlinuz LABEL=3Dboot root=3D/dev/ram0 rootwait console=3DttyS0=
,115200
> console=3Dtty0
>     initrd /initrd
>
> After choosing "install" option and pressing "Enter", a black screen
> appears and nothing else happens.
>
> I have tried editing 'install' option, adding 'noapic' after console=3Dtt=
y0,
> and then I can see logs of kernel booting and after 0.5 secods the screen
> is flooded of error lines:
>
>     /init: line 65: sleep: command not found
>     /init: line 65: sleep: command not found
>     ...
>     /init: line 65: sleep: command not found
>
>
> Is this the proper way to install the generated image in the hard disk?
> Maybe I am doing something wrong?
>
> Thanks a lot in advance! :-)
>
> Best regards,
>   -- Ivan
>
>

--001a11446240e3d07705665c2a9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline">After writting the .hddimg=
 file to a USB-pendrive I have mounted the pendrive <span style=3D"color:rg=
b(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial;float:none;display:inli=
ne">to analyze contents=C2=A0</span>in my laptop. It contains the following=
 files:</span><br></div><div><br></div><div>=C2=A0 =C2=A0 ./EFI/BOOT/grub.c=
fg<br></div><div>=C2=A0 =C2=A0 ./EFI/BOOT/bootx64.efi</div><div>=C2=A0 =C2=
=A0 ./initrd</div><div><span style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline">=C2=A0 =C2=A0<span>=C2=A0<=
/span></span>./ldlinux.sys</div><div><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=
=A0<span>=C2=A0</span></span>./libcom32.c32</div><div><span style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine">=C2=A0 =C2=A0<span>=C2=A0</span></span>./libutil.c32</div><div><span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline">=C2=A0 =C2=A0<span>=C2=A0</span></span>./rootfs.img</div=
><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-=
size:small;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline">=C2=A0 =C2=A0<span>=C2=A0</span></span>./st=
artup.nsh</div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline">=C2=A0 =C2=A0<span>=C2=A0</sp=
an></span>./syslinux.cfg</div><div><span style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:small;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0<=
span>=C2=A0</span></span>./vesamenu.c32</div><div><span style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
>=C2=A0 =C2=A0<span>=C2=A0</span></span>./vmlinuz</div><div><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline">=C2=A0 =C2=A0<span>=C2=A0</span></span>./ldlinux.c32</div><div><=
br></div><div>This is the content of /EFI/BOOT/grub.cfg file:</div><div><br=
></div><div>=C2=A0 =C2=A0 $ cat EFI/BOOT/grub.cfg=C2=A0</div><div><span sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline">=C2=A0 =C2=A0<span>=C2=A0</span></span># Automatically cre=
ated by OE</div><div><span style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline">=C2=A0 =C2=A0<span>=C2=A0</s=
pan></span>serial --unit=3D0 --speed=3D115200 --word=3D8 --parity=3Dno --st=
op=3D1</div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">=C2=A0 =C2=A0<span>=C2=A0</span>=
</span>default=3Dinstall</div><div><span style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:small;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0<=
span>=C2=A0</span></span>timeout=3D3</div><div><br></div><div><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline">=C2=A0 =C2=A0<span>=C2=A0</span></span>menuentry &#39;instal=
l&#39;{</div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">=C2=A0 =C2=A0<span>=C2=A0</span=
></span>linux /vmlinuz LABEL=3Dinstall-efi root=3D/dev/ram0=C2=A0 rootwait=
=C2=A0console=3DttyS0,115200 console=3Dtty0=C2=A0</div><div><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline">=C2=A0 =C2=A0<span>=C2=A0</span></span>initrd /initrd</div><div>=
<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">=C2=A0 =C2=A0<span>=C2=A0</span></span>}</div><di=
v><br></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">=C2=A0 =C2=A0<span>=C2=A0</span>=
</span>menuentry &#39;boot&#39;{</div><div><span style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;float:none;display:inline">=C2=A0=
 =C2=A0<span>=C2=A0</span></span>linux /vmlinuz LABEL=3Dboot root=3D/dev/ra=
m0=C2=A0 rootwait=C2=A0console=3DttyS0,115200 console=3Dtty0=C2=A0</div><di=
v><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">=C2=A0 =C2=A0<span>=C2=A0</span></span>initrd /=
initrd</div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">=C2=A0 =C2=A0<span>=C2=A0</span>=
</span>}</div><div><br></div><div>I found this link with useful information=
:</div><div><br></div><div>=C2=A0 =C2=A0 <a href=3D"https://www.yoctoprojec=
t.org/downloads/bsps/danny13/atom-pc">https://www.yoctoproject.org/download=
s/bsps/danny13/atom-pc</a><br></div><div><br></div><div>According to it, &q=
uot;it is likely the BIOS cannot understand the physical layout of the disk=
&quot;.</div><div><br></div><div>This sounds strange to me, because USB-pen=
drive boots fine when the .wic image is burned into the USB-pendrive. But a=
nyway, I have checked BIOS USB-related settings and this is my current setu=
p:</div><div><br></div><div><div style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;text-decoration-style:initial;text-decoration-color:initial">Main in=
formation:</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-=
decoration-style:initial;text-decoration-color:initial"><br></div><div styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;=
text-decoration-color:initial">=C2=A0 =C2=A0 BIOS Vendor: American Megratre=
nds</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decorat=
ion-style:initial;text-decoration-color:initial">=C2=A0 =C2=A0 Core Version=
 5.009</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:small;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-deco=
ration-style:initial;text-decoration-color:initial">=C2=A0 =C2=A0 Compilanc=
y: UEFI 2.3; PI 1.2</div><div style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;text-decoration-style:initial;text-decoration-color:initial">=C2=A0 =C2=
=A0 BIOS ID: N29NL009 x64</div><br></div><div>USB-related information:</div=
><div><br></div><div>=C2=A0 =C2=A0 USB Module version: 8.11.02</div><div>=
=C2=A0 =C2=A0 Legacy USB Support [Enabled]</div><div>=C2=A0 =C2=A0 USB 2.0 =
Controller Mode [HiSpeed]</div><div>=C2=A0 =C2=A0 XHCI Hand-off [Enabled]</=
div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fo=
nt-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-=
color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:=
initial;float:none;display:inline">=C2=A0 =C2=A0 EHCI Hand-off [Disabled]</=
span><br></div><div>=C2=A0 =C2=A0 USB Mass Storage Driver Support is [Enabl=
ed]<br></div><div><br></div><div>=C2=A0 =C2=A0 General UDisk 5.00 [Auto]</d=
iv><div><br></div><div>I don&#39;t know what can I do to manage this issue.=
 I&#39;m really blocked on this, any help to would be very helpful. Thanks =
in advance!!<br></div><div><br></div><div><br></div><div><br></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-03-01 12:20 GMT+01:0=
0 Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayars=
ystems.com" target=3D"_blank">icastell@nayarsystems.com</a>&gt;</span>:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hello forum.</div><div=
><br></div><div>Working with &#39;rocko&#39; yocto branch. Yocto generates =
.ext4, .hddimg and .wic images. I want to install the proper image to the H=
DD of my PC, in order to use it as my default Linux distro.</div><div><br><=
/div><div>I have been using the .wic image to boot from the USB pendrive un=
til now, writing it to the USB using &#39;dd&#39;. This works fine, but bec=
ause of some BIOS issues, I had to modify mkefidisk.wks script to add &#39;=
noapic&#39; option (probably this is relevant).</div><div><br></div><div>To=
 try to install the generated image in my hard disk, I write the .hddimg fi=
le to a USB-pendrive using dd and the plug the pendrive and boot the PC. A =
boot menu of GNU GRUB version 2.02 appears with two options:</div><div><br>=
</div><div>=C2=A0 =C2=A0 * install</div><div>=C2=A0 =C2=A0 * noot</div><div=
><br></div><div>Editing the install option I can see this:</div><div><br></=
div><div>=C2=A0 =C2=A0 setparams &#39;install&#39;</div><div>=C2=A0 =C2=A0 =
linux /vmlinuz LABEL=3Dinstall-efi root=3D/dev/ram0 rootwait console=3DttyS=
0,115200 console=3Dtty0</div><div>=C2=A0 =C2=A0 initrd /initrd</div><div><b=
r></div><div>And editing boot options I can see this:</div><div><br></div><=
div>=C2=A0 =C2=A0 setparams &#39;boot&#39;</div><div>=C2=A0 =C2=A0 linux /v=
mlinuz LABEL=3Dboot root=3D/dev/ram0 rootwait console=3DttyS0,115200 consol=
e=3Dtty0</div><div>=C2=A0 =C2=A0 initrd /initrd</div><div><br></div><div>Af=
ter choosing &quot;install&quot; option and pressing &quot;Enter&quot;, a b=
lack screen appears and nothing else happens.</div><div><br></div><div>I ha=
ve tried editing &#39;install&#39; option, adding &#39;noapic&#39; after co=
nsole=3Dtty0, and then I can see logs of kernel booting and after 0.5 secod=
s the screen is flooded of error lines:</div><div><br></div><div>=C2=A0 =C2=
=A0 /init: line 65: sleep: command not found</div><div>=C2=A0 =C2=A0 /init:=
 line 65: sleep: command not found</div><div>=C2=A0 =C2=A0 ...</div><div><s=
pan style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial;flo=
at:none;display:inline">=C2=A0 =C2=A0 /init: line 65: sleep: command not fo=
und</span><br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0</div><div>Is this the proper way to install the generated image in the =
hard disk? Maybe I am doing something wrong?</div><div><br></div><div>Thank=
s a lot in advance! :-)</div><div><br></div><div>Best regards,</div><div>=
=C2=A0 -- Ivan</div><div><br></div>
</div>
</blockquote></div><br><div class=3D"gmail_signature" data-smartmail=3D"gma=
il_signature"><br></div>
</div></div>

--001a11446240e3d07705665c2a9c--
