Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35DB4E0122B; Tue, 26 Jun 2018 03:49:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B0B9E00D1C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 03:49:15 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id t135-v6so1785592iof.7
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 03:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=QrQwM0EM+ZvUIu3MA742wyCRFFsn9+OtydN2RuKA2OE=;
	b=tKsydP6sBs55BvPg5kkEoZRtGgNZpRjt6yyS4HcNSpGIKZFSRnbnEyxiw0p41AmzeJ
	Z+lNY6MgXIHyLRHnL80w5T6G5yz61gZonCE1szUXqY0oibOpFd/AS5uAcXEJ5X9NDxzf
	jNSkqfLAlMlNcw/teJFTSp+axLB0U9hyyA0uE07L98LCby/Clfggr9mQ3XLJ/MNPyskA
	mThqGgzUO7oYlsZfo7x9gvRenmWwu7+Why1SYxZzpbPHs8Bhrilja3JtHSo6hYvDnZcO
	GsYCcfE9ntmd16/0SxKL3hmFuT7Dq3XAyWzCOggfjufbXAYU2lI/7QwVUNUdE3cdJnFB
	1d/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QrQwM0EM+ZvUIu3MA742wyCRFFsn9+OtydN2RuKA2OE=;
	b=XUtIWfO3r1ZR1r/uKAH9hkO/tGsqpECcSTVR04lobbpvj7yEGeVYX5jUz79gIGzNzG
	JQtoGGiXfvwp//GAF1ZeREJiPOYqUNsZlrYaQdYHiH1wESsrlzTaJu0NxydiwehsiT/h
	s5qj5HvBwGT2oON4q6QM5nySiPelx9XRJCHiFX5U+Z4tSRNsAtjUTh8WlBdkN6Kr0YGG
	1I5KrOECMxRr5KwqGVDVyU3yEl6QFqycAh9VAZyN4zqwklTtIbB70K8mVqyx5LhF0tOm
	dpFCKoK7GdcT2hnjm/maICDq7RvUs5lcvW5LefhpYsGYctCm95Dg2Vg9QT1ulY1enY+D
	5pVw==
X-Gm-Message-State: APt69E3Q4evlWmEjOEsRhNYhPoRtQrKMLM8wIC7iz+GNzjDHCS3eihJt
	ii2E1F1gopttZYFTbMSXe2/mAMSCuUEFD5bPXc8k
X-Google-Smtp-Source: AAOMgpc6FJV+mv8AXTHvb41H9wE93RhcqXbkvp0+0EYzlar+KP5TYFHY/XyR3pVcB8Pz1SXlsguIqnwfAO7KcYfwkpA=
X-Received: by 2002:a6b:c085:: with SMTP id
	q127-v6mr695464iof.261.1530010155276; 
	Tue, 26 Jun 2018 03:49:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:5bc3:0:0:0:0:0 with HTTP; Tue, 26 Jun 2018 03:49:14
	-0700 (PDT)
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Tue, 26 Jun 2018 13:49:14 +0300
Message-ID: <CA+FhBv97ZW9Gb9odKdiqE739UTLFDBjnEjetVvF5fNtETSX2_A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Adding new machine type with boot2qt
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
X-List-Received-Date: Tue, 26 Jun 2018 10:49:17 -0000
Content-Type: multipart/alternative; boundary="000000000000cee0a2056f893f1f"

--000000000000cee0a2056f893f1f
Content-Type: text/plain; charset="UTF-8"

Hi,

I have been working with the jetson reference board with a NVidia TX2
module. I have completed my image and everything runs as expected on the
reference board.

The final product will run on a different carrier, made by ConnectTech.
http://connecttech.com/product/astro-carrier-for-nvidia-jetson-tx2-tx1/

I got the BSP kernel sources from ConnectTech, patched the linux-tegra
kernel repository and created a new machine: astro-tx2.conf

This new machine is identical to the jetson-tx2 one, but with a different
device tree. This is how it looks:
=======================================================================================================================================
#@TYPE: Machine
#@NAME: Nvidia Astro TX2
#@DESCRIPTION: Nvidia Jetson TX2 on ConnectTech Astro


# Comes from meta-tegra
require conf/machine/include/tegra186.inc

# Comes from boot2qt
DEPLOY_CONF_NAME = "NVIDIA Astro TX2"
include conf/distro/include/jetson.inc

KERNEL_DEVICETREE ?=
"_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/quill/kernel-dts/tegra186-tx2-cti-ASG002-revF+.dtb"

# Original device tree
#KERNEL_DEVICETREE ?=
"_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/quill/kernel-dts/tegra186-quill-p3310-1000-c03-00-base.dtb"


MACHINE_FEATURES += "ext2 ext3 vfat"

UBOOT_MACHINE = "p2771-0000-500_defconfig"

EMMC_SIZE ?= "31276924928"
EMMC_DEVSECT_SIZE ?= "512"
BOOTPART_SIZE ?= "8388608"
BOOTPART_LIMIT ?= "10485760"
ROOTFSPART_SIZE ?= "12884901888"
ODMDATA ?= "0x1090000"
EMMC_BCT ?= "P3310_A00_8GB_Samsung_8GB_lpddr4_204Mhz_A02_l4t.cfg"
NVIDIA_BOARD ?= "t186ref"
TEGRA186_REDUNDANT_BOOT ?= "0"
PARTITION_LAYOUT_TEMPLATE ?= "flash_l4t_t186.xml"
=======================================================================================================================================


I have setup the new machine, setup oe and baked the same image as with
jetson.
=======================================================================================================================================
export MACHINE=astro-tx2
. setup-environment.sh
bitbake stack-rnd
=======================================================================================================================================

Bitbake fails at the do_image_complete in the do_qbsp_image function:
=======================================================================================================================================
DEBUG: Executing shell function do_qbsp_image
| + do_qbsp_image
| + [ -z     stack-rnd-astro-tx2.img     stack-rnd-astro-tx2.conf
 stack-rnd-astro-tx2.flasher.tar.gz      ]
| + mkdir -p
/home/damien/stack-astro/build-astro-tx2/tmp/work/aarch64_tegra186-poky-linux/stack-rnd/1.0-r0/stack-rnd-1.0/qbsp
|
| + echo stack-rnd-astro-tx2.img
|
| + awk -F: { print $1 }
|
| + src=stack-rnd-astro-tx2.img
|
| + echo stack-rnd-astro-tx2.img
|
| + awk -F: { print $2 }
|
| + dst=
| + [ -e
/home/damien/stack-astro/build-astro-tx2/tmp/work/aarch64_tegra186-poky-linux/stack-rnd/1.0-r0/deploy-stack-rnd-image-complete/stack-rnd-astro-tx2.img
]
| + [ -e
/home/damien/stack-astro/build-astro-tx2/tmp/deploy/images/astro-tx2/stack-rnd-astro-tx2.img
]
|
| + do_qbsp_image
| + [ -z     stack-rnd-astro-tx2.img     stack-rnd-astro-tx2.conf
 stack-rnd-astro-tx2.flasher.tar.gz      ]
| + mkdir -p
/home/damien/stack-astro/build-astro-tx2/tmp/work/aarch64_tegra186-poky-linux/stack-rnd/1.0-r0/stack-rnd-1.0/qbsp
| + echo stack-rnd-astro-tx2.img
| + awk -F: { print $1 }
| + src=stack-rnd-astro-tx2.img
| + echo stack-rnd-astro-tx2.img
| + awk -F: { print $2 }
| + dst=
| + [ -e
/home/damien/stack-astro/build-astro-tx2/tmp/work/aarch64_tegra186-poky-linux/stack-rnd/1.0-r0/deploy-stack-rnd-image-complete/stack-rnd-astro-tx2.img
]
| + [ -e
/home/damien/stack-astro/build-astro-tx2/tmp/deploy/images/astro-tx2/stack-rnd-astro-tx2.img
]
=======================================================================================================================================

The function is not lying
/home/damien/stack-astro/build-astro-tx2/tmp/work/aarch64_tegra186-poky-linux/stack-rnd/1.0-r0/deploy-stack-rnd-image-complete/
only has these files:
=======================================================================================================================================
drwxr-xr-x  2 damien damien  4096 Jun 26 10:21 ./
drwxrwxr-x 12 damien damien  4096 Jun 26 10:20 ../
-rw-r--r--  1 damien damien 59261 Jun 26 10:20
stack-rnd-astro-tx2-20180626071846.rootfs.manifest
-rw-r--r--  1 damien damien   124 Jun 26 10:21
stack-rnd-astro-tx2-20180626072124.rootfs.conf
lrwxrwxrwx  1 damien damien    48 Jun 26 10:21 stack-rnd-astro-tx2.conf ->
stack-rnd-astro-tx2-20180626072124.rootfs.conf
lrwxrwxrwx  1 damien damien    52 Jun 26 10:20 stack-rnd-astro-tx2.manifest
-> stack-rnd-astro-tx2-20180626071846.rootfs.manifest
=======================================================================================================================================

As opposed to the jetson-tx2 machine folder
/home/damien/stack-astro/build-jetson-tx2/tmp/work/aarch64_tegra186-poky-linux/stack-rnd/1.0-r0/deploy-stack-rnd-image-complete/
having the .img and .flasher.tar.gz file defined in QBSP_IMAGE_CONTENT in
jetson-inc plus some others:
=======================================================================================================================================
-rw-r--r--  2 damien damien  524232587 Jun 21 09:45
stack-rnd-jetson-tx2-20180621063532.7z
-rw-r--r--  2 damien damien    6891758 Jun 21 09:41
stack-rnd-jetson-tx2-20180621063532.flasher.tar.gz
-rw-r--r--  2 damien damien 3531603968 Jun 21 09:39
stack-rnd-jetson-tx2-20180621063532.img
-rw-r--r--  2 damien damien        127 Jun 21 09:39
stack-rnd-jetson-tx2-20180621063532.rootfs.conf
-rw-r--r--  2 damien damien 3529506816 Jun 21 09:39
stack-rnd-jetson-tx2-20180621063532.rootfs.ext4
-rw-r--r--  2 damien damien      59559 Jun 21 09:39
stack-rnd-jetson-tx2-20180621063532.rootfs.manifest
-rw-r--r--  2 damien damien 1013398322 Jun 21 09:41
stack-rnd-jetson-tx2-20180621063532.tegraflash.zip
lrwxrwxrwx  2 damien damien         40 Jun 21 09:45 stack-rnd-jetson-tx2.7z
-> stack-rnd-jetson-tx2-20180621063532.7z
lrwxrwxrwx  2 damien damien         49 Jun 21 09:39
stack-rnd-jetson-tx2.conf -> stack-rnd-jetson-tx2-20180621063532.rootfs.conf
lrwxrwxrwx  2 damien damien         49 Jun 21 09:39
stack-rnd-jetson-tx2.ext4 -> stack-rnd-jetson-tx2-20180621063532.rootfs.ext4
lrwxrwxrwx  2 damien damien         52 Jun 21 09:41
stack-rnd-jetson-tx2.flasher.tar.gz ->
stack-rnd-jetson-tx2-20180621063532.flasher.tar.gz
lrwxrwxrwx  2 damien damien         41 Jun 21 09:39
stack-rnd-jetson-tx2.img -> stack-rnd-jetson-tx2-20180621063532.img
lrwxrwxrwx  2 damien damien         53 Jun 21 09:39
stack-rnd-jetson-tx2.manifest ->
stack-rnd-jetson-tx2-20180621063532.rootfs.manifest
lrwxrwxrwx  2 damien damien         52 Jun 21 09:41
stack-rnd-jetson-tx2.tegraflash.zip ->
stack-rnd-jetson-tx2-20180621063532.tegraflash.zip
=======================================================================================================================================


Am I missing something with the new machine definition?

Thanks,
-Damien

--000000000000cee0a2056f893f1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I have been working with=
 the jetson reference board with a NVidia TX2 module. I have completed my i=
mage and everything runs as expected on the reference board.</div><div><br>=
</div><div>The final product will run on a different carrier, made by Conne=
ctTech. <a href=3D"http://connecttech.com/product/astro-carrier-for-nvidia-=
jetson-tx2-tx1/">http://connecttech.com/product/astro-carrier-for-nvidia-je=
tson-tx2-tx1/</a></div><div><br></div><div>I got the BSP kernel sources fro=
m ConnectTech, patched the linux-tegra kernel repository and created a new =
machine: astro-tx2.conf</div><div><br></div><div>This new machine is identi=
cal to the jetson-tx2 one, but with a different device tree. This is how it=
 looks:</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>#@TYPE: Machine<=
/div><div>#@NAME: Nvidia Astro TX2</div><div>#@DESCRIPTION: Nvidia Jetson T=
X2 on ConnectTech Astro</div><div><br></div><div><br></div><div># Comes fro=
m meta-tegra</div><div>require conf/machine/include/tegra186.inc</div><div>=
<br></div><div># Comes from boot2qt</div><div>DEPLOY_CONF_NAME =3D &quot;NV=
IDIA Astro TX2&quot;</div><div>include conf/distro/include/jetson.inc</div>=
<div><br></div><div>KERNEL_DEVICETREE ?=3D &quot;_ddot_/_ddot_/_ddot_/_ddot=
_/nvidia/platform/t18x/quill/kernel-dts/tegra186-tx2-cti-ASG002-revF+.dtb&q=
uot;</div><div><br></div><div># Original device tree</div><div>#KERNEL_DEVI=
CETREE ?=3D &quot;_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/quill/ke=
rnel-dts/tegra186-quill-p3310-1000-c03-00-base.dtb&quot;</div><div><br></di=
v><div><br></div><div>MACHINE_FEATURES +=3D &quot;ext2 ext3 vfat&quot;</div=
><div><br></div><div>UBOOT_MACHINE =3D &quot;p2771-0000-500_defconfig&quot;=
</div><div><br></div><div>EMMC_SIZE ?=3D &quot;31276924928&quot;</div><div>=
EMMC_DEVSECT_SIZE ?=3D &quot;512&quot;</div><div>BOOTPART_SIZE ?=3D &quot;8=
388608&quot;</div><div>BOOTPART_LIMIT ?=3D &quot;10485760&quot;</div><div>R=
OOTFSPART_SIZE ?=3D &quot;12884901888&quot;</div><div>ODMDATA ?=3D &quot;0x=
1090000&quot;</div><div>EMMC_BCT ?=3D &quot;P3310_A00_8GB_Samsung_8GB_lpddr=
4_204Mhz_A02_l4t.cfg&quot;</div><div>NVIDIA_BOARD ?=3D &quot;t186ref&quot;<=
/div><div>TEGRA186_REDUNDANT_BOOT ?=3D &quot;0&quot;</div><div>PARTITION_LA=
YOUT_TEMPLATE ?=3D &quot;flash_l4t_t186.xml&quot;</div><div>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</div><div><br></div><div><br></div><div>I have setup the ne=
w machine, setup oe and baked the same image as with jetson.</div><div><spa=
n style=3D"font-size:small;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline">=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br></div><div>export MACHINE=3Dastro-=
tx2</div><div>. setup-environment.sh=C2=A0</div><div>bitbake stack-rnd</div=
><div><span style=3D"font-size:small;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br></div><div><br></div><div=
>Bitbake fails at the do_image_complete in the do_qbsp_image function:</div=
><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>DEBUG: Executing shell funct=
ion do_qbsp_image</div><div>| + do_qbsp_image</div><div>| + [ -z=C2=A0 =C2=
=A0 =C2=A0stack-rnd-astro-tx2.img=C2=A0 =C2=A0 =C2=A0stack-rnd-astro-tx2.co=
nf=C2=A0 =C2=A0 =C2=A0stack-rnd-astro-tx2.flasher.tar.gz=C2=A0 =C2=A0 =C2=
=A0 ]</div><div>| + mkdir -p /home/damien/stack-astro/build-astro-tx2/tmp/w=
ork/aarch64_tegra186-poky-linux/stack-rnd/1.0-r0/stack-rnd-1.0/qbsp</div><d=
iv>|=C2=A0</div><div>| + echo stack-rnd-astro-tx2.img</div><div>|=C2=A0</di=
v><div>| + awk -F: { print $1 }</div><div>|=C2=A0</div><div>| + src=3Dstack=
-rnd-astro-tx2.img</div><div>|=C2=A0</div><div>| + echo stack-rnd-astro-tx2=
.img</div><div>|=C2=A0</div><div>| + awk -F: { print $2 }</div><div>|=C2=A0=
</div><div>| + dst=3D</div><div>| + [ -e /home/damien/stack-astro/build-ast=
ro-tx2/tmp/work/aarch64_tegra186-poky-linux/stack-rnd/1.0-r0/deploy-stack-r=
nd-image-complete/stack-rnd-astro-tx2.img ]</div><div>| + [ -e /home/damien=
/stack-astro/build-astro-tx2/tmp/deploy/images/astro-tx2/stack-rnd-astro-tx=
2.img ]</div><div>|=C2=A0</div><div>| + do_qbsp_image</div><div>| + [ -z=C2=
=A0 =C2=A0 =C2=A0stack-rnd-astro-tx2.img=C2=A0 =C2=A0 =C2=A0stack-rnd-astro=
-tx2.conf=C2=A0 =C2=A0 =C2=A0stack-rnd-astro-tx2.flasher.tar.gz=C2=A0 =C2=
=A0 =C2=A0 ]</div><div>| + mkdir -p /home/damien/stack-astro/build-astro-tx=
2/tmp/work/aarch64_tegra186-poky-linux/stack-rnd/1.0-r0/stack-rnd-1.0/qbsp<=
/div><div>| + echo stack-rnd-astro-tx2.img</div><div>| + awk -F: { print $1=
 }</div><div>| + src=3Dstack-rnd-astro-tx2.img</div><div>| + echo stack-rnd=
-astro-tx2.img</div><div>| + awk -F: { print $2 }</div><div>| + dst=3D</div=
><div>| + [ -e /home/damien/stack-astro/build-astro-tx2/tmp/work/aarch64_te=
gra186-poky-linux/stack-rnd/1.0-r0/deploy-stack-rnd-image-complete/stack-rn=
d-astro-tx2.img ]</div><div>| + [ -e /home/damien/stack-astro/build-astro-t=
x2/tmp/deploy/images/astro-tx2/stack-rnd-astro-tx2.img ]</div><div>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br></div><div>The function is not lying=
 /home/damien/stack-astro/build-astro-tx2/tmp/work/aarch64_tegra186-poky-li=
nux/stack-rnd/1.0-r0/deploy-stack-rnd-image-complete/ only has these files:=
</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>drwxr-xr-x=C2=A0 2 dam=
ien damien=C2=A0 4096 Jun 26 10:21 ./</div><div>drwxrwxr-x 12 damien damien=
=C2=A0 4096 Jun 26 10:20 ../</div><div>-rw-r--r--=C2=A0 1 damien damien 592=
61 Jun 26 10:20 stack-rnd-astro-tx2-20180626071846.rootfs.manifest</div><di=
v>-rw-r--r--=C2=A0 1 damien damien=C2=A0 =C2=A0124 Jun 26 10:21 stack-rnd-a=
stro-tx2-20180626072124.rootfs.conf</div><div>lrwxrwxrwx=C2=A0 1 damien dam=
ien=C2=A0 =C2=A0 48 Jun 26 10:21 stack-rnd-astro-tx2.conf -&gt; stack-rnd-a=
stro-tx2-20180626072124.rootfs.conf</div><div>lrwxrwxrwx=C2=A0 1 damien dam=
ien=C2=A0 =C2=A0 52 Jun 26 10:20 stack-rnd-astro-tx2.manifest -&gt; stack-r=
nd-astro-tx2-20180626071846.rootfs.manifest</div><div>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</div><div><br></div><div>As opposed to the jetson-tx2 machine fol=
der /home/damien/stack-astro/build-jetson-tx2/tmp/work/aarch64_tegra186-pok=
y-linux/stack-rnd/1.0-r0/deploy-stack-rnd-image-complete/ having the .img a=
nd .flasher.tar.gz file defined in QBSP_IMAGE_CONTENT in jetson-inc plus so=
me others:</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>-rw-r--r--=C2=
=A0 2 damien damien=C2=A0 524232587 Jun 21 09:45 stack-rnd-jetson-tx2-20180=
621063532.7z</div><div>-rw-r--r--=C2=A0 2 damien damien=C2=A0 =C2=A0 689175=
8 Jun 21 09:41 stack-rnd-jetson-tx2-20180621063532.flasher.tar.gz</div><div=
>-rw-r--r--=C2=A0 2 damien damien 3531603968 Jun 21 09:39 stack-rnd-jetson-=
tx2-20180621063532.img</div><div>-rw-r--r--=C2=A0 2 damien damien=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 127 Jun 21 09:39 stack-rnd-jetson-tx2-20180621063532.root=
fs.conf</div><div>-rw-r--r--=C2=A0 2 damien damien 3529506816 Jun 21 09:39 =
stack-rnd-jetson-tx2-20180621063532.rootfs.ext4</div><div>-rw-r--r--=C2=A0 =
2 damien damien=C2=A0 =C2=A0 =C2=A0 59559 Jun 21 09:39 stack-rnd-jetson-tx2=
-20180621063532.rootfs.manifest</div><div>-rw-r--r--=C2=A0 2 damien damien =
1013398322 Jun 21 09:41 stack-rnd-jetson-tx2-20180621063532.tegraflash.zip<=
/div><div>lrwxrwxrwx=C2=A0 2 damien damien=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A040 Jun 21 09:45 stack-rnd-jetson-tx2.7z -&gt; stack-rnd-jetson-tx2-20180=
621063532.7z</div><div>lrwxrwxrwx=C2=A0 2 damien damien=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A049 Jun 21 09:39 stack-rnd-jetson-tx2.conf -&gt; stack-rnd-jet=
son-tx2-20180621063532.rootfs.conf</div><div>lrwxrwxrwx=C2=A0 2 damien dami=
en=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A049 Jun 21 09:39 stack-rnd-jetson-tx2.ex=
t4 -&gt; stack-rnd-jetson-tx2-20180621063532.rootfs.ext4</div><div>lrwxrwxr=
wx=C2=A0 2 damien damien=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A052 Jun 21 09:41 s=
tack-rnd-jetson-tx2.flasher.tar.gz -&gt; stack-rnd-jetson-tx2-2018062106353=
2.flasher.tar.gz</div><div>lrwxrwxrwx=C2=A0 2 damien damien=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A041 Jun 21 09:39 stack-rnd-jetson-tx2.img -&gt; stack-rn=
d-jetson-tx2-20180621063532.img</div><div>lrwxrwxrwx=C2=A0 2 damien damien=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A053 Jun 21 09:39 stack-rnd-jetson-tx2.mani=
fest -&gt; stack-rnd-jetson-tx2-20180621063532.rootfs.manifest</div><div>lr=
wxrwxrwx=C2=A0 2 damien damien=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A052 Jun 21 0=
9:41 stack-rnd-jetson-tx2.tegraflash.zip -&gt; stack-rnd-jetson-tx2-2018062=
1063532.tegraflash.zip</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><=
br></div><div><br></div><div>Am I missing something with the new machine de=
finition?</div><div><br></div><div>Thanks,<br></div><div>-Damien</div></div=
>

--000000000000cee0a2056f893f1f--
