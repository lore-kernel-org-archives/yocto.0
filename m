Received: from mailout06.t-online.de (mailout06.t-online.de [194.25.134.19])
 by mx.groups.io with SMTP id smtpd.web10.500.1632336730705595769
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 11:52:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.19, mailfrom: f_l_k@t-online.de)
Received: from fwd83.dcpf.telekom.de (fwd83.aul.t-online.de [10.223.144.109])
	by mailout06.t-online.de (Postfix) with SMTP id 42D0F8050;
	Wed, 22 Sep 2021 20:49:45 +0200 (CEST)
Received: from [192.168.178.83] ([84.163.35.76]) by fwd83.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mT7JP-2d0yaf0; Wed, 22 Sep 2021 20:49:43 +0200
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding root device
To: Trevor Woerner <twoerner@gmail.com>
References: <20210917220121.26663-1-twoerner@gmail.com>
From: "Markus Volk" <f_l_k@t-online.de>
Cc: yocto@lists.yoctoproject.org
Message-ID: <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
Date: Wed, 22 Sep 2021 20:49:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210917220121.26663-1-twoerner@gmail.com>
X-TOI-EXPURGATEID: 150726::1632336583-00001454-13173459/0/0 CLEAN NORMAL
X-TOI-MSGID: 9805319d-6dee-41de-baa2-cd4158973e8e
Content-Type: multipart/alternative;
 boundary="------------744D394CAEA8E2413258FD80"
Content-Language: en-US

--------------744D394CAEA8E2413258FD80
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

with this change my rock-pi-4 doesnt boot up and falls to emergency=20
shell because wic includes wrong devices into fstab. For some reason it=20
assumes /dev/sda1. I was able to fix this for my machine by using uuid=20
for all partitions.

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 5ee276b..90bdb27 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -15,12 +15,12 @@
 =C2=A0#=C2=A0=C2=A0 boot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 32768=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 229376
 =C2=A0#=C2=A0=C2=A0 root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 262144=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (suggested)

-part loader1=C2=A0=C2=A0=C2=A0 --offset 32=C2=A0=C2=A0=C2=A0=C2=A0 --fixed=
-size 4000K --source rawcopy=20
--sourceparams=3D"file=3D${SPL_BINARY}"
-part reserved1=C2=A0 --offset 4032=C2=A0=C2=A0 --fixed-size 64K
-part reserved2=C2=A0 --offset 4096=C2=A0=C2=A0 --fixed-size 4096K
-part loader2=C2=A0=C2=A0=C2=A0 --offset 8192=C2=A0=C2=A0 --fixed-size 4096=
K --source rawcopy=20
--sourceparams=3D"file=3Du-boot.${UBOOT_SUFFIX}"
-part atf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --offset 12288=C2=A0 --=
fixed-size 4096K
-part /boot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --offset 16384=C2=A0 --size=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 114688K --active --source=20
bootimg-partition --fstype=3Dvfat --label boot --sourceparams=3D"loader=3Du=
-boot"
-part / --source rootfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 --fstype=3Dext4 --label root --use-uuid
+part loader1=C2=A0=C2=A0 --offset 32 --fixed-size 4000K --source rawcopy=
=20
--sourceparams=3D"file=3D${SPL_BINARY}" --use-uuid
+part reserved1 --offset 4032 --fixed-size 64K --use-uuid
+part reserved2 --offset 4096 --fixed-size 4096K --use-uuid
+part loader2=C2=A0=C2=A0 --offset 8192 --fixed-size 4096K --source rawcopy=
=20
--sourceparams=3D"file=3Du-boot.${UBOOT_SUFFIX}" --use-uuid
+part atf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --offset 12288 --fixed-size 4=
096K --use-uuid
+part /boot=C2=A0=C2=A0=C2=A0=C2=A0 --offset 16384 --size 114688K --active =
--source=20
bootimg-partition --fstype=3Dvfat --label boot=20
--sourceparams=3D"loader=3Du-boot" --use-uuid
+part /=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --source rootfs --f=
stype=3Dext4 --label root --use-uuid

-bootloader --ptable gpt --append=3D"console=3Dtty1=20
console=3D${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=3Dext4=20
init=3D/sbin/init"
+bootloader=C2=A0=C2=A0=C2=A0=C2=A0 --ptable gpt --append=3D"console=3Dtty1=
=20
console=3D${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=3Dext4=20
init=3D/sbin/init"


In addition i added an option that avoids editing fstab by wic at all=20
since the image also boots without mounting /boot, but i guess this is=20
just a matter of taste.

diff --git a/conf/machine/include/rockchip-wic.inc=20
b/conf/machine/include/rockchip-wic.inc
index 15010a0..30b0d57 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -26,3 +26,6 @@ WICVARS:append =3D " \
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SPL_BINARY \
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UBOOT_SUFFIX \
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
+
+# Do not update fstab file while creating wic images
+WIC_CREATE_EXTRA_ARGS ?=3D "--no-fstab-update"


Am 18.09.21 um 00:01 schrieb Trevor Woerner:
> Recent upstream kernel changes have made the mmc probing order unpredicta=
ble.
> Therefore, boards with both an emmc and sdmmc interface aren't guaranteed=
 to
> boot with a hard-coded root device selected.
>
> For example, on the rock64, with linux-yocto 5.10.y, using the uSD card (=
i.e.
> the sdmmc interface) about 50% of the time the boot would succeed, and ro=
ughly
> 50% of the time it wouldn't:
>
> 	...
> 	[    0.612233] Waiting for root device /dev/mmcblk1p7...
> 	[    0.634551] mmc_host mmc1: Bus speed (slot 0) =3D 300000Hz (slot req =
300000Hz, actual 300000HZ div =3D 0)
> 	[    0.639064] mmc_host mmc0: Bus speed (slot 0) =3D 50000000Hz (slot re=
q 50000000Hz, actual 50000000HZ di)
> 	[    0.640007] mmc0: new high speed SDXC card at address 5048
> 	[    0.641176] mmcblk0: mmc0:5048 SD64G 58.0 GiB
> 	[    0.647610] random: fast init done
> 	[    0.648279] GPT:Primary header thinks Alt. header is not at the end o=
f the disk.
> 	[    0.648941] GPT:376479 !=3D 121634815
> 	[    0.649252] GPT:Alternate GPT header not at the end of the disk.
> 	[    0.649796] GPT:376479 !=3D 121634815
> 	[    0.650106] GPT: Use GNU Parted to correct GPT errors.
> 	[    0.650598]  mmcblk0: p1 p2 p3 p4 p5 p6 p7
>
> NOTE the discrepancy between the kernel waiting for device /dev/mmcblk1p7=
,
> which comes from the hard-coded kernel cmdline, and the kernel probing pu=
tting
> the sdmmc on mmcblk0.
>
> With linux-yocto 5.13.y on the rock64 using the uSD card the board would =
never
> boot, the sdmmc always appears on mmcblk0.
>
> Instead of simply changing the hard-coded root device (i.e. from mmcblk0 =
to
> mmcblk1) switch to using partition UUIDs instead. Hard-coding the boot de=
vice
> would work with 5.13.y but would fail 50% of the time with 5.10.y; who kn=
ows
> what other kernels will do?
>
> In any case, switching to UUIDs works regardless of board, kernel, or
> available mmc interfaces.
>
> Boot tested on:
> - rock64
> - nanopi-m4-2gb
> - tinker-board
> - rock-pi-e
> - rock-pi-4b
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   conf/machine/include/nanopi-m4.inc    |  2 --
>   conf/machine/include/rock-pi-4.inc    |  2 --
>   conf/machine/include/rockchip-wic.inc |  4 ----
>   conf/machine/rock64.conf              |  3 ---
>   conf/machine/tinker-board-s.conf      |  2 --
>   conf/machine/vyasa-rk3288.conf        |  2 --
>   wic/rockchip.wks                      | 16 ++++++++--------
>   7 files changed, 8 insertions(+), 23 deletions(-)
>
> diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/na=
nopi-m4.inc
> index ac6479d..3870b51 100644
> --- a/conf/machine/include/nanopi-m4.inc
> +++ b/conf/machine/include/nanopi-m4.inc
> @@ -7,5 +7,3 @@ MACHINE_FEATURES +=3D "usbhost serial"
>  =20
>   KMACHINE =3D "nanopi-m4"
>   KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
> -
> -RK_BOOT_DEVICE =3D "mmcblk1"
> diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/ro=
ck-pi-4.inc
> index b6fb3dd..0a86846 100644
> --- a/conf/machine/include/rock-pi-4.inc
> +++ b/conf/machine/include/rock-pi-4.inc
> @@ -3,6 +3,4 @@ MACHINEOVERRIDES =3D. "rock-pi-4:"
>  =20
>   require conf/machine/include/rk3399.inc
>  =20
> -RK_BOOT_DEVICE =3D "mmcblk1"
> -
>   MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include=
/rockchip-wic.inc
> index b5939f7..15010a0 100644
> --- a/conf/machine/include/rockchip-wic.inc
> +++ b/conf/machine/include/rockchip-wic.inc
> @@ -20,11 +20,7 @@ IMAGE_BOOT_FILES =3D " \
>   RK_CONSOLE_BAUD ?=3D "${@d.getVar('SERIAL_CONSOLES').split(';')[0]}"
>   RK_CONSOLE_DEVICE ?=3D "${@d.getVar('SERIAL_CONSOLES').split(';')[1].sp=
lit()[0]}"
>  =20
> -# boot device (sd-card/emmc)
> -RK_BOOT_DEVICE ??=3D "mmcblk0"
> -
>   WICVARS:append =3D " \
> -	RK_BOOT_DEVICE \
>   	RK_CONSOLE_BAUD \
>   	RK_CONSOLE_DEVICE \
>   	SPL_BINARY \
> diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
> index 21755a8..fa75a51 100644
> --- a/conf/machine/rock64.conf
> +++ b/conf/machine/rock64.conf
> @@ -12,7 +12,4 @@ MACHINE_FEATURES +=3D "usbhost serial"
>   UBOOT_MACHINE =3D "rock64-rk3328_defconfig"
>   KERNEL_DEVICETREE =3D "rockchip/rk3328-rock64.dtb"
>  =20
> -# set to mmcblk0 for booting from optional eMMC
> -RK_BOOT_DEVICE ?=3D "mmcblk1"
> -
>   KBUILD_DEFCONFIG =3D "defconfig"
> diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board=
-s.conf
> index 9f44f2f..870b9bc 100644
> --- a/conf/machine/tinker-board-s.conf
> +++ b/conf/machine/tinker-board-s.conf
> @@ -9,5 +9,3 @@ require conf/machine/include/tinker.inc
>  =20
>   KERNEL_DEVICETREE =3D "rk3288-tinker-s.dtb"
>   UBOOT_MACHINE =3D "tinker-s-rk3288_defconfig"
> -
> -RK_BOOT_DEVICE ?=3D "mmcblk1"
> diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.c=
onf
> index 9ad1ed4..5b44257 100644
> --- a/conf/machine/vyasa-rk3288.conf
> +++ b/conf/machine/vyasa-rk3288.conf
> @@ -13,5 +13,3 @@ KERNEL_DEVICETREE =3D "rk3288-vyasa.dtb"
>   KERNEL_EXTRA_ARGS +=3D "LOADADDR=3D0x02000000"
>  =20
>   UBOOT_MACHINE =3D "vyasa-rk3288_defconfig"
> -
> -RK_BOOT_DEVICE =3D "mmcblk2"
> diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> index eedae0d..5ee276b 100644
> --- a/wic/rockchip.wks
> +++ b/wic/rockchip.wks
> @@ -15,12 +15,12 @@
>   #   boot        32768           229376
>   #   root        262144          -           (suggested)
>  =20
> -part loader1    --offset 32     --fixed-size 4000K            --ondisk $=
{RK_BOOT_DEVICE} --source rawcopy                                      --so=
urceparams=3D"file=3D${SPL_BINARY}"
> -part reserved1  --offset 4032   --fixed-size 64K              --ondisk $=
{RK_BOOT_DEVICE}
> -part reserved2  --offset 4096   --fixed-size 4096K            --ondisk $=
{RK_BOOT_DEVICE}
> -part loader2    --offset 8192   --fixed-size 4096K            --ondisk $=
{RK_BOOT_DEVICE} --source rawcopy                                      --so=
urceparams=3D"file=3Du-boot.${UBOOT_SUFFIX}"
> -part atf        --offset 12288  --fixed-size 4096K            --ondisk $=
{RK_BOOT_DEVICE}
> -part /boot      --offset 16384  --size       114688K --active --ondisk $=
{RK_BOOT_DEVICE} --source bootimg-partition --fstype=3Dvfat --label boot --=
sourceparams=3D"loader=3Du-boot"
> -part /                                                        --ondisk $=
{RK_BOOT_DEVICE} --source rootfs            --fstype=3Dext4 --label root
> +part loader1    --offset 32     --fixed-size 4000K            --source r=
awcopy                                                 --sourceparams=3D"fi=
le=3D${SPL_BINARY}"
> +part reserved1  --offset 4032   --fixed-size 64K
> +part reserved2  --offset 4096   --fixed-size 4096K
> +part loader2    --offset 8192   --fixed-size 4096K            --source r=
awcopy                                                 --sourceparams=3D"fi=
le=3Du-boot.${UBOOT_SUFFIX}"
> +part atf        --offset 12288  --fixed-size 4096K
> +part /boot      --offset 16384  --size       114688K --active --source b=
ootimg-partition --fstype=3Dvfat --label boot            --sourceparams=3D"=
loader=3Du-boot"
> +part /                                                        --source r=
ootfs            --fstype=3Dext4 --label root --use-uuid
>  =20
> -bootloader --ptable gpt --append=3D"console=3Dtty1 console=3D${RK_CONSOL=
E_DEVICE},${RK_CONSOLE_BAUD}n8 rw root=3D/dev/${RK_BOOT_DEVICE}p7 rootfstyp=
e=3Dext4 init=3D/sbin/init"
> +bootloader --ptable gpt --append=3D"console=3Dtty1 console=3D${RK_CONSOL=
E_DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=3Dext4 init=3D/sbin/init"
>
>=20
>

--------------744D394CAEA8E2413258FD80
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Hi,</p>
    <p>with this change my rock-pi-4 doesnt boot up and falls to
      emergency shell because wic includes wrong devices into fstab. For
      some reason it assumes /dev/sda1. I was able to fix this for my
      machine by using uuid for all partitions. <br>
    </p>
    <p>diff --git a/wic/rockchip.wks b/wic/rockchip.wks<br>
      index 5ee276b..90bdb27 100644<br>
      --- a/wic/rockchip.wks<br>
      +++ b/wic/rockchip.wks<br>
      @@ -15,12 +15,12 @@<br>
      =C2=A0#=C2=A0=C2=A0 boot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 32=
768=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 229376<br>
      =C2=A0#=C2=A0=C2=A0 root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 26=
2144=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (suggested)<br>
      =C2=A0<br>
      -part loader1=C2=A0=C2=A0=C2=A0 --offset 32=C2=A0=C2=A0=C2=A0=C2=A0 -=
-fixed-size 4000K=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
      --source rawcopy=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
      --sourceparams=3D"file=3D${SPL_BINARY}"<br>
      -part reserved1=C2=A0 --offset 4032=C2=A0=C2=A0 --fixed-size 64K<br>
      -part reserved2=C2=A0 --offset 4096=C2=A0=C2=A0 --fixed-size 4096K<br=
>
      -part loader2=C2=A0=C2=A0=C2=A0 --offset 8192=C2=A0=C2=A0 --fixed-siz=
e 4096K=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      --source rawcopy=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
      --sourceparams=3D"file=3Du-boot.${UBOOT_SUFFIX}"<br>
      -part atf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --offset 12288=C2=
=A0 --fixed-size 4096K<br>
      -part /boot=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --offset 16384=C2=A0 --size=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 114688K --active
      --source bootimg-partition --fstype=3Dvfat --label boot=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      --sourceparams=3D"loader=3Du-boot"<br>
      -part /=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      --source rootfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 --fstype=3Dext4 --label root --use-uuid<br>
      +part loader1=C2=A0=C2=A0 --offset 32 --fixed-size 4000K --source raw=
copy
      --sourceparams=3D"file=3D${SPL_BINARY}" --use-uuid<br>
      +part reserved1 --offset 4032 --fixed-size 64K --use-uuid<br>
      +part reserved2 --offset 4096 --fixed-size 4096K --use-uuid<br>
      +part loader2=C2=A0=C2=A0 --offset 8192 --fixed-size 4096K --source r=
awcopy
      --sourceparams=3D"file=3Du-boot.${UBOOT_SUFFIX}" --use-uuid<br>
      +part atf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --offset 12288 --fixed-=
size 4096K --use-uuid<br>
      +part /boot=C2=A0=C2=A0=C2=A0=C2=A0 --offset 16384 --size 114688K --a=
ctive --source
      bootimg-partition --fstype=3Dvfat --label boot
      --sourceparams=3D"loader=3Du-boot" --use-uuid<br>
      +part /=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --source root=
fs --fstype=3Dext4 --label root
      --use-uuid<br>
      =C2=A0<br>
      -bootloader --ptable gpt --append=3D"console=3Dtty1
      console=3D${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw
      rootfstype=3Dext4 init=3D/sbin/init"<br>
      +bootloader=C2=A0=C2=A0=C2=A0=C2=A0 --ptable gpt --append=3D"console=
=3Dtty1
      console=3D${RK_CONSOLE_DEVICE},${RK_CONSOLE_BAUD}n8 rw
      rootfstype=3Dext4 init=3D/sbin/init"<br>
    </p>
    <p><br>
    </p>
    <p>In addition i added an option that avoids editing fstab by wic at
      all since the image also boots without mounting /boot, but i guess
      this is just a matter of taste.</p>
    <p>diff --git a/conf/machine/include/rockchip-wic.inc
      b/conf/machine/include/rockchip-wic.inc<br>
      index 15010a0..30b0d57 100644<br>
      --- a/conf/machine/include/rockchip-wic.inc<br>
      +++ b/conf/machine/include/rockchip-wic.inc<br>
      @@ -26,3 +26,6 @@ WICVARS:append =3D " \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SPL_BINARY \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UBOOT_SUFFIX \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "<br>
      +<br>
      +# Do not update fstab file while creating wic images<br>
      +WIC_CREATE_EXTRA_ARGS ?=3D "--no-fstab-update"<br>
      <br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">Am 18.09.21 um 00:01 schrieb Trevor
      Woerner:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:20210917220121.26663-1-twoerner@gmail.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Recent upstream kernel changes=
 have made the mmc probing order unpredictable.
Therefore, boards with both an emmc and sdmmc interface aren't guaranteed t=
o
boot with a hard-coded root device selected.

For example, on the rock64, with linux-yocto 5.10.y, using the uSD card (i.=
e.
the sdmmc interface) about 50% of the time the boot would succeed, and roug=
hly
50% of the time it wouldn't:

	...
	[    0.612233] Waiting for root device /dev/mmcblk1p7...
	[    0.634551] mmc_host mmc1: Bus speed (slot 0) =3D 300000Hz (slot req 30=
0000Hz, actual 300000HZ div =3D 0)
	[    0.639064] mmc_host mmc0: Bus speed (slot 0) =3D 50000000Hz (slot req =
50000000Hz, actual 50000000HZ di)
	[    0.640007] mmc0: new high speed SDXC card at address 5048
	[    0.641176] mmcblk0: mmc0:5048 SD64G 58.0 GiB
	[    0.647610] random: fast init done
	[    0.648279] GPT:Primary header thinks Alt. header is not at the end of =
the disk.
	[    0.648941] GPT:376479 !=3D 121634815
	[    0.649252] GPT:Alternate GPT header not at the end of the disk.
	[    0.649796] GPT:376479 !=3D 121634815
	[    0.650106] GPT: Use GNU Parted to correct GPT errors.
	[    0.650598]  mmcblk0: p1 p2 p3 p4 p5 p6 p7

NOTE the discrepancy between the kernel waiting for device /dev/mmcblk1p7,
which comes from the hard-coded kernel cmdline, and the kernel probing putt=
ing
the sdmmc on mmcblk0.

With linux-yocto 5.13.y on the rock64 using the uSD card the board would ne=
ver
boot, the sdmmc always appears on mmcblk0.

Instead of simply changing the hard-coded root device (i.e. from mmcblk0 to
mmcblk1) switch to using partition UUIDs instead. Hard-coding the boot devi=
ce
would work with 5.13.y but would fail 50% of the time with 5.10.y; who know=
s
what other kernels will do?

In any case, switching to UUIDs works regardless of board, kernel, or
available mmc interfaces.

Boot tested on:
- rock64
- nanopi-m4-2gb
- tinker-board
- rock-pi-e
- rock-pi-4b

Signed-off-by: Trevor Woerner <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:twoerner@gmail.com">&lt;twoerner@gmail.com&gt;</a>
---
 conf/machine/include/nanopi-m4.inc    |  2 --
 conf/machine/include/rock-pi-4.inc    |  2 --
 conf/machine/include/rockchip-wic.inc |  4 ----
 conf/machine/rock64.conf              |  3 ---
 conf/machine/tinker-board-s.conf      |  2 --
 conf/machine/vyasa-rk3288.conf        |  2 --
 wic/rockchip.wks                      | 16 ++++++++--------
 7 files changed, 8 insertions(+), 23 deletions(-)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nano=
pi-m4.inc
index ac6479d..3870b51 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -7,5 +7,3 @@ MACHINE_FEATURES +=3D "usbhost serial"
=20
 KMACHINE =3D "nanopi-m4"
 KERNEL_DEVICETREE =3D "rockchip/rk3399-nanopi-m4.dtb"
-
-RK_BOOT_DEVICE =3D "mmcblk1"
diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock=
-pi-4.inc
index b6fb3dd..0a86846 100644
--- a/conf/machine/include/rock-pi-4.inc
+++ b/conf/machine/include/rock-pi-4.inc
@@ -3,6 +3,4 @@ MACHINEOVERRIDES =3D. "rock-pi-4:"
=20
 require conf/machine/include/rk3399.inc
=20
-RK_BOOT_DEVICE =3D "mmcblk1"
-
 MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/r=
ockchip-wic.inc
index b5939f7..15010a0 100644
--- a/conf/machine/include/rockchip-wic.inc
+++ b/conf/machine/include/rockchip-wic.inc
@@ -20,11 +20,7 @@ IMAGE_BOOT_FILES =3D " \
 RK_CONSOLE_BAUD ?=3D <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:${@=
d.getVar('SERIAL_CONSOLES').split(';')[0]}">"${@d.getVar('SERIAL_CONSOLES')=
.split(';')[0]}"</a>
 RK_CONSOLE_DEVICE ?=3D <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:$=
{@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}">"${@d.getVar('SERI=
AL_CONSOLES').split(';')[1].split()[0]}"</a>
=20
-# boot device (sd-card/emmc)
-RK_BOOT_DEVICE ??=3D "mmcblk0"
-
 WICVARS:append =3D " \
-	RK_BOOT_DEVICE \
 	RK_CONSOLE_BAUD \
 	RK_CONSOLE_DEVICE \
 	SPL_BINARY \
diff --git a/conf/machine/rock64.conf b/conf/machine/rock64.conf
index 21755a8..fa75a51 100644
--- a/conf/machine/rock64.conf
+++ b/conf/machine/rock64.conf
@@ -12,7 +12,4 @@ MACHINE_FEATURES +=3D "usbhost serial"
 UBOOT_MACHINE =3D "rock64-rk3328_defconfig"
 KERNEL_DEVICETREE =3D "rockchip/rk3328-rock64.dtb"
=20
-# set to mmcblk0 for booting from optional eMMC
-RK_BOOT_DEVICE ?=3D "mmcblk1"
-
 KBUILD_DEFCONFIG =3D "defconfig"
diff --git a/conf/machine/tinker-board-s.conf b/conf/machine/tinker-board-s=
.conf
index 9f44f2f..870b9bc 100644
--- a/conf/machine/tinker-board-s.conf
+++ b/conf/machine/tinker-board-s.conf
@@ -9,5 +9,3 @@ require conf/machine/include/tinker.inc
=20
 KERNEL_DEVICETREE =3D "rk3288-tinker-s.dtb"
 UBOOT_MACHINE =3D "tinker-s-rk3288_defconfig"
-
-RK_BOOT_DEVICE ?=3D "mmcblk1"
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.con=
f
index 9ad1ed4..5b44257 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -13,5 +13,3 @@ KERNEL_DEVICETREE =3D "rk3288-vyasa.dtb"
 KERNEL_EXTRA_ARGS +=3D "LOADADDR=3D0x02000000"
=20
 UBOOT_MACHINE =3D "vyasa-rk3288_defconfig"
-
-RK_BOOT_DEVICE =3D "mmcblk2"
diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index eedae0d..5ee276b 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -15,12 +15,12 @@
 #   boot        32768           229376
 #   root        262144          -           (suggested)
=20
-part loader1    --offset 32     --fixed-size 4000K            --ondisk ${R=
K_BOOT_DEVICE} --source rawcopy                                      --sour=
ceparams=3D"file=3D${SPL_BINARY}"
-part reserved1  --offset 4032   --fixed-size 64K              --ondisk ${R=
K_BOOT_DEVICE}
-part reserved2  --offset 4096   --fixed-size 4096K            --ondisk ${R=
K_BOOT_DEVICE}
-part loader2    --offset 8192   --fixed-size 4096K            --ondisk ${R=
K_BOOT_DEVICE} --source rawcopy                                      --sour=
ceparams=3D"file=3Du-boot.${UBOOT_SUFFIX}"
-part atf        --offset 12288  --fixed-size 4096K            --ondisk ${R=
K_BOOT_DEVICE}
-part /boot      --offset 16384  --size       114688K --active --ondisk ${R=
K_BOOT_DEVICE} --source bootimg-partition --fstype=3Dvfat --label boot --so=
urceparams=3D"loader=3Du-boot"
-part /                                                        --ondisk ${R=
K_BOOT_DEVICE} --source rootfs            --fstype=3Dext4 --label root
+part loader1    --offset 32     --fixed-size 4000K            --source raw=
copy                                                 --sourceparams=3D"file=
=3D${SPL_BINARY}"
+part reserved1  --offset 4032   --fixed-size 64K
+part reserved2  --offset 4096   --fixed-size 4096K
+part loader2    --offset 8192   --fixed-size 4096K            --source raw=
copy                                                 --sourceparams=3D"file=
=3Du-boot.${UBOOT_SUFFIX}"
+part atf        --offset 12288  --fixed-size 4096K
+part /boot      --offset 16384  --size       114688K --active --source boo=
timg-partition --fstype=3Dvfat --label boot            --sourceparams=3D"lo=
ader=3Du-boot"
+part /                                                        --source roo=
tfs            --fstype=3Dext4 --label root --use-uuid
=20
-bootloader --ptable gpt --append=3D"console=3Dtty1 console=3D${RK_CONSOLE_=
DEVICE},${RK_CONSOLE_BAUD}n8 rw root=3D/dev/${RK_BOOT_DEVICE}p7 rootfstype=
=3Dext4 init=3D/sbin/init"
+bootloader --ptable gpt --append=3D"console=3Dtty1 console=3D${RK_CONSOLE_=
DEVICE},${RK_CONSOLE_BAUD}n8 rw rootfstype=3Dext4 init=3D/sbin/init"
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
  </body>
</html>

--------------744D394CAEA8E2413258FD80--
