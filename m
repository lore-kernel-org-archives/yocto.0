Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16A5AE00D44; Mon, 17 Jun 2019 05:34:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C37CFE00C43
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 05:34:18 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id m29so10447576qtu.1
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 05:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=bA/2yy0M4rXO7dOr2XSjY1JU7pZt/lWwFQJHyAejgGw=;
	b=tkuboU6D1kQeLRyfZXcR6Nas7TQwdnEsYu09sWXiYM4a7xz38aoD7UXxzkN78lcDkj
	GmhE0MceIPcObhAi4ZikPcBN22TKVIYZDTnxp0bV9d9nHAXigstwiq2vbOA2qp+Xxrez
	7yjNcVuEKzSgs8n0bEcdvW+zxoYgZ4lKny+xdonoPKE7z5SWJ9DawmBURrRC1tI/xHzl
	WZRRJTZgA+MgNDQYu965t8Zq/ydRJohPyibWOetAOMvQ8o2VvmdXejkfPaW2RMDgVtD4
	CRd29uHohpROl9yukMHWiDwa47ePU4ny/Y6CLpK4TZjv/L+r+4oqulfFgb/Vnq72kmgg
	alWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bA/2yy0M4rXO7dOr2XSjY1JU7pZt/lWwFQJHyAejgGw=;
	b=ZxaKqqZZ0EbZkcWqZ51MhYIUkhvwP8cxAaHSz5IX+qWqo//fxMHOPtCk2ud7CW6+Az
	KMM2h2HgCF3uyfrBceBibo6Yyq76nlt/hubSIhnZxOWBzLsu6kSh93uQ2GXS1PSbwrXP
	IEdhTax8WdOeOt5KtsDzVDjMErTkTDjLDigoRX42WyB1xV5aI1DFZqSkCA5qr5eoWtU6
	IyVk42Bk3l6CQayi3WjL5bQqtgUR7Wl94T/4g5vFSmSc3SeYxDbUQJT8X9CitNRI9864
	RXJip6Hsa1qg7g3u2u6a2NlDen9Yy+lL44i5KFwDybv4UHTUlbONkkTEWT21oZMoR4mk
	S5Sw==
X-Gm-Message-State: APjAAAUxp+5ksQFwhhcHRHiZ/qsXQyu5l5wB8ywgC5/kc9scJFqLvy63
	up4fIKi+9vXKRvtOQAfa6OcQ+a5EoU3nNF8nR4g=
X-Google-Smtp-Source: APXvYqydOAJcG9j/4D2PcHiTKK+kFPtBL8JH6Wz+ko85w0Ts18N3oF1nVkkBxBsT712NXkSkEp6n+PfASU/reg7I6OI=
X-Received: by 2002:ac8:877:: with SMTP id x52mr94544263qth.328.1560774858185; 
	Mon, 17 Jun 2019 05:34:18 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-b159ef9f-c6c8-4d3e-bd0b-ca88d3c5596e-1560500116612@3c-app-gmx-bs53>
	<CAGAf8LzTzOPr8p0Jf61tOu2U50fVafFiwV1X3WTVtPEYtv+BXg@mail.gmail.com>
	<trinity-c1af16bc-9d60-4a88-a48b-24690878e39b-1560507591276@3c-app-gmx-bs22>
	<bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de>
	<7935c256-d143-e826-8021-db787d98477c@gmx.de>
	<68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de>
	<a42b0c0a-bf68-92c0-1e91-d767485b7de8@gmx.de>
	<CAGAf8Ly+kKCeK5KVxh1qAQp8CRwOks5et+phN2Sju9PBhPORUA@mail.gmail.com>
	<fa201976-fef8-e2d5-533b-4528611aa931@gmx.de>
In-Reply-To: <fa201976-fef8-e2d5-533b-4528611aa931@gmx.de>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 17 Jun 2019 14:34:06 +0200
Message-ID: <CAGAf8LxDmPf3uTH2+o6bHtRdydgiu6sfkhdzC1LnEkze4c_2Jg@mail.gmail.com>
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
X-List-Received-Date: Mon, 17 Jun 2019 12:34:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I see the bundle_initramfs task being executed if I do any
> changes. The boot process works without swupdate in the
> image. If anything was wrong with the initramfs the whole
> system shouldn't be able to boot properly. I don't get what
> you suggest me to try.

It is just Divide and Conquer strategy. If you have normal system
working with/transitioning via initramfs, I would assume that there
should be nothing wrong with your initramfs, other than if you cut
power while update is upgrading kernel, and upon (part of kernel
upgrade) it makes/builds new initramfs (it could be very lengthy
process).

My best guess is to exclude from swupdate layer ONLY kernel upgrade,
and see if this helps, and brings you to some better point where you
can understand the problem. Again, Divide and Conquer strategy.

Zoran
_______

On Mon, Jun 17, 2019 at 2:13 PM Moritz Porst <moritz.porst@gmx.de> wrote:
>
> Hi Zoran
>
> On 17.06.19 12:55, Zoran Stojsavljevic wrote:
>
> I have a feeling that I misunderstand something about the ramdisk.
> To my understanding this is the microcode.cpio file which is invoked
> lastly in the grub entry.
>
> Being you, I would for the starters exclude swupdate layer and see if
> everything works without swupdate: does normally work with initramfs
> (from grub). Maybe it works already.
>
> I see the bundle_initramfs task being executed if I do any changes. The b=
oot process works without swupdate in the image. If anything was wrong with=
 the initramfs the whole system shouldn't be able to boot properly. I don't=
 get what you suggest me to try.
>
> Best regards
>
> Moritz
>
> But this is only me with my hints.
>
> Zoran
> _______
>
> On Mon, Jun 17, 2019 at 11:59 AM Moritz Porst <moritz.porst@gmx.de> wrote=
:
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

