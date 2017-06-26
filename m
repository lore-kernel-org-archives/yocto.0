Return-Path: <mwiesing@avantys.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8372E00BBF; Mon, 26 Jun 2017 05:03:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,LOTS_OF_MONEY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 LOTS_OF_MONEY Huge... sums of money
X-Greylist: delayed 378 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Jun 2017 05:03:52 PDT
Received: from mail.avantys.de (mail.avantys.de [136.243.94.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ECA9E00B8D
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 05:03:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.int.avantys.de (Postfix) with ESMTP id 0D70EC7CC5
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 13:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avantys.de; h=
	content-transfer-encoding:user-agent:content-type:content-type
	:mime-version:date:date:subject:subject:message-id:from:from
	:in-reply-to:received:received:received; s=aede201510; t=
	1498478249; x=1500292650; bh=jb7g1SsNwtzIDu/CSHF2l0PLDHr4c968lfS
	ZC4JFz4Q=; b=yE2mlRnVxKF6hEPwnwrGANxv44gQXhj1kW4K+U3mKXuzqWNiELH
	6GlkV3ZS3yyL4NdeEEtvTZWeiBoMrGtbq5VouKWVJDbjqkLj+dTV+8q5vyRZQHBM
	Hgdoe46dazGAknvKXZW3rf4rUz0wjBgzkdgK7ELHILnu0d/tG+q8cSYE=
X-Virus-Scanned: Debian amavisd-new at mail.avantys.de
Received: from mail.avantys.de ([127.0.0.1])
	by localhost (mail.int.avantys.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZ1NAv5CJUwk for <yocto@yoctoproject.org>;
	Mon, 26 Jun 2017 13:57:29 +0200 (CEST)
Received: from hz.ipa.avantys.de (sogo.int.avantys.de [192.168.111.12])
	by mail.int.avantys.de (Postfix) with ESMTP id 2D8E2C7844
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 13:57:29 +0200 (CEST)
Received: by hz.ipa.avantys.de (Postfix, from userid 999)
	id 1AB3462849; Mon, 26 Jun 2017 13:57:29 +0200 (CEST)
in-reply-to: <mailman.66461.1498444361.15860.yocto@yoctoproject.org>
to: yocto@yoctoproject.org
from: "Michael Wiesing" <mwiesing@avantys.de>
message-id: <ce3-5950f680-1-3cc3be40@99034641>
X-Forward: 217.91.71.16, 192.168.111.13
date: Mon, 26 Jun 2017 13:57:29 +0200
MIME-Version: 1.0
content-type: text/plain; charset="utf-8"
User-Agent: SOGoMail 2.3.4
content-transfer-encoding: quoted-printable
Subject: Re: [raspberrypi][rt] yocto Digest, Vol 81, Issue 118
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
X-List-Received-Date: Mon, 26 Jun 2017 12:03:55 -0000

 
Am Montag, 26. Juni 2017 04:32 CEST, yocto-request@yoctoproject.org sch=
rieb: 
 
> Send yocto mailing list submissions to
> 	yocto@yoctoproject.org
> 
> To subscribe or unsubscribe via the World Wide Web, visit
> 	https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
> 	yocto-request@yoctoproject.org
> 
> You can reach the person managing the list at
> 	yocto-owner@yoctoproject.org
> 
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
> 
> 
> Today's Topics:
> 
>    1. [meta-chip][PATCH V2 1/3] u-boot-chip: Deploy the
>       sunxi-spl-with-ecc.bin file. (drew.moseley@mender.io)
>    2. [meta-chip][PATCH V2 0/3] Initial attempt at flashing
>       instructions. (drew.moseley@mender.io)
>    3. [meta-chip][PATCH V2 2/3] chip: Build sunxi-tools-native.
>       (drew.moseley@mender.io)
>    4. [meta-chip][PATCH V2 3/3] chip: Add chip-u-boot-scr recipe
>       and flash script (drew.moseley@mender.io)
>    5. Current state of linux-raspberrypi-rt? (Paul D. DeRocco)
> 
> 
> ---------------------------------------------------------------------=
-
> 
> Message: 1
> Date: Sun, 25 Jun 2017 15:55:44 -0400
> From: drew.moseley@mender.io
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-chip][PATCH V2 1/3] u-boot-chip: Deploy the
> 	sunxi-spl-with-ecc.bin file.
> Message-ID:
> 	<25feab71125423652d0a966d0039280b9ec8fe48.1498420110.git.drew.mosele=
y@mender.io>
> 	
> 
> From: Drew Moseley <drew.moseley@mender.io>
> 
> Signed-off-by: Drew Moseley <drew.moseley@mender.io>
> ---
>  conf/machine/chip.conf                | 1 +
>  recipes-bsp/u-boot/u-boot-chip=5Fgit.bb | 6 ++++++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/conf/machine/chip.conf b/conf/machine/chip.conf
> index 0a45a2f..8f54067 100644
> --- a/conf/machine/chip.conf
> +++ b/conf/machine/chip.conf
> @@ -21,6 +21,7 @@ KERNEL=5FIMAGETYPE =3D "zImage"
>  KERNEL=5FDEVICETREE =3D "sun5i-r8-chip.dtb"
>  
>  SPL=5FBINARY =3D "sunxi-spl.bin"
> +SPL=5FECC=5FBINARY =3D "sunxi-spl-with-ecc.bin"
>  UBOOT=5FBINARY =3D "u-boot-dtb.bin"
>  UBOOT=5FMACHINE =3D "CHIP=5Fdefconfig"
>  
> diff --git a/recipes-bsp/u-boot/u-boot-chip=5Fgit.bb b/recipes-bsp/u-=
boot/u-boot-chip=5Fgit.bb
> index 8e2be50..f12fae6 100644
> --- a/recipes-bsp/u-boot/u-boot-chip=5Fgit.bb
> +++ b/recipes-bsp/u-boot/u-boot-chip=5Fgit.bb
> @@ -19,7 +19,13 @@ SRC=5FURI =3D " \
>  S =3D "${WORKDIR}/git"
>  
>  do=5Fcompile=5Fappend() {
> +    install ${B}/spl/${SPL=5FECC=5FBINARY} ${B}/${SPL=5FECC=5FBINARY=
}
>      install ${B}/spl/${SPL=5FBINARY} ${B}/${SPL=5FBINARY}
>  }
>  
>  COMPATIBLE=5FMACHINE =3D "chip"
> +
> +do=5Fdeploy=5Fappend() {
> +    install -m 644 ${B}/${SPL=5FECC=5FBINARY} ${DEPLOYDIR}/${SPL=5FE=
CC=5FBINARY}-${PV}-${PR}
> +    ln -sf ${SPL=5FECC=5FBINARY}-${PV}-${PR} ${DEPLOYDIR}/${SPL=5FEC=
C=5FBINARY}
> +}
> \ No newline at end of file
> -- 
> 2.7.4
> 
> 
> 
> ------------------------------
> 
> Message: 2
> Date: Sun, 25 Jun 2017 15:55:43 -0400
> From: drew.moseley@mender.io
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-chip][PATCH V2 0/3] Initial attempt at flashin=
g
> 	instructions.
> Message-ID: <cover.1498420110.git.drew.moseley@mender.io>
> 
> From: Drew Moseley <drew.moseley@mender.io>
> 
> * V2:
> 
> Updated README and layer dependencies.
> 
> Added error checking to flashing script
> 
> * V1:
> 
> This set of patches adds the native tools and target components neede=
d to
> reflash the CHIP boards.  Additionally a shell script is added to the=
 deploy
> directory showing how to kick off a flash update. It's not ideal as I=
've
> hardcoded a max size for the UBI image into the script and didn't see=
 much
> of an alternative. It does function though.
> 
> Drew
> 
> The following changes since commit 0079e6ac10fc371d6f527270c23b887561=
f717aa:
> 
>   chip: Append to MACHINE=5FEXTRA=5FRRECOMMENDS rather than overwriti=
ng (2017-06-15 13:37:19 +0100)
> 
> are available in the git repository at:
> 
>   git@github.com:drewmoseley/meta-chip.git flashing-instructions-v2
> 
> for you to fetch changes up to ddbfd00d73ea022aaa02005393a326d8802dd6=
4a:
> 
>   chip: Add chip-u-boot-scr recipe and flash script (2017-06-25 15:28=
:54 -0400)
> 
> ----------------------------------------------------------------
> Drew Moseley (3):
>       u-boot-chip: Deploy the sunxi-spl-with-ecc.bin file.
>       chip: Build sunxi-tools-native.
>       chip: Add chip-u-boot-scr recipe and flash script
> 
>  README                                          | 94 +++++++++++++++=
+++++++++-
>  conf/layer.conf                                 |  3 +
>  conf/machine/chip.conf                          |  3 +-
>  recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb  | 89 +++++++++++++++=
++++++++
>  recipes-bsp/chip-u-boot-scr/files/boot.cmd.full | 32 +++++++++
>  recipes-bsp/chip-u-boot-scr/files/boot.cmd.in   | 43 +++++++++++
>  recipes-bsp/u-boot/u-boot-chip=5Fgit.bb           |  7 ++
>  7 files changed, 269 insertions(+), 2 deletions(-)
>  create mode 100644 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
>  create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
>  create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in
> 
> Drew Moseley (3):
>   u-boot-chip: Deploy the sunxi-spl-with-ecc.bin file.
>   chip: Build sunxi-tools-native.
>   chip: Add chip-u-boot-scr recipe and flash script
> 
>  README                                          | 94 +++++++++++++++=
+++++++++-
>  conf/layer.conf                                 |  3 +
>  conf/machine/chip.conf                          |  3 +-
>  recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb  | 89 +++++++++++++++=
++++++++
>  recipes-bsp/chip-u-boot-scr/files/boot.cmd.full | 32 +++++++++
>  recipes-bsp/chip-u-boot-scr/files/boot.cmd.in   | 43 +++++++++++
>  recipes-bsp/u-boot/u-boot-chip=5Fgit.bb           |  7 ++
>  7 files changed, 269 insertions(+), 2 deletions(-)
>  create mode 100644 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
>  create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
>  create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in
> 
> -- 
> 2.7.4
> 
> 
> 
> ------------------------------
> 
> Message: 3
> Date: Sun, 25 Jun 2017 15:55:45 -0400
> From: drew.moseley@mender.io
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-chip][PATCH V2 2/3] chip: Build
> 	sunxi-tools-native.
> Message-ID:
> 	<cc067a3eae2ea57cd7935283428ac759d3e6a898.1498420110.git.drew.mosele=
y@mender.io>
> 	
> 
> From: Drew Moseley <drew.moseley@mender.io>
> 
> Add LAYERDEPENDS on meta-sunxi and add the sunxi-tools-native
> pacakage to EXTRA=5FIMAGEDEPENDS.
> 
> Signed-off-by: Drew Moseley <drew.moseley@mender.io>
> ---
>  README                 | 3 +++
>  conf/layer.conf        | 3 +++
>  conf/machine/chip.conf | 2 +-
>  3 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/README b/README
> index cccf59e..32f70b2 100644
> --- a/README
> +++ b/README
> @@ -14,6 +14,9 @@ This layer depends on:
>    layers: meta
>    branch: master
>  
> +  URI: git://github.com/linux-sunxi/meta-sunxi.git
> +  branch: master
> +
>  
>  Patches
>  =3D=3D=3D=3D=3D=3D=3D
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 5dad66e..3324908 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -8,3 +8,6 @@ BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
>  BBFILE=5FCOLLECTIONS +=3D "meta-chip"
>  BBFILE=5FPATTERN=5Fmeta-chip =3D "^${LAYERDIR}/"
>  BBFILE=5FPRIORITY=5Fmeta-chip =3D "6"
> +
> +# Add this to get access to sunxi-tools recipe
> +LAYERDEPENDS=5Fmeta-chip =3D "meta-sunxi"
> \ No newline at end of file
> diff --git a/conf/machine/chip.conf b/conf/machine/chip.conf
> index 8f54067..ae166f9 100644
> --- a/conf/machine/chip.conf
> +++ b/conf/machine/chip.conf
> @@ -5,7 +5,7 @@
>  MACHINE=5FEXTRA=5FRRECOMMENDS =3D " kernel-modules"
>  MACHINE=5FESSENTIAL=5FEXTRA=5FRDEPENDS =3D " kernel-image kernel-dev=
icetree"
>  
> -EXTRA=5FIMAGEDEPENDS +=3D "u-boot"
> +EXTRA=5FIMAGEDEPENDS +=3D "u-boot sunxi-tools-native"
>  
>  DEFAULTTUNE ?=3D "cortexa8t-neon"
>  include conf/machine/include/tune-cortexa8.inc
> -- 
> 2.7.4
> 
> 
> 
> ------------------------------
> 
> Message: 4
> Date: Sun, 25 Jun 2017 15:55:46 -0400
> From: drew.moseley@mender.io
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-chip][PATCH V2 3/3] chip: Add chip-u-boot-scr=

> 	recipe	and flash script
> Message-ID:
> 	<ddbfd00d73ea022aaa02005393a326d8802dd64a.1498420110.git.drew.mosele=
y@mender.io>
> 	
> 
> From: Drew Moseley <drew.moseley@mender.io>
> 
> Add a U-Boot script to handle flashing the SPL, U-Boot
> and UBI root filesystem images into the onboard flash.
> Also generate a script showing how to execute the flash
> steps.
> 
> Signed-off-by: Drew Moseley <drew.moseley@mender.io>
> ---
>  README                                          | 91 +++++++++++++++=
+++++++++-
>  recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb  | 89 +++++++++++++++=
+++++++++
>  recipes-bsp/chip-u-boot-scr/files/boot.cmd.full | 32 +++++++++
>  recipes-bsp/chip-u-boot-scr/files/boot.cmd.in   | 43 ++++++++++++
>  recipes-bsp/u-boot/u-boot-chip=5Fgit.bb           |  1 +
>  5 files changed, 255 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
>  create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
>  create mode 100644 recipes-bsp/chip-u-boot-scr/files/boot.cmd.in
> 
> diff --git a/README b/README
> index 32f70b2..d3ab815 100644
> --- a/README
> +++ b/README
> @@ -62,4 +62,93 @@ To build a machine supported by this BSP layer fol=
low the next steps:
>  II. Flashing a C.H.I.P. board
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  
> -<TODO>
> +As part of the build including this BSP layer, a U-Boot script and a=

> +shell script are created to assist in flashing your images to the CH=
IP
> +board.  Note that this script assumes a maximum size for your UBI
> +image of 167772160 (0x0A000000) bytes.  If your UBI image exceeds
> +that, then you will need to adapt this to your environment.
> +
> +To successfully run this script you will first need to set your boar=
d
> +into FEL mode. Insert a wire into the U14 header between pin 7 (FEL)=

> +and GND.  Then connect the board with a USB cable to your build
> +system. More details here:
> +    https://docs.getchip.com/chip.html#flash-chip-with-an-os
> +
> +You need to specify the base filename of your UBI image using the
> +UBI=5FIMAGE shell variable before invoking the generated script as
> +follows:
> +
> +# UBI=5FIMAGE=3Dchip-hwup-image-chip.ubi \
> +        ./tmp/deploy/images/chip/flash=5FCHIP=5Fboard.sh
> +
> +This script will take some time to execute.  The output of this scri=
pt
> +as run on your host machine should look similar to the following:
> +
> +    # UBI=5FIMAGE=3Dchip-hwup-image-chip.ubi ./build/chip/tmp/deploy=
/images/chip/flash=5FCHIP=5Fboard.sh
> +    100% [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D]  3537 kB,  513.9 kB/s
> +    100% [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D]   619 kB,  551.1 kB/s
> +    100% [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D]     2 kB,  476.0 kB/s
> +    100% [=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D] 71303 kB,  531.1 kB/s
> +
> +If you have a serial console connected to your board, you will see
> +progress and a message on the console indicating when flashing is
> +complete:
> +
> +    U-Boot 2016.01 (Jun 20 2017 - 02:54:42 -0400) Allwinner Technolo=
gy
> +    
> +    CPU:   Allwinner A13 (SUN5I)
> +    I2C:   ready
> +    DRAM:  512 MiB
> +    NAND:  8192 MiB
> +    video-mode 720x480-24@60 not available, falling back to 1024x768=
-24@60
> +    Setting up a 720x480i composite-ntsc console (overscan 40x20)
> +    In:    serial
> +    Out:   serial
> +    Err:   serial
> +    Net:   usb=5Fether
> +    starting USB...
> +    No controllers found
> +    Hit any key to stop autoboot:  0
> +    (FEL boot)
> +    ## Executing script at 43100000
> +    Erasing NAND
> +    
> +    NAND erase.chip: device 0 whole chip
> +    Skipping bad block at  0xeb000000
> +    Skipping bad block at  0x1b1000000
> +    Erasing at 0x1ffc00000 -- 100% complete.
> +    OK
> +    Writing SPL (with ECC) to NAND address 0x00000000
> +    
> +    NAND write:  3537408 bytes written: OK
> +    Writing SPL (with ECC) to NAND address 0x400000
> +    
> +    NAND write:  3537408 bytes written: OK
> +    Writing UBoot image to address 0x800000
> +    
> +    NAND write: device 0 offset 0x800000, size 0x97236
> +     619062 bytes written: OK
> +    Enabling Splash
> +    Setting Video Mode
> +    Saving default environment
> +    Saving Environment to NAND...
> +    Erasing NAND...
> +    Erasing at 0xc00000 -- 100% complete.
> +    Writing to NAND... OK
> +    Writing UBI rootfs to NAND address 0x1000000
> +    
> +    NAND write: device 0 offset 0x1000000, size 0xa000000
> +     167772160 bytes written: OK
> +    =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +    Flashing Complete. Please power down and disable FEL mode.
> +    =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +Additionally, once the image is properly flashed, the status LED on=

> +the CHIP board will flash on and off every 2 seconds. This indicates=

> +that it is safe to power down your board and disable FEL mode.
> +
> +WARNING: This will erase the entire contents of your CHIP board.
> +
> +NOTE: This setup is still compatible with the CHIP flashing utility=

> +available at http://flash.getchip.com if you choose to reinstall the=

> +stock images.
> diff --git a/recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb b/recipes=
-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
> new file mode 100644
> index 0000000..7f01ebd
> --- /dev/null
> +++ b/recipes-bsp/chip-u-boot-scr/chip-u-boot-scr.bb
> @@ -0,0 +1,89 @@
> +SUMMARY =3D "U-boot boot scripts for CHIP boards"
> +LICENSE =3D "MIT"
> +LIC=5FFILES=5FCHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D=
3da9cfbcb788c80a0384361b4de20420"
> +COMPATIBLE=5FMACHINE =3D "chip"
> +
> +inherit deploy
> +
> +DEPENDS =3D "u-boot-mkimage-native"
> +
> +SRC=5FURI =3D "file://boot.cmd.in"
> +
> +NAND=5FFLASH=5FSTART=5FADDR =3D "0x00000000"
> +SPL=5FMEMIMG=5FADDR =3D "0x44000000"
> +UBOOT=5FMEMIMG=5FADDR =3D "0x4a000000"
> +SPL=5FFLASH=5FUPPER=5FADDR =3D "0x400000"
> +LED=5FI2C=5FCHIP =3D "0x34"
> +LED=5FI2C=5FADDR =3D "0x93"
> +UBOOT=5FFLASH=5FADDR =3D "0x800000"
> +UBI=5FMEMIMG=5FADDR =3D "0x4b000000"
> +UBI=5FFLASH=5FADDR =3D "0x1000000"
> +PAGE=5FSIZE =3D "16384"
> +OOB=5FSIZE =3D "1664"
> +SCRIPTADDR =3D "0x43100000"
> +UBI=5FSIZE=3D"0x0A000000"
> +
> +do=5Fcompile[depends] +=3D "u-boot-chip:do=5Fdeploy"
> +do=5Fcompile() {
> +    PADDED=5FSPL=5FSIZE=5FBLOCKS=3D$(stat --dereference --printf=3D"=
%s" "${DEPLOY=5FDIR=5FIMAGE}/${SPL=5FECC=5FBINARY}")
> +    PADDED=5FSPL=5FSIZE=5FBLOCKS=3D$(expr $PADDED=5FSPL=5FSIZE=5FBLO=
CKS / \( ${PAGE=5FSIZE} + ${OOB=5FSIZE} \))
> +    PADDED=5FSPL=5FSIZE=5FBLOCKS=3D$(echo $PADDED=5FSPL=5FSIZE=5FBLO=
CKS | xargs printf "0x%08x")
> +    PADDED=5FUBOOT=5FSIZE=3D$(stat --dereference  --printf=3D"%s" "$=
{DEPLOY=5FDIR=5FIMAGE}/${UBOOT=5FBINARY}" | xargs printf "0x%08x")
> +
> +    sed -e "s,@NAND=5FFLASH=5FSTART=5FADDR@,${NAND=5FFLASH=5FSTART=5F=
ADDR},g" \
> +        -e "s,@SPL=5FMEMIMG=5FADDR@,${SPL=5FMEMIMG=5FADDR},g" \
> +        -e "s,@UBOOT=5FMEMIMG=5FADDR@,${UBOOT=5FMEMIMG=5FADDR},g" \=

> +        -e "s,@SPL=5FFLASH=5FUPPER=5FADDR@,${SPL=5FFLASH=5FUPPER=5FA=
DDR},g" \
> +        -e "s,@LED=5FI2C=5FCHIP@,${LED=5FI2C=5FCHIP},g" \
> +        -e "s,@LED=5FI2C=5FADDR@,${LED=5FI2C=5FADDR},g" \
> +        -e "s,@PADDED=5FSPL=5FSIZE=5FBLOCKS@,${PADDED=5FSPL=5FSIZE=5F=
BLOCKS},g" \
> +        -e "s,@PADDED=5FUBOOT=5FSIZE@,${PADDED=5FUBOOT=5FSIZE},g" \=

> +        -e "s,@UBOOT=5FFLASH=5FADDR@,${UBOOT=5FFLASH=5FADDR},g" \
> +        -e "s,@UBI=5FFLASH=5FADDR@,${UBI=5FFLASH=5FADDR},g" \
> +        -e "s,@UBI=5FMEMIMG=5FADDR@,${UBI=5FMEMIMG=5FADDR},g" \
> +        -e "s,@UBI=5FSIZE@,${UBI=5FSIZE},g" \
> +        < "${WORKDIR}/boot.cmd.in" > "${WORKDIR}/boot.cmd"
> +    mkimage -A arm -T script -C none -n "Boot script" -d "${WORKDIR}=
/boot.cmd" "${WORKDIR}/boot.scr"
> +}
> +
> +do=5Fdeploy() {
> +    install -d ${DEPLOYDIR}
> +    install -m 0644 ${WORKDIR}/boot.scr ${DEPLOYDIR}/boot.scr-${PV}-=
${PR}
> +    ln -sf boot.scr-${PV}-${PR} ${DEPLOYDIR}/boot.scr
> +
> +    cat > ${DEPLOYDIR}/flash=5FCHIP=5Fboard.sh-${PV}-${PR} <<-EOF
> +	#!/bin/sh
> +	#
> +	
> +	if [ ! -n "\${UBI=5FIMAGE}" ]; then
> +	    echo "Error: UBI=5FIMAGE environment variable unset."
> +	    echo "Please set UBI=5FIMAGE to the basename of the root filesy=
stem image to deploy"
> +	    exit -1
> +	elif [ ! -e "${DEPLOY=5FDIR=5FIMAGE}/\${UBI=5FIMAGE}" ]; then
> +	    echo "Error: UBI=5FIMAGE file \"${DEPLOY=5FDIR=5FIMAGE}/\${UBI=5F=
IMAGE}\" does not exist."
> +	    exit -1
> +	else
> +	    CURRENT=5FUBI=5FSIZE=3D\$(stat --dereference --printf=3D"%s" ${=
DEPLOY=5FDIR=5FIMAGE}/\${UBI=5FIMAGE})
> +	    MAX=5FUBI=5FSIZE=3D\$(printf %d ${UBI=5FSIZE})
> +	    if [ \${CURRENT=5FUBI=5FSIZE} -gt \${MAX=5FUBI=5FSIZE} ]; then=

> +	        echo "Error: UBI=5FIMAGE file \"${DEPLOY=5FDIR=5FIMAGE}/\${=
UBI=5FIMAGE}\" is too large."
> +	        echo "Current file size is \${CURRENT=5FUBI=5FSIZE}"
> +	        echo "Max file size is \${MAX=5FUBI=5FSIZE}"
> +	        exit -1
> +	    fi
> +	fi
> +	
> +	PADDED=5FSPL=5FSIZE=5FBLOCKS=3D$(stat --dereference --printf=3D"%s"=
 "${DEPLOY=5FDIR=5FIMAGE}/${SPL=5FECC=5FBINARY}")
> +	${COMPONENTS=5FDIR}/x86=5F64/sunxi-tools-native/usr/bin/sunxi-fel s=
pl ${DEPLOY=5FDIR=5FIMAGE}/${SPL=5FBINARY}
> +	${COMPONENTS=5FDIR}/x86=5F64/sunxi-tools-native/usr/bin/sunxi-fel -=
-progress write ${SPL=5FMEMIMG=5FADDR} ${DEPLOY=5FDIR=5FIMAGE}/${SPL=5F=
ECC=5FBINARY}
> +	${COMPONENTS=5FDIR}/x86=5F64/sunxi-tools-native/usr/bin/sunxi-fel -=
-progress write ${UBOOT=5FMEMIMG=5FADDR} ${DEPLOY=5FDIR=5FIMAGE}/${UBOO=
T=5FBINARY}
> +	${COMPONENTS=5FDIR}/x86=5F64/sunxi-tools-native/usr/bin/sunxi-fel -=
-progress write ${SCRIPTADDR} ${DEPLOY=5FDIR=5FIMAGE}/boot.scr
> +	${COMPONENTS=5FDIR}/x86=5F64/sunxi-tools-native/usr/bin/sunxi-fel -=
-progress write ${UBI=5FMEMIMG=5FADDR} ${DEPLOY=5FDIR=5FIMAGE}/\${UBI=5F=
IMAGE}
> +	${COMPONENTS=5FDIR}/x86=5F64/sunxi-tools-native/usr/bin/sunxi-fel e=
xe ${UBOOT=5FMEMIMG=5FADDR}
> +	EOF
> +    chmod +x ${DEPLOYDIR}/flash=5FCHIP=5Fboard.sh-${PV}-${PR}
> +
> +    ln -sf flash=5FCHIP=5Fboard.sh-${PV}-${PR} ${DEPLOYDIR}/flash=5F=
CHIP=5Fboard.sh
> +}
> +
> +addtask do=5Fdeploy after do=5Fcompile before do=5Fbuild
> diff --git a/recipes-bsp/chip-u-boot-scr/files/boot.cmd.full b/recipe=
s-bsp/chip-u-boot-scr/files/boot.cmd.full
> new file mode 100644
> index 0000000..9589c87
> --- /dev/null
> +++ b/recipes-bsp/chip-u-boot-scr/files/boot.cmd.full
> @@ -0,0 +1,32 @@
> +echo Scrubbing NAND
> +nand scrub -y 0x0 0x200000000
> +echo Writing SPL (with ECC) to NAND address 0x0
> +nand write.raw.noverify $SPL=5FMEM=5FADDR 0x0 $PADDED=5FSPL=5FSIZE
> +echo Writing SPL (with ECC) to NAND address 0x400000
> +nand write.raw.noverify $SPL=5FMEM=5FADDR 0x400000 $PADDED=5FSPL=5FS=
IZE
> +echo Writing UBoot image to address 0x800000
> +nand write $UBOOT=5FMEM=5FADDR 0x800000 $PADDED=5FUBOOT=5FSIZE
> +
> +# Setup the default environment
> +setenv bootargs root=3Dubi0:rootfs rootfstype=3Dubifs rw earlyprintk=
 ubi.mtd=3D4
> +setenv bootcmd 'mtdparts; ubi part UBI; ubifsmount ubi0:rootfs; ubif=
sload \$fdt=5Faddr=5Fr /boot/sun5i-r8-chip.dtb; ubifsload \$kernel=5Fad=
dr=5Fr /boot/zImage; bootz \$kernel=5Faddr=5Fr - \$fdt=5Faddr=5Fr'
> +setenv fel=5Fbooted 0
> +
> +echo Enabling Splash
> +setenv stdout serial
> +setenv stderr serial
> +setenv splashpos m,m
> +
> +echo Setting Video Mode
> +setenv video-mode sunxi:640x480-24@60,monitor=3Dcomposite-ntsc,overs=
can=5Fx=3D40,overscan=5Fy=3D20
> +
> +echo Saving default environment
> +saveenv
> +
> +echo Writing UBI rootfs to NAND address 0x1000000
> +nand write.slc-mode.trimffs $UBI=5FMEM=5FADDR 0x1000000 $UBI=5FSIZE=

> +
> +echo =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +echo Flashing Complete.  Please power down and disable FEL mode.
> +echo =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> diff --git a/recipes-bsp/chip-u-boot-scr/files/boot.cmd.in b/recipes-=
bsp/chip-u-boot-scr/files/boot.cmd.in
> new file mode 100644
> index 0000000..dc060be
> --- /dev/null
> +++ b/recipes-bsp/chip-u-boot-scr/files/boot.cmd.in
> @@ -0,0 +1,43 @@
> +echo Erasing NAND
> +nand erase.chip
> +echo Writing SPL (with ECC) to NAND address @NAND=5FFLASH=5FSTART=5F=
ADDR@
> +nand write.raw.noverify @SPL=5FMEMIMG=5FADDR@ @NAND=5FFLASH=5FSTART=5F=
ADDR@ @PADDED=5FSPL=5FSIZE=5FBLOCKS@
> +echo Writing SPL (with ECC) to NAND address @SPL=5FFLASH=5FUPPER=5FA=
DDR@
> +nand write.raw.noverify @SPL=5FMEMIMG=5FADDR@ @SPL=5FFLASH=5FUPPER=5F=
ADDR@ @PADDED=5FSPL=5FSIZE=5FBLOCKS@
> +echo Writing UBoot image to address 0x800000
> +nand write @UBOOT=5FMEMIMG=5FADDR@ @UBOOT=5FFLASH=5FADDR@ @PADDED=5F=
UBOOT=5FSIZE@
> +
> +# Setup the default environment
> +setenv bootargs root=3Dubi0:rootfs rootfstype=3Dubifs rw earlyprintk=
 ubi.mtd=3D4
> +setenv bootcmd=5Fubi 'mtdparts; ubi part UBI; ubifsmount ubi0:rootfs=
; ubifsload \$fdt=5Faddr=5Fr /boot/sun5i-r8-chip.dtb; ubifsload \$kerne=
l=5Faddr=5Fr /boot/zImage; bootz \$kernel=5Faddr=5Fr - \$fdt=5Faddr=5Fr=
'
> +setenv boot=5Ftargets fel ubi usb0 pxe dhcp 
> +setenv fel=5Fbooted 0
> +
> +echo Enabling Splash
> +setenv stdout serial
> +setenv stderr serial
> +setenv splashpos m,m
> +
> +echo Setting Video Mode
> +setenv video-mode sunxi:640x480-24@60,monitor=3Dcomposite-ntsc,overs=
can=5Fx=3D40,overscan=5Fy=3D20
> +
> +echo Saving default environment
> +saveenv
> +
> +echo Writing UBI rootfs to NAND address 0x1000000
> +nand write.slc-mode.trimffs @UBI=5FMEMIMG=5FADDR@ @UBI=5FFLASH=5FADD=
R@ @UBI=5FSIZE@
> +
> +
> +echo =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +echo Flashing Complete.  Please power down and disable FEL mode.
> +echo =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +# Loop continually flashing the status LED
> +while true ; do
> +    mw.l @SPL=5FMEMIMG=5FADDR@ 0x00000000 1
> +    i2c write @SPL=5FMEMIMG=5FADDR@ @LED=5FI2C=5FCHIP@ @LED=5FI2C=5F=
ADDR@ 4
> +    sleep 1

> Date: Sun, 25 Jun 2017 19:32:36 -0700
> From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
> To: <yocto@yoctoproject.org>
> Subject: [yocto] Current state of linux-raspberrypi-rt?
> Message-ID: <23EE2924AFA4488992A7D0127F20147A@PAULD>
> Content-Type: text/plain;	charset=3D"iso-8859-1"
> 
> Google turns up a lot of stuff about this, but the latest I found was=
 a
> thread from 1/5/17 that started with Trevor Woerner posting a 1MB pat=
ch,
> and that ended with him posting a message saying that it didn't actua=
lly
> work.
> 
> Is there anything new on this? I'm trying to do some compute-intensiv=
e
> audio on an RPi3, and it really needs a real-time kernel.
> 
> -- 
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com

I am using at the moment the raspberrypi and was able to patch with a r=
t patch downloaded from 
https://cdn.kernel.org/pub/linux/kernel/projects/rt/4.9/

Patching, Configuring, compiling. All seems to work. Having booted the =
Pi i can see via uname -a, that the rt-patch is applied. The performanc=
e seems to be very nice. What is google doing about this?

kind regards
Michael Wiesing
 
 
 


