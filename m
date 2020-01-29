Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.32.1580339797878227495
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 15:16:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=biCZOk9s;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id a6so562193plm.3
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 15:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=pnWyIJjjFFfbVhUvtda98CCLbhOxuJFRaSCG9eehdW0=;
        b=biCZOk9sDu/nTeMCDJZU6NY5F0LrC3zQf3n+joDW+90XpdmS/ndBIYqJee3UdNTPHV
         ld+jClSJDdtJx2/lt+0JoDtl4u/s2/vk+OseifTW5AktKcu1LOLnTezl9yTLhkhURcCY
         m6PRP3sDJOtdNqrMwKhtHHJEN6Ocp3c9de19JjkMxwWRkuInT8wp5NwAXaIS1ZCAYt6w
         tWJdmK1DmY0RDsCbRoPmMaUlOG09aBsj0un7LJx5TH1/BiufBAPdvXsx3dzYgSoGQcBc
         iC/ISQibfRkr/9z4kiqcNJJmKrlOE17XljLL/2MuZOf7Z40gbe+61ww+C4NX/IQ/Rjqp
         qJ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=pnWyIJjjFFfbVhUvtda98CCLbhOxuJFRaSCG9eehdW0=;
        b=ozbXexJ7MHI0z+GZIVqFWWzxprmcnEsPdoNwb6L1+2W2fxzJYRq2YVsplY8rGId4hu
         D2CCbD/Gi3sXS2sxoYg2aPKLN+jfiFXgDjKg2V98Y205IJVRayyx7I08p51X+Bl2xyVr
         TSG70qtSEGMg4395mD0A1WGZWJLq5v3E2sEY05a1De12BrtldzB3XP1HkXY4SEB/oIvS
         10ndQjuw/oslZXNm3j4w+K9OknVkBisaKzbpFlb21KzgRWIDFoR7/j4uIzUj/n0DW/dm
         Bq+23TY9vkYGEwqn7r5r8ZbNSsUYxpDGzRqiPvJzM7F0iD1GA1TYrA1jAasuNAwEIPfs
         kOhw==
X-Gm-Message-State: APjAAAXyWcHB3khRve+bobIdiBH8t96paC3udPEiuP1+p+q+WOU/x4wr
	8kzkceEy7lIH1zmg7HK1PA7MNfy9
X-Google-Smtp-Source: APXvYqyyz6+QkKpnyfgDeomridMBPMUB+TeWAOVhCtLolmji7LY6PiruC8Jc61S36PNavc01UTb/NA==
X-Received: by 2002:a17:902:d20f:: with SMTP id t15mr1874996ply.55.1580339796932;
        Wed, 29 Jan 2020 15:16:36 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:9c41:27a8:c371:1cdd? ([2601:202:4180:a5c0:9c41:27a8:c371:1cdd])
        by smtp.gmail.com with ESMTPSA id u3sm3747210pjv.32.2020.01.29.15.16.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 15:16:36 -0800 (PST)
Subject: Re: [yocto] [PATCH] conf/machine: Remove mpc8315e-rdb machine
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
References: <20200129224056.31061-1-richard.purdie@linuxfoundation.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
 Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
 mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
 aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
 mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
 C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
 Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
 7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
 dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
 FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
 IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
 FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
 vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
 ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
 IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
 g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
 rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
 FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
 wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
 t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
 aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
 oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
 Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
 37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
 0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
 IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
 0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
 0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
 ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
 UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
 Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
 AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
 mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
 ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
 vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
 JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
 EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
 dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
 /mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
 PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
 ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
 8CS2NxU=
Message-ID: <1c6fca41-39a4-9577-173c-07a39a87c2ba@gmail.com>
Date: Wed, 29 Jan 2020 15:16:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200129224056.31061-1-richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative;
 boundary="------------338CE2FD0AEA0FF1C4128AEB"
Content-Language: en-US

--------------338CE2FD0AEA0FF1C4128AEB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 1/29/20 2:40 PM, Richard Purdie wrote:
> This hardware is old/obsolete and unobtainable. Its proving hard to supp=
ort
> with nobody fixing bugs or helping keep the platform running/up to date.
>
> Whilst there is value in real hardware testing, this platform ist just t=
oo
> old and obsolete to support. This does leave a gap for the power archite=
cture
> but at this point there is nobody willing to step up to cover it.
>
> The TSC did discuss and agree support for this platform should be remove=
d.
>
> It calls into question the support/testing of the architecture by Yocto
> Project which is being discussed by the TSC and governing board.

Some additional areas maybe needing to be updated are the docs, QA tests
and QA test plans

I can bug those so we don't forget.

- Armin
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/conf/local.conf.sample              |   1 -
>  meta-yocto-bsp/README.hardware                | 142 ------------------
>  meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf |  36 -----
>  .../linux/linux-yocto-dev.bbappend            |   2 -
>  .../linux/linux-yocto_4.19.bbappend           |   4 -
>  .../linux/linux-yocto_5.2.bbappend            |   4 -
>  meta-yocto-bsp/wic/mpc8315e-rdb.wks           |   4 -
>  7 files changed, 193 deletions(-)
>  delete mode 100644 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
>  delete mode 100644 meta-yocto-bsp/wic/mpc8315e-rdb.wks
>
> diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.con=
f.sample
> index 2e0bb41e646..b555f1d21ef 100644
> --- a/meta-poky/conf/local.conf.sample
> +++ b/meta-poky/conf/local.conf.sample
> @@ -31,7 +31,6 @@
>  #MACHINE ?=3D "beaglebone-yocto"
>  #MACHINE ?=3D "genericx86"
>  #MACHINE ?=3D "genericx86-64"
> -#MACHINE ?=3D "mpc8315e-rdb"
>  #MACHINE ?=3D "edgerouter"
>  #
>  # This sets the default machine to be qemux86-64 if no other machine is=
 selected:
> diff --git a/meta-yocto-bsp/README.hardware b/meta-yocto-bsp/README.hard=
ware
> index d8d2a0cac66..5996be764c7 100644
> --- a/meta-yocto-bsp/README.hardware
> +++ b/meta-yocto-bsp/README.hardware
> @@ -28,7 +28,6 @@ Hardware Reference Boards
>  The following boards are supported by the meta-yocto-bsp layer:
>  
>    * Texas Instruments Beaglebone (beaglebone-yocto)
> -  * Freescale MPC8315E-RDB (mpc8315e-rdb)
>    * Ubiquiti Networks EdgeRouter Lite (edgerouter)
>    * General IA platforms (genericx86 and genericx86-64)
>  
> @@ -155,147 +154,6 @@ From a Linux system with access to the image files=
 perform the following steps:
>  
>    3. Insert the SD card into the Beaglebone and boot the board.
>  
> -Freescale MPC8315E-RDB (mpc8315e-rdb)
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> -
> -The MPC8315 PowerPC reference platform (MPC8315E-RDB) is aimed at hardw=
are and
> -software development of network attached storage (NAS) and digital medi=
a server
> -applications. The MPC8315E-RDB features the PowerQUICC II Pro processor=
, which
> -includes a built-in security accelerator.
> -
> -(Note: you may find it easier to order MPC8315E-RDBA; this appears to b=
e the
> -same board in an enclosure with accessories. In any case it is fully
> -compatible with the instructions given here.)
> -
> -Setup instructions
> -------------------
> -
> -You will need the following:
> -* NFS root setup on your workstation
> -* TFTP server installed on your workstation
> -* Straight-thru 9-conductor serial cable (DB9, M/F) connected from your=
=
=20
> -  PC to UART1
> -* Ethernet connected to the first ethernet port on the board
> -
> ---- Preparation ---
> -
> -Note: if you have altered your board's ethernet MAC address(es) from th=
e
> -defaults, or you need to do so because you want multiple boards on the =
same
> -network, then you will need to change the values in the dts file (patch
> -linux/arch/powerpc/boot/dts/mpc8315erdb.dts within the kernel source). =
If
> -you have left them at the factory default then you shouldn't need to do
> -anything here.
> -
> -Note: To boot from USB disk you need u-boot that supports 'ext2load usb=
'
> -command. You need to setup TFTP server, load u-boot from there and
> -flash it to NOR flash.
> -
> -Beware! Flashing bootloader is potentially dangerous operation that can
> -brick your device if done incorrectly. Please, make sure you understand
> -what below commands mean before executing them.
> -
> -Load the new u-boot.bin from TFTP server to memory address 200000
> -=3D> tftp 200000 u-boot.bin
> -
> -Disable flash protection
> -=3D> protect off all
> -
> -Erase the old u-boot from fe000000 to fe06ffff in NOR flash.
> -The size is 0x70000 (458752 bytes)
> -=3D> erase fe000000 fe06ffff
> -
> -Copy the new u-boot from address 200000 to fe000000
> -the size is 0x70000. It has to be greater or equal to u-boot.bin size
> -=3D> cp.b 200000 fe000000 70000
> -
> -Enable flash protection again
> -=3D> protect on all
> -
> -Reset the board
> -=3D> reset
> -
> ---- Booting from USB disk ---
> -
> - 1. Flash partitioned image to the USB disk
> -
> -    # dd if=3Dcore-image-minimal-mpc8315e-rdb.wic of=3D/dev/sdb
> -
> - 2. Plug USB disk into the MPC8315 board
> -
> - 3. Connect the board's first serial port to your workstation and then =
start up
> -    your favourite serial terminal so that you will be able to interact=
 with
> -    the serial console. If you don't have a favourite, picocom is sugge=
sted:
> -
> -  $ picocom /dev/ttyUSB0 -b 115200
> -
> - 4. Power up or reset the board and press a key on the terminal when pr=
ompted
> -    to get to the U-Boot command line
> -
> - 5. Optional. Load the u-boot.bin from the USB disk:
> -
> - =3D> usb start
> - =3D> ext2load usb 0:1 200000 u-boot.bin
> -
> -    and flash it to NOR flash as described above.
> -
> - 6. Load the kernel and dtb from the first partition of the USB disk:
> -
> - =3D> usb start
> - =3D> ext2load usb 0:1 1000000 uImage
> - =3D> ext2load usb 0:1 2000000 dtb
> -
> - 7. Set bootargs and boot up the device
> -
> - =3D> setenv bootargs root=3D/dev/sdb2 rw rootwait console=3DttyS0,1152=
00
> - =3D> bootm 1000000 - 2000000
> -
> -
> ---- Booting from NFS root ---
> -
> -Load the kernel and dtb (device tree blob), and boot the system as foll=
ows:
> -
> - 1. Get the kernel (uImage-mpc8315e-rdb.bin) and dtb (uImage-mpc8315e-r=
db.dtb)
> -    files from the tmp/deploy directory, and make them available on you=
r TFTP
> -    server.
> -
> - 2. Connect the board's first serial port to your workstation and then =
start up
> -    your favourite serial terminal so that you will be able to interact=
 with
> -    the serial console. If you don't have a favourite, picocom is sugge=
sted:
> -
> -  $ picocom /dev/ttyUSB0 -b 115200
> -
> - 3. Power up or reset the board and press a key on the terminal when pr=
ompted
> -    to get to the U-Boot command line
> -
> - 4. Set up the environment in U-Boot:
> -
> - =3D> setenv ipaddr <board ip>
> - =3D> setenv serverip <tftp server ip>
> - =3D> setenv bootargs root=3D/dev/nfs rw nfsroot=3D<nfsroot ip>:<rootfs=
 path> ip=3D<board ip>:<server ip>:<gateway ip>:255.255.255.0:mpc8315e:eth0=
:off console=3DttyS0,115200
> -
> - 5. Download the kernel and dtb, and boot:
> -
> - =3D> tftp 1000000 uImage-mpc8315e-rdb.bin
> - =3D> tftp 2000000 uImage-mpc8315e-rdb.dtb
> - =3D> bootm 1000000 - 2000000
> -
> ---- Booting from JFFS2 root ---
> -
> - 1. First boot the board with NFS root.
> -
> - 2. Erase the MTD partition which will be used as root:
> -
> -    $ flash_eraseall  /dev/mtd3
> -
> - 3. Copy the JFFS2 image to the MTD partition:
> -
> -    $ flashcp core-image-minimal-mpc8315e-rdb.jffs2 /dev/mtd3
> -
> - 4. Then reboot the board and set up the environment in U-Boot:
> -
> -    =3D> setenv bootargs root=3D/dev/mtdblock3 rootfstype=3Djffs2 conso=
le=3DttyS0,115200
> -
> -
>  Ubiquiti Networks EdgeRouter Lite (edgerouter)
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  
> diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-=
bsp/conf/machine/mpc8315e-rdb.conf
> deleted file mode 100644
> index 5382796284b..00000000000
> --- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> +++ /dev/null
> @@ -1,36 +0,0 @@
> -#@TYPE: Machine
> -#@NAME: Freescale MPC8315E-RDB
> -#@DESCRIPTION: Machine configuration for Freescale MPC8315E-RDB
> -
> -TARGET_FPU =3D ""
> -
> -require conf/machine/include/tune-ppce300c3.inc
> -
> -KERNEL_IMAGETYPE =3D "uImage"
> -
> -EXTRA_IMAGEDEPENDS +=3D "u-boot"
> -UBOOT_MACHINE =3D "MPC8315ERDB_config"
> -
> -SERIAL_CONSOLES =3D "115200;ttyS0"
> -
> -MACHINE_FEATURES =3D "keyboard pci ext2 ext3 serial"
> -
> -PREFERRED_VERSION_linux-yocto ?=3D "5.2%"
> -PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> -
> -PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
> -XSERVER ?=3D "xserver-xorg \
> -            xf86-video-fbdev"
> -
> -UBOOT_ENTRYPOINT =3D "0x00000000"
> -
> -KERNEL_DEVICETREE =3D "mpc8315erdb.dtb"
> -
> -MACHINE_EXTRA_RRECOMMENDS =3D "kernel-modules"
> -
> -IMAGE_FSTYPES ?=3D "jffs2 tar.bz2"
> -JFFS2_ERASEBLOCK =3D "0x4000"
> -
> -IMAGE_FSTYPES +=3D "wic wic.bmap"
> -WKS_FILE ?=3D 'mpc8315e-rdb.wks'
> -IMAGE_BOOT_FILES ?=3D "u-boot.bin uImage mpc8315erdb.dtb;dtb"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
> index f044dafb4d3..6e5a129dd41 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
> @@ -2,7 +2,6 @@ KBRANCH_genericx86  =3D "standard/base"
>  KBRANCH_genericx86-64  =3D "standard/base"
>  KBRANCH_edgerouter =3D "standard/edgerouter"
>  KBRANCH_beaglebone-yocto =3D "standard/beaglebone"
> -KBRANCH_mpc8315e-rdb =3D "standard/fsl-mpc8315e-rdb"
>  
>  KMACHINE_genericx86 ?=3D "common-pc"
>  KMACHINE_genericx86-64 ?=3D "common-pc-64"
> @@ -12,4 +11,3 @@ COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
>  COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
> -COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappe=
nd b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> index ec269d905c4..7b4bd2c4ee1 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
> @@ -2,7 +2,6 @@ KBRANCH_genericx86  =3D "v4.19/standard/base"
>  KBRANCH_genericx86-64  =3D "v4.19/standard/base"
>  KBRANCH_edgerouter =3D "v4.19/standard/edgerouter"
>  KBRANCH_beaglebone-yocto =3D "v4.19/standard/beaglebone"
> -KBRANCH_mpc8315e-rdb =3D "v4.19/standard/fsl-mpc8315e-rdb"
>  
>  KMACHINE_genericx86 ?=3D "common-pc"
>  KMACHINE_genericx86-64 ?=3D "common-pc-64"
> @@ -12,16 +11,13 @@ SRCREV_machine_genericx86    ?=3D "5664dc14399edcaad=
210bbeb6343d84561fb3ea8"
>  SRCREV_machine_genericx86-64 ?=3D "5664dc14399edcaad210bbeb6343d84561fb=
3ea8"
>  SRCREV_machine_edgerouter ?=3D "5664dc14399edcaad210bbeb6343d84561fb3ea=
8"
>  SRCREV_machine_beaglebone-yocto ?=3D "5664dc14399edcaad210bbeb6343d8456=
1fb3ea8"
> -SRCREV_machine_mpc8315e-rdb ?=3D "d419f4ca6ba4b097b8ad710a93b89510f5b29=
98c"
>  
>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
>  COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
> -COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
>  
>  LINUX_VERSION_genericx86 =3D "4.19.34"
>  LINUX_VERSION_genericx86-64 =3D "4.19.34"
>  LINUX_VERSION_edgerouter =3D "4.19.34"
>  LINUX_VERSION_beaglebone-yocto =3D "4.19.34"
> -LINUX_VERSION_mpc8315e-rdb =3D "4.19.34"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
> index f15bccbaf2e..9a965321df9 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
> @@ -2,7 +2,6 @@ KBRANCH_genericx86  =3D "v5.2/standard/base"
>  KBRANCH_genericx86-64  =3D "v5.2/standard/base"
>  KBRANCH_edgerouter =3D "v5.2/standard/edgerouter"
>  KBRANCH_beaglebone-yocto =3D "v5.2/standard/beaglebone"
> -KBRANCH_mpc8315e-rdb =3D "v5.2/standard/fsl-mpc8315e-rdb"
>  
>  KMACHINE_genericx86 ?=3D "common-pc"
>  KMACHINE_genericx86-64 ?=3D "common-pc-64"
> @@ -12,16 +11,13 @@ SRCREV_machine_genericx86    ?=3D "25b14cdf9659c68ab=
32d66616dfdbbe2ece3fd94"
>  SRCREV_machine_genericx86-64 ?=3D "25b14cdf9659c68ab32d66616dfdbbe2ece3=
fd94"
>  SRCREV_machine_edgerouter ?=3D "25b14cdf9659c68ab32d66616dfdbbe2ece3fd9=
4"
>  SRCREV_machine_beaglebone-yocto ?=3D "25b14cdf9659c68ab32d66616dfdbbe2e=
ce3fd94"
> -SRCREV_machine_mpc8315e-rdb ?=3D "77f031b182885c177b3a96098ae61271911a7=
954"
>  
>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
>  COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
> -COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
>  
>  LINUX_VERSION_genericx86 =3D "5.2.17"
>  LINUX_VERSION_genericx86-64 =3D "5.2.17"
>  LINUX_VERSION_edgerouter =3D "5.2.17"
>  LINUX_VERSION_beaglebone-yocto =3D "5.2.17"
> -LINUX_VERSION_mpc8315e-rdb =3D "5.2.17"
> diff --git a/meta-yocto-bsp/wic/mpc8315e-rdb.wks b/meta-yocto-bsp/wic/mp=
c8315e-rdb.wks
> deleted file mode 100644
> index d0cb607ffc9..00000000000
> --- a/meta-yocto-bsp/wic/mpc8315e-rdb.wks
> +++ /dev/null
> @@ -1,4 +0,0 @@
> -# short-description: Create SD card image for MPC8315E-RDB
> -# long-description: Create a partitioned SD card image for Freescale MP=
C8315E-RDB reference hardware.
> -part /boot --source bootimg-partition --ondisk sdb --fstype=3Dext3 --la=
bel boot
> -part / --source rootfs --ondisk sdb --fstype=3Dext3 --label root
>
>=20


--------------338CE2FD0AEA0FF1C4128AEB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 1/29/20 2:40 PM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200129224056.31061-1-richard.purdie@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">This hardware is old/obsolete and unobtainable. Its proving hard to support
with nobody fixing bugs or helping keep the platform running/up to date.

Whilst there is value in real hardware testing, this platform ist just too
old and obsolete to support. This does leave a gap for the power architecture
but at this point there is nobody willing to step up to cover it.

The TSC did discuss and agree support for this platform should be removed.

It calls into question the support/testing of the architecture by Yocto
Project which is being discussed by the TSC and governing board.</pre>
    </blockquote>
    <br>
    Some additional areas maybe needing to be updated are the docs, QA
    tests and QA test plans<br>
    <br>
    I can bug those so we don't forget.<br>
    <br>
    - Armin<br>
    <blockquote type="cite"
      cite="mid:20200129224056.31061-1-richard.purdie@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Richard Purdie <a class="moz-txt-link-rfc2396E" href="mailto:richard.purdie@linuxfoundation.org">&lt;richard.purdie@linuxfoundation.org&gt;</a>
---
 meta-poky/conf/local.conf.sample              |   1 -
 meta-yocto-bsp/README.hardware                | 142 ------------------
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf |  36 -----
 .../linux/linux-yocto-dev.bbappend            |   2 -
 .../linux/linux-yocto_4.19.bbappend           |   4 -
 .../linux/linux-yocto_5.2.bbappend            |   4 -
 meta-yocto-bsp/wic/mpc8315e-rdb.wks           |   4 -
 7 files changed, 193 deletions(-)
 delete mode 100644 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
 delete mode 100644 meta-yocto-bsp/wic/mpc8315e-rdb.wks

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 2e0bb41e646..b555f1d21ef 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -31,7 +31,6 @@
 #MACHINE ?= "beaglebone-yocto"
 #MACHINE ?= "genericx86"
 #MACHINE ?= "genericx86-64"
-#MACHINE ?= "mpc8315e-rdb"
 #MACHINE ?= "edgerouter"
 #
 # This sets the default machine to be qemux86-64 if no other machine is selected:
diff --git a/meta-yocto-bsp/README.hardware b/meta-yocto-bsp/README.hardware
index d8d2a0cac66..5996be764c7 100644
--- a/meta-yocto-bsp/README.hardware
+++ b/meta-yocto-bsp/README.hardware
@@ -28,7 +28,6 @@ Hardware Reference Boards
 The following boards are supported by the meta-yocto-bsp layer:
 
   * Texas Instruments Beaglebone (beaglebone-yocto)
-  * Freescale MPC8315E-RDB (mpc8315e-rdb)
   * Ubiquiti Networks EdgeRouter Lite (edgerouter)
   * General IA platforms (genericx86 and genericx86-64)
 
@@ -155,147 +154,6 @@ From a Linux system with access to the image files perform the following steps:
 
   3. Insert the SD card into the Beaglebone and boot the board.
 
-Freescale MPC8315E-RDB (mpc8315e-rdb)
-=====================================
-
-The MPC8315 PowerPC reference platform (MPC8315E-RDB) is aimed at hardware and
-software development of network attached storage (NAS) and digital media server
-applications. The MPC8315E-RDB features the PowerQUICC II Pro processor, which
-includes a built-in security accelerator.
-
-(Note: you may find it easier to order MPC8315E-RDBA; this appears to be the
-same board in an enclosure with accessories. In any case it is fully
-compatible with the instructions given here.)
-
-Setup instructions
-------------------
-
-You will need the following:
-* NFS root setup on your workstation
-* TFTP server installed on your workstation
-* Straight-thru 9-conductor serial cable (DB9, M/F) connected from your 
-  PC to UART1
-* Ethernet connected to the first ethernet port on the board
-
---- Preparation ---
-
-Note: if you have altered your board's ethernet MAC address(es) from the
-defaults, or you need to do so because you want multiple boards on the same
-network, then you will need to change the values in the dts file (patch
-linux/arch/powerpc/boot/dts/mpc8315erdb.dts within the kernel source). If
-you have left them at the factory default then you shouldn't need to do
-anything here.
-
-Note: To boot from USB disk you need u-boot that supports 'ext2load usb'
-command. You need to setup TFTP server, load u-boot from there and
-flash it to NOR flash.
-
-Beware! Flashing bootloader is potentially dangerous operation that can
-brick your device if done incorrectly. Please, make sure you understand
-what below commands mean before executing them.
-
-Load the new u-boot.bin from TFTP server to memory address 200000
-=&gt; tftp 200000 u-boot.bin
-
-Disable flash protection
-=&gt; protect off all
-
-Erase the old u-boot from fe000000 to fe06ffff in NOR flash.
-The size is 0x70000 (458752 bytes)
-=&gt; erase fe000000 fe06ffff
-
-Copy the new u-boot from address 200000 to fe000000
-the size is 0x70000. It has to be greater or equal to u-boot.bin size
-=&gt; cp.b 200000 fe000000 70000
-
-Enable flash protection again
-=&gt; protect on all
-
-Reset the board
-=&gt; reset
-
---- Booting from USB disk ---
-
- 1. Flash partitioned image to the USB disk
-
-    # dd if=core-image-minimal-mpc8315e-rdb.wic of=/dev/sdb
-
- 2. Plug USB disk into the MPC8315 board
-
- 3. Connect the board's first serial port to your workstation and then start up
-    your favourite serial terminal so that you will be able to interact with
-    the serial console. If you don't have a favourite, picocom is suggested:
-
-  $ picocom /dev/ttyUSB0 -b 115200
-
- 4. Power up or reset the board and press a key on the terminal when prompted
-    to get to the U-Boot command line
-
- 5. Optional. Load the u-boot.bin from the USB disk:
-
- =&gt; usb start
- =&gt; ext2load usb 0:1 200000 u-boot.bin
-
-    and flash it to NOR flash as described above.
-
- 6. Load the kernel and dtb from the first partition of the USB disk:
-
- =&gt; usb start
- =&gt; ext2load usb 0:1 1000000 uImage
- =&gt; ext2load usb 0:1 2000000 dtb
-
- 7. Set bootargs and boot up the device
-
- =&gt; setenv bootargs root=/dev/sdb2 rw rootwait console=ttyS0,115200
- =&gt; bootm 1000000 - 2000000
-
-
---- Booting from NFS root ---
-
-Load the kernel and dtb (device tree blob), and boot the system as follows:
-
- 1. Get the kernel (uImage-mpc8315e-rdb.bin) and dtb (uImage-mpc8315e-rdb.dtb)
-    files from the tmp/deploy directory, and make them available on your TFTP
-    server.
-
- 2. Connect the board's first serial port to your workstation and then start up
-    your favourite serial terminal so that you will be able to interact with
-    the serial console. If you don't have a favourite, picocom is suggested:
-
-  $ picocom /dev/ttyUSB0 -b 115200
-
- 3. Power up or reset the board and press a key on the terminal when prompted
-    to get to the U-Boot command line
-
- 4. Set up the environment in U-Boot:
-
- =&gt; setenv ipaddr &lt;board ip&gt;
- =&gt; setenv serverip &lt;tftp server ip&gt;
- =&gt; setenv bootargs root=/dev/nfs rw nfsroot=&lt;nfsroot ip&gt;:&lt;rootfs path&gt; ip=&lt;board ip&gt;:&lt;server ip&gt;:&lt;gateway ip&gt;:255.255.255.0:mpc8315e:eth0:off console=ttyS0,115200
-
- 5. Download the kernel and dtb, and boot:
-
- =&gt; tftp 1000000 uImage-mpc8315e-rdb.bin
- =&gt; tftp 2000000 uImage-mpc8315e-rdb.dtb
- =&gt; bootm 1000000 - 2000000
-
---- Booting from JFFS2 root ---
-
- 1. First boot the board with NFS root.
-
- 2. Erase the MTD partition which will be used as root:
-
-    $ flash_eraseall  /dev/mtd3
-
- 3. Copy the JFFS2 image to the MTD partition:
-
-    $ flashcp core-image-minimal-mpc8315e-rdb.jffs2 /dev/mtd3
-
- 4. Then reboot the board and set up the environment in U-Boot:
-
-    =&gt; setenv bootargs root=/dev/mtdblock3 rootfstype=jffs2 console=ttyS0,115200
-
-
 Ubiquiti Networks EdgeRouter Lite (edgerouter)
 ==============================================
 
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
deleted file mode 100644
index 5382796284b..00000000000
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ /dev/null
@@ -1,36 +0,0 @@
-#@TYPE: Machine
-#@NAME: Freescale MPC8315E-RDB
-#@DESCRIPTION: Machine configuration for Freescale MPC8315E-RDB
-
-TARGET_FPU = ""
-
-require conf/machine/include/tune-ppce300c3.inc
-
-KERNEL_IMAGETYPE = "uImage"
-
-EXTRA_IMAGEDEPENDS += "u-boot"
-UBOOT_MACHINE = "MPC8315ERDB_config"
-
-SERIAL_CONSOLES = "115200;ttyS0"
-
-MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
-
-PREFERRED_VERSION_linux-yocto ?= "5.2%"
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-XSERVER ?= "xserver-xorg \
-            xf86-video-fbdev"
-
-UBOOT_ENTRYPOINT = "0x00000000"
-
-KERNEL_DEVICETREE = "mpc8315erdb.dtb"
-
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules"
-
-IMAGE_FSTYPES ?= "jffs2 tar.bz2"
-JFFS2_ERASEBLOCK = "0x4000"
-
-IMAGE_FSTYPES += "wic wic.bmap"
-WKS_FILE ?= 'mpc8315e-rdb.wks'
-IMAGE_BOOT_FILES ?= "u-boot.bin uImage mpc8315erdb.dtb;dtb"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
index f044dafb4d3..6e5a129dd41 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -2,7 +2,6 @@ KBRANCH_genericx86  = "standard/base"
 KBRANCH_genericx86-64  = "standard/base"
 KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone-yocto = "standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
@@ -12,4 +11,3 @@ COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
index ec269d905c4..7b4bd2c4ee1 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
@@ -2,7 +2,6 @@ KBRANCH_genericx86  = "v4.19/standard/base"
 KBRANCH_genericx86-64  = "v4.19/standard/base"
 KBRANCH_edgerouter = "v4.19/standard/edgerouter"
 KBRANCH_beaglebone-yocto = "v4.19/standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "v4.19/standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
@@ -12,16 +11,13 @@ SRCREV_machine_genericx86    ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
 SRCREV_machine_genericx86-64 ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
 SRCREV_machine_edgerouter ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
 SRCREV_machine_beaglebone-yocto ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
-SRCREV_machine_mpc8315e-rdb ?= "d419f4ca6ba4b097b8ad710a93b89510f5b2998c"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.19.34"
 LINUX_VERSION_genericx86-64 = "4.19.34"
 LINUX_VERSION_edgerouter = "4.19.34"
 LINUX_VERSION_beaglebone-yocto = "4.19.34"
-LINUX_VERSION_mpc8315e-rdb = "4.19.34"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
index f15bccbaf2e..9a965321df9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
@@ -2,7 +2,6 @@ KBRANCH_genericx86  = "v5.2/standard/base"
 KBRANCH_genericx86-64  = "v5.2/standard/base"
 KBRANCH_edgerouter = "v5.2/standard/edgerouter"
 KBRANCH_beaglebone-yocto = "v5.2/standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "v5.2/standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
@@ -12,16 +11,13 @@ SRCREV_machine_genericx86    ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
 SRCREV_machine_genericx86-64 ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
 SRCREV_machine_edgerouter ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
 SRCREV_machine_beaglebone-yocto ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
-SRCREV_machine_mpc8315e-rdb ?= "77f031b182885c177b3a96098ae61271911a7954"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "5.2.17"
 LINUX_VERSION_genericx86-64 = "5.2.17"
 LINUX_VERSION_edgerouter = "5.2.17"
 LINUX_VERSION_beaglebone-yocto = "5.2.17"
-LINUX_VERSION_mpc8315e-rdb = "5.2.17"
diff --git a/meta-yocto-bsp/wic/mpc8315e-rdb.wks b/meta-yocto-bsp/wic/mpc8315e-rdb.wks
deleted file mode 100644
index d0cb607ffc9..00000000000
--- a/meta-yocto-bsp/wic/mpc8315e-rdb.wks
+++ /dev/null
@@ -1,4 +0,0 @@
-# short-description: Create SD card image for MPC8315E-RDB
-# long-description: Create a partitioned SD card image for Freescale MPC8315E-RDB reference hardware.
-part /boot --source bootimg-partition --ondisk sdb --fstype=ext3 --label boot
-part / --source rootfs --ondisk sdb --fstype=ext3 --label root
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------338CE2FD0AEA0FF1C4128AEB--
