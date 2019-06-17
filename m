Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 527FDE00D44; Mon, 17 Jun 2019 03:55:56 -0700 (PDT)
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
	*      [209.85.222.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1479E00C43
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 03:55:54 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id s22so5830638qkj.12
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 03:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=rTLwZchLkAOne8liDgWjO5lG1PvEJUTmyl415pVjlpc=;
	b=Rt44EolCKyVoct7aqh7jE5OgOIZIhqxWfPayap8OLFhGIS86IH62B5SMCm6bs9Miey
	zluKYLYiOhbSuj0jo0YoEK5S4XMKAGerOfGIYPeWiaJCtnqaVOY7cPwxwoQn9BS+pbW9
	+RNn6kVg5iepe5l8kcSDe5BxgNHajUZBz7iIKttTo0p4FP3HPx2L3PNciEG8NuzAAMP+
	fyoEpr1R65lhvZVcRO98ueQB3NwcwqvM40JG80sTAfSDkaUH5QjC6TOQWKc/aQHDZhbE
	9hRLermoUcH1dE1/Jol3MNEBYOKsSiAKBb9aY8sO6/xZi96GbO2vs3deHX1A52VrD4mZ
	g6kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=rTLwZchLkAOne8liDgWjO5lG1PvEJUTmyl415pVjlpc=;
	b=LUvqmrDulkxVik/rDS1Jc2FvY3I8cw3O3ApQ5Zq431OOYVKyae0lHUpr2zd1g/5kT+
	B5EhRKLmhKn4oqSoCHn6oh9UMQwItPrMEiZOg3eBQwI6RFmn418p+I1v8bYMlYA0JuB0
	M9dCwGTv5VBnL/NnHNIxvLe41BrxyXWdB+4D27ZDBRTm6DZEXAAw1Wip87NBVAF+siBH
	0KPyNf1D3TMjRlxSBjPpb5VigbZUF5ZCrq0QK1+gpvvR93ZvqVBlzQkFsL4SWY4D4BF3
	UBmLhnTZpqa1ZWmzOiCyxI5qO58Og6xLEvtBk2K3DwhvsEBg9WUc/VJrnmOOfOwrYlXh
	vQrA==
X-Gm-Message-State: APjAAAUpH2LIHrCSn6pCl3OK4bJNyaoUYgz2cZBTzRjQTOhxvACmSsvv
	pkX7GMpxREJmMeA2Fu/IAR0r4sbXG33aIm16EK4=
X-Google-Smtp-Source: APXvYqzn/hwM7wkXUrX4cVFH7DjmSkAHjGXcxzBYvxV21fiHNuTTyfEL4uedLTkCi94ZOb2lc82e5jXUt2PdLvTwhfc=
X-Received: by 2002:a05:620a:152:: with SMTP id
	e18mr86657622qkn.101.1560768954203; 
	Mon, 17 Jun 2019 03:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-b159ef9f-c6c8-4d3e-bd0b-ca88d3c5596e-1560500116612@3c-app-gmx-bs53>
	<CAGAf8LzTzOPr8p0Jf61tOu2U50fVafFiwV1X3WTVtPEYtv+BXg@mail.gmail.com>
	<trinity-c1af16bc-9d60-4a88-a48b-24690878e39b-1560507591276@3c-app-gmx-bs22>
	<bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de>
	<7935c256-d143-e826-8021-db787d98477c@gmx.de>
	<68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de>
	<a42b0c0a-bf68-92c0-1e91-d767485b7de8@gmx.de>
In-Reply-To: <a42b0c0a-bf68-92c0-1e91-d767485b7de8@gmx.de>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 17 Jun 2019 12:55:42 +0200
Message-ID: <CAGAf8Ly+kKCeK5KVxh1qAQp8CRwOks5et+phN2Sju9PBhPORUA@mail.gmail.com>
To: Moritz Porst <moritz.porst@gmx.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-swupdate] failed update leads to kernel panic
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
X-List-Received-Date: Mon, 17 Jun 2019 10:55:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I have a feeling that I misunderstand something about the ramdisk.
> To my understanding this is the microcode.cpio file which is invoked
> lastly in the grub entry.

Being you, I would for the starters exclude swupdate layer and see if
everything works without swupdate: does normally work with initramfs
(from grub). Maybe it works already.

But this is only me with my hints.

Zoran
_______

On Mon, Jun 17, 2019 at 11:59 AM Moritz Porst <moritz.porst@gmx.de> wrote:
>
> Hi Stefano
>
> On 17.06.19 09:19, Stefano Babic wrote:
>
> Hi Moritz,
>
> On 17/06/19 08:23, Moritz Porst wrote:
>
> Hello Stefano,
> Thanks very much for your answer
>
> On 14.06.19 14:14, Stefano Babic wrote:
>
> Hi Moritz,
>
> On 14/06/19 12:19, Moritz Porst wrote:
>
> (Sorry, the answer should go to everyone)
> Thanks for your response, unfortunately it didn't work out for me.
> Because I am not 100% sure whether I did the correct thing I describe it:
> In my layer I went to recipes-kernel/kernel/files, here I added a file
> defconfig which I filled with the content of your config-initramfs
> my linux-yocto_%.bbappend, residing one level lower (kernel), got this
> file added so it reads (in its entirety):
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> SRC_URI +=3D "file://0001-sdcard-power-management-off.patch"
> SRC_URI +=3D "file://defconfig"
>
> However I *also* have a file called defconfig in meta-swupdate which is
> basically the swupdate config that comes from menuconfig. I let this
> untouched but since this is not the kernel defconfig I guess you didn't
> mean this file ?
>
> Additionally I can't mount the rootfs with the failed boot so I cannot
> access the dmesg log file. Any advice here ?
>
> Best regards
> Moritz
>
>
>
> *Gesendet:* Freitag, 14. Juni 2019 um 11:00 Uhr
> *Von:* "Zoran Stojsavljevic" <zoran.stojsavljevic@gmail.com>
> *An:* "Moritz Porst" <Moritz.Porst@gmx.de>
> *Cc:* "Yocto Project" <yocto@yoctoproject.org>
> *Betreff:* Re: [yocto] [meta-swupdate] failed update leads to kernel pani=
c
>
> However if I abort the update while running (i.e. simulating a power cut)
> and then reboot I end up in a kernel panic: "Unable to mount rootfs on
> unknown block". My understanding is that I should at least end up in a
> busybox or that the update is retried, but this does not happen.
>
> You missed to attach failed dmesg while the system booted and aborted.
> Nevertheless, I expect problem with your defconfig, which does NOT
> have options set for initramfs. These ones:
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/config=
-initramfs
>
> Please, could you add these one to your current .config, this might
> very well solve your problem.
>
> Best Regards,
> Zoran
> _______
>
> On Fri, Jun 14, 2019 at 10:15 AM Moritz Porst <Moritz.Porst@gmx.de> wrote=
:
>
> Hello,
>
> I am currently having trouble to get swupdate working properly.
> My problem:
> I can execute swupdate -i normally and if the update fits I have no
>
> problem. However if I abort the update while running (i.e. simulating a
> power cut) and then reboot I end up in a kernel panic: "Unable to mount
> rootfs on unknown block". My understanding is that I should at least end
> up in a busybox or that the update is retried, but this does not happen.
>
> I receive 1 error when updating which does not stop the update: "Could
>
> not find MTD".
>
> My configuration:
> I have a single rootfs and a separate boot partition. I build the
>
> initramfs using:
>
> You have a *single* rootfs, you stop an upgrade (resulting of course in
> a corrupted rootfs or worse), and you wonder that kernel cannot mount
> it....your update concept is broken.
>
> Well conceptually I want to go through the bootloader, I just fail to
> understand how I tell swupdate to do this.
>
> You *must* check the bootloader marker in U-Boot (default is the
> "recovery_status" variable) and you *mus*t start again the updater (the
> ramdisk) until the marker (it is a transaction flag) is set. It is
> erased by SWUpdate only after a successful update. You are now starting
> your board with a half-completed update.
>
> So I configured swupdate in menuconfig to work with grub which I set in
> my machine as "EFI_PROVIDER". Doesn't this single rootfs update strategy
> work with grub ?
>
> Yes, but you have to set / configure yourself how Grub start, that is a
> suitable grub.cfg where variables in grubenv are evalutated (do not
> forget load_env in grub.cfg).
>
> Ok I was not aware about this. my grub.cfg now reads:
> entry {
> load_env
> linux ./bzImage [options...]
> initrd microcode.cpio
> }
>
> The interface between SWUpdate and Grub is grubenv - SWUpdate just sets
> variables, but it is duty of bootloader to evaluated them.
>
> (I prefer to stick to EFI because partitioning of
> images works out of the box with .wic images)
> When you say "you must start again the updater", that's where I'm lost.
> From the documentation I understand that I initiate an update using
> "swupdate -i abc.swu" but this just runs the update without setting any
> flag for the bootloader.
>
> SWUpdate sets
>
> I have an update that is actually too large for the rootfs partition to p=
roduce an update failure. SWUpdate then sets recovery_status=3Dfailed. On b=
oot I end up in a kernel panic
> If I power off before the update finishes I get no recovery_status in gru=
benv.
> Manually adding recovery_status=3Din_progress also does not work (of cour=
se maintaining the 1024 file size). "Does not work" means I end up in a ker=
nel panic.
>
>
> One more thing: swupdate complains that there is no grubenv file.
>
> Then it does not work, you have to fix it...
>
> I
> defined a path in the config file and create this file using
> "grub-editenv /path/as/in/config create".
>
> Grubenv is just a simple 1KB file, you can dump it.
>
> swupdate does not give an
> error after I have done this.
>
> If the interface to bootloader (for grub, this means grubenv) is
> specified and correct, SWUpdate will set the variable "recovery_status"
> as transaction flag. You have to evaluate it in grub.cfg and start the
> ramdisk again if the variable is set.
>
> This confuses me. The only way I see of making swupdate set "recovery_sta=
tus" is to invoke swupdate -i updatefile.swu. However this immediately invo=
kes the update, no chance for me to intercept or "start the ramdisk again".
>
> I have a feeling that I misunderstand something about the ramdisk. To my =
understanding this is the microcode.cpio file which is invoked lastly in th=
e grub entry. It then should execute the swupdate init scripts I guess ? Th=
ey again should be able to understand the recovery_status variable and inte=
rpret it.
> Is this correct or am I entirely wrong about it ? Sorry for the trouble b=
ut I feel a bit lost here.
>
> Best regards
> Moritz
>
> Best regards,
> Stefano Babic
>
> Best regards,
> Stefano Babic
>
> Best regards
> Moritz
>
> ---
> IMAGE_INSTALL =3D "base-files \
> base-passwd \
> swupdate \
> busybox \
> libconfig \
> util-linux-sfdisk \
> mtd-utils \
> mtd-utils-ubifs \
> ${@bb.utils.contains('SWUPDATE_INIT', 'tiny',
>
> 'virtual/initscripts-swupdate', 'initscripts sysvinit', d)} \
>
> "
> ---
> This is taken from swupdate-image. I include the same packages (via
>
> _append) in my base image, is this necessary ?
>
> I bundle the initramfs with my image using INITRAMFS_IMAGE_BUNDLE =3D "1"
>
> Can you see a mistake I made ?
>
> Best regards
> Moritz
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

