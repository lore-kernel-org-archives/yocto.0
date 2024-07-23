Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94243C3DA63
	for <webhook@archiver.kernel.org>; Tue, 23 Jul 2024 08:37:40 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web11.37596.1721714102250611794
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jul 2024 22:55:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mKdqcV/q;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-78aeee1068aso257297a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jul 2024 22:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721714101; x=1722318901; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SqHhLAOAnlqfnWBiaNYUODFyMy3gLduUujDJ7jTrTTU=;
        b=mKdqcV/qryxtWHgba77LdrEBinz4obSU773mJ81ib83G9gFHgYnQf2Dfz1wDPlnsXU
         DCiZzWZ039YCGY2gH4DsgkAwXVHRUexLI0+EbtvFMCIE6hI00hvPpWPkMN4KzPHqcVoj
         HFlBmUo1LIy5Ym3xibOGQ2yxagxAFuTA0XgM7rurn9ZhYHNHtgHaE9Rbl9nU/yktI4KV
         K/o2CXCRz9GC5/pTx5t2HRZWMbJojmQ42cJgKHLcQikjnCS/2Y6Ti4KP7wnHfOC6yMwj
         KwitqNBlSXp0td2Nk4vOLpBLkF22V8Sm06HLq8LYgU/+eI9/mtwDgFElp77nGk8TdANY
         xHgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721714101; x=1722318901;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SqHhLAOAnlqfnWBiaNYUODFyMy3gLduUujDJ7jTrTTU=;
        b=rYv2xAdoRwcsWw6zPVv35dL32bUjeNtLXSq/TxkA75gzgpkXgSA35z94DJbsqHeODE
         8VjL+dXdjL5AFNti3PE1RB1EI1DWXbhUvJQe3RX2fnISbTTG9H/gq8KQrhfQKbRU2cEd
         A29PKBqxTDqMMlqT+/JDT2xExsZTaRj4PYYoWJrS9JODzNHSCYiWm2N0G3Egpribvz1/
         hAONFEnW0vbzU/VZGbDjsxRF/nwlkrB5aCveL4jbw6EOhMdYEDZKJedL5nltqtbXiVSN
         Z7KmaEh3mQbY5IqzDWWWRB8rJWm3HPC/4xdw9CLUxvTdtciFLerWBivZRdKmDISc72di
         TtsQ==
X-Gm-Message-State: AOJu0YxmwAdRM815C1XuU/zOgDEqvP7FFkvJ7eHcbQRZjm+HTFxz17dY
	CW/74VFZJ7BCDAtTsnb4NvzpBJmfuzeHSP7A/+OD73kQ3ObAwom5KMdngKOkCjsfKJxjsFL3rCS
	2JrTcYcx7lqaalWp1AZqQZdAY/Bbz3V/7
X-Google-Smtp-Source: AGHT+IEV/ZBqt2uUcnNYJrX5kXMezjvdXKtdDgXRCrBI/RUifLcPbbYJNkTwTJQzJ0byICDvjRQCuUN0hnximIixrk4=
X-Received: by 2002:a17:90a:17ec:b0:2c9:a3d4:f044 with SMTP id
 98e67ed59e1d1-2cd85c8731bmr1451987a91.11.1721714101011; Mon, 22 Jul 2024
 22:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAK+BxzT_5ipwp+F6QuQctr-M+XfXy3yuN+ZkJP+Rbq+sDEonTA@mail.gmail.com>
In-Reply-To: <CAK+BxzT_5ipwp+F6QuQctr-M+XfXy3yuN+ZkJP+Rbq+sDEonTA@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 23 Jul 2024 07:54:49 +0200
Message-ID: <CAGAf8LyXr5mJaaGdcmXnqQAxkz28AtU51X5RZyE+Qe0vddu6+Q@mail.gmail.com>
Subject: Re: [yocto] problems while creating a initrd image with wic image size.
To: yocto@lists.yoctoproject.org, u.apeiron@gmail.com
Content-Type: multipart/mixed; boundary="0000000000006564e2061de3cdf8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jul 2024 08:37:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63557

--0000000000006564e2061de3cdf8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Ulises,

I did try to stuff your initramfs changes/addendums in my local.conf .

Just out of curiosity. ;-)

It does work seamlessly. The build finished without any problems.

Please, find attached my local.conf with your addendums.

It could help you... I believe.

Zee
_______

On Mon, Jul 22, 2024 at 7:47=E2=80=AFPM Ulises Vega via lists.yoctoproject.=
org
<u.apeiron=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello everyone,
>
> I'm trying to run Automotive Grade Linux (AGL) on beagleboneai-64.
>
> AGL uses a yocto based build. I'm trying to generate an initrd image for =
the beagleboneai-64.
>
> I'm using yocto scarthgap. I added the following features to conf/local.c=
onf but got some errors while creating the wic image.
>
> INITRAMFS_IMAGE =3D "core-image-tiny-initramfs"
> INITRAMFS_IMAGE_BUNDLE =3D "1"
> INITRAMFS_IMAGE_NAME ?=3D "${INITRAMFS_IMAGE}-${MACHINE}"
> INITRAMFS_KERNEL_IMAGE=3D"${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin"
> VIRTUAL-RUNTIME_dev_manager =3D "busybox-mdev"
> IMAGE_BOOT_FILES:append =3D " ${INITRAMFS_KERNEL_IMAGE};${KERNEL_IMAGETYP=
E}"
>
> IMAGE_ROOTFS_MAXSIZE ?=3D "4294967296"
> ROOTFS_PARTITION_SIZE ?=3D "4294967296"
>
> SDCARD_ROOTFS ?=3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext4"
>
> IMAGE_FSTYPES:append =3D " ext4 cpio.gz"
>
> These are the errors I got.
>
> DEBUG: Executing python function extend_recipe_sysroot
> NOTE: Direct dependencies are ['/media/ulisesv/linux_workspace/AGL/ricefi=
sh/external/poky/meta/recipes-core/glibc/cross-localedef-native_2.39.bb:do_=
populate_sysroot', '/media/ulisesv/linux_workspace/AGL/ricefish/external/po=
ky/meta/recipes-core/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot', =
'/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-dev=
tools/binutils/binutils-cross_2.42.bb:do_populate_sysroot', '/media/ulisesv=
/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/cdrtools/=
cdrtools-native_3.01.bb:do_populate_sysroot', '/media/ulisesv/linux_workspa=
ce/AGL/ricefish/external/poky/meta/recipes-devtools/qemu/qemuwrapper-cross_=
1.0.bb:do_populate_sysroot', '/media/ulisesv/linux_workspace/AGL/ricefish/e=
xternal/poky/meta/recipes-kernel/kmod/depmodwrapper-cross_1.0.bb:do_populat=
e_sysroot', 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/ext=
ernal/meta-selinux/recipes-security/selinux/policycoreutils_3.6.bb:do_popul=
ate_sysroot', 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/e=
xternal/poky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate_s=
ysroot', 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/extern=
al/poky/meta/recipes-devtools/btrfs-tools/btrfs-tools_6.7.1.bb:do_populate_=
sysroot', 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/exter=
nal/poky/meta/recipes-devtools/createrepo-c/createrepo-c_1.0.4.bb:do_popula=
te_sysroot', 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/ex=
ternal/poky/meta/recipes-devtools/dnf/dnf_4.19.0.bb:do_populate_sysroot', '=
virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/me=
ta/recipes-devtools/dosfstools/dosfstools_4.2.bb:do_populate_sysroot', 'vir=
tual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/=
recipes-devtools/e2fsprogs/e2fsprogs_1.47.0.bb:do_populate_sysroot', 'virtu=
al:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/re=
cipes-devtools/erofs-utils/erofs-utils_1.7.1.bb:do_populate_sysroot', 'virt=
ual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/r=
ecipes-devtools/fdisk/gptfdisk_1.0.9.bb:do_populate_sysroot', 'virtual:nati=
ve:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-d=
evtools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot', 'virtual:native:/m=
edia/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtoo=
ls/mtools/mtools_4.0.43.bb:do_populate_sysroot', 'virtual:native:/media/uli=
sesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/opkg-=
utils/opkg-utils_0.6.3.bb:do_populate_sysroot', 'virtual:native:/media/ulis=
esv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/pseudo=
/pseudo_git.bb:do_populate_sysroot', 'virtual:native:/media/ulisesv/linux_w=
orkspace/AGL/ricefish/external/poky/meta/recipes-devtools/rpm/rpm_4.19.1.1.=
bb:do_populate_sysroot', 'virtual:native:/media/ulisesv/linux_workspace/AGL=
/ricefish/external/poky/meta/recipes-devtools/squashfs-tools/squashfs-tools=
_git.bb:do_populate_sysroot', 'virtual:native:/media/ulisesv/linux_workspac=
e/AGL/ricefish/external/poky/meta/recipes-devtools/syslinux/syslinux_6.04-p=
re2.bb:do_populate_sysroot', 'virtual:native:/media/ulisesv/linux_workspace=
/AGL/ricefish/external/poky/meta/recipes-extended/parted/parted_3.6.bb:do_p=
opulate_sysroot', 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefi=
sh/external/poky/meta/recipes-extended/pigz/pigz_2.8.bb:do_populate_sysroot=
', 'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/pok=
y/meta/recipes-extended/xz/xz_5.4.6.bb:do_populate_sysroot', 'virtual:nativ=
e:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-su=
pport/bmaptool/bmaptool_git.bb:do_populate_sysroot']
> NOTE: u-boot-ti-staging exists in sysroot, but is stale (u-boot-ti-stagin=
g.fb4c3165ab7b6a4cdff9ac6dd66ec27131b6b0a1458829b9a2435efbb437d016 vs. u-bo=
ot-ti-staging.e12d75717bc48fff394b754723686e43ed4c4136875027162649d00c64730=
48b), removing.
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/boot/u-boot-beaglebone-ai64-2023.04+git-r0.img
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/boot/u-boot-spl.bin
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/boot/tispl.bin-beaglebone-ai64-2023.04+git-r0
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/boot/u-boot.img
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/boot/u-boot-spl.bin-beaglebone-ai64-2023.04+git-r0
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/boot/tispl.bin
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/sysroot-providers/u-boot-ti-staging
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/sysroot-providers/u-boot
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/sysroot-providers/virtual_bootloader
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/sysroot-providers/
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/boot/
> NOTE: linux-bb.org exists in sysroot, but is stale (linux-bb.org.72fd73ea=
1b79abe5b75726e3efd6ea0d79ca9966b16cddfdaafc987fba084c80 vs. linux-bb.org.2=
a69e1fa14e6277a5b20f66736709b5530721756913f3d6246e20f465f8b792e), removing.
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/sysroot-providers/linux-bb.org
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/sysroot-providers/virtual_kernel
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/sysroot-only/fitImage
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/sysroot-providers/
> DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/bea=
glebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.=
0/recipe-sysroot/sysroot-only/
> NOTE: Installed into sysroot: ['u-boot-ti-staging', 'linux-bb.org']
> NOTE: Skipping as already exists in sysroot: ['trusted-firmware-a', 'opte=
e-os', 'ti-dm-fw', 'ti-sci-fw', 'gettext-minimal-native', 'cross-localedef-=
native', 'glibc', 'ldconfig-native', 'systemd-systemctl-native', 'binutils-=
cross-aarch64', 'cdrtools-native', 'cmake-native', 'gcc-runtime', 'libgcc',=
 'libtool-native', 'm4-native', 'opkg-utils', 'qemu-native', 'qemuwrapper-c=
ross', 'texinfo-dummy-native', 'depmodwrapper-cross', 'linux-libc-headers',=
 'nspr-native', 'nss-native', 'libselinux-native', 'libsemanage-native', 'l=
ibsepol-native', 'policycoreutils-native', 'openssl-native', 'coreutils-nat=
ive', 'expat-native', 'gettext-native', 'glib-2.0-native', 'libxml2-native'=
, 'ncurses-native', 'readline-native', 'update-rc.d-native', 'util-linux-li=
buuid-native', 'util-linux-native', 'zlib-native', 'btrfs-tools-native', 'c=
reaterepo-c-native', 'desktop-file-utils-native', 'dnf-native', 'dosfstools=
-native', 'e2fsprogs-native', 'elfutils-native', 'erofs-utils-native', 'gpt=
fdisk-native', 'file-native', 'flex-native', 'gnu-config-native', 'json-c-n=
ative', 'libcomps-native', 'libdnf-native', 'libedit-native', 'libmodulemd-=
native', 'librepo-native', 'lua-native', 'make-native', 'makedevs-native', =
'mtools-native', 'nasm-native', 'opkg-utils-native', 'perl-native', 'pseudo=
-native', 'python3-build-native', 'python3-flit-core-native', 'python3-inip=
arse-native', 'python3-installer-native', 'python3-packaging-native', 'pyth=
on3-pyproject-hooks-native', 'python3-setuptools-native', 'python3-six-nati=
ve', 'python3-wheel-native', 'python3-native', 'rpm-native', 'squashfs-tool=
s-native', 'swig-native', 'syslinux-native', 'bzip2-native', 'cpio-native',=
 'groff-native', 'libarchive-native', 'libidn2-native', 'libnsl2-native', '=
libsolv-native', 'libtirpc-native', 'lzlib-native', 'parted-native', 'pigz-=
native', 'shadow-native', 'unzip-native', 'xz-native', 'zstd-native', 'gdk-=
pixbuf-native', 'gobject-introspection-native', 'libjpeg-turbo-native', 'km=
od-native', 'libpng-native', 'acl-native', 'attr-native', 'bmaptool-native'=
, 'curl-native', 'debianutils-native', 'gdbm-native', 'gmp-native', 'gnutls=
-native', 'libtasn1-native', 'gpgme-native', 'itstool-native', 'libassuan-n=
ative', 'libbsd-native', 'libcap-ng-native', 'libcap-native', 'libcheck-nat=
ive', 'libffi-native', 'libgcrypt-native', 'libgpg-error-native', 'libmd-na=
tive', 'libmicrohttpd-native', 'libpcre2-native', 'libunistring-native', 'l=
ibyaml-native', 'lz4-native', 'lzo-native', 'nettle-native', 'popt-native',=
 'shared-mime-info-native', 'sqlite3-native']
> DEBUG: Python function extend_recipe_sysroot finished
> DEBUG: Executing python function set_image_size
> DEBUG: 2361054.800000 =3D 1816196 * 1.300000
> DEBUG: 2467550.800000 =3D max(2361054.800000, 8192)[2361054.800000] + 106=
496
> DEBUG: 2467551.000000 =3D int(2467550.800000)
> DEBUG: 2467551 =3D aligned(2467551)
> DEBUG: returning 2467551
> DEBUG: Python function set_image_size finished
> DEBUG: Executing shell function do_image_wic
> INFO: Creating image(s)...
>
> ERROR: File system image of partition None is larger (336164 kB) than its=
 allowed size 131072 kB
>
> WARNING: exit code 1 from a shell command.
> ~
>
> Thanks.
>
> Ulises Vega
>
>
>=20
>

--0000000000006564e2061de3cdf8
Content-Type: text/plain; charset="US-ASCII"; name="local.conf"
Content-Disposition: attachment; filename="local.conf"
Content-Transfer-Encoding: base64
Content-ID: <f_lyy03ogp0>
X-Attachment-Id: f_lyy03ogp0

IyBCZWFnbGVCb25lIEJsYWNrCkNPTkZfVkVSU0lPTiA9ICIyIgpQQVRDSFJFU09MVkUgPSAibm9v
cCIKU1NUQVRFX0RJUiA/PSAiJHtUT1BESVJ9L3NzdGF0ZS1jYWNoZSIKRExfRElSID89ICIke1RP
UERJUn0vZG93bmxvYWRzIgpUTVBESVIgPz0gIiR7VE9QRElSfS90bXAiClBBQ0tBR0VfQ0xBU1NF
UyA/PSAicGFja2FnZV9ycG0gcGFja2FnZV9kZWIiCiMjIFNlbGVjdCBzeXN0ZW1kIGFzIGluaXQg
bWFuYWdlcgpJTklUX01BTkFHRVIgPz0gInN5c3RlbWQiCiMjIFBBQ0tBR0VDT05GSUdfYXBwZW5k
X3BuLXN5c3RlbWQgPSAiIG5ldHdvcmtkIgoKIyMgRGVmaW5lIGtlcm5lbCB2ZXJzaW9uCiMjIFBS
RUZFUlJFRF9QUk9WSURFUl92aXJ0dWFsL2tlcm5lbCA/PSAibWV0YS1iYmIiCiMjIFBSRUZFUlJF
RF9WRVJTSU9OX21ldGEtYmJiID89ICI2LjEuJSIKIyMgUFJFRkVSUkVEX1ZFUlNJT05fbWV0YS1i
YmIgPz0gIjYuMTAuJSIKUFJFRkVSUkVEX1BST1ZJREVSX3ZpcnR1YWwva2VybmVsID89ICJsaW51
eC1tYWlubGluZSIKUFJFRkVSUkVEX1ZFUlNJT05fbGludXgtbGliYy1oZWFkZXJzPSI2LjEwLiUi
ClBSRUZFUlJFRF9WRVJTSU9OX2xpbnV4LW1haW5saW5lID89ICI2LjEwLiUiCgojIyBJTklUUkFN
RlNfSU1BR0UKSU5JVFJBTUZTX0lNQUdFID0gImNvcmUtaW1hZ2UtdGlueS1pbml0cmFtZnMiCklO
SVRSQU1GU19JTUFHRV9CVU5ETEUgPSAiMSIKSU5JVFJBTUZTX0lNQUdFX05BTUUgPz0gIiR7SU5J
VFJBTUZTX0lNQUdFfS0ke01BQ0hJTkV9IgpJTklUUkFNRlNfS0VSTkVMX0lNQUdFPSIke0tFUk5F
TF9JTUFHRVRZUEV9LWluaXRyYW1mcy0ke01BQ0hJTkV9LmJpbiIKVklSVFVBTC1SVU5USU1FX2Rl
dl9tYW5hZ2VyID0gImJ1c3lib3gtbWRldiIKSU1BR0VfQk9PVF9GSUxFUzphcHBlbmQgPSAiICR7
SU5JVFJBTUZTX0tFUk5FTF9JTUFHRX07JHtLRVJORUxfSU1BR0VUWVBFfSIKCklNQUdFX1JPT1RG
U19NQVhTSVpFID89ICI0Mjk0OTY3Mjk2IgpST09URlNfUEFSVElUSU9OX1NJWkUgPz0gIjQyOTQ5
NjcyOTYiCgpTRENBUkRfUk9PVEZTID89ICIke0RFUExPWV9ESVJfSU1BR0V9LyR7SU1BR0VfTkFN
RX0ucm9vdGZzLmV4dDQiCgpJTUFHRV9GU1RZUEVTOmFwcGVuZCA9ICIgZXh0NCBjcGlvLmd6Igoj
IyBFTkQgSU5JVFJBTUZTX0lNQUdFCgojIyBtYXNrIGZvciBub24tbWVuZGVyIGJ1aWxkcwpCQk1B
U0sgPSAibWV0YS1iYmIvcmVjaXBlcy1tZW5kZXIiCgojIyBVbm1hc2sgY2FudXRpbHMgaW4gbWV0
YS1vcGVuZW1iZWRkZWQvIChvZSkgc2luY2UgaXQgd2lsbCBiZSB0cmFja2VkIGJ5IG9lIQojIyBC
Qk1BU0sgKz0gIm1ldGEtb3BlbmVtYmVkZGVkL21ldGEtb2UvcmVjaXBlcy1leHRlbmRlZC9zb2Nr
ZXRjYW4vY2FudXRpbHMiCgpFUlJPUl9RQTpyZW1vdmU6cG4tdS1ib290ID0gInBhdGNoLXN0YXR1
cyIKCiMjIG1hc2sgZm9yIG5vbi1saWJ4Y3J5cHQgYnVpbGRzICh0b28gbWFueSBkZXBlbmRlbmNp
ZXMpCiMjIEJCTUFTSyArPSAicG9reS9tZXRhL3JlY2lwZXMtY29yZS9saWJ4Y3J5cHQvIgojIyBM
aXN0cyBwYWNrYWdlcyB0aGF0IHNob3VsZCBub3QgYmUgaW5zdGFsbGVkIGludG8gYW4gaW1hZ2UK
IyMgUEFDS0FHRV9FWENMVURFOnBuLXRhcmdldF9pbWFnZSA9ICJsaWJ4Y3J5cHQiCiMjIElNQUdF
X0lOU1RBTEw6cmVtb3ZlID0gIiBsaWJ4Y3J5cHQiCiMjIFBBQ0tBR0VDT05GSUc6cmVtb3ZlID0g
IiBsaWJ4Y3J5cHQiCgpFWFRSQV9JTUFHRV9GRUFUVVJFUyA9ICJkZWJ1Zy10d2Vha3MiCiMjICJk
aGNwIjogb2Jzb2xldGUsIGZ1bmN0aW9uYWxseSByZXBsYWNlZCBieSAiZGhjcGNkIiBhbmQgImtl
YSIKIyMgQ09SRV9JTUFHRV9FWFRSQV9JTlNUQUxMICs9ICJkaGNwLWxpYnMgZGhjcC1zZXJ2ZXIg
ZGhjcC1zZXJ2ZXItY29uZmlnIGRoY3AtY2xpZW50IGRoY3AtcmVsYXkgZGhjcC1vbXNoZWxsIgpD
T1JFX0lNQUdFX0VYVFJBX0lOU1RBTEw6YXBwZW5kID0gIm9wZW5zc2ggY21ha2UgbGlic29ja2V0
Y2FuIG5mcy11dGlscyBydC10ZXN0cyBzdHJhY2UgcHJvY3BzIHBhY2thZ2Vncm91cC1jb3JlLWJ1
aWxkZXNzZW50aWFsICIKRElTVFJPX0ZFQVRVUkVTOmFwcGVuZCA9ICIgbmZzIHN5c3RlbWQiCklN
QUdFX0ZTVFlQRVM6YXBwZW5kID0gIiBjcGlvLnh6IgojIyBJTkhFUklUICs9ICJleHRyYXVzZXJz
IgojIyBFWFRSQV9VU0VSU19QQVJBTVMgPSAidXNlcm1vZCAtUCByb290IHJvb3Q7IgoKTUFDSElO
RSA/Pz0gImJlYWdsZWJvbmUiCkRJU1RSTyA/Pz0gInBva3kiCkJCTVVMVElDT05GSUcgPz0gIiIK
CiMjIEJCX05VTUJFUl9USFJFQURTID0gIjEiCiMjIFBBUkFMTEVMX01BS0UgPSAiLWogMSIK

--0000000000006564e2061de3cdf8--

