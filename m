Return-Path: <stephen@radxa.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66508C47073
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 06:45:20 +0000 (UTC)
Subject: Re: [yocto] [meta-rockchip] [PATCH] use MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to add kernel-modules
To: Khem Raj <raj.khem@gmail.com>,yocto@lists.yoctoproject.org
From: "Stephen Chen" <stephen@radxa.com>
X-Originating-Location: Guangzhou, Guangdong, CN (120.236.37.126)
X-Originating-Platform: Mac Firefox 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 Jan 2024 22:45:15 -0800
References: <CAMKF1sqdmD+E+QjRkHGjv2_+r++gPZUGpvf3xpy=YD2wd0U9fQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqdmD+E+QjRkHGjv2_+r++gPZUGpvf3xpy=YD2wd0U9fQ@mail.gmail.com>
Message-ID: <19798.1704350715538435548@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YvSw08egjKNuACfszCLc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 06:45:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62087

--YvSw08egjKNuACfszCLc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I revert the patch, and run MACHINE=3Drock-5a bitbake core-image-base.
And many ko are included.

$ tree /tank/stephen/yocto-rockchip-mainline/build/tmp-glibc/work/rock_5a-o=
e-linux/core-image-base/1.0/rootfs/lib/modules
/tank/stephen/yocto-rockchip-mainline/build/tmp-glibc/work/rock_5a-oe-linux=
/core-image-base/1.0/rootfs/lib/modules
=E2=94=94=E2=94=80=E2=94=80 6.6.0-yoctodev-standard-00098-gb053bfb06fa2
=E2=94=9C=E2=94=80=E2=94=80 kernel
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 arch
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 arm=
64
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 crypto
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=
=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 aes-neon-blk.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=
=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 aes-neon-bs.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=
=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 chacha-neon.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=
=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 crct10dif-ce.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=
=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sha3-ce.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=
=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sha512-arm64.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=
=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sha512-ce.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=
=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 sm3-ce.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=
=94=E2=94=80=E2=94=80 lib
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 xor-neon.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 crypto
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 af_=
alg.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 alg=
if_rng.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 aut=
hencesn.ko
......
......
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=
=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 snd-soc-fsl-utils.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=
=94=9C=E2=94=80=E2=94=80 generic
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=
=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 snd-soc-audio-graph-card2.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=
=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 snd-soc-audio-graph-card.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=
=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 snd-soc-simple-card.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=
=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 snd-soc-simple-card-utils.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=
=94=94=E2=94=80=E2=94=80 rockchip
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rk3399-gru-sound.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s-tdm.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-rt5645.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 snd-soc-rockchip-spdif.ko
=E2=94=9C=E2=94=80=E2=94=80 modules.alias
=E2=94=9C=E2=94=80=E2=94=80 modules.alias.bin
=E2=94=9C=E2=94=80=E2=94=80 modules.builtin
=E2=94=9C=E2=94=80=E2=94=80 modules.builtin.alias.bin
=E2=94=9C=E2=94=80=E2=94=80 modules.builtin.bin
=E2=94=9C=E2=94=80=E2=94=80 modules.builtin.modinfo
=E2=94=9C=E2=94=80=E2=94=80 modules.dep
=E2=94=9C=E2=94=80=E2=94=80 modules.dep.bin
=E2=94=9C=E2=94=80=E2=94=80 modules.devname
=E2=94=9C=E2=94=80=E2=94=80 modules.order
=E2=94=9C=E2=94=80=E2=94=80 modules.softdep
=E2=94=9C=E2=94=80=E2=94=80 modules.symbols
=E2=94=94=E2=94=80=E2=94=80 modules.symbols.bin

258 directories, 822 files

On Thu, Jan 4, 2024 at 02:33 PM, Khem Raj wrote:

>=20
> do you see same issue with core-image-base ?
>=20
> On Wed, Jan 3, 2024 at 10:18=E2=80=AFPM Stephen Chen <stephen@radxa.com> =
wrote:
>=20
>>=20
>> I revert the patch, and run command, MACHINE=3Drock-5a bitbake-getvar
>> MACHINE_EXTRA_RRECOMMENDS
>> And I get this:
>>=20
>> ### Shell environment set up for builds. ###
>>=20
>> You can now run 'bitbake <target>'
>>=20
>> Common targets are:
>> core-image-minimal
>> core-image-full-cmdline
>> core-image-sato
>> core-image-weston
>> meta-toolchain
>> meta-ide-support
>>=20
>> You can also run generated qemu images with a command like 'runqemu
>> qemux86-64'.
>>=20
>> Other commonly useful commands are:
>> - 'devtool' and 'recipetool' handle common recipe tasks
>> - 'bitbake-layers' handles common layer tasks
>> - 'oe-pkgdata-util' handles common target package tasks
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> #
>> # $MACHINE_EXTRA_RRECOMMENDS [3 operations]
>> # append
>> /tank/stephen/yocto-rockchip-mainline/meta-rockchip/conf/machine/rock-5a=
.conf:10
>>=20
>> # "kernel-modules"
>> # set
>> /tank/stephen/yocto-rockchip-mainline/openembedded-core/meta/conf/docume=
ntation.conf:283
>>=20
>> # [doc] "A list of machine-specific packages to install as part of the
>> image being built that are not essential for booting the machine. The
>> image being built has no build dependencies on the packages in this list=
."
>>=20
>> # set?
>> /tank/stephen/yocto-rockchip-mainline/openembedded-core/meta/conf/bitbak=
e.conf:897
>>=20
>> # ""
>> # pre-expansion value:
>> # " kernel-modules"
>> MACHINE_EXTRA_RRECOMMENDS=3D" kernel-modules"
>>=20
>> On Thu, Jan 4, 2024 at 12:40 PM, Khem Raj wrote:
>>=20
>> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS should be used when you need a
>> module to be pulled in to enable something always.
>> so I think setting MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to pull in a
>> meta package sounds a bit wrong. I wonder if you have something
>> overriding MACHINE_EXTRA_RRECOMMENDS, please try
>>=20
>> bitbake-getvar MACHINE_EXTRA_RRECOMMENDS
>>=20
>> and check if it contains kernel-modules or not. Also check output of
>> bitbake -e core-image-full-cmdline
>> so see if kernel-modules are being pulled into image or not. bitbake
>> -g core-image-full-cmdline might also help in finding the dependencies
>> being pulled into image and their relations.
>>=20
>> On Wed, Jan 3, 2024 at 8:20=E2=80=AFPM Stephen Chen <stephen@radxa.com> =
wrote:
>>=20
>>=20
>> On Thu, Jan 4, 2024 at 05:27 AM, Trevor Woerner wrote:
>>=20
>> On Tue 2023-12-19 @ 07:23:52 PM, Stephen Chen wrote:
>>=20
>> This will add all built kernel modules to the image.
>>=20
>> Signed-off-by: Stephen Chen <stephen@radxa.com>
>>=20
>> diff --git a/conf/machine/include/rock-pi-4.inc
>> b/conf/machine/include/rock-pi-4.inc
>> index 0a86846..fd9a9eb 100644
>> --- a/conf/machine/include/rock-pi-4.inc
>> +++ b/conf/machine/include/rock-pi-4.inc
>> @@ -3,4 +3,4 @@ MACHINEOVERRIDES =3D. "rock-pi-4:"
>>=20
>> require conf/machine/include/rk3399.inc
>>=20
>> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>> diff --git a/conf/machine/nanopi-m4b.conf b/conf/machine/nanopi-m4b.conf
>> index 35cd8f6..01d5c59 100644
>> --- a/conf/machine/nanopi-m4b.conf
>> +++ b/conf/machine/nanopi-m4b.conf
>> @@ -5,7 +5,7 @@
>>=20
>> I've tried this a couple times and a couple different ways and I can't
>> figure
>> out how what we already have (MACHINE_EXTRA_RRECOMMENDS) is any differen=
t
>> from
>> what you're proposing (MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS).
>>=20
>> Using a very basic, no-distro setup I've built core-image-minimal and
>> core-image-base both with and without your patch and I see absolutely no
>> difference in the list of installed packages
>> (buildhistory/images/rock_5b/glibc/core-image-*/installed-packages.txt).
>>=20
>> All of meta-rockchip's machine/include/* files already include
>> MACHINE_EXTRA_RRECOMMENDS, do you have a scenario where a build is not
>> including all of the built kernel modules in an image?
>>=20
>> require conf/machine/include/rk3399.inc
>>=20
>> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>>=20
>> KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4b.dtb"
>> UBOOT_MACHINE =3D "nanopi-m4b-rk3399_defconfig"
>> diff --git a/conf/machine/nanopi-r2s.conf b/conf/machine/nanopi-r2s.conf
>> index 4472c21..4ed3160 100644
>> --- a/conf/machine/nanopi-r2s.conf
>> +++ b/conf/machine/nanopi-r2s.conf
>> @@ -6,6 +6,6 @@
>> require conf/machine/include/rk3328.inc
>>=20
>> KERNEL_DEVICETREE =3D "rockchip/rk3328-nanopi-r2s.dtb"
>> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>>=20
>> UBOOT_MACHINE =3D "nanopi-r2s-rk3328_defconfig"
>> diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf
>> index 21be440..1a63a96 100644
>> --- a/conf/machine/nanopi-r4s.conf
>> +++ b/conf/machine/nanopi-r4s.conf
>> @@ -5,7 +5,7 @@
>>=20
>> require conf/machine/include/rk3399.inc
>>=20
>> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>>=20
>> KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-r4s.dtb"
>> UBOOT_MACHINE =3D "nanopi-r4s-rk3399_defconfig"
>> diff --git a/conf/machine/rock-5a.conf b/conf/machine/rock-5a.conf
>> index 5ace4da..53b56b1 100644
>> --- a/conf/machine/rock-5a.conf
>> +++ b/conf/machine/rock-5a.conf
>> @@ -7,6 +7,6 @@ require conf/machine/include/rk3588s.inc
>>=20
>> PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"
>> KERNEL_DEVICETREE =3D "rockchip/rk3588s-rock-5a.dtb"
>> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>>=20
>> UBOOT_MACHINE =3D "rock5a-rk3588s_defconfig"
>> diff --git a/conf/machine/rock-5b.conf b/conf/machine/rock-5b.conf
>> index d137108..dc5fabc 100644
>> --- a/conf/machine/rock-5b.conf
>> +++ b/conf/machine/rock-5b.conf
>> @@ -7,6 +7,6 @@ require conf/machine/include/rk3588.inc
>>=20
>> PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"
>> KERNEL_DEVICETREE =3D "rockchip/rk3588-rock-5b.dtb"
>> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>>=20
>> UBOOT_MACHINE =3D "rock5b-rk3588_defconfig"
>> diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
>> index 517956c..3f83675 100644
>> --- a/conf/machine/rock-pi-e.conf
>> +++ b/conf/machine/rock-pi-e.conf
>> @@ -6,6 +6,6 @@
>> require conf/machine/include/rk3328.inc
>>=20
>> KERNEL_DEVICETREE =3D "rockchip/rk3328-rock-pi-e.dtb"
>> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>>=20
>> UBOOT_MACHINE =3D "rock-pi-e-rk3328_defconfig"
>> diff --git a/conf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf
>> index 79ea73c..590e972 100644
>> --- a/conf/machine/rock-pi-s.conf
>> +++ b/conf/machine/rock-pi-s.conf
>> @@ -6,6 +6,6 @@
>> require conf/machine/include/rk3308.inc
>>=20
>> KERNEL_DEVICETREE =3D "rockchip/rk3308-rock-pi-s.dtb"
>> -MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>>=20
>> UBOOT_MACHINE =3D "rock-pi-s-rk3308_defconfig"
>> --
>> 2.25.1
>>=20
>> Hi
>>=20
>> I build ROCK 5A core-image-full-cmdline.
>>=20
>> Without that patch, only these ko are included.
>>=20
>> $ tree
>> build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs=
/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
>>=20
>> build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs=
/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
>>=20
>> =E2=94=9C=E2=94=80=E2=94=80 lib
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 libcrc32c.ko
>> =E2=94=94=E2=94=80=E2=94=80 net
>> =E2=94=9C=E2=94=80=E2=94=80 802
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 stp.ko
>> =E2=94=9C=E2=94=80=E2=94=80 bridge
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 bridge.ko
>> =E2=94=9C=E2=94=80=E2=94=80 ipv4
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 netfilter
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_filter.ko
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_mangle.ko
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_nat.ko
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_raw.ko
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_security.ko
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip_tables.ko
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ipt_REJECT.ko
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 nf_defrag_ipv4.ko
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 nf_reject_ipv4.ko
>> =E2=94=9C=E2=94=80=E2=94=80 ipv6
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ipv6.ko
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 netfilter
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6table_filter.ko
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6table_mangle.ko
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6table_nat.ko
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6_tables.ko
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 nf_defrag_ipv6.ko
>> =E2=94=9C=E2=94=80=E2=94=80 llc
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 llc.ko
>> =E2=94=94=E2=94=80=E2=94=80 netfilter
>> =E2=94=9C=E2=94=80=E2=94=80 nf_conntrack.ko
>> =E2=94=9C=E2=94=80=E2=94=80 nf_conntrack_netlink.ko
>> =E2=94=9C=E2=94=80=E2=94=80 nf_nat.ko
>> =E2=94=9C=E2=94=80=E2=94=80 nfnetlink.ko
>> =E2=94=9C=E2=94=80=E2=94=80 x_tables.ko
>> =E2=94=9C=E2=94=80=E2=94=80 xt_addrtype.ko
>> =E2=94=9C=E2=94=80=E2=94=80 xt_CHECKSUM.ko
>> =E2=94=9C=E2=94=80=E2=94=80 xt_conntrack.ko
>> =E2=94=9C=E2=94=80=E2=94=80 xt_MASQUERADE.ko
>> =E2=94=9C=E2=94=80=E2=94=80 xt_nat.ko
>> =E2=94=9C=E2=94=80=E2=94=80 xt_state.ko
>> =E2=94=94=E2=94=80=E2=94=80 xt_tcpudp.ko
>>=20
>> 10 directories, 31 files
>>=20
>> With this patch, more ko are included.
>>=20
>> $ tree
>> build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs=
/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
>>=20
>> build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs=
/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
>>=20
>> =E2=94=9C=E2=94=80=E2=94=80 arch
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 arm64
>> =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 crypto
>> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 aes-neon-blk.ko
>> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 aes-neon-bs.ko
>> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 chacha-neon.ko
>> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 crct10dif-ce.ko
>> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 sha3-ce.ko
>> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 sha512-arm64.ko
>> =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 sha512-ce.ko
>> =E2=94=82 =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 sm3-ce.ko
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 lib
>> =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 xor-neon.ko
>> =E2=94=9C=E2=94=80=E2=94=80 crypto
>> =E2=94=82 =E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 mc44s803.ko
>> ....
>> .....
>> =E2=94=94=E2=94=80=E2=94=80 rockchip
>> =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rk3399-gru-sound.ko
>> =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s.ko
>> =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s-tdm.ko
>> =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-rt5645.ko
>> =E2=94=94=E2=94=80=E2=94=80 snd-soc-rockchip-spdif.ko
>>=20
>> 256 directories, 809 files
>=20
>

--YvSw08egjKNuACfszCLc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I revert the patch, and run MACHINE=3Drock-5a bitbake core-image-base.<br /=
>And many ko are included.<br /><br />$ tree /tank/stephen/yocto-rockchip-m=
ainline/build/tmp-glibc/work/rock_5a-oe-linux/core-image-base/1.0/rootfs/li=
b/modules<br />/tank/stephen/yocto-rockchip-mainline/build/tmp-glibc/work/r=
ock_5a-oe-linux/core-image-base/1.0/rootfs/lib/modules<br />=E2=94=94=E2=94=
=80=E2=94=80 6.6.0-yoctodev-standard-00098-gb053bfb06fa2<br />&nbsp;&nbsp;&=
nbsp; =E2=94=9C=E2=94=80=E2=94=80 kernel<br />&nbsp;&nbsp;&nbsp; =E2=94=82&=
nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 arch<br />&nbsp;&nbsp;&nbsp; =E2=94=
=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 arm64<br =
/>&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 crypto<br />&nbsp;&nbsp;&nbsp; =
=E2=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=
=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 aes-neon-blk.ko<br />&nbsp;&nbs=
p;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 aes-neon-bs.ko<br />&nb=
sp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 chacha-neon.ko<b=
r />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 crct10dif=
-ce.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 s=
ha3-ce.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=
=80 sha512-arm64.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=
=80=E2=94=80 sha512-ce.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=
=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=94=
=E2=94=80=E2=94=80 sm3-ce.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =
=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 l=
ib<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 xor=
-neon.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=
=E2=94=80 crypto<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82&nb=
sp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 af_alg.ko<br />&nbsp;&nbsp;&nbsp; =E2=
=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 algif_=
rng.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =
=E2=94=9C=E2=94=80=E2=94=80 authencesn.ko<br />......<br />......<br />&nbs=
p;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 snd-soc-fsl-uti=
ls.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 generic<br />&nbsp;&nb=
sp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 snd-soc-audio-graph-=
card2.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=
=80 snd-soc-audio-graph-card.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =
=E2=94=9C=E2=94=80=E2=94=80 snd-soc-simple-card.ko<br />&nbsp;&nbsp;&nbsp; =
=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=
=94=82&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 snd-soc-simple-card-utils.ko=
<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 rockchip<br />&nbsp;&nbsp;&=
nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rk3399-gru-sou=
nd.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=
=80 snd-soc-rockchip-i2s.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=
=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s-tdm.ko<br />&nbsp;&nbsp;&nbsp=
; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-rt5645.ko=
<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 snd=
-soc-rockchip-spdif.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 =
modules.alias<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 modules.a=
lias.bin<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 modules.builti=
n<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 modules.builtin.alias=
.bin<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 modules.builtin.bi=
n<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 modules.builtin.modin=
fo<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 modules.dep<br />&nb=
sp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 modules.dep.bin<br />&nbsp;&nbs=
p;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 modules.devname<br />&nbsp;&nbsp;&nbsp=
; =E2=94=9C=E2=94=80=E2=94=80 modules.order<br />&nbsp;&nbsp;&nbsp; =E2=94=
=9C=E2=94=80=E2=94=80 modules.softdep<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=
=94=80=E2=94=80 modules.symbols<br />&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=
=E2=94=80 modules.symbols.bin<br /><br />258 directories, 822 files<br /><b=
r />On Thu, Jan 4, 2024 at 02:33 PM, Khem Raj wrote:<br />
<blockquote>do you see same issue with core-image-base ?<br /><br />On Wed,=
 Jan 3, 2024 at 10:18=E2=80=AFPM Stephen Chen &lt;stephen@radxa.com&gt; wro=
te:<br />
<blockquote><br />I revert the patch, and run command, MACHINE=3Drock-5a bi=
tbake-getvar MACHINE_EXTRA_RRECOMMENDS<br />And I get this:<br /><br />### =
Shell environment set up for builds. ###<br /><br />You can now run 'bitbak=
e &lt;target&gt;'<br /><br />Common targets are:<br />core-image-minimal<br=
 />core-image-full-cmdline<br />core-image-sato<br />core-image-weston<br /=
>meta-toolchain<br />meta-ide-support<br /><br />You can also run generated=
 qemu images with a command like 'runqemu qemux86-64'.<br /><br />Other com=
monly useful commands are:<br />- 'devtool' and 'recipetool' handle common =
recipe tasks<br />- 'bitbake-layers' handles common layer tasks<br />- 'oe-=
pkgdata-util' handles common target package tasks<br />NOTE: Starting bitba=
ke server...<br />NOTE: Starting bitbake server...<br />NOTE: Starting bitb=
ake server...<br />NOTE: Starting bitbake server...<br />NOTE: Starting bit=
bake server...<br />NOTE: Starting bitbake server...<br />NOTE: Starting bi=
tbake server...<br />NOTE: Starting bitbake server...<br />NOTE: Starting b=
itbake server...<br />NOTE: Starting bitbake server...<br />#<br /># $MACHI=
NE_EXTRA_RRECOMMENDS [3 operations]<br /># append /tank/stephen/yocto-rockc=
hip-mainline/meta-rockchip/conf/machine/rock-5a.conf:10<br /># "kernel-modu=
les"<br /># set /tank/stephen/yocto-rockchip-mainline/openembedded-core/met=
a/conf/documentation.conf:283<br /># [doc] "A list of machine-specific pack=
ages to install as part of the image being built that are not essential for=
 booting the machine. The image being built has no build dependencies on th=
e packages in this list."<br /># set? /tank/stephen/yocto-rockchip-mainline=
/openembedded-core/meta/conf/bitbake.conf:897<br /># ""<br /># pre-expansio=
n value:<br /># " kernel-modules"<br />MACHINE_EXTRA_RRECOMMENDS=3D" kernel=
-modules"<br /><br />On Thu, Jan 4, 2024 at 12:40 PM, Khem Raj wrote:<br />=
<br />MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS should be used when you need a<br=
 />module to be pulled in to enable something always.<br />so I think setti=
ng MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to pull in a<br />meta package sound=
s a bit wrong. I wonder if you have something<br />overriding MACHINE_EXTRA=
_RRECOMMENDS, please try<br /><br />bitbake-getvar MACHINE_EXTRA_RRECOMMEND=
S<br /><br />and check if it contains kernel-modules or not. Also check out=
put of<br />bitbake -e core-image-full-cmdline<br />so see if kernel-module=
s are being pulled into image or not. bitbake<br />-g core-image-full-cmdli=
ne might also help in finding the dependencies<br />being pulled into image=
 and their relations.<br /><br />On Wed, Jan 3, 2024 at 8:20=E2=80=AFPM Ste=
phen Chen &lt;stephen@radxa.com&gt; wrote:<br /><br /><br />On Thu, Jan 4, =
2024 at 05:27 AM, Trevor Woerner wrote:<br /><br />On Tue 2023-12-19 @ 07:2=
3:52 PM, Stephen Chen wrote:<br /><br />This will add all built kernel modu=
les to the image.<br /><br />Signed-off-by: Stephen Chen &lt;stephen@radxa.=
com&gt;<br /><br />diff --git a/conf/machine/include/rock-pi-4.inc b/conf/m=
achine/include/rock-pi-4.inc<br />index 0a86846..fd9a9eb 100644<br />--- a/=
conf/machine/include/rock-pi-4.inc<br />+++ b/conf/machine/include/rock-pi-=
4.inc<br />@@ -3,4 +3,4 @@ MACHINEOVERRIDES =3D. "rock-pi-4:"<br /><br />re=
quire conf/machine/include/rk3399.inc<br /><br />-MACHINE_EXTRA_RRECOMMENDS=
 +=3D "kernel-modules"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kern=
el-modules"<br />diff --git a/conf/machine/nanopi-m4b.conf b/conf/machine/n=
anopi-m4b.conf<br />index 35cd8f6..01d5c59 100644<br />--- a/conf/machine/n=
anopi-m4b.conf<br />+++ b/conf/machine/nanopi-m4b.conf<br />@@ -5,7 +5,7 @@=
<br /><br />I've tried this a couple times and a couple different ways and =
I can't figure<br />out how what we already have (MACHINE_EXTRA_RRECOMMENDS=
) is any different from<br />what you're proposing (MACHINE_ESSENTIAL_EXTRA=
_RRECOMMENDS).<br /><br />Using a very basic, no-distro setup I've built co=
re-image-minimal and<br />core-image-base both with and without your patch =
and I see absolutely no<br />difference in the list of installed packages<b=
r />(buildhistory/images/rock_5b/glibc/core-image-*/installed-packages.txt)=
.<br /><br />All of meta-rockchip's machine/include/* files already include=
<br />MACHINE_EXTRA_RRECOMMENDS, do you have a scenario where a build is no=
t<br />including all of the built kernel modules in an image?<br /><br />re=
quire conf/machine/include/rk3399.inc<br /><br />-MACHINE_EXTRA_RRECOMMENDS=
 +=3D "kernel-modules"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kern=
el-modules"<br /><br />KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4b.dt=
b"<br />UBOOT_MACHINE =3D "nanopi-m4b-rk3399_defconfig"<br />diff --git a/c=
onf/machine/nanopi-r2s.conf b/conf/machine/nanopi-r2s.conf<br />index 4472c=
21..4ed3160 100644<br />--- a/conf/machine/nanopi-r2s.conf<br />+++ b/conf/=
machine/nanopi-r2s.conf<br />@@ -6,6 +6,6 @@<br />require conf/machine/incl=
ude/rk3328.inc<br /><br />KERNEL_DEVICETREE =3D "rockchip/rk3328-nanopi-r2s=
.dtb"<br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />+MACHINE_E=
SSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br /><br />UBOOT_MACHINE =
=3D "nanopi-r2s-rk3328_defconfig"<br />diff --git a/conf/machine/nanopi-r4s=
.conf b/conf/machine/nanopi-r4s.conf<br />index 21be440..1a63a96 100644<br =
/>--- a/conf/machine/nanopi-r4s.conf<br />+++ b/conf/machine/nanopi-r4s.con=
f<br />@@ -5,7 +5,7 @@<br /><br />require conf/machine/include/rk3399.inc<b=
r /><br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />+MACHINE_ES=
SENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br /><br />KERNEL_DEVICETRE=
E =3D "rockchip/rk3399-nanopi-r4s.dtb"<br />UBOOT_MACHINE =3D "nanopi-r4s-r=
k3399_defconfig"<br />diff --git a/conf/machine/rock-5a.conf b/conf/machine=
/rock-5a.conf<br />index 5ace4da..53b56b1 100644<br />--- a/conf/machine/ro=
ck-5a.conf<br />+++ b/conf/machine/rock-5a.conf<br />@@ -7,6 +7,6 @@ requir=
e conf/machine/include/rk3588s.inc<br /><br />PREFERRED_PROVIDER_virtual/ke=
rnel =3D "linux-yocto-dev"<br />KERNEL_DEVICETREE =3D "rockchip/rk3588s-roc=
k-5a.dtb"<br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />+MACHI=
NE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br /><br />UBOOT_MACHI=
NE =3D "rock5a-rk3588s_defconfig"<br />diff --git a/conf/machine/rock-5b.co=
nf b/conf/machine/rock-5b.conf<br />index d137108..dc5fabc 100644<br />--- =
a/conf/machine/rock-5b.conf<br />+++ b/conf/machine/rock-5b.conf<br />@@ -7=
,6 +7,6 @@ require conf/machine/include/rk3588.inc<br /><br />PREFERRED_PRO=
VIDER_virtual/kernel =3D "linux-yocto-dev"<br />KERNEL_DEVICETREE =3D "rock=
chip/rk3588-rock-5b.dtb"<br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modul=
es"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br /><b=
r />UBOOT_MACHINE =3D "rock5b-rk3588_defconfig"<br />diff --git a/conf/mach=
ine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf<br />index 517956c..3f8367=
5 100644<br />--- a/conf/machine/rock-pi-e.conf<br />+++ b/conf/machine/roc=
k-pi-e.conf<br />@@ -6,6 +6,6 @@<br />require conf/machine/include/rk3328.i=
nc<br /><br />KERNEL_DEVICETREE =3D "rockchip/rk3328-rock-pi-e.dtb"<br />-M=
ACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />+MACHINE_ESSENTIAL_EXTR=
A_RRECOMMENDS +=3D "kernel-modules"<br /><br />UBOOT_MACHINE =3D "rock-pi-e=
-rk3328_defconfig"<br />diff --git a/conf/machine/rock-pi-s.conf b/conf/mac=
hine/rock-pi-s.conf<br />index 79ea73c..590e972 100644<br />--- a/conf/mach=
ine/rock-pi-s.conf<br />+++ b/conf/machine/rock-pi-s.conf<br />@@ -6,6 +6,6=
 @@<br />require conf/machine/include/rk3308.inc<br /><br />KERNEL_DEVICETR=
EE =3D "rockchip/rk3308-rock-pi-s.dtb"<br />-MACHINE_EXTRA_RRECOMMENDS +=3D=
 "kernel-modules"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-mo=
dules"<br /><br />UBOOT_MACHINE =3D "rock-pi-s-rk3308_defconfig"<br />--<br=
 />2.25.1<br /><br />Hi<br /><br />I build ROCK 5A core-image-full-cmdline.=
<br /><br />Without that patch, only these ko are included.<br /><br />$ tr=
ee build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs=
/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/<br />build=
/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs/lib/mod=
ules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/<br />=E2=94=9C=E2=
=94=80=E2=94=80 lib<br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 libcrc32c.ko=
<br />=E2=94=94=E2=94=80=E2=94=80 net<br />=E2=94=9C=E2=94=80=E2=94=80 802<=
br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 stp.ko<br />=E2=94=9C=E2=94=80=
=E2=94=80 bridge<br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 bridge.ko<br />=
=E2=94=9C=E2=94=80=E2=94=80 ipv4<br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80=
 netfilter<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_filter.ko<br =
/>=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_mangle.ko<br />=E2=94=82 =
=E2=94=9C=E2=94=80=E2=94=80 iptable_nat.ko<br />=E2=94=82 =E2=94=9C=E2=94=
=80=E2=94=80 iptable_raw.ko<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ipta=
ble_security.ko<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip_tables.ko<br =
/>=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ipt_REJECT.ko<br />=E2=94=82 =E2=94=
=9C=E2=94=80=E2=94=80 nf_defrag_ipv4.ko<br />=E2=94=82 =E2=94=94=E2=94=80=
=E2=94=80 nf_reject_ipv4.ko<br />=E2=94=9C=E2=94=80=E2=94=80 ipv6<br />=E2=
=94=82 =E2=94=9C=E2=94=80=E2=94=80 ipv6.ko<br />=E2=94=82 =E2=94=94=E2=94=
=80=E2=94=80 netfilter<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6table_=
filter.ko<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6table_mangle.ko<br =
/>=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6table_nat.ko<br />=E2=94=82 =E2=
=94=9C=E2=94=80=E2=94=80 ip6_tables.ko<br />=E2=94=82 =E2=94=94=E2=94=80=E2=
=94=80 nf_defrag_ipv6.ko<br />=E2=94=9C=E2=94=80=E2=94=80 llc<br />=E2=94=
=82 =E2=94=94=E2=94=80=E2=94=80 llc.ko<br />=E2=94=94=E2=94=80=E2=94=80 net=
filter<br />=E2=94=9C=E2=94=80=E2=94=80 nf_conntrack.ko<br />=E2=94=9C=E2=
=94=80=E2=94=80 nf_conntrack_netlink.ko<br />=E2=94=9C=E2=94=80=E2=94=80 nf=
_nat.ko<br />=E2=94=9C=E2=94=80=E2=94=80 nfnetlink.ko<br />=E2=94=9C=E2=94=
=80=E2=94=80 x_tables.ko<br />=E2=94=9C=E2=94=80=E2=94=80 xt_addrtype.ko<br=
 />=E2=94=9C=E2=94=80=E2=94=80 xt_CHECKSUM.ko<br />=E2=94=9C=E2=94=80=E2=94=
=80 xt_conntrack.ko<br />=E2=94=9C=E2=94=80=E2=94=80 xt_MASQUERADE.ko<br />=
=E2=94=9C=E2=94=80=E2=94=80 xt_nat.ko<br />=E2=94=9C=E2=94=80=E2=94=80 xt_s=
tate.ko<br />=E2=94=94=E2=94=80=E2=94=80 xt_tcpudp.ko<br /><br />10 directo=
ries, 31 files<br /><br />With this patch, more ko are included.<br /><br /=
>$ tree build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/r=
ootfs/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/<br />=
build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs/li=
b/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/<br />=E2=94=
=9C=E2=94=80=E2=94=80 arch<br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 arm64=
<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 crypto<br />=E2=94=82 =E2=94=82=
 =E2=94=9C=E2=94=80=E2=94=80 aes-neon-blk.ko<br />=E2=94=82 =E2=94=82 =E2=
=94=9C=E2=94=80=E2=94=80 aes-neon-bs.ko<br />=E2=94=82 =E2=94=82 =E2=94=9C=
=E2=94=80=E2=94=80 chacha-neon.ko<br />=E2=94=82 =E2=94=82 =E2=94=9C=E2=94=
=80=E2=94=80 crct10dif-ce.ko<br />=E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=
=94=80 sha3-ce.ko<br />=E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 sha5=
12-arm64.ko<br />=E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 sha512-ce.=
ko<br />=E2=94=82 =E2=94=82 =E2=94=94=E2=94=80=E2=94=80 sm3-ce.ko<br />=E2=
=94=82 =E2=94=94=E2=94=80=E2=94=80 lib<br />=E2=94=82 =E2=94=94=E2=94=80=E2=
=94=80 xor-neon.ko<br />=E2=94=9C=E2=94=80=E2=94=80 crypto<br />=E2=94=82 =
=E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 mc44s803.ko<br />....<br />=
.....<br />=E2=94=94=E2=94=80=E2=94=80 rockchip<br />=E2=94=9C=E2=94=80=E2=
=94=80 snd-soc-rk3399-gru-sound.ko<br />=E2=94=9C=E2=94=80=E2=94=80 snd-soc=
-rockchip-i2s.ko<br />=E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s-tdm.=
ko<br />=E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-rt5645.ko<br />=E2=94=
=94=E2=94=80=E2=94=80 snd-soc-rockchip-spdif.ko<br /><br />256 directories,=
 809 files</blockquote>
</blockquote>

--YvSw08egjKNuACfszCLc--

