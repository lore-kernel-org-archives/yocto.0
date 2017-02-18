Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2E2CE009DB; Sat, 18 Feb 2017 09:50:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (romain.perier[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22711E007AA
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 09:50:07 -0800 (PST)
Received: by mail-wr0-f193.google.com with SMTP id g51so1039888wrg.0
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 09:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7HUuWrsYPzYplU8byZffrapp602R5uWi3m73+8G81lQ=;
	b=V0mcASFjJBHMlxbwTMzrYR83ofYVqWPDE7DvucoFM2EQD1mw4A0uDFMzMszyx0NAnd
	eAhkXJVJL7cxnE0zvdKB6jA4Mw0w1tdONotKCPpUGsVQj0pMegNdT4hhlz8p6X2fDZZn
	BpGKDzx8mDpFsbKb3/QsFhgzKGslHEO5KxFTF6ZP+gHVMpajxl63bRmPSCwyaHAbiXpf
	gWpZN26Ol8wQtFCwUgt/GccYNoJ4q45FnYIv1EQTHMQdrQd7NLS6TJRi/K3OdZ4z7Nep
	myloeMIK1uh7fkxqw6SSCvcI1BFLMJRwD+T7o0a84GAmwpwfstblg1o1FxrYXw21M+3d
	Tb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7HUuWrsYPzYplU8byZffrapp602R5uWi3m73+8G81lQ=;
	b=uaNVGH3P8TbCrcsqK5SgqnbxWD7yP4xI9i9m5c6zgdS+LbhMBVgywlZpynE//2YDr9
	JvRluBU9wGqT+l+RKh0QXEf/2wSfBNBTM8/n2CIi3NL1+TCKTbYO759JgKzaVCoP5izH
	SjnFKegvBwlWI+DUKUCGwbrfjC97HSCCKd0px7V4CeerB7obleILP6T5AqziQx19oLa+
	wyIQR7G/ZgCK6OYWllsOW40GYXPDhTaGzWuQr59WE1RDXyBOKXCIfv5ObtVFEpwSHD5U
	r3eITxGz7/dCrF8vdRSuCJrcOTRYSXwM9TKOXbZl8o0099uswvs6MZ8FK2LnXn0wLuws
	VP6w==
X-Gm-Message-State: AMke39lhssL8pYSTVXjAxE/Zmlnxv9JOr2uE75fkSvlO2y4QdCL8YKgcjuKuzTWkBQKxy03z006oVSxa7pZF+w==
X-Received: by 10.223.132.37 with SMTP id 34mr5821082wrf.45.1487440205786;
	Sat, 18 Feb 2017 09:50:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.196.2 with HTTP; Sat, 18 Feb 2017 09:50:05 -0800 (PST)
In-Reply-To: <20170217180748.28796-4-twoerner@gmail.com>
References: <20170217180748.28796-1-twoerner@gmail.com>
	<20170217180748.28796-4-twoerner@gmail.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Sat, 18 Feb 2017 18:50:05 +0100
Message-ID: <CABgxDo+N34NQhr7s+5oU7Kg_=omN49PVAit7PZ_UuoBG8wdHUg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [meta-rockchip][PATCH 3/3] rockchip-next-img: add image for rockchip next-dev u-boot
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
X-List-Received-Date: Sat, 18 Feb 2017 17:50:13 -0000
Content-Type: multipart/alternative; boundary=94eb2c0d56cc173be80548d1a9c2

--94eb2c0d56cc173be80548d1a9c2
Content-Type: text/plain; charset=UTF-8

Hi,

1 patch per feature or per different component. So  I should get a patch
for rk3288.inc and another one for the class :)

Suppose I am a user of meta-rockchip. I want to use a class for generating
a image. The name "rockchip-img-next" is not clear at all for me.
If that's for the sdcard call it rockchip-img-sdmmc if later you plan to
add a class for emmc call it rockchip-img-emmc :)

Why so complicated when you can make it simple ? ;)

Also, could you add more details to your commit messages please

Regards,
Romain



2017-02-17 19:07 GMT+01:00 Trevor Woerner <twoerner@gmail.com>:

> From: Jacob Chen <jacob-chen@iotwrt.com>
>
> Being different from the previous rk-boot which use parameter, next-dev
> u-boot
> use gpt partition, so it needs to generate a different image.
>
> Reviewed-by: Trevor Woerner <twoerner@gmail.com>
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> ---
>  classes/rockchip-next-img.bbclass | 130 ++++++++++++++++++++++++++++++
> ++++++++
>  conf/machine/include/rk3288.inc   |   4 ++
>  2 files changed, 134 insertions(+)
>  create mode 100644 classes/rockchip-next-img.bbclass
>
> diff --git a/classes/rockchip-next-img.bbclass
> b/classes/rockchip-next-img.bbclass
> new file mode 100644
> index 0000000..cd87dee
> --- /dev/null
> +++ b/classes/rockchip-next-img.bbclass
> @@ -0,0 +1,130 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +inherit image_types
> +
> +# Use an uncompressed ext4 by default as rootfs
> +IMG_ROOTFS_TYPE = "ext4"
> +IMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${IMG_ROOTFS_TYPE}"
> +
> +# This image depends on the rootfs image
> +IMAGE_TYPEDEP_rockchip-next-img = "${IMG_ROOTFS_TYPE}"
> +
> +NEXT_IMG       = "${IMAGE_NAME}.next.img"
> +BOOT_IMG       = "boot.img"
> +MINILOADER     = "loader.bin"
> +UBOOT          = "u-boot.out"
> +TRUST          = "trust.out"
> +
> +# Target image total size [in MiB]
> +NEXT_IMG_SIZE ?= "4096"
> +
> +# default partitions [in Sectors]
> +# More info at http://rockchip.wikidot.com/partitions
> +LOADER1_SIZE = "8000"
> +RESERVED1_SIZE = "128"
> +RESERVED2_SIZE = "8192"
> +LOADER2_SIZE = "8192"
> +ATF_SIZE = "8192"
> +BOOT_SIZE = "229376"
> +
> +IMAGE_DEPENDS_rockchip-next-img = "parted-native \
> +       u-boot-mkimage-native \
> +       mtools-native \
> +       dosfstools-native \
> +       virtual/kernel:do_deploy \
> +       virtual/bootloader:do_deploy"
> +
> +PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_image"
> +
> +IMAGE_CMD_rockchip-next-img () {
> +       # Change to image directory
> +       cd ${DEPLOY_DIR_IMAGE}
> +
> +       create_rk_image
> +
> +       ${PER_CHIP_IMG_GENERATION_COMMAND}
> +}
> +
> +create_rk_image () {
> +
> +       echo "Creating filesystem with total size ${NEXT_IMG_SIZE} MiB"
> +
> +       # Remove the exist image
> +       rm -rf *.next.img
> +
> +       # Initialize sdcard image file
> +       dd if=/dev/zero of=${NEXT_IMG} bs=1M count=0 seek=${NEXT_IMG_SIZE}
> +
> +       # Create partition table
> +       parted -s ${NEXT_IMG} mklabel gpt
> +
> +       # Create vendor defined partitions
> +       LOADER1_START=64
> +       RESERVED1_START=`expr ${LOADER1_START}  + ${LOADER1_SIZE}`
> +       RESERVED2_START=`expr ${RESERVED1_START}  + ${RESERVED1_SIZE}`
> +       LOADER2_START=`expr ${RESERVED2_START}  + ${RESERVED2_SIZE}`
> +       ATF_START=`expr ${LOADER2_START}  + ${LOADER2_SIZE}`
> +       BOOT_START=`expr ${ATF_START}  + ${ATF_SIZE}`
> +       ROOTFS_START=`expr ${BOOT_START}  + ${BOOT_SIZE}`
> +
> +       parted -s ${NEXT_IMG} unit s mkpart loader1 ${LOADER1_START} `expr
> ${RESERVED1_START} - 1`
> +       parted -s ${NEXT_IMG} unit s mkpart reserved1 ${RESERVED1_START}
> `expr ${RESERVED2_START} - 1`
> +       parted -s ${NEXT_IMG} unit s mkpart reserved2 ${RESERVED2_START}
> `expr ${LOADER2_START} - 1`
> +       parted -s ${NEXT_IMG} unit s mkpart loader2 ${LOADER2_START} `expr
> ${ATF_START} - 1`
> +       parted -s ${NEXT_IMG} unit s mkpart atf ${ATF_START} `expr
> ${BOOT_START} - 1`
> +
> +       # Create boot partition and mark it as bootable
> +       parted -s ${NEXT_IMG} unit s mkpart boot ${BOOT_START} `expr
> ${ROOTFS_START} - 1`
> +       parted -s ${NEXT_IMG} set 6 boot on
> +
> +       # Create rootfs partition
> +       parted -s ${NEXT_IMG} unit s mkpart root ${ROOTFS_START} 100%
> +
> +       parted ${NEXT_IMG} print
> +
> +       # Delete the boot image to avoid trouble with the build cache
> +       rm -f ${WORKDIR}/${BOOT_IMG}
> +
> +       # Create boot partition image
> +       BOOT_BLOCKS=$(LC_ALL=C parted -s ${NEXT_IMG} unit b print | awk '/
> 6 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
> +       BOOT_BLOCKS=`expr $BOOT_BLOCKS / 63 \* 63`
> +
> +       mkfs.vfat -n "boot" -S 512 -C ${WORKDIR}/${BOOT_IMG} $BOOT_BLOCKS
> +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin
> ::${KERNEL_IMAGETYPE}
> +
> +       DEVICETREE_DEFAULT=""
> +       for DTS_FILE in ${KERNEL_DEVICETREE}; do
> +               [ -n "${DEVICETREE_DEFAULT}"] && DEVICETREE_DEFAULT="${DTS_
> FILE}"
> +               mcopy -i ${WORKDIR}/${BOOT_IMG} -s
> ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTS_FILE} ::${DTS_FILE}
> +       done
> +
> +       # Create extlinux config file
> +       cat > ${WORKDIR}/extlinux.conf <<EOF
> +default yocto
> +
> +label yocto
> +       kernel /${KERNEL_IMAGETYPE}
> +       devicetree /${DEVICETREE_DEFAULT}
> +       append ${APPEND}
> +EOF
> +
> +       mmd -i ${WORKDIR}/${BOOT_IMG} ::/extlinux
> +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${WORKDIR}/extlinux.conf
> ::/extlinux/
> +
> +       # Burn Boot Partition
> +       dd if=${WORKDIR}/${BOOT_IMG} of=${NEXT_IMG} conv=notrunc,fsync
> seek=${BOOT_START}
> +
> +       # Burn Rootfs Partition
> +       dd if=${IMG_ROOTFS} of=${NEXT_IMG} seek=${ROOTFS_START}
> +
> +}
> +
> +generate_rk3288_image () {
> +
> +       # Burn bootloader
> +       mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE}/${SPL_BINARY}
> ${WORKDIR}/${UBOOT}
> +       cat ${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin >>
> ${WORKDIR}/${UBOOT}
> +       dd if=${WORKDIR}/${UBOOT} of=${NEXT_IMG} conv=notrunc,fsync seek=64
> +
> +}
> diff --git a/conf/machine/include/rk3288.inc
> b/conf/machine/include/rk3288.inc
> index f067ad5..68936bf 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -9,7 +9,11 @@ require conf/machine/include/soc-family.inc
>  PREFERRED_PROVIDER_virtual/kernel = "linux"
>  KERNEL_IMAGETYPE = "zImage"
>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
> +APPEND = "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk2p7
> rootfstype=ext4 init=/sbin/init"
>
>  PREFERRED_PROVIDER_virtual/bootloader = "u-boot-rockchip"
>  SERIAL_CONSOLES = "115200;ttyS2"
>  SPL_BINARY = "u-boot-spl-dtb.bin"
> +
> +IMAGE_CLASSES += "rockchip-next-img"
> +IMAGE_FSTYPES += "ext4 rockchip-next-img"
> --
> 2.11.0.258.ge05806d
>
>

--94eb2c0d56cc173be80548d1a9c2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div><div>1 patch per feature or per=
 different component. So=C2=A0 I should get a patch for rk3288.inc and anot=
her one for the class :)<br></div><div><br></div>Suppose I am a user of met=
a-rockchip. I want to use a class for generating a image. The name &quot;ro=
ckchip-img-next&quot; is not clear at all for me.<br></div><div>If that&#39=
;s for the sdcard call it rockchip-img-sdmmc if later you plan to add a cla=
ss for emmc call it rockchip-img-emmc :)<br><br></div><div>Why so complicat=
ed when you can make it simple ? ;)<br><br></div><div>Also, could you add m=
ore details to your commit messages please<br></div><div><br></div><div>Reg=
ards,<br></div><div>Romain<br></div><div><br><br></div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">2017-02-17 19:07 GMT+01:00 Trev=
or Woerner <span dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@gmail.com" targ=
et=3D"_blank">twoerner@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">From: Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com">jacob=
-chen@iotwrt.com</a>&gt;<br>
<br>
Being different from the previous rk-boot which use parameter, next-dev u-b=
oot<br>
use gpt partition, so it needs to generate a different image.<br>
<br>
Reviewed-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">twoer=
ner@gmail.com</a>&gt;<br>
Signed-off-by: Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com">jaco=
b-chen@iotwrt.com</a>&gt;<br>
---<br>
=C2=A0classes/rockchip-next-img.<wbr>bbclass | 130 ++++++++++++++++++++++++=
++++++<wbr>++++++++<br>
=C2=A0conf/machine/include/rk3288.<wbr>inc=C2=A0 =C2=A0|=C2=A0 =C2=A04 ++<b=
r>
=C2=A02 files changed, 134 insertions(+)<br>
=C2=A0create mode 100644 classes/rockchip-next-img.<wbr>bbclass<br>
<br>
diff --git a/classes/rockchip-next-img.<wbr>bbclass b/classes/rockchip-next=
-img.<wbr>bbclass<br>
new file mode 100644<br>
index 0000000..cd87dee<br>
--- /dev/null<br>
+++ b/classes/rockchip-next-img.<wbr>bbclass<br>
@@ -0,0 +1,130 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+inherit image_types<br>
+<br>
+# Use an uncompressed ext4 by default as rootfs<br>
+IMG_ROOTFS_TYPE =3D &quot;ext4&quot;<br>
+IMG_ROOTFS =3D &quot;${IMGDEPLOYDIR}/${IMAGE_NAME}<wbr>.rootfs.${IMG_ROOTF=
S_TYPE}&quot;<br>
+<br>
+# This image depends on the rootfs image<br>
+IMAGE_TYPEDEP_rockchip-next-<wbr>img =3D &quot;${IMG_ROOTFS_TYPE}&quot;<br=
>
+<br>
+NEXT_IMG=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;${IMAGE_NAME}.next.img&quot;<=
br>
+BOOT_IMG=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;boot.img&quot;<br>
+MINILOADER=C2=A0 =C2=A0 =C2=A0=3D &quot;loader.bin&quot;<br>
+UBOOT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;u-boot.out&quot;<br>
+TRUST=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;trust.out&quot;<br>
+<br>
+# Target image total size [in MiB]<br>
+NEXT_IMG_SIZE ?=3D &quot;4096&quot;<br>
+<br>
+# default partitions [in Sectors]<br>
+# More info at <a href=3D"http://rockchip.wikidot.com/partitions" rel=3D"n=
oreferrer" target=3D"_blank">http://rockchip.wikidot.com/<wbr>partitions</a=
><br>
+LOADER1_SIZE =3D &quot;8000&quot;<br>
+RESERVED1_SIZE =3D &quot;128&quot;<br>
+RESERVED2_SIZE =3D &quot;8192&quot;<br>
+LOADER2_SIZE =3D &quot;8192&quot;<br>
+ATF_SIZE =3D &quot;8192&quot;<br>
+BOOT_SIZE =3D &quot;229376&quot;<br>
+<br>
+IMAGE_DEPENDS_rockchip-next-<wbr>img =3D &quot;parted-native \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u-boot-mkimage-native \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mtools-native \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dosfstools-native \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0virtual/kernel:do_deploy \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0virtual/bootloader:do_deploy&quot;<br>
+<br>
+PER_CHIP_IMG_GENERATION_<wbr>COMMAND_rk3288 =3D &quot;generate_rk3288_imag=
e&quot;<br>
+<br>
+IMAGE_CMD_rockchip-next-img () {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Change to image directory<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cd ${DEPLOY_DIR_IMAGE}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0create_rk_image<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0${PER_CHIP_IMG_GENERATION_<wbr>COMMAND}<br>
+}<br>
+<br>
+create_rk_image () {<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;Creating filesystem with total size =
${NEXT_IMG_SIZE} MiB&quot;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Remove the exist image<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf *.next.img<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Initialize sdcard image file<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dd if=3D/dev/zero of=3D${NEXT_IMG} bs=3D1M coun=
t=3D0 seek=3D${NEXT_IMG_SIZE}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create partition table<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${NEXT_IMG} mklabel gpt<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create vendor defined partitions<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0LOADER1_START=3D64<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0RESERVED1_START=3D`expr ${LOADER1_START}=C2=A0 =
+ ${LOADER1_SIZE}`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0RESERVED2_START=3D`expr ${RESERVED1_START}=C2=
=A0 + ${RESERVED1_SIZE}`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0LOADER2_START=3D`expr ${RESERVED2_START}=C2=A0 =
+ ${RESERVED2_SIZE}`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ATF_START=3D`expr ${LOADER2_START}=C2=A0 + ${LO=
ADER2_SIZE}`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0BOOT_START=3D`expr ${ATF_START}=C2=A0 + ${ATF_S=
IZE}`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ROOTFS_START=3D`expr ${BOOT_START}=C2=A0 + ${BO=
OT_SIZE}`<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${NEXT_IMG} unit s mkpart loader1 ${L=
OADER1_START} `expr ${RESERVED1_START} - 1`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${NEXT_IMG} unit s mkpart reserved1 $=
{RESERVED1_START} `expr ${RESERVED2_START} - 1`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${NEXT_IMG} unit s mkpart reserved2 $=
{RESERVED2_START} `expr ${LOADER2_START} - 1`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${NEXT_IMG} unit s mkpart loader2 ${L=
OADER2_START} `expr ${ATF_START} - 1`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${NEXT_IMG} unit s mkpart atf ${ATF_S=
TART} `expr ${BOOT_START} - 1`<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create boot partition and mark it as bootable=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${NEXT_IMG} unit s mkpart boot ${BOOT=
_START} `expr ${ROOTFS_START} - 1`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${NEXT_IMG} set 6 boot on<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create rootfs partition<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${NEXT_IMG} unit s mkpart root ${ROOT=
FS_START} 100%<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted ${NEXT_IMG} print<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Delete the boot image to avoid trouble with t=
he build cache<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -f ${WORKDIR}/${BOOT_IMG}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create boot partition image<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${NEXT_IMG=
} unit b print | awk &#39;/ 6 / { print substr($4, 1, length($4 -1)) / 512 =
/2 }&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0BOOT_BLOCKS=3D`expr $BOOT_BLOCKS / 63 \* 63`<br=
>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mkfs.vfat -n &quot;boot&quot; -S 512 -C ${WORKD=
IR}/${BOOT_IMG} $BOOT_BLOCKS<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${DEPLOY_DIR=
_IMAGE}/${KERNEL_<wbr>IMAGETYPE}-${MACHINE}.bin ::${KERNEL_IMAGETYPE}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0DEVICETREE_DEFAULT=3D&quot;&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0for DTS_FILE in ${KERNEL_DEVICETREE}; do<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ -n &quot;${DEVICE=
TREE_DEFAULT}&quot;] &amp;&amp; DEVICETREE_DEFAULT=3D&quot;${DTS_<wbr>FILE}=
&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mcopy -i ${WORKDIR}=
/${BOOT_IMG} -s ${DEPLOY_DIR_IMAGE}/${KERNEL_<wbr>IMAGETYPE}-${DTS_FILE} ::=
${DTS_FILE}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0done<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create extlinux config file<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cat &gt; ${WORKDIR}/extlinux.conf &lt;&lt;EOF<b=
r>
+default yocto<br>
+<br>
+label yocto<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0kernel /${KERNEL_IMAGETYPE}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0devicetree /${DEVICETREE_DEFAULT}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0append ${APPEND}<br>
+EOF<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mmd -i ${WORKDIR}/${BOOT_IMG} ::/extlinux<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${WORKDIR}/e=
xtlinux.conf ::/extlinux/<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Burn Boot Partition<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dd if=3D${WORKDIR}/${BOOT_IMG} of=3D${NEXT_IMG}=
 conv=3Dnotrunc,fsync seek=3D${BOOT_START}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Burn Rootfs Partition<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dd if=3D${IMG_ROOTFS} of=3D${NEXT_IMG} seek=3D$=
{ROOTFS_START}<br>
+<br>
+}<br>
+<br>
+generate_rk3288_image () {<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Burn bootloader<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE=
}/${SPL_<wbr>BINARY} ${WORKDIR}/${UBOOT}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cat ${DEPLOY_DIR_IMAGE}/u-boot-${<wbr>MACHINE}.=
bin &gt;&gt;=C2=A0 ${WORKDIR}/${UBOOT}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dd if=3D${WORKDIR}/${UBOOT} of=3D${NEXT_IMG} co=
nv=3Dnotrunc,fsync seek=3D64<br>
+<br>
+}<br>
diff --git a/conf/machine/include/rk3288.<wbr>inc b/conf/machine/include/rk=
3288.<wbr>inc<br>
index f067ad5..68936bf 100644<br>
--- a/conf/machine/include/rk3288.<wbr>inc<br>
+++ b/conf/machine/include/rk3288.<wbr>inc<br>
@@ -9,7 +9,11 @@ require conf/machine/include/soc-<wbr>family.inc<br>
=C2=A0PREFERRED_PROVIDER_virtual/<wbr>kernel =3D &quot;linux&quot;<br>
=C2=A0KERNEL_IMAGETYPE =3D &quot;zImage&quot;<br>
=C2=A0KBUILD_DEFCONFIG =3D &quot;multi_v7_defconfig&quot;<br>
+APPEND =3D &quot;console=3Dtty1 console=3DttyS2,115200n8 rw root=3D/dev/mm=
cblk2p7 rootfstype=3Dext4 init=3D/sbin/init&quot;<br>
<br>
=C2=A0PREFERRED_PROVIDER_virtual/<wbr>bootloader =3D &quot;u-boot-rockchip&=
quot;<br>
=C2=A0SERIAL_CONSOLES =3D &quot;115200;ttyS2&quot;<br>
=C2=A0SPL_BINARY =3D &quot;u-boot-spl-dtb.bin&quot;<br>
+<br>
+IMAGE_CLASSES +=3D &quot;rockchip-next-img&quot;<br>
+IMAGE_FSTYPES +=3D &quot;ext4 rockchip-next-img&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.11.0.258.ge05806d<br>
<br>
</font></span></blockquote></div><br></div>

--94eb2c0d56cc173be80548d1a9c2--
