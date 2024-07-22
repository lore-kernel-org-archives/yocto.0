Return-Path: <u.apeiron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8510FC3DA59
	for <webhook@archiver.kernel.org>; Mon, 22 Jul 2024 17:47:16 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.24614.1721670434962489672
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jul 2024 10:47:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QE99NTeY;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: u.apeiron@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-654cf0a069eso47166477b3.1
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jul 2024 10:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721670434; x=1722275234; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bd8blUUAblFFS7QlMoLhazbt7LPoLKcJOcv5FCbFQoM=;
        b=QE99NTeYWQ2y4w9uAqSAYFJHz25RsC5GbbWjA/7xOU08c/ZFNjo5CRHyfjkzq1v5CX
         tIwkNK9ly3CeLhWWXp0JbS2w39QevzXBURj9mxA5huDQj1Gc+SuY070WEipKAiZm4RVc
         pZCKMHKyRwHu9NDwT32Qu78xUx+E4UaQVkWZBli110/cn9CA4ga8i/HKThw4Zx0Qn5yX
         y0xcDC6gcyOP8hPHQjavglyk0m71GQKpJox764gkQZtQVOcl0RkLaCZ4IGRhxvCR9HVR
         knbwLs2qERmk2VWgpvPNOn93SMVca1cfjJ31Sh8Wk5eTjro7MhKHhjoN9wYUWEHetgfi
         pn3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721670434; x=1722275234;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bd8blUUAblFFS7QlMoLhazbt7LPoLKcJOcv5FCbFQoM=;
        b=RVSGRvDMWl1kMVe36ikZO8Bj+B9nubKGdpVi0iI++uaaLjOGk3LiH9XP3sD79hdklw
         Hhlk+akZe/7xCOP8h45vdWsBxksybJ3ENV38lXNvITbQaTEt22fuUeTyPfN4cosuq7Ti
         7WUKDzgAtWDgQaDmckVK+JEbyYk7BpzspTshMBIFJhGQXNUcQfffomMixdG3GsZVEEWN
         OeR+KukDVGh+wXSl6e1jrlA03hmOTNtNP7kNqpGMZnaSUiSBW1JBfnBxrvtCgasf254W
         txiPBjfCCnX+QpzcrWFQLb+8qG7lGL8gX6/wxWThtHunRiUKlDxUhU0jfzvsivrkBAYD
         MrkQ==
X-Gm-Message-State: AOJu0Yx8OhIrLVS2e28WPKKw9gGpmutj/dcdTOrHMvbpzyXOGHVDB264
	QHmAQIvMKU/93B+2aSAztLRWNuf6ZZ0artQYVUdFN1quE1PZOAveVV/IdXEv84LwRMS0ymbP/C4
	9Y7+eJbIpaGHu59KWIRF2tsLW3A3MKWH50zc=
X-Google-Smtp-Source: AGHT+IE4eHIKwZx2l5OZsECPafcYKh/CCV4BNqEBfEKL9Udpk/AMipRWReDkXrxpny391zcqOhDly4nFQFf/oKqOPbA=
X-Received: by 2002:a05:690c:f14:b0:648:3c1d:36d6 with SMTP id
 00721157ae682-66ad89d933bmr91579697b3.10.1721670433739; Mon, 22 Jul 2024
 10:47:13 -0700 (PDT)
MIME-Version: 1.0
From: "Ulises V." <u.apeiron@gmail.com>
Date: Mon, 22 Jul 2024 11:47:03 -0600
Message-ID: <CAK+BxzT_5ipwp+F6QuQctr-M+XfXy3yuN+ZkJP+Rbq+sDEonTA@mail.gmail.com>
Subject: problems while creating a initrd image with wic image size.
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009fa910061dd9a29e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jul 2024 17:47:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63549

--0000000000009fa910061dd9a29e
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I'm trying to run Automotive Grade Linux (AGL) on beagleboneai-64.

AGL uses a yocto based build. I'm trying to generate an initrd image for
the beagleboneai-64.

I'm using yocto scarthgap. I added the following features to
conf/local.conf but got some errors while creating the wic image.

INITRAMFS_IMAGE = "core-image-tiny-initramfs"
INITRAMFS_IMAGE_BUNDLE = "1"
INITRAMFS_IMAGE_NAME ?= "${INITRAMFS_IMAGE}-${MACHINE}"
INITRAMFS_KERNEL_IMAGE="${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin"
VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
IMAGE_BOOT_FILES:append = " ${INITRAMFS_KERNEL_IMAGE};${KERNEL_IMAGETYPE}"

IMAGE_ROOTFS_MAXSIZE ?= "4294967296"
ROOTFS_PARTITION_SIZE ?= "4294967296"

SDCARD_ROOTFS ?= "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext4"

IMAGE_FSTYPES:append = " ext4 cpio.gz"

These are the errors I got.

DEBUG: Executing python function extend_recipe_sysroot
NOTE: Direct dependencies are
['/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-core/glibc/cross-localedef-native_2.39.bb:do_populate_sysroot',
'/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-core/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot',
'/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/binutils/binutils-cross_2.42.bb:do_populate_sysroot',
'/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/cdrtools/cdrtools-native_3.01.bb:do_populate_sysroot',
'/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot',
'/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-kernel/kmod/depmodwrapper-cross_1.0.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/meta-selinux/recipes-security/selinux/policycoreutils_3.6.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/btrfs-tools/btrfs-tools_6.7.1.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/createrepo-c/createrepo-c_1.0.4.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/dnf/dnf_4.19.0.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/dosfstools/dosfstools_4.2.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.47.0.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/erofs-utils/erofs-utils_1.7.1.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/fdisk/gptfdisk_1.0.9.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/mtools/mtools_4.0.43.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/opkg-utils/opkg-utils_0.6.3.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/rpm/rpm_4.19.1.1.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/squashfs-tools/squashfs-tools_git.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/syslinux/syslinux_6.04-pre2.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-extended/parted/parted_3.6.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-extended/pigz/pigz_2.8.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-extended/xz/xz_5.4.6.bb:do_populate_sysroot',
'virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-support/bmaptool/bmaptool_git.bb:
do_populate_sysroot']
NOTE: u-boot-ti-staging exists in sysroot, but is stale
(u-boot-ti-staging.fb4c3165ab7b6a4cdff9ac6dd66ec27131b6b0a1458829b9a2435efbb437d016
vs.
u-boot-ti-staging.e12d75717bc48fff394b754723686e43ed4c4136875027162649d00c6473048b),
removing.
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/u-boot-beaglebone-ai64-2023.04+git-r0.img
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/u-boot-spl.bin
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/tispl.bin-beaglebone-ai64-2023.04+git-r0
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/u-boot.img
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/u-boot-spl.bin-beaglebone-ai64-2023.04+git-r0
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/tispl.bin
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-providers/u-boot-ti-staging
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-providers/u-boot
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-providers/virtual_bootloader
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-providers/
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/
NOTE: linux-bb.org exists in sysroot, but is stale
(linux-bb.org.72fd73ea1b79abe5b75726e3efd6ea0d79ca9966b16cddfdaafc987fba084c80
vs.
linux-bb.org.2a69e1fa14e6277a5b20f66736709b5530721756913f3d6246e20f465f8b792e),
removing.
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-providers/
linux-bb.org
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-providers/virtual_kernel
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-only/fitImage
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-providers/
DEBUG: Removing manifest:
/media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-only/
NOTE: Installed into sysroot: ['u-boot-ti-staging', 'linux-bb.org']
NOTE: Skipping as already exists in sysroot: ['trusted-firmware-a',
'optee-os', 'ti-dm-fw', 'ti-sci-fw', 'gettext-minimal-native',
'cross-localedef-native', 'glibc', 'ldconfig-native',
'systemd-systemctl-native', 'binutils-cross-aarch64', 'cdrtools-native',
'cmake-native', 'gcc-runtime', 'libgcc', 'libtool-native', 'm4-native',
'opkg-utils', 'qemu-native', 'qemuwrapper-cross', 'texinfo-dummy-native',
'depmodwrapper-cross', 'linux-libc-headers', 'nspr-native', 'nss-native',
'libselinux-native', 'libsemanage-native', 'libsepol-native',
'policycoreutils-native', 'openssl-native', 'coreutils-native',
'expat-native', 'gettext-native', 'glib-2.0-native', 'libxml2-native',
'ncurses-native', 'readline-native', 'update-rc.d-native',
'util-linux-libuuid-native', 'util-linux-native', 'zlib-native',
'btrfs-tools-native', 'createrepo-c-native', 'desktop-file-utils-native',
'dnf-native', 'dosfstools-native', 'e2fsprogs-native', 'elfutils-native',
'erofs-utils-native', 'gptfdisk-native', 'file-native', 'flex-native',
'gnu-config-native', 'json-c-native', 'libcomps-native', 'libdnf-native',
'libedit-native', 'libmodulemd-native', 'librepo-native', 'lua-native',
'make-native', 'makedevs-native', 'mtools-native', 'nasm-native',
'opkg-utils-native', 'perl-native', 'pseudo-native',
'python3-build-native', 'python3-flit-core-native',
'python3-iniparse-native', 'python3-installer-native',
'python3-packaging-native', 'python3-pyproject-hooks-native',
'python3-setuptools-native', 'python3-six-native', 'python3-wheel-native',
'python3-native', 'rpm-native', 'squashfs-tools-native', 'swig-native',
'syslinux-native', 'bzip2-native', 'cpio-native', 'groff-native',
'libarchive-native', 'libidn2-native', 'libnsl2-native', 'libsolv-native',
'libtirpc-native', 'lzlib-native', 'parted-native', 'pigz-native',
'shadow-native', 'unzip-native', 'xz-native', 'zstd-native',
'gdk-pixbuf-native', 'gobject-introspection-native',
'libjpeg-turbo-native', 'kmod-native', 'libpng-native', 'acl-native',
'attr-native', 'bmaptool-native', 'curl-native', 'debianutils-native',
'gdbm-native', 'gmp-native', 'gnutls-native', 'libtasn1-native',
'gpgme-native', 'itstool-native', 'libassuan-native', 'libbsd-native',
'libcap-ng-native', 'libcap-native', 'libcheck-native', 'libffi-native',
'libgcrypt-native', 'libgpg-error-native', 'libmd-native',
'libmicrohttpd-native', 'libpcre2-native', 'libunistring-native',
'libyaml-native', 'lz4-native', 'lzo-native', 'nettle-native',
'popt-native', 'shared-mime-info-native', 'sqlite3-native']
DEBUG: Python function extend_recipe_sysroot finished
DEBUG: Executing python function set_image_size
DEBUG: 2361054.800000 = 1816196 * 1.300000
DEBUG: 2467550.800000 = max(2361054.800000, 8192)[2361054.800000] + 106496
DEBUG: 2467551.000000 = int(2467550.800000)
DEBUG: 2467551 = aligned(2467551)
DEBUG: returning 2467551
DEBUG: Python function set_image_size finished
DEBUG: Executing shell function do_image_wic
INFO: Creating image(s)...

ERROR: File system image of partition None is larger (336164 kB) than its
allowed size 131072 kB

WARNING: exit code 1 from a shell command.
~

Thanks.

Ulises Vega

--0000000000009fa910061dd9a29e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br></div><div>I&#39;m tryi=
ng to run Automotive Grade Linux (AGL) on beagleboneai-64.</div><div><br></=
div><div>AGL uses a yocto based build. I&#39;m trying to generate an initrd=
 image for the beagleboneai-64.</div><div><br></div><div>I&#39;m using yoct=
o scarthgap. I added the following features to conf/local.conf but got some=
 errors while creating the wic image.</div><div><br></div><div><span class=
=3D"gmail-im">INITRAMFS_IMAGE =3D &quot;core-image-tiny-initramfs&quot;<br>=
INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;<br>INITRAMFS_IMAGE_NAME ?=3D &quot=
;${INITRAMFS_IMAGE}-${MACHINE}&quot;<br>INITRAMFS_KERNEL_IMAGE=3D&quot;${KE=
RNEL_IMAGETYPE}-initramfs-${MACHINE}.bin&quot;<br>VIRTUAL-RUNTIME_dev_manag=
er =3D &quot;busybox-mdev&quot;<br>IMAGE_BOOT_FILES:append =3D &quot; ${INI=
TRAMFS_KERNEL_IMAGE};${KERNEL_IMAGETYPE}&quot;<br><br>IMAGE_ROOTFS_MAXSIZE =
?=3D &quot;4294967296&quot;<br>ROOTFS_PARTITION_SIZE ?=3D &quot;4294967296&=
quot;<br><br>SDCARD_ROOTFS ?=3D &quot;${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.roo=
tfs.ext4&quot;</span></div><div><span class=3D"gmail-im"><br></span></div><=
div>IMAGE_FSTYPES:append =3D &quot; ext4 cpio.gz&quot;</div><div><br></div>=
<div>These are the errors I got.</div><div><br></div><div><div><div class=
=3D"gmail-im"><div>DEBUG: Executing python function extend_recipe_sysroot<b=
r>NOTE: Direct dependencies are [&#39;/media/ulisesv/linux_workspace/AGL/ri=
cefish/external/poky/meta/recipes-core/glibc/cross-localedef-native_2.39.bb=
:do_populate_sysroot&#39;, &#39;/media/ulisesv/linux_workspace/AGL/ricefish=
/external/poky/meta/recipes-core/glibc/ldconfig-native_2.12.1.bb:do_populat=
e_sysroot&#39;, &#39;/media/ulisesv/linux_workspace/AGL/ricefish/external/p=
oky/meta/recipes-devtools/binutils/binutils-cross_2.42.bb:do_populate_sysro=
ot&#39;, &#39;/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/met=
a/recipes-devtools/cdrtools/cdrtools-native_3.01.bb:do_populate_sysroot&#39=
;, &#39;/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/reci=
pes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot&#39;, &#39;/=
media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-kerne=
l/kmod/depmodwrapper-cross_1.0.bb:do_populate_sysroot&#39;, &#39;virtual:na=
tive:/media/ulisesv/linux_workspace/AGL/ricefish/external/meta-selinux/reci=
pes-security/selinux/policycoreutils_3.6.bb:do_populate_sysroot&#39;, &#39;=
virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/me=
ta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate_sysroot&#39;, &#=
39;virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/external/poky=
/meta/recipes-devtools/btrfs-tools/btrfs-tools_6.7.1.bb:do_populate_sysroot=
&#39;, &#39;virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish/exte=
rnal/poky/meta/recipes-devtools/createrepo-c/createrepo-c_1.0.4.bb:do_popul=
ate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux_workspace/AGL/ri=
cefish/external/poky/meta/recipes-devtools/dnf/dnf_4.19.0.bb:do_populate_sy=
sroot&#39;, &#39;virtual:native:/media/ulisesv/linux_workspace/AGL/ricefish=
/external/poky/meta/recipes-devtools/dosfstools/dosfstools_4.2.bb:do_popula=
te_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux_workspace/AGL/ric=
efish/external/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.47.0.bb:do_=
populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux_workspace/A=
GL/ricefish/external/poky/meta/recipes-devtools/erofs-utils/erofs-utils_1.7=
.1.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux_wo=
rkspace/AGL/ricefish/external/poky/meta/recipes-devtools/fdisk/gptfdisk_1.0=
.9.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux_wo=
rkspace/AGL/ricefish/external/poky/meta/recipes-devtools/makedevs/makedevs_=
1.0.1.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux=
_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/mtools/mtools_4=
.0.43.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux=
_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/opkg-utils/opkg=
-utils_0.6.3.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulises=
v/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/pseudo/p=
seudo_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/l=
inux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/rpm/rpm_4.1=
9.1.1.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linux=
_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/squashfs-tools/=
squashfs-tools_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/=
ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-devtools/sy=
slinux/syslinux_6.04-pre2.bb:do_populate_sysroot&#39;, &#39;virtual:native:=
/media/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-exte=
nded/parted/parted_3.6.bb:do_populate_sysroot&#39;, &#39;virtual:native:/me=
dia/ulisesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-extende=
d/pigz/pigz_2.8.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/uli=
sesv/linux_workspace/AGL/ricefish/external/poky/meta/recipes-extended/xz/xz=
_5.4.6.bb:do_populate_sysroot&#39;, &#39;virtual:native:/media/ulisesv/linu=
x_workspace/AGL/ricefish/external/poky/meta/recipes-support/bmaptool/bmapto=
ol_git.bb:do_populate_sysroot&#39;]<br>NOTE: u-boot-ti-staging exists in sy=
sroot, but is stale (u-boot-ti-staging.fb4c3165ab7b6a4cdff9ac6dd66ec27131b6=
b0a1458829b9a2435efbb437d016 vs. u-boot-ti-staging.e12d75717bc48fff394b7547=
23686e43ed4c4136875027162649d00c6473048b), removing.<br>DEBUG: Removing man=
ifest: /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work=
/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot=
/u-boot-beaglebone-ai64-2023.04+git-r0.img<br>DEBUG: Removing manifest: /me=
dia/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebon=
e_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/u-boot-sp=
l.bin<br>DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricef=
ish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-cros=
ssdk/1.0/recipe-sysroot/boot/tispl.bin-beaglebone-ai64-2023.04+git-r0<br>DE=
BUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/beagleb=
one-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/re=
cipe-sysroot/boot/u-boot.img<br>DEBUG: Removing manifest: /media/ulisesv/li=
nux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-lin=
ux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/u-boot-spl.bin-beaglebo=
ne-ai64-2023.04+git-r0<br>DEBUG: Removing manifest: /media/ulisesv/linux_wo=
rkspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl=
-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/boot/tispl.bin<br>DEBUG: Removing =
manifest: /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/w=
ork/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/s=
ysroot-providers/u-boot-ti-staging<br>DEBUG: Removing manifest: /media/ulis=
esv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-a=
gl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-providers/u-bo=
ot<br>DEBUG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish=
/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssd=
k/1.0/recipe-sysroot/sysroot-providers/virtual_bootloader<br>DEBUG: Removin=
g manifest: /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp=
/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot=
/sysroot-providers/<br>DEBUG: Removing manifest: /media/ulisesv/linux_works=
pace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-iv=
i-demo-qt-crosssdk/1.0/recipe-sysroot/boot/<br>NOTE: <a href=3D"http://linu=
x-bb.org" target=3D"_blank">linux-bb.org</a> exists in sysroot, but is stal=
e (linux-bb.org.72fd73ea1b79abe5b75726e3efd6ea0d79ca9966b16cddfdaafc987fba0=
84c80 vs. linux-bb.org.2a69e1fa14e6277a5b20f66736709b5530721756913f3d6246e2=
0f465f8b792e), removing.<br>DEBUG: Removing manifest: /media/ulisesv/linux_=
workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-linux/a=
gl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-providers/<a href=3D"htt=
p://linux-bb.org" target=3D"_blank">linux-bb.org</a><br>DEBUG: Removing man=
ifest: /media/ulisesv/linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work=
/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysr=
oot-providers/virtual_kernel<br>DEBUG: Removing manifest: /media/ulisesv/li=
nux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-lin=
ux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-only/fitImage<br>DEB=
UG: Removing manifest: /media/ulisesv/linux_workspace/AGL/ricefish/beaglebo=
ne-ai64/tmp/work/beaglebone_ai64-agl-linux/agl-ivi-demo-qt-crosssdk/1.0/rec=
ipe-sysroot/sysroot-providers/<br>DEBUG: Removing manifest: /media/ulisesv/=
linux_workspace/AGL/ricefish/beaglebone-ai64/tmp/work/beaglebone_ai64-agl-l=
inux/agl-ivi-demo-qt-crosssdk/1.0/recipe-sysroot/sysroot-only/<br>NOTE: Ins=
talled into sysroot: [&#39;u-boot-ti-staging&#39;, &#39;<a href=3D"http://l=
inux-bb.org" target=3D"_blank">linux-bb.org</a>&#39;]<br>NOTE:
 Skipping as already exists in sysroot: [&#39;trusted-firmware-a&#39;,=20
&#39;optee-os&#39;, &#39;ti-dm-fw&#39;, &#39;ti-sci-fw&#39;, &#39;gettext-m=
inimal-native&#39;,=20
&#39;cross-localedef-native&#39;, &#39;glibc&#39;, &#39;ldconfig-native&#39=
;,=20
&#39;systemd-systemctl-native&#39;, &#39;binutils-cross-aarch64&#39;, &#39;=
cdrtools-native&#39;,
 &#39;cmake-native&#39;, &#39;gcc-runtime&#39;, &#39;libgcc&#39;, &#39;libt=
ool-native&#39;, &#39;m4-native&#39;,
 &#39;opkg-utils&#39;, &#39;qemu-native&#39;, &#39;qemuwrapper-cross&#39;,=
=20
&#39;texinfo-dummy-native&#39;, &#39;depmodwrapper-cross&#39;, &#39;linux-l=
ibc-headers&#39;,=20
&#39;nspr-native&#39;, &#39;nss-native&#39;, &#39;libselinux-native&#39;, &=
#39;libsemanage-native&#39;,=20
&#39;libsepol-native&#39;, &#39;policycoreutils-native&#39;, &#39;openssl-n=
ative&#39;,=20
&#39;coreutils-native&#39;, &#39;expat-native&#39;, &#39;gettext-native&#39=
;, &#39;glib-2.0-native&#39;,
 &#39;libxml2-native&#39;, &#39;ncurses-native&#39;, &#39;readline-native&#=
39;,=20
&#39;update-rc.d-native&#39;, &#39;util-linux-libuuid-native&#39;, &#39;uti=
l-linux-native&#39;,=20
&#39;zlib-native&#39;, &#39;btrfs-tools-native&#39;, &#39;createrepo-c-nati=
ve&#39;,=20
&#39;desktop-file-utils-native&#39;, &#39;dnf-native&#39;, &#39;dosfstools-=
native&#39;,=20
&#39;e2fsprogs-native&#39;, &#39;elfutils-native&#39;, &#39;erofs-utils-nat=
ive&#39;,=20
&#39;gptfdisk-native&#39;, &#39;file-native&#39;, &#39;flex-native&#39;, &#=
39;gnu-config-native&#39;,=20
&#39;json-c-native&#39;, &#39;libcomps-native&#39;, &#39;libdnf-native&#39;=
, &#39;libedit-native&#39;,=20
&#39;libmodulemd-native&#39;, &#39;librepo-native&#39;, &#39;lua-native&#39=
;, &#39;make-native&#39;,=20
&#39;makedevs-native&#39;, &#39;mtools-native&#39;, &#39;nasm-native&#39;, =
&#39;opkg-utils-native&#39;,=20
&#39;perl-native&#39;, &#39;pseudo-native&#39;, &#39;python3-build-native&#=
39;,=20
&#39;python3-flit-core-native&#39;, &#39;python3-iniparse-native&#39;,=20
&#39;python3-installer-native&#39;, &#39;python3-packaging-native&#39;,=20
&#39;python3-pyproject-hooks-native&#39;, &#39;python3-setuptools-native&#3=
9;,=20
&#39;python3-six-native&#39;, &#39;python3-wheel-native&#39;, &#39;python3-=
native&#39;,=20
&#39;rpm-native&#39;, &#39;squashfs-tools-native&#39;, &#39;swig-native&#39=
;, &#39;syslinux-native&#39;,
 &#39;bzip2-native&#39;, &#39;cpio-native&#39;, &#39;groff-native&#39;, &#3=
9;libarchive-native&#39;,=20
&#39;libidn2-native&#39;, &#39;libnsl2-native&#39;, &#39;libsolv-native&#39=
;, &#39;libtirpc-native&#39;,
 &#39;lzlib-native&#39;, &#39;parted-native&#39;, &#39;pigz-native&#39;, &#=
39;shadow-native&#39;,=20
&#39;unzip-native&#39;, &#39;xz-native&#39;, &#39;zstd-native&#39;, &#39;gd=
k-pixbuf-native&#39;,=20
&#39;gobject-introspection-native&#39;, &#39;libjpeg-turbo-native&#39;,=20
&#39;kmod-native&#39;, &#39;libpng-native&#39;, &#39;acl-native&#39;, &#39;=
attr-native&#39;,=20
&#39;bmaptool-native&#39;, &#39;curl-native&#39;, &#39;debianutils-native&#=
39;, &#39;gdbm-native&#39;,=20
&#39;gmp-native&#39;, &#39;gnutls-native&#39;, &#39;libtasn1-native&#39;, &=
#39;gpgme-native&#39;,=20
&#39;itstool-native&#39;, &#39;libassuan-native&#39;, &#39;libbsd-native&#3=
9;,=20
&#39;libcap-ng-native&#39;, &#39;libcap-native&#39;, &#39;libcheck-native&#=
39;, &#39;libffi-native&#39;,
 &#39;libgcrypt-native&#39;, &#39;libgpg-error-native&#39;, &#39;libmd-nati=
ve&#39;,=20
&#39;libmicrohttpd-native&#39;, &#39;libpcre2-native&#39;, &#39;libunistrin=
g-native&#39;,=20
&#39;libyaml-native&#39;, &#39;lz4-native&#39;, &#39;lzo-native&#39;, &#39;=
nettle-native&#39;,=20
&#39;popt-native&#39;, &#39;shared-mime-info-native&#39;, &#39;sqlite3-nati=
ve&#39;]<br>DEBUG: Python function extend_recipe_sysroot finished<br>DEBUG:=
 Executing python function set_image_size<br>DEBUG: 2361054.800000 =3D 1816=
196 * 1.300000<br>DEBUG: 2467550.800000 =3D max(2361054.800000, 8192)[23610=
54.800000] + 106496<br>DEBUG: 2467551.000000 =3D int(2467550.800000)<br>DEB=
UG: 2467551 =3D aligned(2467551)<br>DEBUG: returning 2467551<br>DEBUG: Pyth=
on function set_image_size finished<br>DEBUG: Executing shell function do_i=
mage_wic<br>INFO: Creating image(s)...<br><br>ERROR: File system image of p=
artition None is larger (336164 kB) than its allowed size 131072 kB<br><br>=
WARNING: exit code 1 from a shell command.<br>~ =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 <br></div><div><br></div></div></div><div>Thanks.</div><div><br></di=
v><div>Ulises Vega</div></div><div><span class=3D"gmail-im"><br></span></di=
v></div>

--0000000000009fa910061dd9a29e--

