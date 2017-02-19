Return-Path: <jacob2.chen@rock-chips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02AF8E00A1C; Sun, 19 Feb 2017 00:31:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [211.150.99.133 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from regular1.263xmail.com (regular1.263xmail.com [211.150.99.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A292CE009F6
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 00:31:12 -0800 (PST)
Received: from jacob2.chen?rock-chips.com (unknown [192.168.167.223])
	by regular1.263xmail.com (Postfix) with ESMTP id 778BF8DD6
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 16:31:05 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
Received: from [192.168.10.237] (localhost [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTP id 4028236B;
	Sun, 19 Feb 2017 16:31:06 +0800 (CST)
X-RL-SENDER: jacob2.chen@rock-chips.com
X-FST-TO: yocto@yoctoproject.org
X-SENDER-IP: 222.76.57.195
X-LOGIN-NAME: jacob2.chen@rock-chips.com
X-UNIQUE-TAG: <7944933abb0a3be8c8400597dad99010>
X-ATTACHMENT-NUM: 0
X-SENDER: jacob2.chen@rock-chips.com
X-DNS-TYPE: 7
Received: from [192.168.10.237]
	(195.57.76.222.broad.fz.fj.dynamic.163data.com.cn [222.76.57.195])
	by smtp.263.net (Postfix) whith ESMTP id 12311MKGDXU;
	Sun, 19 Feb 2017 16:31:06 +0800 (CST)
To: Eddie Cai <eddie.cai.linux@gmail.com>, Trevor Woerner <twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-5-twoerner@gmail.com>
	<CAJrj+DMxz0u-Lf=HCXpSLYzF4e7aYsZMtkHK0qUNKyZ6oLt+mA@mail.gmail.com>
From: Jacob Chen <jacob2.chen@rock-chips.com>
Message-ID: <f2c046b0-3685-c3c1-0da2-325d90919270@rock-chips.com>
Date: Sun, 19 Feb 2017 16:31:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAJrj+DMxz0u-Lf=HCXpSLYzF4e7aYsZMtkHK0qUNKyZ6oLt+mA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2 4/5] classes: rockchip-gpt-img: add
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
X-List-Received-Date: Sun, 19 Feb 2017 08:31:28 -0000
Content-Type: multipart/alternative;
	boundary="------------AA14D19C4D14ADD2F6F163C0"

--------------AA14D19C4D14ADD2F6F163C0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all,


Eddie Cai wrote on 2017年02月19日 14:32:
> Hi Trevor
>
> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com 
> <mailto:twoerner@gmail.com>>:
> > This bbclass was taken from the Rockchip team's work at
> > 
> https://github.com/rockchip-linux/meta-rockchip/commit/53d2e2e474a3014e3013d0059fd1da773fb0e2b7
> > It was mostly written by Jacob Chen <jacob-chen@iotwrt.com 
> <mailto:jacob-chen@iotwrt.com>>. I've made some
> > small modifications and added it.
> >
> > Older images used (what Rockchip calls) the "rk-boot" format. Newer 
> images use
> We call it legacy parameter format
> > u-boot and a GPT partitioning scheme. This class allows the build to 
> generate
> > a gpt-img file that can either be flashed to eMMC or written to an 
> SDcard (the
> > same image is used for both).
> gpt-img is much better than previous one. I like this name.
> >
> > This is the new image format used for rk3288 SoCs (e.g. the Firefly 
> board).
> >
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com 
> <mailto:twoerner@gmail.com>>
> > ---
> >  classes/rockchip-gpt-img.bbclass | 132 
> +++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 132 insertions(+)
> >  create mode 100644 classes/rockchip-gpt-img.bbclass
> >
> > diff --git a/classes/rockchip-gpt-img.bbclass 
> b/classes/rockchip-gpt-img.bbclass
> > new file mode 100644
> > index 0000000..fd80625
> > --- /dev/null
> > +++ b/classes/rockchip-gpt-img.bbclass
> > @@ -0,0 +1,132 @@
> > +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> > +# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com 
> <mailto:twoerner@gmail.com>>
> > +# Released under the MIT license (see COPYING.MIT for the terms)
> > +
> > +inherit image_types
> > +
> > +# Use an uncompressed ext4 by default as rootfs
> > +IMG_ROOTFS_TYPE = "ext4"
> > +IMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${IMG_ROOTFS_TYPE}"
> > +
> > +# This image depends on the rootfs image
> > +IMAGE_TYPEDEP_rockchip-gpt-img = "${IMG_ROOTFS_TYPE}"
> > +
> > +GPTIMG_SUFFIX  = "gpt-img"
> > +GPTIMG         = "${IMAGE_NAME}.${GPTIMG_SUFFIX}"
> > +GPTIMG_SIZE   ?= "4096"
> This should be GPT size in sectors which is 64 sectors. The name 
> GPTIMG_SIZE is not clear enough. People may think it is whole gpt 
> image. What about call it GPT_SIZE?

It's whole gpt image.

> > +BOOT_IMG       = "boot.img"
> > +MINILOADER     = "loader.bin"
> > +UBOOT          = "u-boot.out"
> > +TRUST          = "trust.out"
> > +GPTIMG_APPEND ?= "console=tty1 console=ttyS2,115200n8 rw 
> root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
> > +
> > +# default partitions [in Sectors]
> > +# More info at http://rockchip.wikidot.com/partitions
> > +LOADER1_SIZE = "8000"
> > +RESERVED1_SIZE = "128"
> > +RESERVED2_SIZE = "8192"
> > +LOADER2_SIZE = "8192"
> > +ATF_SIZE = "8192"
> > +BOOT_SIZE = "229376"
> > +
> > +IMAGE_DEPENDS_rockchip-gpt-img = "parted-native \
> > +       u-boot-mkimage-native \
> > +       mtools-native \
> > +       dosfstools-native \
> > +       virtual/kernel:do_deploy \
> > +       virtual/bootloader:do_deploy"
> > +
> > +PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_image"
> This is not just for rk3288. in fact, it can be used for all the 
> Rockchip SoC.

There're many differences between Chips.
Some chips didn't implement SPL support and have to use rk-miniloader to 
create u-boot blob. (e.g. previous rk3399, rk3229)
Some chips didn't use "spl_back_to_brom" so their tpl have a different 
offset.(e.g. previous rk3288)

The name "generate_load1" can't express it clearly.

> > +
> > +IMAGE_CMD_rockchip-gpt-img () {
> > +       # Change to image directory
> > +       cd ${DEPLOY_DIR_IMAGE}
> > +
> > +       # Remove the exist image
> > +       rm -rf *${GPTIMG_SUFFIX}
> ${IMAGE_NAME}  is derived using the IMAGE_BASENAME, MACHINE, and 
> DATETIME variables. So we don't need to delete previous one to avoid 
> mistake.
> > +
> > +       create_rk_image
> > +
> > +       ${PER_CHIP_IMG_GENERATION_COMMAND}
> > +
> > +       cd ${DEPLOY_DIR_IMAGE}
> > +       ln -s ${GPTIMG} "${IMAGE_BASENAME}-${MACHINE}.${GPTIMG_SUFFIX}"
> > +}
> > +
> > +create_rk_image () {
> > +
> > +       # Initialize sdcard image file
> > +       dd if=/dev/zero of=${GPTIMG} bs=1M count=0 seek=${GPTIMG_SIZE}
> > +
> > +       # Create partition table
> > +       parted -s ${GPTIMG} mklabel gpt
> > +
> > +       # Create vendor defined partitions
> > +       LOADER1_START=64
> > +       RESERVED1_START=`expr ${LOADER1_START}  + ${LOADER1_SIZE}`
> > +       RESERVED2_START=`expr ${RESERVED1_START}  + ${RESERVED1_SIZE}`
> > +       LOADER2_START=`expr ${RESERVED2_START}  + ${RESERVED2_SIZE}`
> > +       ATF_START=`expr ${LOADER2_START}  + ${LOADER2_SIZE}`
> > +       BOOT_START=`expr ${ATF_START}  + ${ATF_SIZE}`
> > +       ROOTFS_START=`expr ${BOOT_START}  + ${BOOT_SIZE}`
> > +
> > +       parted -s ${GPTIMG} unit s mkpart loader1 ${LOADER1_START} 
> `expr ${RESERVED1_START} - 1`
> > +       parted -s ${GPTIMG} unit s mkpart reserved1 
> ${RESERVED1_START} `expr ${RESERVED2_START} - 1`
> > +       parted -s ${GPTIMG} unit s mkpart reserved2 
> ${RESERVED2_START} `expr ${LOADER2_START} - 1`
> > +       parted -s ${GPTIMG} unit s mkpart loader2 ${LOADER2_START} 
> `expr ${ATF_START} - 1`
> > +       parted -s ${GPTIMG} unit s mkpart atf ${ATF_START} `expr 
> ${BOOT_START} - 1`
> > +
> > +       # Create boot partition and mark it as bootable
> > +       parted -s ${GPTIMG} unit s mkpart boot ${BOOT_START} `expr 
> ${ROOTFS_START} - 1`
> > +       parted -s ${GPTIMG} set 6 boot on
> > +
> > +       # Create rootfs partition
> > +       parted -s ${GPTIMG} unit s mkpart root ${ROOTFS_START} 100%
> > +
> > +       parted ${GPTIMG} print
> > +
> > +       # Delete the boot image to avoid trouble with the build cache
> > +       rm -f ${WORKDIR}/${BOOT_IMG}
> what about use BOOT_IMG = "boot-${MACHINE}-${DATETIME}.img" instead? 
> That will leave the previous build for debug and avoid trouble.

BOOT_IMG seems will not be deleted automatically so i delete it in here.
If we leave the previous build, it will make a mess.


> > +
> > +       # Create boot partition image
> > +       BOOT_BLOCKS=$(LC_ALL=C parted -s ${GPTIMG} unit b print | 
> awk '/ 6 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
> > +       BOOT_BLOCKS=`expr $BOOT_BLOCKS / 63 \* 63`
> > +
> > +       mkfs.vfat -n "boot" -S 512 -C ${WORKDIR}/${BOOT_IMG} 
> $BOOT_BLOCKS
> > +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s 
> ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin 
> ::${KERNEL_IMAGETYPE}
> > +
> > +       DEVICETREE_DEFAULT=""
> > +       for DTS_FILE in ${KERNEL_DEVICETREE}; do
> > +               [ -n "${DEVICETREE_DEFAULT}"] && 
> DEVICETREE_DEFAULT="${DTS_FILE}"
> > +               mcopy -i ${WORKDIR}/${BOOT_IMG} -s 
> ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTS_FILE} ::${DTS_FILE}
> > +       done
> > +
> > +       # Create extlinux config file
> > +       cat > ${WORKDIR}/extlinux.conf <<EOF
> > +default yocto
> > +
> > +label yocto
> > +       kernel /${KERNEL_IMAGETYPE}
> > +       devicetree /${DEVICETREE_DEFAULT}
> > +       append ${GPTIMG_APPEND}
> > +EOF
> > +
> > +       mmd -i ${WORKDIR}/${BOOT_IMG} ::/extlinux
> > +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${WORKDIR}/extlinux.conf 
> ::/extlinux/
> > +
> > +       # Burn Boot Partition
> > +       dd if=${WORKDIR}/${BOOT_IMG} of=${GPTIMG} conv=notrunc,fsync 
> seek=${BOOT_START}
> > +
> > +       # Burn Rootfs Partition
> > +       dd if=${IMG_ROOTFS} of=${GPTIMG} seek=${ROOTFS_START}
> > +
> > +}
> > +
> > +generate_rk3288_image () {
> It is not only for rk3288. In fact, This function is for create load1 
> partition. So what about using generate_load1 or create_loader1 ?
> > +
> > +       # Burn bootloader
> > +       mkimage -n rk3288 -T rksd -d 
> ${DEPLOY_DIR_IMAGE}/${SPL_BINARY} ${WORKDIR}/${UBOOT}
> > +       cat ${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin >> 
>  ${WORKDIR}/${UBOOT}
> > +       dd if=${WORKDIR}/${UBOOT} of=${GPTIMG} conv=notrunc,fsync 
> seek=64
> > +
> > +}
> > --
> > 2.12.0.rc1.48.g076c053
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto

It looks good, Reviewed-by: Jacob Chen <jacob-chen@iotwrt.com>

--------------AA14D19C4D14ADD2F6F163C0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi all,<br>
    </p>
    <br>
    <div class="moz-cite-prefix">Eddie Cai wrote on 2017年02月19日 14:32:<br>
    </div>
    <blockquote
cite="mid:CAJrj+DMxz0u-Lf=HCXpSLYzF4e7aYsZMtkHK0qUNKyZ6oLt+mA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Trevor<br>
        <br>
        2017-02-19 10:43 GMT+08:00 Trevor Woerner &lt;<a
          moz-do-not-send="true" href="mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt;:<br>
        &gt; This bbclass was taken from the Rockchip team's work at<br>
        &gt; <a moz-do-not-send="true"
href="https://github.com/rockchip-linux/meta-rockchip/commit/53d2e2e474a3014e3013d0059fd1da773fb0e2b7">https://github.com/rockchip-linux/meta-rockchip/commit/53d2e2e474a3014e3013d0059fd1da773fb0e2b7</a><br>
        &gt; It was mostly written by Jacob Chen &lt;<a
          moz-do-not-send="true" href="mailto:jacob-chen@iotwrt.com">jacob-chen@iotwrt.com</a>&gt;.
        I've made some<br>
        &gt; small modifications and added it.<br>
        &gt;<br>
        &gt; Older images used (what Rockchip calls) the "rk-boot"
        format. Newer images use<br>
        We call it legacy parameter format<br>
        &gt; u-boot and a GPT partitioning scheme. This class allows the
        build to generate<br>
        &gt; a gpt-img file that can either be flashed to eMMC or
        written to an SDcard (the<br>
        &gt; same image is used for both).<br>
        gpt-img is much better than previous one. I like this name.<br>
        &gt;<br>
        &gt; This is the new image format used for rk3288 SoCs (e.g. the
        Firefly board).<br>
        &gt;<br>
        &gt; Signed-off-by: Trevor Woerner &lt;<a moz-do-not-send="true"
          href="mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt;<br>
        &gt; ---<br>
        &gt;  classes/rockchip-gpt-img.bbclass | 132
        +++++++++++++++++++++++++++++++++++++++<br>
        &gt;  1 file changed, 132 insertions(+)<br>
        &gt;  create mode 100644 classes/rockchip-gpt-img.bbclass<br>
        &gt;<br>
        &gt; diff --git a/classes/rockchip-gpt-img.bbclass
        b/classes/rockchip-gpt-img.bbclass<br>
        &gt; new file mode 100644<br>
        &gt; index 0000000..fd80625<br>
        &gt; --- /dev/null<br>
        &gt; +++ b/classes/rockchip-gpt-img.bbclass<br>
        &gt; @@ -0,0 +1,132 @@<br>
        &gt; +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
        &gt; +# Copyright (C) 2017 Trevor Woerner &lt;<a
          moz-do-not-send="true" href="mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt;<br>
        &gt; +# Released under the MIT license (see COPYING.MIT for the
        terms)<br>
        &gt; +<br>
        &gt; +inherit image_types<br>
        &gt; +<br>
        &gt; +# Use an uncompressed ext4 by default as rootfs<br>
        &gt; +IMG_ROOTFS_TYPE = "ext4"<br>
        &gt; +IMG_ROOTFS =
        "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${IMG_ROOTFS_TYPE}"<br>
        &gt; +<br>
        &gt; +# This image depends on the rootfs image<br>
        &gt; +IMAGE_TYPEDEP_rockchip-gpt-img = "${IMG_ROOTFS_TYPE}"<br>
        &gt; +<br>
        &gt; +GPTIMG_SUFFIX  = "gpt-img"<br>
        &gt; +GPTIMG         = "${IMAGE_NAME}.${GPTIMG_SUFFIX}"<br>
        &gt; +GPTIMG_SIZE   ?= "4096"<br>
        This should be GPT size in sectors which is 64 sectors. The name
        GPTIMG_SIZE is not clear enough. People may think it is whole
        gpt image. What about call it GPT_SIZE?<br>
      </div>
    </blockquote>
    <br>
    It's whole gpt image.<br>
    <br>
    <blockquote
cite="mid:CAJrj+DMxz0u-Lf=HCXpSLYzF4e7aYsZMtkHK0qUNKyZ6oLt+mA@mail.gmail.com"
      type="cite">
      <div dir="ltr">&gt; +BOOT_IMG       = "boot.img"<br>
        &gt; +MINILOADER     = "loader.bin"<br>
        &gt; +UBOOT          = "u-boot.out"<br>
        &gt; +TRUST          = "trust.out"<br>
        &gt; +GPTIMG_APPEND ?= "console=tty1 console=ttyS2,115200n8 rw
        root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"<br>
        &gt; +<br>
        &gt; +# default partitions [in Sectors]<br>
        &gt; +# More info at <a moz-do-not-send="true"
          href="http://rockchip.wikidot.com/partitions">http://rockchip.wikidot.com/partitions</a><br>
        &gt; +LOADER1_SIZE = "8000"<br>
        &gt; +RESERVED1_SIZE = "128"<br>
        &gt; +RESERVED2_SIZE = "8192"<br>
        &gt; +LOADER2_SIZE = "8192"<br>
        &gt; +ATF_SIZE = "8192"<br>
        &gt; +BOOT_SIZE = "229376"<br>
        &gt; +<br>
        &gt; +IMAGE_DEPENDS_rockchip-gpt-img = "parted-native \<br>
        &gt; +       u-boot-mkimage-native \<br>
        &gt; +       mtools-native \<br>
        &gt; +       dosfstools-native \<br>
        &gt; +       virtual/kernel:do_deploy \<br>
        &gt; +       virtual/bootloader:do_deploy"<br>
        &gt; +<br>
        &gt; +PER_CHIP_IMG_GENERATION_COMMAND_rk3288 =
        "generate_rk3288_image"<br>
        This is not just for rk3288. in fact, it can be used for all the
        Rockchip SoC.<br>
      </div>
    </blockquote>
    <br>
    There're many differences between Chips.<br>
    Some chips didn't implement SPL support and have to use
    rk-miniloader to create u-boot blob. (e.g. previous rk3399, rk3229)<br>
    Some chips didn't use "spl_back_to_brom" so their tpl have a
    different offset.(e.g. previous rk3288)<br>
    <br>
    The name "generate_load1" can't express it clearly.<br>
    <br>
    <blockquote
cite="mid:CAJrj+DMxz0u-Lf=HCXpSLYzF4e7aYsZMtkHK0qUNKyZ6oLt+mA@mail.gmail.com"
      type="cite">
      <div dir="ltr">&gt; +<br>
        &gt; +IMAGE_CMD_rockchip-gpt-img () {<br>
        &gt; +       # Change to image directory<br>
        &gt; +       cd ${DEPLOY_DIR_IMAGE}<br>
        &gt; +<br>
        &gt; +       # Remove the exist image<br>
        &gt; +       rm -rf *${GPTIMG_SUFFIX}<br>
        ${IMAG<font face="arial, helvetica, sans-serif">E_NAME}  is
          derived using the IMAGE_BASENAME, MACHINE, and DATETIME
          variables. So we don't need to delete previous one to avoid
          mistake. </font><br>
        &gt; +<br>
        &gt; +       create_rk_image<br>
        &gt; +<br>
        &gt; +       ${PER_CHIP_IMG_GENERATION_COMMAND}<br>
        &gt; +<br>
        &gt; +       cd ${DEPLOY_DIR_IMAGE}<br>
        &gt; +       ln -s ${GPTIMG}
        "${IMAGE_BASENAME}-${MACHINE}.${GPTIMG_SUFFIX}"<br>
        &gt; +}<br>
        &gt; +<br>
        &gt; +create_rk_image () {<br>
        &gt; +<br>
        &gt; +       # Initialize sdcard image file<br>
        &gt; +       dd if=/dev/zero of=${GPTIMG} bs=1M count=0
        seek=${GPTIMG_SIZE}<br>
        &gt; +<br>
        &gt; +       # Create partition table<br>
        &gt; +       parted -s ${GPTIMG} mklabel gpt<br>
        &gt; +<br>
        &gt; +       # Create vendor defined partitions<br>
        &gt; +       LOADER1_START=64<br>
        &gt; +       RESERVED1_START=`expr ${LOADER1_START}  +
        ${LOADER1_SIZE}`<br>
        &gt; +       RESERVED2_START=`expr ${RESERVED1_START}  +
        ${RESERVED1_SIZE}`<br>
        &gt; +       LOADER2_START=`expr ${RESERVED2_START}  +
        ${RESERVED2_SIZE}`<br>
        &gt; +       ATF_START=`expr ${LOADER2_START}  +
        ${LOADER2_SIZE}`<br>
        &gt; +       BOOT_START=`expr ${ATF_START}  + ${ATF_SIZE}`<br>
        &gt; +       ROOTFS_START=`expr ${BOOT_START}  + ${BOOT_SIZE}`<br>
        &gt; +<br>
        &gt; +       parted -s ${GPTIMG} unit s mkpart loader1
        ${LOADER1_START} `expr ${RESERVED1_START} - 1`<br>
        &gt; +       parted -s ${GPTIMG} unit s mkpart reserved1
        ${RESERVED1_START} `expr ${RESERVED2_START} - 1`<br>
        &gt; +       parted -s ${GPTIMG} unit s mkpart reserved2
        ${RESERVED2_START} `expr ${LOADER2_START} - 1`<br>
        &gt; +       parted -s ${GPTIMG} unit s mkpart loader2
        ${LOADER2_START} `expr ${ATF_START} - 1`<br>
        &gt; +       parted -s ${GPTIMG} unit s mkpart atf ${ATF_START}
        `expr ${BOOT_START} - 1`<br>
        &gt; +<br>
        &gt; +       # Create boot partition and mark it as bootable<br>
        &gt; +       parted -s ${GPTIMG} unit s mkpart boot
        ${BOOT_START} `expr ${ROOTFS_START} - 1`<br>
        &gt; +       parted -s ${GPTIMG} set 6 boot on<br>
        &gt; +<br>
        &gt; +       # Create rootfs partition<br>
        &gt; +       parted -s ${GPTIMG} unit s mkpart root
        ${ROOTFS_START} 100%<br>
        &gt; +<br>
        &gt; +       parted ${GPTIMG} print<br>
        &gt; +<br>
        &gt; +       # Delete the boot image to avoid trouble with the
        build cache<br>
        &gt; +       rm -f ${WORKDIR}/${BOOT_IMG}
        <div>what about use BOOT_IMG = <span style="color:rgb(51,51,51)">"boot-${MACHINE}-${DATETIME}.img"
            instead? That will leave the previous build for debug and
            avoid trouble. <br>
          </span></div>
      </div>
    </blockquote>
    <br>
    BOOT_IMG seems will not be deleted automatically so i delete it in
    here.<br>
    If we <span style="color:rgb(51,51,51)">leave the previous build,
      it will make a mess.</span>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <br>
    <br>
    <br>
    <blockquote
cite="mid:CAJrj+DMxz0u-Lf=HCXpSLYzF4e7aYsZMtkHK0qUNKyZ6oLt+mA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>&gt; +<br>
          &gt; +       # Create boot partition image<br>
          &gt; +       BOOT_BLOCKS=$(LC_ALL=C parted -s ${GPTIMG} unit b
          print | awk '/ 6 / { print substr($4, 1, length($4 -1)) / 512
          /2 }')<br>
          &gt; +       BOOT_BLOCKS=`expr $BOOT_BLOCKS / 63 \* 63`<br>
          &gt; +<br>
          &gt; +       mkfs.vfat -n "boot" -S 512 -C
          ${WORKDIR}/${BOOT_IMG} $BOOT_BLOCKS<br>
          &gt; +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s
          ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin
          ::${KERNEL_IMAGETYPE}<br>
          &gt; +<br>
          &gt; +       DEVICETREE_DEFAULT=""<br>
          &gt; +       for DTS_FILE in ${KERNEL_DEVICETREE}; do<br>
          &gt; +               [ -n "${DEVICETREE_DEFAULT}"] &amp;&amp;
          DEVICETREE_DEFAULT="${DTS_FILE}"<br>
          &gt; +               mcopy -i ${WORKDIR}/${BOOT_IMG} -s
          ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTS_FILE}
          ::${DTS_FILE}<br>
          &gt; +       done<br>
          &gt; +<br>
          &gt; +       # Create extlinux config file<br>
          &gt; +       cat &gt; ${WORKDIR}/extlinux.conf &lt;&lt;EOF<br>
          &gt; +default yocto<br>
          &gt; +<br>
          &gt; +label yocto<br>
          &gt; +       kernel /${KERNEL_IMAGETYPE}<br>
          &gt; +       devicetree /${DEVICETREE_DEFAULT}<br>
          &gt; +       append ${GPTIMG_APPEND}<br>
          &gt; +EOF<br>
          &gt; +<br>
          &gt; +       mmd -i ${WORKDIR}/${BOOT_IMG} ::/extlinux<br>
          &gt; +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s
          ${WORKDIR}/extlinux.conf ::/extlinux/<br>
          &gt; +<br>
          &gt; +       # Burn Boot Partition<br>
          &gt; +       dd if=${WORKDIR}/${BOOT_IMG} of=${GPTIMG}
          conv=notrunc,fsync seek=${BOOT_START}<br>
          &gt; +<br>
          &gt; +       # Burn Rootfs Partition<br>
          &gt; +       dd if=${IMG_ROOTFS} of=${GPTIMG}
          seek=${ROOTFS_START}<br>
          &gt; +<br>
          &gt; +}<br>
          &gt; +<br>
          &gt; +generate_rk3288_image () {
          <div>It is not only for rk3288. In fact, This function is for
            create load1 partition. So what about using generate_load1
            or create_loader1 ?<br>
            &gt; +<br>
            &gt; +       # Burn bootloader<br>
            &gt; +       mkimage -n rk3288 -T rksd -d
            ${DEPLOY_DIR_IMAGE}/${SPL_BINARY} ${WORKDIR}/${UBOOT}<br>
            &gt; +       cat ${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin
            &gt;&gt;  ${WORKDIR}/${UBOOT}<br>
            &gt; +       dd if=${WORKDIR}/${UBOOT} of=${GPTIMG}
            conv=notrunc,fsync seek=64<br>
            &gt; +<br>
            &gt; +}<br>
            &gt; --<br>
            &gt; 2.12.0.rc1.48.g076c053<br>
            &gt;<br>
            &gt; --<br>
            &gt; _______________________________________________<br>
            &gt; yocto mailing list<br>
            &gt; <a moz-do-not-send="true"
              href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
            &gt; <a moz-do-not-send="true"
              href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></div>
        </div>
      </div>
    </blockquote>
    <br>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    It looks good, Reviewed-by: Jacob Chen <a class="moz-txt-link-rfc2396E" href="mailto:jacob-chen@iotwrt.com">&lt;jacob-chen@iotwrt.com&gt;</a><br>
  </body>
</html>

--------------AA14D19C4D14ADD2F6F163C0--
