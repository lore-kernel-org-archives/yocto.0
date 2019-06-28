Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DF40E00A7D; Fri, 28 Jun 2019 05:26:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 366E3E008E3
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 05:26:54 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id h24so2973809qto.0
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 05:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mhl9nAIUyay7lT2aorQ+ztI9/6RHPy+K3RDha4LEDDY=;
	b=fnn974oxmx398t2J28EOT8Jz/JFDb5kneZLdo31Aqj4k96OtkDCansV3JljtMc31CH
	C3zDf33dINFBZw8tzl65+9FyL/wdLRgYGRnnsMTBpdF9qau+GrFWrsff+5rkMVcKGvgi
	Nn3Rtpv19668We7atFjHA+K6SkvkTnRxDtV8IzXtkt2DTPG/dea+PMdO0It9k8uA02sC
	ArS5lQsGMvbVV3w3IRDafayWOP9iJuM0Cfi1WI8CWDd8JAy5aIdX3OmNuIu9IBmK1FVG
	2GIK8Yx+dAa0ir8yT9KXTsfHZgz+hyToIkdRJU/+zl+6nw7A4x76LL/shSKa0n12ImZd
	bcJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mhl9nAIUyay7lT2aorQ+ztI9/6RHPy+K3RDha4LEDDY=;
	b=NMb+u7ENkOI7VvxBN2zNfislhdg20o0fvZQB3DHBFENLDYMDYtDRS3YqGR66Awlg+7
	AhRILmF13skSIusTy6nLhM3Cg3kRPVsxkcrtYca/AJspbekSi/4Ni02fzKOG444ffHkG
	Wa9Ol05PJYBbb5QnD4JSkp95Ba4K61UZoZ3ZgfjA422eb8oc+gHiwgGv6SzBqs57yD5P
	RYXXj02lgmQN9gJBpGpgVBs9itBogCVQ8Xcijxs6U8xBrG2uB2/MgXW1SjrqGKZR6gWf
	WDTT1fJ/rvdxGGRhCTJdgVcytn1M4O/fbEx6whLGWFwJGefTy8/w8svyXvKq9sEJUylR
	zvlg==
X-Gm-Message-State: APjAAAXDZmSpJrWAXJeIcyVtwfNOQioV5GLerXUYTevtE8G4I3FxlIxS
	DRlfNRoGUwxZT86fOpU9EeaBDgCxbz0Vy6Y6oW4=
X-Google-Smtp-Source: APXvYqwDkz3Bak3Tt7ihRirS8PMyIf3bMmxt/gqrdrteoDPb9RgywNwsCEcK3AeaHgfhpU1GAuAxlSRcAyd/rHpo1Vg=
X-Received: by 2002:ac8:877:: with SMTP id x52mr7777550qth.328.1561724813511; 
	Fri, 28 Jun 2019 05:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
In-Reply-To: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 28 Jun 2019 14:26:41 +0200
Message-ID: <CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
To: Moritz Porst <moritz.porst@gmx.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't boot to initramfs
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
X-List-Received-Date: Fri, 28 Jun 2019 12:26:55 -0000
Content-Type: multipart/alternative; boundary="000000000000bf0e2a058c616437"

--000000000000bf0e2a058c616437
Content-Type: text/plain; charset="UTF-8"

> INITRAMFS_IMAGE = *"core-image-minimal-initramfs"*
> INITRAMFS_IMAGE_BUNDLE = "1"
...
> You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7I

Some hints...

[1] Kernel command line: BOOT_IMAGE=/bzImage
root=PARTUUID=71d1d94a-83e8-4895-98eb-35309f58119f
break=premount quiet rootwait rootwait rootfstype=ext4 *console=ttyS0,115200
console=tty0*

input: Video Bus as
/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input7
fbcon: inteldrmfb (fb0) is primary device
Console: switching to colour frame buffer device 128x48
*i915 0000:00:02.0: fb0: inteldrmfb frame buffer device*
snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops
i915_audio_component_bind_ops [i915])

Hmmmmm... You are using console and serial, but full i915 GFX kernel driver
is still included in the build???

[2] efi: EFI v2.31 by American Megatrends

Using AMI BIOS as boot loader FW... OK?! Am I correct?

[3] smpboot: CPU0: Intel(R) Atom(TM) CPU  E3825  @ 1.33GHz (family: 0x6,
model: 0x37, stepping: 0x9)

This is CPUID ID 0x30679, which uses MCU... Which MicroCodeUnit? M0130679xxx
(info from AMI BIOS)?

[4] Using INTEL ATOM BYT E3825 dual core (sans Hyper-threading), implies
that you are using
4GB (e820 messages) as single channel (one memory module DDR3 as 4GB)! Am I
correct (important)?

[5] Dracut phase?!
> To my understanding the initramfs should be embedded in /boot/bzImage.
> However since I use an intel platform I also have a /boot/microcode.cpio
> which gets loaded via "initrd /microcode.cpio". Removing this line in
> grub does not enable me to get an initramfs prompt either (again, using
> break as option).

You are obviously stopping in boot phase called dracut. Please, try to
mount by hand
/dev/sda(whatever)... You should use fdisk -l command, or do ls -al /dev |
grep sda to
dig out which partition you need to mount to /tmp dir to see
rootfstype=ext4 (HDD/SSD)
_______

Just thinking loud... .. .

Hope this helps (has very little to do with YOCTO build system, BTW) . ;-)

Zoran
_______


On Fri, Jun 28, 2019 at 11:22 AM Moritz Porst <moritz.porst@gmx.de> wrote:

> Hello,
> I currently try to deploy a single rootfs update mechanism for my
> embedded device. I can't boot to initramfs using either "break" or
> "break=premount" (without quotes...). I tried this in systemd-boot and
> grub-efi (always efi boot) but the boot process just continues normally.
> If I insert at the same point e.g. "quiet" this argument is recognised.
> I boot the .wic image with a separate boot partition from a USB stick.
> in local.conf I have set:
> INITRAMFS_IMAGE = "core-image-minimal-initramfs"
> INITRAMFS_IMAGE_BUNDLE = "1"
>
> In order to reduce complexity I now use the standard
> core-image-minimal-initramfs without .bbappend. I can confirm (from
> seeing the task) that bitbake bundled the kernel with the initramfs.
>
> You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7
>
> To my understanding the initramfs should be embedded in /boot/bzImage.
> However since I use an intel platform I also have a /boot/microcode.cpio
> which gets loaded via "initrd /microcode.cpio". Removing this line in
> grub does not enable me to get an initramfs prompt either (again, using
> break as option).
>
> Did I forget some configuration or do I have to put the break statement
> at a very specific position within the "linux ..." boot command ? Do you
> know which bitbake variables to check ? (both set in local.conf do not
> get overwritten, already checked this). I got the thud branch checked
> out in all my meta-layers except for meta-qt which is currently on
> master branch.
>
> Help is much appreciated !
>
> Best regards
> Moritz
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000bf0e2a058c616437
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; INITRAMFS_IMAGE =3D <span style=3D"color:rgb(255,0,0)=
"><i><b>&quot;core-image-minimal-initramfs&quot;</b></i></span><br>&gt; INI=
TRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;<br>...<br>&gt; You can find the /var/=
log/dmesg here: <a href=3D"https://pastebin.com/ya7iCtq7I" target=3D"_blank=
">https://pastebin.com/ya7iCtq7I</a><br><div><br></div><div>Some hints...<b=
r></div><div><br></div><div>[1] Kernel command line: BOOT_IMAGE=3D/bzImage =
root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-35309f58119f</div><div> break=3Dp=
remount quiet rootwait rootwait rootfstype=3Dext4 <span style=3D"color:rgb(=
255,0,0)"><i><b>console=3DttyS0,115200 console=3Dtty0</b></i></span></div><=
div><span style=3D"color:rgb(255,0,0)"><i><b><br></b></i></span></div><div>=
<div class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660=
518gmail-de1">input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:=
00/LNXVIDEO:00/input/input7</div>
<div class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660=
518gmail-de2">fbcon: inteldrmfb (fb0) is primary device</div>
<div class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660=
518gmail-de1">Console: switching to colour frame buffer device 128x48</div>
<div class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660=
518gmail-de1"><span style=3D"color:rgb(255,0,0)"><i><b>i915 0000:00:02.0: f=
b0: inteldrmfb frame buffer device</b></i></span></div>
snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops i915_audio_component_bi=
nd_ops [i915])</div><div><br></div><div>Hmmmmm... You are using console and=
 serial, but full i915 GFX kernel driver is still included in the build???<=
br></div><div><span style=3D"color:rgb(255,0,0)"></span></div><div><span st=
yle=3D"color:rgb(255,0,0)"><i><b><br></b></i></span></div><div><span style=
=3D"color:rgb(0,0,0)">[2] efi: EFI v2.31 by American Megatrends</span></div=
><div><span style=3D"color:rgb(0,0,0)"><br></span></div><div><span style=3D=
"color:rgb(0,0,0)">Using AMI BIOS as boot loader FW... OK?! Am I correct?<b=
r></span></div><div><span style=3D"color:rgb(0,0,0)"><br></span></div><div>=
<span style=3D"color:rgb(0,0,0)">[3] smpboot: CPU0: Intel(R) Atom(TM) CPU =
=C2=A0E3825 =C2=A0@ 1.33GHz (family: 0x6, model: 0x37, stepping: 0x9)</span=
></div><div><span style=3D"color:rgb(0,0,0)"><br></span></div><div><span st=
yle=3D"color:rgb(0,0,0)"></span>This is CPUID ID 0x30679, which uses MCU...=
 Which MicroCodeUnit? <span style=3D"font-size:12.8px">M0130679xxx (info fr=
om AMI BIOS)</span>?<span style=3D"font-size:12.8px"><br></span></div><div>=
<span style=3D"color:rgb(0,0,0)"><br></span></div><div><span style=3D"color=
:rgb(0,0,0)">[4] Using INTEL ATOM BYT E3825 dual core (sans Hyper-threading=
), implies that you are using</span></div><div><span style=3D"color:rgb(0,0=
,0)">4GB (e820 messages) as single channel (one memory module DDR3 as 4GB)!=
 Am I correct (important)?</span></div><div><span style=3D"color:rgb(0,0,0)=
"><br></span></div><div><span style=3D"color:rgb(0,0,0)">[5] Dracut phase?!=
<br></span></div><div><span style=3D"color:rgb(0,0,0)">&gt; To my understan=
ding the initramfs should be embedded in /boot/bzImage.<br>&gt; However sin=
ce I use an intel platform I also have a /boot/microcode.cpio<br>
&gt; which gets loaded via &quot;initrd /microcode.cpio&quot;. Removing thi=
s line in<br>
&gt; grub does not enable me to get an initramfs prompt either (again, usin=
g<br>
&gt; break as option).<br>
</span></div><div><span style=3D"color:rgb(0,0,0)"><br></span></div><div><s=
pan style=3D"color:rgb(0,0,0)">You are obviously stopping in boot phase cal=
led dracut. Please, try to mount by hand</span></div><div><span style=3D"co=
lor:rgb(0,0,0)">/dev/sda(whatever)... You should use fdisk -l command, or d=
o ls -al /dev | grep sda to</span></div><div><span style=3D"color:rgb(0,0,0=
)">dig out which partition you need to mount to /tmp dir to see rootfstype=
=3Dext4 (HDD/SSD)<br></span></div><div><span style=3D"color:rgb(0,0,0)">___=
____<br></span></div><div><span style=3D"color:rgb(0,0,0)"><br></span></div=
><div><span style=3D"color:rgb(0,0,0)">Just thinking loud... .. .<br></span=
></div><div><span style=3D"color:rgb(0,0,0)"><br></span></div><div><span st=
yle=3D"color:rgb(0,0,0)">Hope this helps (has very little to do with YOCTO =
build system, BTW) . ;-)<br></span></div><div><span style=3D"color:rgb(0,0,=
0)"><br></span></div><div><span style=3D"color:rgb(0,0,0)">Zoran</span></di=
v><div><span style=3D"color:rgb(0,0,0)">_______<br></span></div></div><br><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 Jun 28, 2019 at 11:22 AM Moritz Porst &lt;<a href=3D"mailto:moritz.porst@g=
mx.de" target=3D"_blank">moritz.porst@gmx.de</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
I currently try to deploy a single rootfs update mechanism for my<br>
embedded device. I can&#39;t boot to initramfs using either &quot;break&quo=
t; or<br>
&quot;break=3Dpremount&quot; (without quotes...). I tried this in systemd-b=
oot and<br>
grub-efi (always efi boot) but the boot process just continues normally.<br=
>
If I insert at the same point e.g. &quot;quiet&quot; this argument is recog=
nised.<br>
I boot the .wic image with a separate boot partition from a USB stick.<br>
in local.conf I have set:<br>
INITRAMFS_IMAGE =3D &quot;core-image-minimal-initramfs&quot;<br>
INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;<br>
<br>
In order to reduce complexity I now use the standard<br>
core-image-minimal-initramfs without .bbappend. I can confirm (from<br>
seeing the task) that bitbake bundled the kernel with the initramfs.<br>
<br>
You can find the /var/log/dmesg here: <a href=3D"https://pastebin.com/ya7iC=
tq7" rel=3D"noreferrer" target=3D"_blank">https://pastebin.com/ya7iCtq7</a>=
<br>
<br>
To my understanding the initramfs should be embedded in /boot/bzImage.<br>
However since I use an intel platform I also have a /boot/microcode.cpio<br=
>
which gets loaded via &quot;initrd /microcode.cpio&quot;. Removing this lin=
e in<br>
grub does not enable me to get an initramfs prompt either (again, using<br>
break as option).<br>
<br>
Did I forget some configuration or do I have to put the break statement<br>
at a very specific position within the &quot;linux ...&quot; boot command ?=
 Do you<br>
know which bitbake variables to check ? (both set in local.conf do not<br>
get overwritten, already checked this). I got the thud branch checked<br>
out in all my meta-layers except for meta-qt which is currently on<br>
master branch.<br>
<br>
Help is much appreciated !<br>
<br>
Best regards<br>
Moritz<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000bf0e2a058c616437--
