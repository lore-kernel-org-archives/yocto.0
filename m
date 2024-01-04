Return-Path: <stephen@radxa.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50521C4706F
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 06:18:40 +0000 (UTC)
Subject: Re: [yocto] [meta-rockchip] [PATCH] use MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to add kernel-modules
To: Khem Raj <raj.khem@gmail.com>,yocto@lists.yoctoproject.org
From: "Stephen Chen" <stephen@radxa.com>
X-Originating-Location: Guangzhou, Guangdong, CN (120.236.37.126)
X-Originating-Platform: Mac Firefox 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 Jan 2024 22:18:38 -0800
References: <CAMKF1sqP0413+63ZgDzyCH8ZNqPfwkPALTRwEsfNieDti5SXbQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqP0413+63ZgDzyCH8ZNqPfwkPALTRwEsfNieDti5SXbQ@mail.gmail.com>
Message-ID: <11912.1704349118416328574@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lbvxGJG3oKV5i4KDFrUb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 06:18:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62085

--lbvxGJG3oKV5i4KDFrUb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I revert the patch, and run command, MACHINE=3Drock-5a bitbake-getvar MACHI=
NE_EXTRA_RRECOMMENDS
And I get this:

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
core-image-minimal
core-image-full-cmdline
core-image-sato
core-image-weston
meta-toolchain
meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86=
-64'.

Other commonly useful commands are:
- 'devtool' and 'recipetool' handle common recipe tasks
- 'bitbake-layers' handles common layer tasks
- 'oe-pkgdata-util' handles common target package tasks
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
NOTE: Starting bitbake server...
#
# $MACHINE_EXTRA_RRECOMMENDS [3 operations]
#=C2=A0=C2=A0 append /tank/stephen/yocto-rockchip-mainline/meta-rockchip/co=
nf/machine/rock-5a.conf:10
#=C2=A0=C2=A0=C2=A0=C2=A0 "kernel-modules"
#=C2=A0=C2=A0 set /tank/stephen/yocto-rockchip-mainline/openembedded-core/m=
eta/conf/documentation.conf:283
#=C2=A0=C2=A0=C2=A0=C2=A0 [doc] "A list of machine-specific packages to ins=
tall as part of the image being built that are not essential for booting th=
e machine. The image being built has no build dependencies on the packages =
in this list."
#=C2=A0=C2=A0 set? /tank/stephen/yocto-rockchip-mainline/openembedded-core/=
meta/conf/bitbake.conf:897
#=C2=A0=C2=A0=C2=A0=C2=A0 ""
# pre-expansion value:
#=C2=A0=C2=A0 " kernel-modules"
MACHINE_EXTRA_RRECOMMENDS=3D" kernel-modules"

On Thu, Jan 4, 2024 at 12:40 PM, Khem Raj wrote:

>=20
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS should be used when you need a
> module to be pulled in to enable something always.
> so I think setting MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to pull in a
> meta package sounds a bit wrong. I wonder if you have something
> overriding MACHINE_EXTRA_RRECOMMENDS, please try
>=20
> bitbake-getvar MACHINE_EXTRA_RRECOMMENDS
>=20
> and check if it contains kernel-modules or not. Also check output of
> bitbake -e core-image-full-cmdline
> so see if kernel-modules are being pulled into image or not. bitbake
> -g core-image-full-cmdline might also help in finding the dependencies
> being pulled into image and their relations.
>=20
> On Wed, Jan 3, 2024 at 8:20=E2=80=AFPM Stephen Chen <stephen@radxa.com> w=
rote:
>=20
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
>>=20
>>=20
>=20
>

--lbvxGJG3oKV5i4KDFrUb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I revert the patch, and run command, MACHINE=3Drock-5a bitbake-getvar MACHI=
NE_EXTRA_RRECOMMENDS<br />And I get this:<br /><br />### Shell environment =
set up for builds. ###<br /><br />You can now run 'bitbake &lt;target&gt;'<=
br /><br />Common targets are:<br />&nbsp;&nbsp;&nbsp; core-image-minimal<b=
r />&nbsp;&nbsp;&nbsp; core-image-full-cmdline<br />&nbsp;&nbsp;&nbsp; core=
-image-sato<br />&nbsp;&nbsp;&nbsp; core-image-weston<br />&nbsp;&nbsp;&nbs=
p; meta-toolchain<br />&nbsp;&nbsp;&nbsp; meta-ide-support<br /><br />You c=
an also run generated qemu images with a command like 'runqemu qemux86-64'.=
<br /><br />Other commonly useful commands are:<br />&nbsp;- 'devtool' and =
'recipetool' handle common recipe tasks<br />&nbsp;- 'bitbake-layers' handl=
es common layer tasks<br />&nbsp;- 'oe-pkgdata-util' handles common target =
package tasks<br />NOTE: Starting bitbake server...<br />NOTE: Starting bit=
bake server...<br />NOTE: Starting bitbake server...<br />NOTE: Starting bi=
tbake server...<br />NOTE: Starting bitbake server...<br />NOTE: Starting b=
itbake server...<br />NOTE: Starting bitbake server...<br />NOTE: Starting =
bitbake server...<br />NOTE: Starting bitbake server...<br />NOTE: Starting=
 bitbake server...<br />#<br /># $MACHINE_EXTRA_RRECOMMENDS [3 operations]<=
br />#&nbsp;&nbsp; append /tank/stephen/yocto-rockchip-mainline/meta-rockch=
ip/conf/machine/rock-5a.conf:10<br />#&nbsp;&nbsp;&nbsp;&nbsp; "kernel-modu=
les"<br />#&nbsp;&nbsp; set /tank/stephen/yocto-rockchip-mainline/openembed=
ded-core/meta/conf/documentation.conf:283<br />#&nbsp;&nbsp;&nbsp;&nbsp; [d=
oc] "A list of machine-specific packages to install as part of the image be=
ing built that are not essential for booting the machine. The image being b=
uilt has no build dependencies on the packages in this list."<br />#&nbsp;&=
nbsp; set? /tank/stephen/yocto-rockchip-mainline/openembedded-core/meta/con=
f/bitbake.conf:897<br />#&nbsp;&nbsp;&nbsp;&nbsp; ""<br /># pre-expansion v=
alue:<br />#&nbsp;&nbsp; " kernel-modules"<br />MACHINE_EXTRA_RRECOMMENDS=
=3D" kernel-modules"<br /><br />On Thu, Jan 4, 2024 at 12:40 PM, Khem Raj w=
rote:<br />
<blockquote>MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS should be used when you nee=
d a<br />module to be pulled in to enable something always.<br />so I think=
 setting MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to pull in a<br />meta package=
 sounds a bit wrong. I wonder if you have something<br />overriding MACHINE=
_EXTRA_RRECOMMENDS, please try<br /><br />bitbake-getvar MACHINE_EXTRA_RREC=
OMMENDS<br /><br />and check if it contains kernel-modules or not. Also che=
ck output of<br />bitbake -e core-image-full-cmdline<br />so see if kernel-=
modules are being pulled into image or not. bitbake<br />-g core-image-full=
-cmdline might also help in finding the dependencies<br />being pulled into=
 image and their relations.<br /><br />On Wed, Jan 3, 2024 at 8:20=E2=80=AF=
PM Stephen Chen &lt;stephen@radxa.com&gt; wrote:<br />
<blockquote><br />On Thu, Jan 4, 2024 at 05:27 AM, Trevor Woerner wrote:<br=
 /><br />On Tue 2023-12-19 @ 07:23:52 PM, Stephen Chen wrote:<br /><br />Th=
is will add all built kernel modules to the image.<br /><br />Signed-off-by=
: Stephen Chen &lt;stephen@radxa.com&gt;<br /><br />diff --git a/conf/machi=
ne/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc<br />index 0a=
86846..fd9a9eb 100644<br />--- a/conf/machine/include/rock-pi-4.inc<br />++=
+ b/conf/machine/include/rock-pi-4.inc<br />@@ -3,4 +3,4 @@ MACHINEOVERRIDE=
S =3D. "rock-pi-4:"<br /><br />require conf/machine/include/rk3399.inc<br /=
><br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />+MACHINE_ESSEN=
TIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />diff --git a/conf/machine=
/nanopi-m4b.conf b/conf/machine/nanopi-m4b.conf<br />index 35cd8f6..01d5c59=
 100644<br />--- a/conf/machine/nanopi-m4b.conf<br />+++ b/conf/machine/nan=
opi-m4b.conf<br />@@ -5,7 +5,7 @@<br /><br />I've tried this a couple times=
 and a couple different ways and I can't figure<br />out how what we alread=
y have (MACHINE_EXTRA_RRECOMMENDS) is any different from<br />what you're p=
roposing (MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS).<br /><br />Using a very bas=
ic, no-distro setup I've built core-image-minimal and<br />core-image-base =
both with and without your patch and I see absolutely no<br />difference in=
 the list of installed packages<br />(buildhistory/images/rock_5b/glibc/cor=
e-image-*/installed-packages.txt).<br /><br />All of meta-rockchip's machin=
e/include/* files already include<br />MACHINE_EXTRA_RRECOMMENDS, do you ha=
ve a scenario where a build is not<br />including all of the built kernel m=
odules in an image?<br /><br />require conf/machine/include/rk3399.inc<br /=
><br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />+MACHINE_ESSEN=
TIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br /><br />KERNEL_DEVICETREE =
=3D "rockchip/rk3399-nanopi-m4b.dtb"<br />UBOOT_MACHINE =3D "nanopi-m4b-rk3=
399_defconfig"<br />diff --git a/conf/machine/nanopi-r2s.conf b/conf/machin=
e/nanopi-r2s.conf<br />index 4472c21..4ed3160 100644<br />--- a/conf/machin=
e/nanopi-r2s.conf<br />+++ b/conf/machine/nanopi-r2s.conf<br />@@ -6,6 +6,6=
 @@<br />require conf/machine/include/rk3328.inc<br /><br />KERNEL_DEVICETR=
EE =3D "rockchip/rk3328-nanopi-r2s.dtb"<br />-MACHINE_EXTRA_RRECOMMENDS +=
=3D "kernel-modules"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel=
-modules"<br /><br />UBOOT_MACHINE =3D "nanopi-r2s-rk3328_defconfig"<br />d=
iff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf<br =
/>index 21be440..1a63a96 100644<br />--- a/conf/machine/nanopi-r4s.conf<br =
/>+++ b/conf/machine/nanopi-r4s.conf<br />@@ -5,7 +5,7 @@<br /><br />requir=
e conf/machine/include/rk3399.inc<br /><br />-MACHINE_EXTRA_RRECOMMENDS +=
=3D "kernel-modules"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel=
-modules"<br /><br />KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-r4s.dtb"=
<br />UBOOT_MACHINE =3D "nanopi-r4s-rk3399_defconfig"<br />diff --git a/con=
f/machine/rock-5a.conf b/conf/machine/rock-5a.conf<br />index 5ace4da..53b5=
6b1 100644<br />--- a/conf/machine/rock-5a.conf<br />+++ b/conf/machine/roc=
k-5a.conf<br />@@ -7,6 +7,6 @@ require conf/machine/include/rk3588s.inc<br =
/><br />PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"<br />KERNEL=
_DEVICETREE =3D "rockchip/rk3588s-rock-5a.dtb"<br />-MACHINE_EXTRA_RRECOMME=
NDS +=3D "kernel-modules"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "k=
ernel-modules"<br /><br />UBOOT_MACHINE =3D "rock5a-rk3588s_defconfig"<br /=
>diff --git a/conf/machine/rock-5b.conf b/conf/machine/rock-5b.conf<br />in=
dex d137108..dc5fabc 100644<br />--- a/conf/machine/rock-5b.conf<br />+++ b=
/conf/machine/rock-5b.conf<br />@@ -7,6 +7,6 @@ require conf/machine/includ=
e/rk3588.inc<br /><br />PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-=
dev"<br />KERNEL_DEVICETREE =3D "rockchip/rk3588-rock-5b.dtb"<br />-MACHINE=
_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />+MACHINE_ESSENTIAL_EXTRA_RREC=
OMMENDS +=3D "kernel-modules"<br /><br />UBOOT_MACHINE =3D "rock5b-rk3588_d=
efconfig"<br />diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock=
-pi-e.conf<br />index 517956c..3f83675 100644<br />--- a/conf/machine/rock-=
pi-e.conf<br />+++ b/conf/machine/rock-pi-e.conf<br />@@ -6,6 +6,6 @@<br />=
require conf/machine/include/rk3328.inc<br /><br />KERNEL_DEVICETREE =3D "r=
ockchip/rk3328-rock-pi-e.dtb"<br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-=
modules"<br />+MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br=
 /><br />UBOOT_MACHINE =3D "rock-pi-e-rk3328_defconfig"<br />diff --git a/c=
onf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf<br />index 79ea73c=
..590e972 100644<br />--- a/conf/machine/rock-pi-s.conf<br />+++ b/conf/mac=
hine/rock-pi-s.conf<br />@@ -6,6 +6,6 @@<br />require conf/machine/include/=
rk3308.inc<br /><br />KERNEL_DEVICETREE =3D "rockchip/rk3308-rock-pi-s.dtb"=
<br />-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br />+MACHINE_ESSENT=
IAL_EXTRA_RRECOMMENDS +=3D "kernel-modules"<br /><br />UBOOT_MACHINE =3D "r=
ock-pi-s-rk3308_defconfig"<br />--<br />2.25.1<br /><br />Hi<br /><br />I b=
uild ROCK 5A core-image-full-cmdline.<br /><br />Without that patch, only t=
hese ko are included.<br /><br />$ tree build/tmp-glibc/work/rock_5a-oe-lin=
ux/core-image-full-cmdline/1.0/rootfs/lib/modules/6.6.0-yoctodev-standard-0=
0098-gb053bfb06fa2/kernel/<br />build/tmp-glibc/work/rock_5a-oe-linux/core-=
image-full-cmdline/1.0/rootfs/lib/modules/6.6.0-yoctodev-standard-00098-gb0=
53bfb06fa2/kernel/<br />=E2=94=9C=E2=94=80=E2=94=80 lib<br />=E2=94=82 =E2=
=94=94=E2=94=80=E2=94=80 libcrc32c.ko<br />=E2=94=94=E2=94=80=E2=94=80 net<=
br />=E2=94=9C=E2=94=80=E2=94=80 802<br />=E2=94=82 =E2=94=94=E2=94=80=E2=
=94=80 stp.ko<br />=E2=94=9C=E2=94=80=E2=94=80 bridge<br />=E2=94=82 =E2=94=
=94=E2=94=80=E2=94=80 bridge.ko<br />=E2=94=9C=E2=94=80=E2=94=80 ipv4<br />=
=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 netfilter<br />=E2=94=82 =E2=94=9C=E2=
=94=80=E2=94=80 iptable_filter.ko<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=
=80 iptable_mangle.ko<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_na=
t.ko<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_raw.ko<br />=E2=94=
=82 =E2=94=9C=E2=94=80=E2=94=80 iptable_security.ko<br />=E2=94=82 =E2=94=
=9C=E2=94=80=E2=94=80 ip_tables.ko<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=
=80 ipt_REJECT.ko<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 nf_defrag_ipv4=
.ko<br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 nf_reject_ipv4.ko<br />=E2=
=94=9C=E2=94=80=E2=94=80 ipv6<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip=
v6.ko<br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 netfilter<br />=E2=94=82 =
=E2=94=9C=E2=94=80=E2=94=80 ip6table_filter.ko<br />=E2=94=82 =E2=94=9C=E2=
=94=80=E2=94=80 ip6table_mangle.ko<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=
=80 ip6table_nat.ko<br />=E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 ip6_tables.k=
o<br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 nf_defrag_ipv6.ko<br />=E2=94=
=9C=E2=94=80=E2=94=80 llc<br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 llc.ko=
<br />=E2=94=94=E2=94=80=E2=94=80 netfilter<br />=E2=94=9C=E2=94=80=E2=94=
=80 nf_conntrack.ko<br />=E2=94=9C=E2=94=80=E2=94=80 nf_conntrack_netlink.k=
o<br />=E2=94=9C=E2=94=80=E2=94=80 nf_nat.ko<br />=E2=94=9C=E2=94=80=E2=94=
=80 nfnetlink.ko<br />=E2=94=9C=E2=94=80=E2=94=80 x_tables.ko<br />=E2=94=
=9C=E2=94=80=E2=94=80 xt_addrtype.ko<br />=E2=94=9C=E2=94=80=E2=94=80 xt_CH=
ECKSUM.ko<br />=E2=94=9C=E2=94=80=E2=94=80 xt_conntrack.ko<br />=E2=94=9C=
=E2=94=80=E2=94=80 xt_MASQUERADE.ko<br />=E2=94=9C=E2=94=80=E2=94=80 xt_nat=
.ko<br />=E2=94=9C=E2=94=80=E2=94=80 xt_state.ko<br />=E2=94=94=E2=94=80=E2=
=94=80 xt_tcpudp.ko<br /><br />10 directories, 31 files<br /><br />With thi=
s patch, more ko are included.<br /><br />$ tree build/tmp-glibc/work/rock_=
5a-oe-linux/core-image-full-cmdline/1.0/rootfs/lib/modules/6.6.0-yoctodev-s=
tandard-00098-gb053bfb06fa2/kernel/<br />build/tmp-glibc/work/rock_5a-oe-li=
nux/core-image-full-cmdline/1.0/rootfs/lib/modules/6.6.0-yoctodev-standard-=
00098-gb053bfb06fa2/kernel/<br />=E2=94=9C=E2=94=80=E2=94=80 arch<br />=E2=
=94=82 =E2=94=94=E2=94=80=E2=94=80 arm64<br />=E2=94=82 =E2=94=9C=E2=94=80=
=E2=94=80 crypto<br />=E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 aes-n=
eon-blk.ko<br />=E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 aes-neon-bs=
.ko<br />=E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 chacha-neon.ko<br =
/>=E2=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 crct10dif-ce.ko<br />=E2=
=94=82 =E2=94=82 =E2=94=9C=E2=94=80=E2=94=80 sha3-ce.ko<br />=E2=94=82 =E2=
=94=82 =E2=94=9C=E2=94=80=E2=94=80 sha512-arm64.ko<br />=E2=94=82 =E2=94=82=
 =E2=94=9C=E2=94=80=E2=94=80 sha512-ce.ko<br />=E2=94=82 =E2=94=82 =E2=94=
=94=E2=94=80=E2=94=80 sm3-ce.ko<br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 =
lib<br />=E2=94=82 =E2=94=94=E2=94=80=E2=94=80 xor-neon.ko<br />=E2=94=9C=
=E2=94=80=E2=94=80 crypto<br />=E2=94=82 =E2=94=82 =E2=94=82 =E2=94=9C=E2=
=94=80=E2=94=80 mc44s803.ko<br />....<br />.....<br />=E2=94=94=E2=94=80=E2=
=94=80 rockchip<br />=E2=94=9C=E2=94=80=E2=94=80 snd-soc-rk3399-gru-sound.k=
o<br />=E2=94=9C=E2=94=80=E2=94=80 snd-soc-rockchip-i2s.ko<br />=E2=94=9C=
=E2=94=80=E2=94=80 snd-soc-rockchip-i2s-tdm.ko<br />=E2=94=9C=E2=94=80=E2=
=94=80 snd-soc-rockchip-rt5645.ko<br />=E2=94=94=E2=94=80=E2=94=80 snd-soc-=
rockchip-spdif.ko<br /><br />256 directories, 809 files<br /><br /></blockq=
uote>
</blockquote>

--lbvxGJG3oKV5i4KDFrUb--

