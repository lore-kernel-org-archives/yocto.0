Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D70FDE00C9E; Mon,  1 Jul 2019 06:57:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1907BE00A49
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 06:57:20 -0700 (PDT)
Received: by mail-qk1-f177.google.com with SMTP id a27so11025352qkk.5
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2019 06:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=zobQ2kOxo8mrh2thtRcVaUm8sFh4/gRuBm4bB8Z7lgo=;
	b=HVTGySADF/1b2w6yaATA0bPc0FP5K7P1AcDNfTYiJFV69iSHY/dmtXKa6QeBgkfJpQ
	mt2Uqe+viDtuVIPczw+slndnTctbHSiCW58hKnrRtl3PyrQh8ZoPKKd6hN7Dt0oDgxPY
	zjnA8KHcP8fibHFIraYqBvQFIY5C6bzTrS/3v8L7l3UtU/5CbenTGKs6+ko9jgGH+n4w
	rfU6iHRoiQJOFnHEy6DaQdQW1MIVHG/Q1lsY498UCIed/XODFynLwTC9PbtyoWf2OQcm
	4XjQMJV0DnIwCbvs/OT+fInVIQezWyitvOTm1ySo/r/32kGTrKx1rSQgJY9OeEtdtKaY
	kZHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=zobQ2kOxo8mrh2thtRcVaUm8sFh4/gRuBm4bB8Z7lgo=;
	b=WVVI9dGe0DgskojPUEtIZALTktgmkGJC3WOJkCOjmUMOABOfk1bqYzhBzglv5kUA69
	cB3t7/z/2vFjez6UksYber9X9o4PkzLEwoCVtE/Y5ZR2RsrItU3hUQYzypa5CHA8j99m
	19eQ1O3qIdwZmnJRH0FSUOWCfqHFIspDSLVhh5cKRgSueXIhBUkcPoph9v/IslZws6nG
	P1ZBFtBEehh78rNzM7IQoudgf34wya6uCshq9QWhMlO+IUz6UuizP+LMkgORk9qW86gw
	u+6T5nauqwDSw/5UbLodDdOTwfQyfM5zF0IJA/6yqAyfyhnr8AA3MIiJzyT8FLm7V/Ob
	0MHA==
X-Gm-Message-State: APjAAAVJU7i7cz8zcKwAWDVomQnAIRdKfnQhKSEJLJyPdgbMWYyIsk2U
	A8znsrSFpmg/xwtRePhIQ3vDKNP+p+cOdYYb82/8vd46new=
X-Google-Smtp-Source: APXvYqz3O5orFktCQum7+sjgf0Hawr7xlk8HaJj3tBUV234IAPVvJUDiZhRljuwXcehGepPWnLUknwcVkx/TZD6aAX4=
X-Received: by 2002:ae9:e217:: with SMTP id c23mr20342053qkc.227.1561989440275;
	Mon, 01 Jul 2019 06:57:20 -0700 (PDT)
MIME-Version: 1.0
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
In-Reply-To: <34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 1 Jul 2019 15:57:08 +0200
Message-ID: <CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
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
X-List-Received-Date: Mon, 01 Jul 2019 13:57:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Moritz,

Too hot here, in Belgrade... Where I am resting for the Time being
(actually, this message given to my invisible spying security "angels"
on this list)...  :-) Projected +38C degrees today. Too hot for this
too old Siberian untouchable bobcat!

> I started from the core-image-minimal to have a small image and
> extended it with the features I need, which is e.g. a graphical system.
> The console=3D[...] part in the kernel command line is probably a
> remnant but my image boots into the GUI. Is this a problem ?

Nope, it is not. If you need to do it correctly, you should use
bitbake -k core-image-sato build command (my best educated guess).
Then, I do not feel comfortable seeing in your kernel command line
serial interface, do you agree? YOCTO maintainers, any additional
advices?

> My bootloader is currently grub, the EFI is AM.

Nope. Eeeeeeeeek. Wrong. Currently, your boot-loader is UEFI AMI. Your
OS (Linux probably, U name it) boot-loader is GRUB2. Let us keep it
contained, sane and sober.

> Sorry but I can't find this info in the EFI.

Could you, please try the following command being root: dmesg | grep
MCU. or grep mcu, or grep CPUID or grep cpuid?? Please, post results
to this list (to me).

Could you, also, send to YOCTO list/me attached file:
/boot/microcode.cpio so I can somehow (?) inspect it? ;-)

> 2GB, single channel.

All Cool. E3825 by HW/silicon design could/does NOT support multiple
memory channels. ONLY single... But even YOCTO primes (INTEL ones from
this list) are not gonna tell this to you. Not 'cause they are nasty.
They are NOT aware/they are ignorant (with the purpose)! ;-))

> No, the boot does not stop. Even if I do issue "break=3Dpremount" I
> end up in my graphical interface with the rootfs mounted. This is the
> last message in the log: EXT4-fs (sdb2): re-mounted. Opts: (null)
> The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2
> (when booting from stick)

Yes, from https://pastebin.com/ya7iCtq7, so it is remounted rw, not
read only. So, it seems that you have passed dracut phase. and mounted
SD or flash rootfs. So, initramfs is NOT your true problem, is it???

Zoran
_______


> No, the boot does not stop. Even if I do issue "break=3Dpremount" I end u=
p
> in my graphical interface with the rootfs mounted. This is  the last mess=
age
> in the log: EXT4-fs (sdb2): re-mounted. Opts: (null) The rootfs partition=
 is
> always 2, so either /dev/sda2 or /dev/sdb2 (when booting from stick)








On Mon, Jul 1, 2019 at 11:20 AM Moritz Porst <moritz.porst@gmx.de> wrote:
>
> Hello Zoran,
> thanks for your answer
>
> On 28.06.19 14:26, Zoran Stojsavljevic wrote:
>
> > INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
> > INITRAMFS_IMAGE_BUNDLE =3D "1"
> ...
> > You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7I
>
> Some hints...
>
> [1] Kernel command line: BOOT_IMAGE=3D/bzImage root=3DPARTUUID=3D71d1d94a=
-83e8-4895-98eb-35309f58119f
> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4 console=3DttyS=
0,115200 console=3Dtty0
>
> input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:=
00/input/input7
> fbcon: inteldrmfb (fb0) is primary device
> Console: switching to colour frame buffer device 128x48
> i915 0000:00:02.0: fb0: inteldrmfb frame buffer device
> snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops i915_audio_component_=
bind_ops [i915])
>
> Hmmmmm... You are using console and serial, but full i915 GFX kernel driv=
er is still included in the build???
>
> I started from the core-image-minimal to have a small image and extended =
it with the features I need, which is e.g. a graphical system. The console=
=3D[...] part in the kernel command line is probably a remnant but my image=
 boots into the GUI. Is this a problem ?
>
>
> [2] efi: EFI v2.31 by American Megatrends
>
> Using AMI BIOS as boot loader FW... OK?! Am I correct?
>
> My bootloader is currently grub, the EFI is AM.
>
>
> [3] smpboot: CPU0: Intel(R) Atom(TM) CPU  E3825  @ 1.33GHz (family: 0x6, =
model: 0x37, stepping: 0x9)
>
> This is CPUID ID 0x30679, which uses MCU... Which MicroCodeUnit? M0130679=
xxx (info from AMI BIOS)?
>
> Sorry but I can't find this info in the EFI
>
>
> [4] Using INTEL ATOM BYT E3825 dual core (sans Hyper-threading), implies =
that you are using
> 4GB (e820 messages) as single channel (one memory module DDR3 as 4GB)! Am=
 I correct (important)?
>
> 2GB, single channel.
>
>
> [5] Dracut phase?!
> > To my understanding the initramfs should be embedded in /boot/bzImage.
> > However since I use an intel platform I also have a /boot/microcode.cpi=
o
> > which gets loaded via "initrd /microcode.cpio". Removing this line in
> > grub does not enable me to get an initramfs prompt either (again, using
> > break as option).
>
> You are obviously stopping in boot phase called dracut. Please, try to mo=
unt by hand
> /dev/sda(whatever)... You should use fdisk -l command, or do ls -al /dev =
| grep sda to
> dig out which partition you need to mount to /tmp dir to see rootfstype=
=3Dext4 (HDD/SSD)
>
> No, the boot does not stop. Even if I do issue "break=3Dpremount" I end u=
p in my graphical interface with the rootfs mounted. This is the last messa=
ge in the log:
> EXT4-fs (sdb2): re-mounted. Opts: (null)
> The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2 (when =
booting from stick)
>
> _______
>
> Just thinking loud... .. .
>
> Hope this helps (has very little to do with YOCTO build system, BTW) . ;-=
)
>
> Zoran
> _______
>
>
> On Fri, Jun 28, 2019 at 11:22 AM Moritz Porst <moritz.porst@gmx.de> wrote=
:
>>
>> Hello,
>> I currently try to deploy a single rootfs update mechanism for my
>> embedded device. I can't boot to initramfs using either "break" or
>> "break=3Dpremount" (without quotes...). I tried this in systemd-boot and
>> grub-efi (always efi boot) but the boot process just continues normally.
>> If I insert at the same point e.g. "quiet" this argument is recognised.
>> I boot the .wic image with a separate boot partition from a USB stick.
>> in local.conf I have set:
>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>
>> In order to reduce complexity I now use the standard
>> core-image-minimal-initramfs without .bbappend. I can confirm (from
>> seeing the task) that bitbake bundled the kernel with the initramfs.
>>
>> You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7
>>
>> To my understanding the initramfs should be embedded in /boot/bzImage.
>> However since I use an intel platform I also have a /boot/microcode.cpio
>> which gets loaded via "initrd /microcode.cpio". Removing this line in
>> grub does not enable me to get an initramfs prompt either (again, using
>> break as option).
>>
>> Did I forget some configuration or do I have to put the break statement
>> at a very specific position within the "linux ..." boot command ? Do you
>> know which bitbake variables to check ? (both set in local.conf do not
>> get overwritten, already checked this). I got the thud branch checked
>> out in all my meta-layers except for meta-qt which is currently on
>> master branch.
>>
>> Help is much appreciated !
>>
>> Best regards
>> Moritz
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

