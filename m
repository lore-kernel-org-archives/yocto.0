Return-Path: <stephen@radxa.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD97CC4706F
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 04:20:39 +0000 (UTC)
Subject: Re: [yocto] [meta-rockchip] [PATCH] use MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to add kernel-modules
To: Trevor Woerner <twoerner@gmail.com>,yocto@lists.yoctoproject.org
From: "Stephen Chen" <stephen@radxa.com>
X-Originating-Location: Guangzhou, Guangdong, CN (120.236.37.126)
X-Originating-Platform: Mac Firefox 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 Jan 2024 20:20:38 -0800
References: <20240103212715.GA8955@localhost>
In-Reply-To: <20240103212715.GA8955@localhost>
Message-ID: <19798.1704342038790268828@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1hwAfhVwyOfAWYqkBKYh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 04:20:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62082

--1hwAfhVwyOfAWYqkBKYh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 4, 2024 at 05:27 AM, Trevor Woerner wrote:

>=20
> On Tue 2023-12-19 @ 07:23:52 PM, Stephen Chen wrote:
>=20
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
>=20
> I've tried this a couple times and a couple different ways and I can't
> figure
> out how what we already have (MACHINE_EXTRA_RRECOMMENDS) is any different
> from
> what you're proposing (MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS).
>=20
> Using a very basic, no-distro setup I've built core-image-minimal and
> core-image-base both with and without your patch and I see absolutely no
> difference in the list of installed packages
> (buildhistory/images/rock_5b/glibc/core-image-*/installed-packages.txt).
>=20
> All of meta-rockchip's machine/include/* files already include
> MACHINE_EXTRA_RRECOMMENDS, do you have a scenario where a build is not
> including all of the built kernel modules in an image?
>=20
>=20
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
>=20
>=20

Hi

I build ROCK 5A core-image-full-cmdline.

Without that patch, only these ko are included.

$ tree build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/ro=
otfs/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs/li=
b/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
=E2=94=9C=E2=94=80=E2=94=80 lib
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 libcrc32c.ko
=E2=94=94=E2=94=80=E2=94=80 net
=E2=94=9C=E2=94=80=E2=94=80 802
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 stp.ko
=E2=94=9C=E2=94=80=E2=94=80 bridge
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 bridge.ko
=E2=94=9C=E2=94=80=E2=94=80 ipv4
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 netfilter
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
ptable_filter.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
ptable_mangle.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
ptable_nat.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
ptable_raw.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
ptable_security.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
p_tables.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
pt_REJECT.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 n=
f_defrag_ipv4.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 n=
f_reject_ipv4.ko
=E2=94=9C=E2=94=80=E2=94=80 ipv6
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 ipv6.ko
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 netfilter
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
p6table_filter.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
p6table_mangle.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
p6table_nat.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i=
p6_tables.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 n=
f_defrag_ipv6.ko
=E2=94=9C=E2=94=80=E2=94=80 llc
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 llc.ko
=E2=94=94=E2=94=80=E2=94=80 netfilter
=E2=94=9C=E2=94=80=E2=94=80 nf_conntrack.ko
=E2=94=9C=E2=94=80=E2=94=80 nf_conntrack_netlink.ko
=E2=94=9C=E2=94=80=E2=94=80 nf_nat.ko
=E2=94=9C=E2=94=80=E2=94=80 nfnetlink.ko
=E2=94=9C=E2=94=80=E2=94=80 x_tables.ko
=E2=94=9C=E2=94=80=E2=94=80 xt_addrtype.ko
=E2=94=9C=E2=94=80=E2=94=80 xt_CHECKSUM.ko
=E2=94=9C=E2=94=80=E2=94=80 xt_conntrack.ko
=E2=94=9C=E2=94=80=E2=94=80 xt_MASQUERADE.ko
=E2=94=9C=E2=94=80=E2=94=80 xt_nat.ko
=E2=94=9C=E2=94=80=E2=94=80 xt_state.ko
=E2=94=94=E2=94=80=E2=94=80 xt_tcpudp.ko

10 directories, 31 files

With this patch, more ko are included.

$ tree build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/ro=
otfs/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs/li=
b/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/
=E2=94=9C=E2=94=80=E2=94=80 arch
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 arm64
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 c=
rypto
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 aes-neon-blk.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 aes-neon-bs.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 chacha-neon.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 crct10dif-ce.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 sha3-ce.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 sha512-arm64.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 sha512-ce.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=
=94=E2=94=80=E2=94=80 sm3-ce.ko
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 l=
ib
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=
=94=94=E2=94=80=E2=94=80 xor-neon.ko
=E2=94=9C=E2=94=80=E2=94=80 crypto
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=
=E2=94=80=E2=94=80 mc44s803.ko
....
.....
=E2=94=94=E2=94=80=E2=94=80 rockchip
=E2=94=9C=E2=94=80=E2=94=80 snd-soc-rk3399-gru-sound.ko
=E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s.ko
=E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s-tdm.ko
=E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-rt5645.ko
=E2=94=94=E2=94=80=E2=94=80 snd-soc-rockchip-spdif.ko

256 directories, 809 files

--1hwAfhVwyOfAWYqkBKYh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 4, 2024 at 05:27 AM, Trevor Woerner wrote:<br />
<blockquote>On Tue 2023-12-19 @ 07:23:52 PM, Stephen Chen wrote:<br />
<blockquote>This will add all built kernel modules to the image.<br /><br /=
>Signed-off-by: Stephen Chen &lt;stephen@radxa.com&gt;<br /><br />diff --gi=
t a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc=
<br />index 0a86846..fd9a9eb 100644<br />--- a/conf/machine/include/rock-pi=
-4.inc<br />+++ b/conf/machine/include/rock-pi-4.inc<br />@@ -3,4 +3,4 @@ M=
ACHINEOVERRIDES =3D. "rock-pi-4:"<br /><br />require conf/machine/include/r=
k3399.inc<br /><br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />=
+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />diff --git =
a/conf/machine/nanopi-m4b.conf b/conf/machine/nanopi-m4b.conf<br />index 35=
cd8f6..01d5c59 100644<br />--- a/conf/machine/nanopi-m4b.conf<br />+++ b/co=
nf/machine/nanopi-m4b.conf<br />@@ -5,7 +5,7 @@</blockquote>
I've tried this a couple times and a couple different ways and I can't figu=
re<br />out how what we already have (MACHINE_EXTRA_RRECOMMENDS) is any dif=
ferent from<br />what you're proposing (MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS=
).<br /><br />Using a very basic, no-distro setup I've built core-image-min=
imal and<br />core-image-base both with and without your patch and I see ab=
solutely no<br />difference in the list of installed packages<br />(buildhi=
story/images/rock_5b/glibc/core-image-*/installed-packages.txt).<br /><br /=
>All of meta-rockchip's machine/include/* files already include<br />MACHIN=
E_EXTRA_RRECOMMENDS, do you have a scenario where a build is not<br />inclu=
ding all of the built kernel modules in an image?<br /><br />
<blockquote>require conf/machine/include/rk3399.inc<br /><br />-MACHINE_EXT=
RA_RRECOMMENDS +=3D "kernel-modules"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMME=
NDS +=3D "kernel-modules"<br /><br />KERNEL_DEVICETREE =3D "rockchip/rk3399=
-nanopi-m4b.dtb"<br />UBOOT_MACHINE =3D "nanopi-m4b-rk3399_defconfig"<br />=
diff --git a/conf/machine/nanopi-r2s.conf b/conf/machine/nanopi-r2s.conf<br=
 />index 4472c21..4ed3160 100644<br />--- a/conf/machine/nanopi-r2s.conf<br=
 />+++ b/conf/machine/nanopi-r2s.conf<br />@@ -6,6 +6,6 @@<br />require con=
f/machine/include/rk3328.inc<br /><br />KERNEL_DEVICETREE =3D "rockchip/rk3=
328-nanopi-r2s.dtb"<br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<b=
r />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br /><br />U=
BOOT_MACHINE =3D "nanopi-r2s-rk3328_defconfig"<br />diff --git a/conf/machi=
ne/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf<br />index 21be440..1a63a=
96 100644<br />--- a/conf/machine/nanopi-r4s.conf<br />+++ b/conf/machine/n=
anopi-r4s.conf<br />@@ -5,7 +5,7 @@<br /><br />require conf/machine/include=
/rk3399.inc<br /><br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br =
/>+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br /><br />KER=
NEL_DEVICETREE =3D "rockchip/rk3399-nanopi-r4s.dtb"<br />UBOOT_MACHINE =3D =
"nanopi-r4s-rk3399_defconfig"<br />diff --git a/conf/machine/rock-5a.conf b=
/conf/machine/rock-5a.conf<br />index 5ace4da..53b56b1 100644<br />--- a/co=
nf/machine/rock-5a.conf<br />+++ b/conf/machine/rock-5a.conf<br />@@ -7,6 +=
7,6 @@ require conf/machine/include/rk3588s.inc<br /><br />PREFERRED_PROVID=
ER_virtual/kernel =3D "linux-yocto-dev"<br />KERNEL_DEVICETREE =3D "rockchi=
p/rk3588s-rock-5a.dtb"<br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules=
"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br /><br =
/>UBOOT_MACHINE =3D "rock5a-rk3588s_defconfig"<br />diff --git a/conf/machi=
ne/rock-5b.conf b/conf/machine/rock-5b.conf<br />index d137108..dc5fabc 100=
644<br />--- a/conf/machine/rock-5b.conf<br />+++ b/conf/machine/rock-5b.co=
nf<br />@@ -7,6 +7,6 @@ require conf/machine/include/rk3588.inc<br /><br />=
PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"<br />KERNEL_DEVICET=
REE =3D "rockchip/rk3588-rock-5b.dtb"<br />-MACHINE_EXTRA_RRECOMMENDS +=3D =
"kernel-modules"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-mod=
ules"<br /><br />UBOOT_MACHINE =3D "rock5b-rk3588_defconfig"<br />diff --gi=
t a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf<br />index 51=
7956c..3f83675 100644<br />--- a/conf/machine/rock-pi-e.conf<br />+++ b/con=
f/machine/rock-pi-e.conf<br />@@ -6,6 +6,6 @@<br />require conf/machine/inc=
lude/rk3328.inc<br /><br />KERNEL_DEVICETREE =3D "rockchip/rk3328-rock-pi-e=
.dtb"<br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />+MACHINE_E=
SSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br /><br />UBOOT_MACHINE =
=3D "rock-pi-e-rk3328_defconfig"<br />diff --git a/conf/machine/rock-pi-s.c=
onf b/conf/machine/rock-pi-s.conf<br />index 79ea73c..590e972 100644<br />-=
-- a/conf/machine/rock-pi-s.conf<br />+++ b/conf/machine/rock-pi-s.conf<br =
/>@@ -6,6 +6,6 @@<br />require conf/machine/include/rk3308.inc<br /><br />K=
ERNEL_DEVICETREE =3D "rockchip/rk3308-rock-pi-s.dtb"<br />-MACHINE_EXTRA_RR=
ECOMMENDS +=3D "kernel-modules"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=
=3D "kernel-modules"<br /><br />UBOOT_MACHINE =3D "rock-pi-s-rk3308_defconf=
ig"<br />-- <br />2.25.1</blockquote>
</blockquote>
Hi<br /><br />I build ROCK 5A core-image-full-cmdline.<br /><br />Without t=
hat patch, only these ko are included.<br /><br />$ tree build/tmp-glibc/wo=
rk/rock_5a-oe-linux/core-image-full-cmdline/1.0/rootfs/lib/modules/6.6.0-yo=
ctodev-standard-00098-gb053bfb06fa2/kernel/<br />build/tmp-glibc/work/rock_=
5a-oe-linux/core-image-full-cmdline/1.0/rootfs/lib/modules/6.6.0-yoctodev-s=
tandard-00098-gb053bfb06fa2/kernel/<br />=E2=94=9C=E2=94=80=E2=94=80 lib<br=
 />=E2=94=82&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 libcrc32c.ko<br />=E2=
=94=94=E2=94=80=E2=94=80 net<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=
=94=80 802<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=94=E2=94=80=
=E2=94=80 stp.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 bridge=
<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 =
bridge.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 ipv4<br />&nb=
sp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 netfilter=
<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=
=94=9C=E2=94=80=E2=94=80 iptable_filter.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=
=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 iptable=
_mangle.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =E2=94=9C=E2=94=80=E2=94=80 iptable_nat.ko<br />&nbsp;&nbsp;&nbsp; =
=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 i=
ptable_raw.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 iptable_security.ko<br />&nbsp;&nbsp;&=
nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=
=94=80 ip_tables.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 ipt_REJECT.ko<br />&nbsp;&nbsp;&=
nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=
=94=80 nf_defrag_ipv4.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 nf_reject_ipv4.ko<br />&nbs=
p;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 ipv6<br />&nbsp;&nbsp;&nbsp; =E2=
=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 ipv6.ko<br />&nbsp;&nbsp;&nb=
sp; =E2=94=82&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 netfilter<br />&nbsp;=
&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=
=80=E2=94=80 ip6table_filter.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 ip6table_mangle.ko<b=
r />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=
=9C=E2=94=80=E2=94=80 ip6table_nat.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 ip6_tables.ko<=
br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=
=94=94=E2=94=80=E2=94=80 nf_defrag_ipv6.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=
=9C=E2=94=80=E2=94=80 llc<br />&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=
=94=94=E2=94=80=E2=94=80 llc.ko<br />&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=
=E2=94=80 netfilter<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=
=9C=E2=94=80=E2=94=80 nf_conntrack.ko<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 nf_conntrack_netlink.ko<br />&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 nf_nat.ko<b=
r />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 =
nfnetlink.ko<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=
=94=80=E2=94=80 x_tables.ko<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =E2=94=9C=E2=94=80=E2=94=80 xt_addrtype.ko<br />&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 xt_CHECKSUM.ko<br />&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 xt_conntrack.k=
o<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=
=80 xt_MASQUERADE.ko<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=
=9C=E2=94=80=E2=94=80 xt_nat.ko<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; =E2=94=9C=E2=94=80=E2=94=80 xt_state.ko<br />&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 xt_tcpudp.ko<br /><br />10 di=
rectories, 31 files<br /><br />With this patch, more ko are included.<br />=
<br />$ tree build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/=
1.0/rootfs/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/<=
br />build/tmp-glibc/work/rock_5a-oe-linux/core-image-full-cmdline/1.0/root=
fs/lib/modules/6.6.0-yoctodev-standard-00098-gb053bfb06fa2/kernel/<br />=E2=
=94=9C=E2=94=80=E2=94=80 arch<br />=E2=94=82&nbsp;&nbsp; =E2=94=94=E2=94=80=
=E2=94=80 arm64<br />=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=
=9C=E2=94=80=E2=94=80 crypto<br />=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 aes-neon-blk.ko<br /=
>=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=
=9C=E2=94=80=E2=94=80 aes-neon-bs.ko<br />=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 chacha-neon.=
ko<br />=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp;=
 =E2=94=9C=E2=94=80=E2=94=80 crct10dif-ce.ko<br />=E2=94=82&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 sha3=
-ce.ko<br />=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&n=
bsp; =E2=94=9C=E2=94=80=E2=94=80 sha512-arm64.ko<br />=E2=94=82&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 =
sha512-ce.ko<br />=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=82&n=
bsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 sm3-ce.ko<br />=E2=94=82&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 lib<br />=E2=94=82&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=
=E2=94=80 xor-neon.ko<br />=E2=94=9C=E2=94=80=E2=94=80 crypto<br />=E2=94=
=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=82&nbsp;&nbsp; =E2=94=9C=E2=94=
=80=E2=94=80 mc44s803.ko<br />....<br />.....<br />&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 rockchip<br />&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=
=94=80 snd-soc-rk3399-gru-sound.ko<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchi=
p-i2s.ko<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s-tdm.ko<br />&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=
=80=E2=94=80 snd-soc-rockchip-rt5645.ko<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80=E2=94=80 snd-soc-ro=
ckchip-spdif.ko<br /><br />256 directories, 809 files

--1hwAfhVwyOfAWYqkBKYh--

