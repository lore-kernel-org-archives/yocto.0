Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35422C3DA79
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 12:57:06 +0000 (UTC)
Received: from smtp-42aa.mail.infomaniak.ch (smtp-42aa.mail.infomaniak.ch [84.16.66.170])
 by mx.groups.io with SMTP id smtpd.web11.78536.1705323417437704775
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 04:56:58 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: 0leil.net, ip: 84.16.66.170, mailfrom: foss+yocto@0leil.net)
Received: from smtp-4-0001.mail.infomaniak.ch (unknown [10.7.10.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TDBx307PkzMqB35;
	Mon, 15 Jan 2024 12:56:55 +0000 (UTC)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4TDBx24BJKzFdd;
	Mon, 15 Jan 2024 13:56:54 +0100 (CET)
Date: Mon, 15 Jan 2024 13:56:53 +0100
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
Subject: =?US-ASCII?Q?Re=3A_=5Byocto=5D_=5Bmeta-rockchip=5D=5BPATCH=5D_remo?= =?US-ASCII?Q?ve_adding_all_kernel_modules_by_default?=
In-Reply-To: <20240114144618.30935-1-twoerner@gmail.com>
References: <20240114144618.30935-1-twoerner@gmail.com>
Message-ID: <15AE7EB5-F317-4193-AF3B-24DDA9F4BE98@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Infomaniak-Routing: alpha
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 12:57:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62145

Hi Trevor,

On January 14, 2024 3:46:18 PM GMT+01:00, Trevor Woerner <twoerner@gmail=
=2Ecom> wrote:
>A BSP layer shouldn't be deciding to include all kernel modules=2E That's=
 more
>of a distro decision, or for local=2Econf at a minimum=2E Modules that ar=
e
>required for the basic functioning of a board are fine, but doing a blank=
et
>"install all" is overreach and inflates images unnecessarily (~45MB, by o=
ne
>measurement)=2E
>

It's only a RRECOMMENDS, so I'd say this is fine as is? This allows to hav=
e a working system without spending too much time figuring out what's exact=
ly needed=2E If someone needs to have a smaller image, they can then play w=
ith kernel defconfig or kernel-modules- in packages to install=2E

Up to you though :)

Cheers,
Quentin

>I expect patches will probably roll in after this one to add back necessa=
ry
>modules, but it will be easier to figure out which ones when starting wit=
h
>having none of them included by default=2E
>
>Signed-off-by: Trevor Woerner <twoerner@gmail=2Ecom>
>---
> conf/machine/include/rock-pi-4=2Einc | 2 --
> conf/machine/nanopi-m4b=2Econf       | 2 --
> conf/machine/nanopi-r2s=2Econf       | 1 -
> conf/machine/nanopi-r4s=2Econf       | 2 --
> conf/machine/rock-5a=2Econf          | 1 -
> conf/machine/rock-5b=2Econf          | 1 -
> conf/machine/rock-pi-e=2Econf        | 1 -
> conf/machine/rock-pi-s=2Econf        | 1 -
> 8 files changed, 11 deletions(-)
>
>diff --git a/conf/machine/include/rock-pi-4=2Einc b/conf/machine/include/=
rock-pi-4=2Einc
>index 0a868463bc64=2E=2E02dfb18fc775 100644
>--- a/conf/machine/include/rock-pi-4=2Einc
>+++ b/conf/machine/include/rock-pi-4=2Einc
>@@ -2,5 +2,3 @@
> MACHINEOVERRIDES =3D=2E "rock-pi-4:"
>=20
> require conf/machine/include/rk3399=2Einc
>-
>-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>diff --git a/conf/machine/nanopi-m4b=2Econf b/conf/machine/nanopi-m4b=2Ec=
onf
>index 35cd8f68e82e=2E=2Eb924b0018867 100644
>--- a/conf/machine/nanopi-m4b=2Econf
>+++ b/conf/machine/nanopi-m4b=2Econf
>@@ -5,7 +5,5 @@
>=20
> require conf/machine/include/rk3399=2Einc
>=20
>-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>-
> KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4b=2Edtb"
> UBOOT_MACHINE =3D "nanopi-m4b-rk3399_defconfig"
>diff --git a/conf/machine/nanopi-r2s=2Econf b/conf/machine/nanopi-r2s=2Ec=
onf
>index 4472c21f0217=2E=2E0451002ecff5 100644
>--- a/conf/machine/nanopi-r2s=2Econf
>+++ b/conf/machine/nanopi-r2s=2Econf
>@@ -6,6 +6,5 @@
> require conf/machine/include/rk3328=2Einc
>=20
> KERNEL_DEVICETREE =3D "rockchip/rk3328-nanopi-r2s=2Edtb"
>-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>=20
> UBOOT_MACHINE =3D "nanopi-r2s-rk3328_defconfig"
>diff --git a/conf/machine/nanopi-r4s=2Econf b/conf/machine/nanopi-r4s=2Ec=
onf
>index 21be4400c89d=2E=2E161f4b4e4609 100644
>--- a/conf/machine/nanopi-r4s=2Econf
>+++ b/conf/machine/nanopi-r4s=2Econf
>@@ -5,7 +5,5 @@
>=20
> require conf/machine/include/rk3399=2Einc
>=20
>-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>-
> KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-r4s=2Edtb"
> UBOOT_MACHINE =3D "nanopi-r4s-rk3399_defconfig"
>diff --git a/conf/machine/rock-5a=2Econf b/conf/machine/rock-5a=2Econf
>index 5ace4dac8fe4=2E=2E28e06486eda3 100644
>--- a/conf/machine/rock-5a=2Econf
>+++ b/conf/machine/rock-5a=2Econf
>@@ -7,6 +7,5 @@ require conf/machine/include/rk3588s=2Einc
>=20
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"
> KERNEL_DEVICETREE =3D "rockchip/rk3588s-rock-5a=2Edtb"
>-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>=20
> UBOOT_MACHINE =3D "rock5a-rk3588s_defconfig"
>diff --git a/conf/machine/rock-5b=2Econf b/conf/machine/rock-5b=2Econf
>index d1371084becc=2E=2Eea2cf219e153 100644
>--- a/conf/machine/rock-5b=2Econf
>+++ b/conf/machine/rock-5b=2Econf
>@@ -7,6 +7,5 @@ require conf/machine/include/rk3588=2Einc
>=20
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-dev"
> KERNEL_DEVICETREE =3D "rockchip/rk3588-rock-5b=2Edtb"
>-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>=20
> UBOOT_MACHINE =3D "rock5b-rk3588_defconfig"
>diff --git a/conf/machine/rock-pi-e=2Econf b/conf/machine/rock-pi-e=2Econ=
f
>index 517956c4b9db=2E=2E1e2169b01993 100644
>--- a/conf/machine/rock-pi-e=2Econf
>+++ b/conf/machine/rock-pi-e=2Econf
>@@ -6,6 +6,5 @@
> require conf/machine/include/rk3328=2Einc
>=20
> KERNEL_DEVICETREE =3D "rockchip/rk3328-rock-pi-e=2Edtb"
>-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>=20
> UBOOT_MACHINE =3D "rock-pi-e-rk3328_defconfig"
>diff --git a/conf/machine/rock-pi-s=2Econf b/conf/machine/rock-pi-s=2Econ=
f
>index 79ea73c6b47e=2E=2E3aa868b7ec7c 100644
>--- a/conf/machine/rock-pi-s=2Econf
>+++ b/conf/machine/rock-pi-s=2Econf
>@@ -6,6 +6,5 @@
> require conf/machine/include/rk3308=2Einc
>=20
> KERNEL_DEVICETREE =3D "rockchip/rk3308-rock-pi-s=2Edtb"
>-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>=20
> UBOOT_MACHINE =3D "rock-pi-s-rk3308_defconfig"

