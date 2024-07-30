Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4F3C3DA49
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 20:02:42 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web11.13648.1722330507201642184
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 02:08:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OqN6uHO0;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7a0c6ab3354so2751385a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 02:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722330506; x=1722935306; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p3e9QQCnnNJxYY1X40v62IiS3YQozpZvHT7Oyu6KVR0=;
        b=OqN6uHO09Ke2Y7uAPFfvxCvKejM1isg6tGh8kmJYy5880tGXYmw4t69ZitajOTKOfi
         VfoFLmiNGFQyXbJ39yRjstXpHHbIaV1cOX5fby/eT0IqRbMGMXT9gQD4CFCuepd74rZ8
         KfjbPaHwsjc8dRIonEkXHzhhsbKLu+99u3A8jxvAjPAKBRumPvEenKFegE7mrj7hENSJ
         gD7J9LTBsW8u33Tmj54IgbXvarcw8+46BKbmbFzHnB7ETuUGi5Gp+hoP9nkEbLRmpmfC
         D29pJIJLY3U2I+DwY04mECLtUWtfhSoa07V7w0YwIeXwgkXf0gEBUzaPsnMadlNsRKE0
         If5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722330506; x=1722935306;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p3e9QQCnnNJxYY1X40v62IiS3YQozpZvHT7Oyu6KVR0=;
        b=PMbq1m/XDbZOePFJg5v6LP+uTCC5YR8qS5+oVR4j6n+RgqteUNvUjvvwqJZqmA1fjA
         hSFEuec1aty8Tx/ifAuaUf/gMAPoF8KuVtASLNNjYJMr/Ui/MzBBLvm+XZ9drrjgbncd
         78wTX+ZfuDSAnqFdY3HvdUCZXQ6VbYDNoMVZjSTNTUgwI4hwFMvvFdYOsc/20snGOF/e
         fU2SiaK2zkxN0nSncKDTqW8/WRCjibvDdgOz9xoSyOzBs6TbX5qDJwkk/NObk4vrsUtD
         vO4Cz0xR2nVxhH5Dsf+bIyspyCzBWN07ILMtCl84vW6jEbA4WWk0vA29LM547h1ennJP
         nocg==
X-Gm-Message-State: AOJu0YwQufr5anDNNM3X9gwcDbjNSAJnsqmz743/5NmAGKEVSReP5hdc
	OUfrEZ62SuNR72RIuWvUkr3en/LcTJ1nKQbi5aFGpkYpp6oMCqWX6E66/8uS2UuHfVQ53YaxhNi
	Z16acZt+7cGA+//pnq0hj6ckUXUs5yjreq5s=
X-Google-Smtp-Source: AGHT+IEyGgr062FyI0KLIu8+mYsNJmmByd1NkjxJHPq4ECV4Uey3++cZtTEueT0HSGnKSWsEQ2nmPwZ9CYfdnIE9C50=
X-Received: by 2002:a05:6a20:1593:b0:1c0:e564:d718 with SMTP id
 adf61e73a8af0-1c4a13a1afcmr9573666637.37.1722330505870; Tue, 30 Jul 2024
 02:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAK+BxzT_5ipwp+F6QuQctr-M+XfXy3yuN+ZkJP+Rbq+sDEonTA@mail.gmail.com>
 <CAGAf8LyXr5mJaaGdcmXnqQAxkz28AtU51X5RZyE+Qe0vddu6+Q@mail.gmail.com> <CAK+BxzSaKUu9ihtfPkQZh4xOKz6QuSRAtAVGZc54SWG8eZDa2g@mail.gmail.com>
In-Reply-To: <CAK+BxzSaKUu9ihtfPkQZh4xOKz6QuSRAtAVGZc54SWG8eZDa2g@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 30 Jul 2024 11:08:14 +0200
Message-ID: <CAGAf8Lw3wzt7BeJ+gS_advdvfH+Q0bRrZOM5_zra3_VjAtKWSw@mail.gmail.com>
Subject: Re: [yocto] problems while creating a initrd image with wic image size.
To: yocto@lists.yoctoproject.org, u.apeiron@gmail.com
Content-Type: multipart/alternative; boundary="000000000000fd03bc061e73513d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 20:02:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63614

--000000000000fd03bc061e73513d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Ulises,

It seems that I fixed the MACHINE property. Now, after I fixed it, it shows
the following:

.../bbb-yocto$ git status
On branch scarthgap
Your branch is up to date with 'origin/scarthgap'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
    meta-bbb/
    meta-jumpnow/
    meta-openembedded/
    meta-qt5/
    meta-socketcan/
    poky/

nothing added to commit but untracked files present (use "git add" to track=
)

.../bbb-yocto$ bitbake -e | grep "^MACHINE=3D"
MACHINE=3D"beaglebone-yocto"
_______

And, imagine, now I have the same issue as you!

> To solve the problems I did the following steps:
> I tried looking for some variable that contain the 32768
> limit using "source toaster start" which guide me to a
> UI of build output and I found look a failed recipe, click
> on the task number and that lead to a page that allow
> me to look for yocto variables and their values being set
> up, I read some variable description and that lead me to
> the finding that wic image is created by wic tools in yocto
> I search how to create wic images in yocto and found the
> info I told you some lines above in yocto documentation
> et voil=C3=A1 !!! problem solved just in time for the Olympics!!!

It solved this problem for me as well:

You should submit this patch to YOCTO community:

poky$ git diff meta-yocto-bsp/wic/beaglebone-yocto.wks
diff --git a/meta-yocto-bsp/wic/beaglebone-yocto.wks
b/meta-yocto-bsp/wic/beaglebone-yocto.wks
index 7a28fb23dc..5ef7ca689c 100644
--- a/meta-yocto-bsp/wic/beaglebone-yocto.wks
+++ b/meta-yocto-bsp/wic/beaglebone-yocto.wks
@@ -2,6 +2,6 @@
 # long-description: Creates a partitioned SD card image for Beaglebone.
 # Boot files are located in the first vfat partition.

-part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat
--label boot --active --align 4 --fixed-size 32
--sourceparams=3D"loader=3Du-boot" --use-uuid
+part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat
--label boot --active --align 4 *--fixed-size 64*
--sourceparams=3D"loader=3Du-boot" --use-uuid
 part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label root --ali=
gn
4 --use-uuid
 bootloader --append=3D"console=3DttyS0,115200"

Thank you,

Zee
_______



On Thu, Jul 25, 2024 at 8:20=E2=80=AFPM Ulises Vega via lists.yoctoproject.=
org
<u.apeiron=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hello Zee,
>
> Thank you for your reply. I was able to fix it by doing several approache=
s:
>
> at the end I found out that the size of the wic image in my yocto
> scarthgap version was being set by a wks file  which is a template file f=
or
> creating wic images in yocto:
>
> I did a "wic list images" that showed me that beaglebone-yocto had a .wks
> file for it and I modify the source code as follows:
>
> original beaglebone-yocto.wks source code line
> part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat
> --label boot --active --align 4 --fixed-size 32
> --sourceparams=3D"loader=3Du-boot" --use-uuid
>
> I changed  the --fixed-size to 64, and that give me enough space for what
> I want.
> part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat
> --label boot --active --align 4 --fixed-size 64
> --sourceparams=3D"loader=3Du-boot" --use-uuid
>
> Problem solved.
>
> I tried your conf/local.conf with the following modifications because for
> some reason I got some problems:
>
>
>    - MACHINE =3D "beaglebone"
>
> it is not recognized by my yocto system. I had to use:
>
> MACHINE ??=3D "beaglebone-yocto"
>
>  I'm using scarthgap release of yocto.
>
> out of curiosity, which version of yocto are you using?
>
>    - How did you get the layers for beaglebone I see the following line
>    in the conf/local.conf file:
>
> ## mask for non-mender builds
> BBMASK =3D "meta-bbb/recipes-mender"
>
> I looked for it in
> https://layers.openembedded.org/layerindex/branch/master/layers/ and
> could not find it.
>
>    - I commented out the following lines in your conf/local.conf, but I
>    don't think this makes a huge difference.
>
> #original from zoran
> #PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-mainline"
> #PREFERRED_VERSION_linux-libc-headers=3D"6.10.%"
> #PREFERRED_VERSION_linux-mainline ?=3D "6.10.%"
>
> #original from zoran
> #CORE_IMAGE_EXTRA_INSTALL:append =3D "openssh cmake libsocketcan nfs-util=
s
> rt-tests strace procps packagegroup-core-buildessential "
>
> After all these modifications I was still getting a similar error.
>
> To solve the problems I did the following steps: I tried looking for some
> variable that contain the 32768 limit using "source toaster start" which
> guide me to a UI of build output and I found look a failed recipe, click =
on
> the task number and that lead to a page that allow me to look for yocto
> variables and their values being set up, I read some variable description
> and that lead me to the finding that wic image is created by wic tools in
> yocto I search how to create wic images in yocto and found the info I tol=
d
> you some lines above in yocto documentation et voil=C3=A1 !!! problem sol=
ved
> just in time for the Olympics!!!
>
> Thanks for your help.
>
> Ulises Vega
>
> On Mon, Jul 22, 2024 at 11:55=E2=80=AFPM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> Hello Ulises,
>>
>> I did try to stuff your initramfs changes/addendums in my local.conf .
>>
>> Just out of curiosity. ;-)
>>
>> It does work seamlessly. The build finished without any problems.
>>
>> Please, find attached my local.conf with your addendums.
>>
>> It could help you... I believe.
>>
>> Zee
>> _______
>>
>> On Mon, Jul 22, 2024 at 7:47=E2=80=AFPM Ulises Vega via lists.yoctoproje=
ct.org
>> <u.apeiron=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hello everyone,
>> >
>> > I'm trying to run Automotive Grade Linux (AGL) on beagleboneai-64.
>> >
>> > AGL uses a yocto based build. I'm trying to generate an initrd image
>> for the beagleboneai-64.
>> >
>> > I'm using yocto scarthgap. I added the following features to
>> conf/local.conf but got some errors while creating the wic image.
>> >
>> > INITRAMFS_IMAGE =3D "core-image-tiny-initramfs"
>> > INITRAMFS_IMAGE_BUNDLE =3D "1"
>> > INITRAMFS_IMAGE_NAME ?=3D "${INITRAMFS_IMAGE}-${MACHINE}"
>> > INITRAMFS_KERNEL_IMAGE=3D"${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin=
"
>> > VIRTUAL-RUNTIME_dev_manager =3D "busybox-mdev"
>> > IMAGE_BOOT_FILES:append =3D "
>> ${INITRAMFS_KERNEL_IMAGE};${KERNEL_IMAGETYPE}"
>> >
>> > IMAGE_ROOTFS_MAXSIZE ?=3D "4294967296"
>> > ROOTFS_PARTITION_SIZE ?=3D "4294967296"
>> >
>> > SDCARD_ROOTFS ?=3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext4"
>> >
>> > IMAGE_FSTYPES:append =3D " ext4 cpio.gz"
>> >
>> > These are the errors I got.
>> >
>> > DEBUG: Executing python function extend_recipe_sysroot
>> > NOTE: Direct dependencies are
>> ['/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes=
-core/glibc/cross-localedef-native_2.39.bb:do_populate_sysroot',
>> '/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-=
core/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot',
>> '/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-=
devtools/binutils/binutils-cross_2.42.bb:do_populate_sysroot',
>> '/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-=
devtools/cdrtools/cdrtools-native_3.01.bb:do_populate_sysroot',
>> '/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-=
devtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot',
>> '/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-=
kernel/kmod/depmodwrapper-cross_1.0.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/met=
a-selinux/recipes-security/selinux/policycoreutils_3.6.bb:do_populate_sysro=
ot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/btrfs-tools/btrfs-tools_6.7.1.bb:do_populate_sysroo=
t',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/createrepo-c/createrepo-c_1.0.4.bb:do_populate_sysr=
oot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/dnf/dnf_4.19.0.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/dosfstools/dosfstools_4.2.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.47.0.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/erofs-utils/erofs-utils_1.7.1.bb:do_populate_sysroo=
t',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/fdisk/gptfdisk_1.0.9.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/mtools/mtools_4.0.43.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/opkg-utils/opkg-utils_0.6.3.bb:do_populate_sysroot'=
,
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/rpm/rpm_4.19.1.1.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/squashfs-tools/squashfs-tools_git.bb:do_populate_sy=
sroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-devtools/syslinux/syslinux_6.04-pre2.bb:do_populate_sysroot'=
,
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-extended/parted/parted_3.6.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-extended/pigz/pigz_2.8.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-extended/xz/xz_5.4.6.bb:do_populate_sysroot',
>> 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-support/bmaptool/bmaptool_git.bb:
>> do_populate_sysroot']
>> > NOTE: u-boot-ti-staging exists in sysroot, but is stale
>> (u-boot-ti-staging.fb4c3165ab7b6a4cdff9ac6dd66ec27131b6b0a1458829b9a2435=
efbb437d016
>> vs.
>> u-boot-ti-staging.e12d75717bc48fff394b754723686e43ed4c4136875027162649d0=
0c6473048b),
>> removing.
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/u-b=
oot-beaglebone-ai64-2023.04+git-r0.img
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/u-b=
oot-spl.bin
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/tis=
pl.bin-beaglebone-ai64-2023.04+git-r0
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/u-b=
oot.img
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/u-b=
oot-spl.bin-beaglebone-ai64-2023.04+git-r0
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/tis=
pl.bin
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-=
providers/u-boot-ti-staging
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-=
providers/u-boot
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-=
providers/virtual_bootloader
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-=
providers/
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/
>> > NOTE: linux-bb.org exists in sysroot, but is stale (linux-bb.org.72fd7=
3ea1b79abe5b75726e3efd6ea0d79ca9966b16cddfdaafc987fba084c80
>> vs. linux-bb.org.2a69e1fa14e6277a5b20f66736709b5530721756913f3d6246e20f4=
65f8b792e),
>> removing.
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-=
providers/
>> linux-bb.org
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-=
providers/virtual_kernel
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-=
only/fitImage
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-=
providers/
>> > DEBUG: Removing manifest:
>> /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/bea=
glebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-=
only/
>> > NOTE: Installed into sysroot: ['u-boot-ti-staging', 'linux-bb.org']
>> > NOTE: Skipping as already exists in sysroot: ['trusted-firmware-a',
>> 'optee-os', 'ti-dm-fw', 'ti-sci-fw', 'gettext-minimal-native',
>> 'cross-localedef-native', 'glibc', 'ldconfig-native',
>> 'systemd-systemctl-native', 'binutils-cross-aarch64', 'cdrtools-native',
>> 'cmake-native', 'gcc-runtime', 'libgcc', 'libtool-native', 'm4-native',
>> 'opkg-utils', 'qemu-native', 'qemuwrapper-cross', 'texinfo-dummy-native'=
,
>> 'depmodwrapper-cross', 'linux-libc-headers', 'nspr-native', 'nss-native'=
,
>> 'libselinux-native', 'libsemanage-native', 'libsepol-native',
>> 'policycoreutils-native', 'openssl-native', 'coreutils-native',
>> 'expat-native', 'gettext-native', 'glib-2.0-native', 'libxml2-native',
>> 'ncurses-native', 'readline-native', 'update-rc.d-native',
>> 'util-linux-libuuid-native', 'util-linux-native', 'zlib-native',
>> 'btrfs-tools-native', 'createrepo-c-native', 'desktop-file-utils-native'=
,
>> 'dnf-native', 'dosfstools-native', 'e2fsprogs-native', 'elfutils-native'=
,
>> 'erofs-utils-native', 'gptfdisk-native', 'file-native', 'flex-native',
>> 'gnu-config-native', 'json-c-native', 'libcomps-native', 'libdnf-native'=
,
>> 'libedit-native', 'libmodulemd-native', 'librepo-native', 'lua-native',
>> 'make-native', 'makedevs-native', 'mtools-native', 'nasm-native',
>> 'opkg-utils-native', 'perl-native', 'pseudo-native',
>> 'python3-build-native', 'python3-flit-core-native',
>> 'python3-iniparse-native', 'python3-installer-native',
>> 'python3-packaging-native', 'python3-pyproject-hooks-native',
>> 'python3-setuptools-native', 'python3-six-native', 'python3-wheel-native=
',
>> 'python3-native', 'rpm-native', 'squashfs-tools-native', 'swig-native',
>> 'syslinux-native', 'bzip2-native', 'cpio-native', 'groff-native',
>> 'libarchive-native', 'libidn2-native', 'libnsl2-native', 'libsolv-native=
',
>> 'libtirpc-native', 'lzlib-native', 'parted-native', 'pigz-native',
>> 'shadow-native', 'unzip-native', 'xz-native', 'zstd-native',
>> 'gdk-pixbuf-native', 'gobject-introspection-native',
>> 'libjpeg-turbo-native', 'kmod-native', 'libpng-native', 'acl-native',
>> 'attr-native', 'bmaptool-native', 'curl-native', 'debianutils-native',
>> 'gdbm-native', 'gmp-native', 'gnutls-native', 'libtasn1-native',
>> 'gpgme-native', 'itstool-native', 'libassuan-native', 'libbsd-native',
>> 'libcap-ng-native', 'libcap-native', 'libcheck-native', 'libffi-native',
>> 'libgcrypt-native', 'libgpg-error-native', 'libmd-native',
>> 'libmicrohttpd-native', 'libpcre2-native', 'libunistring-native',
>> 'libyaml-native', 'lz4-native', 'lzo-native', 'nettle-native',
>> 'popt-native', 'shared-mime-info-native', 'sqlite3-native']
>> > DEBUG: Python function extend_recipe_sysroot finished
>> > DEBUG: Executing python function set_image_size
>> > DEBUG: 2361054.800000 =3D 1816196 * 1.300000
>> > DEBUG: 2467550.800000 =3D max(2361054.800000, 8192)[2361054.800000] +
>> 106496
>> > DEBUG: 2467551.000000 =3D int(2467550.800000)
>> > DEBUG: 2467551 =3D aligned(2467551)
>> > DEBUG: returning 2467551
>> > DEBUG: Python function set_image_size finished
>> > DEBUG: Executing shell function do_image_wic
>> > INFO: Creating image(s)...
>> >
>> > ERROR: File system image of partition None is larger (336164 kB) than
>> its allowed size 131072 kB
>> >
>> > WARNING: exit code 1 from a shell command.
>> > ~
>> >
>> > Thanks.
>> >
>> > Ulises Vega
>> >
>> >
>> >
>> >
>>
>
>=20
>
>

--000000000000fd03bc061e73513d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ulises,<br><br>It seems that I fixed the MACHINE pro=
perty. Now, after I fixed it, it shows the following:<br><br>.../bbb-yocto$=
 git status<br>On branch scarthgap<br>Your branch is up to date with &#39;o=
rigin/scarthgap&#39;.<br><br>Untracked files:<br>=C2=A0 (use &quot;git add =
&lt;file&gt;...&quot; to include in what will be committed)<br>=C2=A0 =C2=
=A0 meta-bbb/<br>=C2=A0 =C2=A0 meta-jumpnow/<br>=C2=A0 =C2=A0 meta-openembe=
dded/<br>=C2=A0 =C2=A0 meta-qt5/<br>=C2=A0 =C2=A0 meta-socketcan/<br>=C2=A0=
 =C2=A0 poky/<br><br>nothing added to commit but untracked files present (u=
se &quot;git add&quot; to track)<br><br>.../bbb-yocto$ bitbake -e | grep &q=
uot;^MACHINE=3D&quot;<br>MACHINE=3D&quot;beaglebone-yocto&quot;<br>_______<=
br><br>And, imagine, now I have the same issue as you!<br><br>&gt; To solve=
 the problems I did the following steps:<br>&gt; I tried looking for some v=
ariable that contain the 32768<br>&gt; limit using &quot;source toaster sta=
rt&quot; which guide me to a<br>&gt; UI of build output and I found look a =
failed recipe, click<br>&gt; on the task number and that lead to a page tha=
t allow<br>&gt; me to look for yocto variables and their values being set<b=
r>&gt; up, I read some variable description and that lead me to<br>&gt; the=
 finding that wic image is created by wic tools in yocto<br>&gt; I search h=
ow to create wic images in yocto and found the<br>&gt; info I told you some=
 lines above in yocto documentation<br>&gt; et voil=C3=A1 !!! problem solve=
d just in time for the Olympics!!!<br><div><br></div><div>It solved this pr=
oblem for me as well:<br></div><div><br></div>You should submit this patch =
to YOCTO community:<br><br>poky$ git diff meta-yocto-bsp/wic/beaglebone-yoc=
to.wks<br>diff --git a/meta-yocto-bsp/wic/beaglebone-yocto.wks b/meta-yocto=
-bsp/wic/beaglebone-yocto.wks<br>index 7a28fb23dc..5ef7ca689c 100644<br>---=
 a/meta-yocto-bsp/wic/beaglebone-yocto.wks<br>+++ b/meta-yocto-bsp/wic/beag=
lebone-yocto.wks<br>@@ -2,6 +2,6 @@<br>=C2=A0# long-description: Creates a =
partitioned SD card image for Beaglebone.<br>=C2=A0# Boot files are located=
 in the first vfat partition.<br>=C2=A0<br>-part /boot --source bootimg-par=
tition --ondisk mmcblk0 --fstype=3Dvfat --label boot --active --align 4 --f=
ixed-size 32 --sourceparams=3D&quot;loader=3Du-boot&quot; --use-uuid<br>+pa=
rt /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat --labe=
l boot --active --align 4 <b><i><u><span style=3D"color:rgb(255,0,0)">--fix=
ed-size 64</span></u></i></b> --sourceparams=3D&quot;loader=3Du-boot&quot; =
--use-uuid<br>=C2=A0part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4=
 --label root --align 4 --use-uuid<br><div>=C2=A0bootloader --append=3D&quo=
t;console=3DttyS0,115200&quot;</div><div><br></div><div>Thank you,<br></div=
><div><br></div><div>Zee</div><div>_______</div><div><br></div></div><br><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
Jul 25, 2024 at 8:20=E2=80=AFPM Ulises Vega via <a href=3D"http://lists.yoc=
toproject.org">lists.yoctoproject.org</a> &lt;u.apeiron=3D<a href=3D"mailto=
:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hello Zee,</div><div><br></div><div>Thank you for your reply.=
 I was able to fix it by doing several approaches:</div><div><br></div><div=
>at the end I found out that the size of the wic image in my yocto scarthga=
p version was being set by a wks file=C2=A0 which is a template file for cr=
eating wic images in yocto:</div><div><br></div><div>I did a &quot;wic list=
 images&quot; that showed me that beaglebone-yocto had a .wks file for it a=
nd I modify the source code as follows:</div><div><br></div><div>original b=
eaglebone-yocto.wks source code line<br></div><div>part /boot --source boot=
img-partition --ondisk mmcblk0 --fstype=3Dvfat --label boot --active --alig=
n 4 --fixed-size 32 --sourceparams=3D&quot;loader=3Du-boot&quot; --use-uuid=
</div><div><br></div><div>I changed=C2=A0 the --fixed-size to 64, and that =
give me enough space for what I want.<br></div><div>part /boot --source boo=
timg-partition --ondisk mmcblk0 --fstype=3Dvfat --label boot --active --ali=
gn 4 --fixed-size 64 --sourceparams=3D&quot;loader=3Du-boot&quot; --use-uui=
d<br></div><div><br></div><div>Problem solved.<br></div><div><br></div><div=
>I tried your conf/local.conf with the following modifications because for =
some reason I got some problems:</div><div><br></div><div><ul><li>MACHINE =
=3D &quot;beaglebone&quot;</li></ul></div><div>it is not recognized by my y=
octo system. I had to use:<div><div><br></div><div>MACHINE ??=3D &quot;beag=
lebone-yocto&quot;</div></div></div><div><br></div><div>=C2=A0I&#39;m using=
 scarthgap release of yocto.</div><div><br></div><div>out of curiosity, whi=
ch version of yocto are you using? <br></div><div><ul><li>How did you get t=
he layers for beaglebone I see the following line in the conf/local.conf fi=
le:</li></ul></div><div>## mask for non-mender builds<br>BBMASK =3D &quot;m=
eta-bbb/recipes-mender&quot;</div><div><br></div><div>I looked for it in <a=
 href=3D"https://layers.openembedded.org/layerindex/branch/master/layers/" =
target=3D"_blank">https://layers.openembedded.org/layerindex/branch/master/=
layers/</a> and could not find it.<br></div><div><ul><li>I commented out th=
e following lines in your conf/local.conf, but I don&#39;t think this makes=
 a huge difference.</li></ul><div>#original from zoran<br>#PREFERRED_PROVID=
ER_virtual/kernel ?=3D &quot;linux-mainline&quot;<br>#PREFERRED_VERSION_lin=
ux-libc-headers=3D&quot;6.10.%&quot;<br>#PREFERRED_VERSION_linux-mainline ?=
=3D &quot;6.10.%&quot;</div><div><br></div><div>#original from zoran<br>#CO=
RE_IMAGE_EXTRA_INSTALL:append =3D &quot;openssh cmake libsocketcan nfs-util=
s rt-tests strace procps packagegroup-core-buildessential &quot;</div><div>=
<br></div></div><div>After all these modifications I was still getting a si=
milar error.</div><div><br></div><div>To solve the problems I did the follo=
wing steps: I tried looking for some variable that contain the 32768 limit =
using &quot;source toaster start&quot; which guide me to a UI of build outp=
ut and I found look a failed recipe, click on the task number and that lead=
 to a page that allow me to look for yocto variables and their values being=
 set up, I read some variable description and that lead me to the finding t=
hat wic image is created by wic tools in yocto I search how to create wic i=
mages in yocto and found the info I told you some lines above in yocto docu=
mentation et voil=C3=A1 !!! problem solved just in time for the Olympics!!!=
<br></div><div><br></div><div>Thanks for your help.</div><div><br></div><di=
v>Ulises Vega<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Jul 22, 2024 at 11:55=E2=80=AFPM Zoran Stojs=
avljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bl=
ank">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Hello Ulises,<br>
<br>
I did try to stuff your initramfs changes/addendums in my local.conf .<br>
<br>
Just out of curiosity. ;-)<br>
<br>
It does work seamlessly. The build finished without any problems.<br>
<br>
Please, find attached my local.conf with your addendums.<br>
<br>
It could help you... I believe.<br>
<br>
Zee<br>
_______<br>
<br>
On Mon, Jul 22, 2024 at 7:47=E2=80=AFPM Ulises Vega via <a href=3D"http://l=
ists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproj=
ect.org</a><br>
&lt;u.apeiron=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=
=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; I&#39;m trying to run Automotive Grade Linux (AGL) on beagleboneai-64.=
<br>
&gt;<br>
&gt; AGL uses a yocto based build. I&#39;m trying to generate an initrd ima=
ge for the beagleboneai-64.<br>
&gt;<br>
&gt; I&#39;m using yocto scarthgap. I added the following features to conf/=
local.conf but got some errors while creating the wic image.<br>
&gt;<br>
&gt; INITRAMFS_IMAGE =3D &quot;core-image-tiny-initramfs&quot;<br>
&gt; INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;<br>
&gt; INITRAMFS_IMAGE_NAME ?=3D &quot;${INITRAMFS_IMAGE}-${MACHINE}&quot;<br=
>
&gt; INITRAMFS_KERNEL_IMAGE=3D&quot;${KERNEL_IMAGETYPE}-initramfs-${MACHINE=
}.bin&quot;<br>
&gt; VIRTUAL-RUNTIME_dev_manager =3D &quot;busybox-mdev&quot;<br>
&gt; IMAGE_BOOT_FILES:append =3D &quot; ${INITRAMFS_KERNEL_IMAGE};${KERNEL_=
IMAGETYPE}&quot;<br>
&gt;<br>
&gt; IMAGE_ROOTFS_MAXSIZE ?=3D &quot;4294967296&quot;<br>
&gt; ROOTFS_PARTITION_SIZE ?=3D &quot;4294967296&quot;<br>
&gt;<br>
&gt; SDCARD_ROOTFS ?=3D &quot;${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext4=
&quot;<br>
&gt;<br>
&gt; IMAGE_FSTYPES:append =3D &quot; ext4 cpio.gz&quot;<br>
&gt;<br>
&gt; These are the errors I got.<br>
&gt;<br>
&gt; DEBUG: Executing python function extend_recipe_sysroot<br>
&gt; NOTE: Direct dependencies are [&#39;/media/ulisesv/linux_workspace/AGL=
/ricefish/external/poky/meta/recipes-core/glibc/cross-localedef-native_2.39=
.bb:do_populate_sysroot&#39;, &#39;/media/ulisesv/linux_workspace/AGL/ricef=
ish/external/poky/meta/recipes-core/glibc/ldconfig-native_2.12.1.bb:do_popu=
late_sysroot&#39;, &#39;/media/ulisesv/linux_workspace/AGL/ricefish/externa=
l/poky/meta/recipes-devtools/binutils/binutils-cross_2.42.bb:do_populate_sy=
sroot&#39;, &#39;/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/=
meta/recipes-devtools/cdrtools/cdrtools-native_3.01.bb:do_populate_sysroot&=
#39;, &#39;/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/r=
ecipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot&#39;, &#3=
9;/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-ke=
rnel/kmod/depmodwrapper-cross_1.0.bb:do_populate_sysroot&#39;, &#39;virtual=
:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/meta-selinux/r=
ecipes-security/selinux/policycoreutils_3.6.bb:do_populate_sysroot&#39;, &#=
39;virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky=
/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate_sysroot&#39;,=
 &#39;virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/p=
oky/meta/recipes-devtools/btrfs-tools/btrfs-tools_6.7.1.bb:do_populate_sysr=
oot&#39;, &#39;virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/e=
xternal/poky/meta/recipes-devtools/createrepo-c/createrepo-c_1.0.4.bb:do_po=
pulate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux_workspace/AGL=
/ricefish/external/poky/meta/recipes-devtools/dnf/dnf_4.19.0.bb:do_populate=
_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux_workspace/AGL/ricef=
ish/external/poky/meta/recipes-devtools/dosfstools/dosfstools_4.2.bb:do_pop=
ulate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux_workspace/AGL/=
ricefish/external/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.47.0.bb:=
do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux_workspac=
e/AGL/ricefish/external/poky/meta/recipes-devtools/erofs-utils/erofs-utils_=
1.7.1.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux=
_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/fdisk/gptfdisk_=
1.0.9.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux=
_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/makedevs/makede=
vs_1.0.1.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/li=
nux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/mtools/mtool=
s_4.0.43.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/li=
nux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/opkg-utils/o=
pkg-utils_0.6.3.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/uli=
sesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/pseud=
o/pseudo_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulises=
v/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/rpm/rpm_=
4.19.1.1.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/li=
nux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/squashfs-too=
ls/squashfs-tools_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/med=
ia/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools=
/syslinux/syslinux_6.04-pre2.bb:do_populate_sysroot&#39;, &#39;virtual:nati=
ve:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-e=
xtended/parted/parted_3.6.bb:do_populate_sysroot&#39;, &#39;virtual:native:=
/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-exte=
nded/pigz/pigz_2.8.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/=
ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-extended/xz=
/xz_5.4.6.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/l=
inux_workspace/AGL/ricefish/external/poky/meta/recipes-support/bmaptool/bma=
ptool_git.bb:do_populate_sysroot&#39;]<br>
&gt; NOTE: u-boot-ti-staging exists in sysroot, but is stale (u-boot-ti-sta=
ging.fb4c3165ab7b6a4cdff9ac6dd66ec27131b6b0a1458829b9a2435efbb437d016 vs. u=
-boot-ti-staging.e12d75717bc48fff394b754723686e43ed4c4136875027162649d00c64=
73048b), removing.<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/boot/u-boot-beaglebone-ai64-2023.04+git-r0.img<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/boot/u-boot-spl.bin<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/boot/tispl.bin-beaglebone-ai64-2023.04+git-r0<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/boot/u-boot.img<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/boot/u-boot-spl.bin-beaglebone-ai64-2023.04+git-r0<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/boot/tispl.bin<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/sysroot-providers/u-boot-ti-staging<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/sysroot-providers/u-boot<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/sysroot-providers/virtual_bootloader<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/sysroot-providers/<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/boot/<br>
&gt; NOTE: <a href=3D"http://linux-bb.org" rel=3D"noreferrer" target=3D"_bl=
ank">linux-bb.org</a> exists in sysroot, but is stale (<a href=3D"http://li=
nux-bb.org" target=3D"_blank">linux-bb.org</a>.72fd73ea1b79abe5b75726e3efd6=
ea0d79ca9966b16cddfdaafc987fba084c80 vs. <a href=3D"http://linux-bb.org" ta=
rget=3D"_blank">linux-bb.org</a>.2a69e1fa14e6277a5b20f66736709b553072175691=
3f3d6246e20f465f8b792e), removing.<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/sysroot-providers/<a href=3D"http://linux-bb.org" rel=
=3D"noreferrer" target=3D"_blank">linux-bb.org</a><br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/sysroot-providers/virtual_kernel<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/sysroot-only/fitImage<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/sysroot-providers/<br>
&gt; DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/=
beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk=
/1.0/recipe-sysroot/sysroot-only/<br>
&gt; NOTE: Installed into sysroot: [&#39;u-boot-ti-staging&#39;, &#39;<a hr=
ef=3D"http://linux-bb.org" rel=3D"noreferrer" target=3D"_blank">linux-bb.or=
g</a>&#39;]<br>
&gt; NOTE: Skipping as already exists in sysroot: [&#39;trusted-firmware-a&=
#39;, &#39;optee-os&#39;, &#39;ti-dm-fw&#39;, &#39;ti-sci-fw&#39;, &#39;get=
text-minimal-native&#39;, &#39;cross-localedef-native&#39;, &#39;glibc&#39;=
, &#39;ldconfig-native&#39;, &#39;systemd-systemctl-native&#39;, &#39;binut=
ils-cross-aarch64&#39;, &#39;cdrtools-native&#39;, &#39;cmake-native&#39;, =
&#39;gcc-runtime&#39;, &#39;libgcc&#39;, &#39;libtool-native&#39;, &#39;m4-=
native&#39;, &#39;opkg-utils&#39;, &#39;qemu-native&#39;, &#39;qemuwrapper-=
cross&#39;, &#39;texinfo-dummy-native&#39;, &#39;depmodwrapper-cross&#39;, =
&#39;linux-libc-headers&#39;, &#39;nspr-native&#39;, &#39;nss-native&#39;, =
&#39;libselinux-native&#39;, &#39;libsemanage-native&#39;, &#39;libsepol-na=
tive&#39;, &#39;policycoreutils-native&#39;, &#39;openssl-native&#39;, &#39=
;coreutils-native&#39;, &#39;expat-native&#39;, &#39;gettext-native&#39;, &=
#39;glib-2.0-native&#39;, &#39;libxml2-native&#39;, &#39;ncurses-native&#39=
;, &#39;readline-native&#39;, &#39;update-rc.d-native&#39;, &#39;util-linux=
-libuuid-native&#39;, &#39;util-linux-native&#39;, &#39;zlib-native&#39;, &=
#39;btrfs-tools-native&#39;, &#39;createrepo-c-native&#39;, &#39;desktop-fi=
le-utils-native&#39;, &#39;dnf-native&#39;, &#39;dosfstools-native&#39;, &#=
39;e2fsprogs-native&#39;, &#39;elfutils-native&#39;, &#39;erofs-utils-nativ=
e&#39;, &#39;gptfdisk-native&#39;, &#39;file-native&#39;, &#39;flex-native&=
#39;, &#39;gnu-config-native&#39;, &#39;json-c-native&#39;, &#39;libcomps-n=
ative&#39;, &#39;libdnf-native&#39;, &#39;libedit-native&#39;, &#39;libmodu=
lemd-native&#39;, &#39;librepo-native&#39;, &#39;lua-native&#39;, &#39;make=
-native&#39;, &#39;makedevs-native&#39;, &#39;mtools-native&#39;, &#39;nasm=
-native&#39;, &#39;opkg-utils-native&#39;, &#39;perl-native&#39;, &#39;pseu=
do-native&#39;, &#39;python3-build-native&#39;, &#39;python3-flit-core-nati=
ve&#39;, &#39;python3-iniparse-native&#39;, &#39;python3-installer-native&#=
39;, &#39;python3-packaging-native&#39;, &#39;python3-pyproject-hooks-nativ=
e&#39;, &#39;python3-setuptools-native&#39;, &#39;python3-six-native&#39;, =
&#39;python3-wheel-native&#39;, &#39;python3-native&#39;, &#39;rpm-native&#=
39;, &#39;squashfs-tools-native&#39;, &#39;swig-native&#39;, &#39;syslinux-=
native&#39;, &#39;bzip2-native&#39;, &#39;cpio-native&#39;, &#39;groff-nati=
ve&#39;, &#39;libarchive-native&#39;, &#39;libidn2-native&#39;, &#39;libnsl=
2-native&#39;, &#39;libsolv-native&#39;, &#39;libtirpc-native&#39;, &#39;lz=
lib-native&#39;, &#39;parted-native&#39;, &#39;pigz-native&#39;, &#39;shado=
w-native&#39;, &#39;unzip-native&#39;, &#39;xz-native&#39;, &#39;zstd-nativ=
e&#39;, &#39;gdk-pixbuf-native&#39;, &#39;gobject-introspection-native&#39;=
, &#39;libjpeg-turbo-native&#39;, &#39;kmod-native&#39;, &#39;libpng-native=
&#39;, &#39;acl-native&#39;, &#39;attr-native&#39;, &#39;bmaptool-native&#3=
9;, &#39;curl-native&#39;, &#39;debianutils-native&#39;, &#39;gdbm-native&#=
39;, &#39;gmp-native&#39;, &#39;gnutls-native&#39;, &#39;libtasn1-native&#3=
9;, &#39;gpgme-native&#39;, &#39;itstool-native&#39;, &#39;libassuan-native=
&#39;, &#39;libbsd-native&#39;, &#39;libcap-ng-native&#39;, &#39;libcap-nat=
ive&#39;, &#39;libcheck-native&#39;, &#39;libffi-native&#39;, &#39;libgcryp=
t-native&#39;, &#39;libgpg-error-native&#39;, &#39;libmd-native&#39;, &#39;=
libmicrohttpd-native&#39;, &#39;libpcre2-native&#39;, &#39;libunistring-nat=
ive&#39;, &#39;libyaml-native&#39;, &#39;lz4-native&#39;, &#39;lzo-native&#=
39;, &#39;nettle-native&#39;, &#39;popt-native&#39;, &#39;shared-mime-info-=
native&#39;, &#39;sqlite3-native&#39;]<br>
&gt; DEBUG: Python function extend_recipe_sysroot finished<br>
&gt; DEBUG: Executing python function set_image_size<br>
&gt; DEBUG: 2361054.800000 =3D 1816196 * 1.300000<br>
&gt; DEBUG: 2467550.800000 =3D max(2361054.800000, 8192)[2361054.800000] + =
106496<br>
&gt; DEBUG: 2467551.000000 =3D int(2467550.800000)<br>
&gt; DEBUG: 2467551 =3D aligned(2467551)<br>
&gt; DEBUG: returning 2467551<br>
&gt; DEBUG: Python function set_image_size finished<br>
&gt; DEBUG: Executing shell function do_image_wic<br>
&gt; INFO: Creating image(s)...<br>
&gt;<br>
&gt; ERROR: File system image of partition None is larger (336164 kB) than =
its allowed size 131072 kB<br>
&gt;<br>
&gt; WARNING: exit code 1 from a shell command.<br>
&gt; ~<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt; Ulises Vega<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000fd03bc061e73513d--

