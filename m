Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 941B5E00A21; Sat, 18 Feb 2017 22:32:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48372E009F8
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 22:32:05 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id x71so1604811qkb.0
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 22:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CnxFBWzTjZa7rJ2DO4XJkPZz2De5djX6SwKkLrMSDIQ=;
	b=tZLmtoojY/va5CtDltmuvgikDuAWebeqN5QKoxoFxO8IZJEytT+4FaeAINdV0OC4Oq
	b2pcX5vNtok0oCe1moJC5oyvhbXOG68GMpYSnFPuU9THKUfH8aqKdVwFDmegPVlASvRQ
	oJdO8OLG2AKh0a8bJ8UI8Vzk39KKr7tpESUvEf3hTdA0J+g6RZU7pnNGpGJRBTBIHK3p
	5IU5uD4PkiQLzK0oo9QIKCfYiK6UhG4XzWhfLd2N9I7IAFPadXTq/Bg4iS02hGl5XElw
	fRscN9RaA3KYUY/xBrW2IwSqbRvCQ7Pqmx9781o/Gm+EMNCDQEYaKIh8QqGVu2d13WzK
	UabQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CnxFBWzTjZa7rJ2DO4XJkPZz2De5djX6SwKkLrMSDIQ=;
	b=KVb0zfN4eh0adrcgY82FEyS7L87jTBLqVUk9u3sBf7SL97vCx1y+ngryQu/DeXcyHY
	OpNc2awpmZ/WpKtRWSDcC8sF3v2sffr8EyoYoVa6bG+fkxlQTKCilti6EYe6tI7su8Kp
	nkBpm8nhNAQwKrfADdsvtRqSJkPd1D6cNVd1i7+dTVjm1Uhc0TT3xD4eeea4RdPek9OL
	xDKq4y7y22sMu1LtgJ7Vr7Bk317m3eU2BEfm0eXuHzhkrrrtkKEwzmP84Xovox1cda9T
	bSsVZs6zBxJtuCBGa/ABrmO4Zjex1yPr/3pjgckCFlV36OGTpYzk0gcwESZ11WayhdRU
	zf7w==
X-Gm-Message-State: AMke39mPeqcwnVcG9TsaHa21SjGTonhoza7e1v2UPxanPNCyakTlI43MGuc5/j+XeNGvnuLiqB/+pW3t/F/Gow==
X-Received: by 10.55.215.23 with SMTP id m23mr14327007qki.30.1487485925240;
	Sat, 18 Feb 2017 22:32:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Sat, 18 Feb 2017 22:32:04 -0800 (PST)
In-Reply-To: <20170219024340.23664-5-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-5-twoerner@gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Sun, 19 Feb 2017 14:32:04 +0800
Message-ID: <CAJrj+DMxz0u-Lf=HCXpSLYzF4e7aYsZMtkHK0qUNKyZ6oLt+mA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org, Jacob Chen <jacob2.chen@rock-chips.com>
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
X-List-Received-Date: Sun, 19 Feb 2017 06:32:09 -0000
Content-Type: multipart/alternative; boundary=001a1149abea2eb7a90548dc4e7d

--001a1149abea2eb7a90548dc4e7d
Content-Type: text/plain; charset=UTF-8

Hi Trevor

2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
> This bbclass was taken from the Rockchip team's work at
>
https://github.com/rockchip-linux/meta-rockchip/commit/53d2e2e474a3014e3013d0059fd1da773fb0e2b7
> It was mostly written by Jacob Chen <jacob-chen@iotwrt.com>. I've made
some
> small modifications and added it.
>
> Older images used (what Rockchip calls) the "rk-boot" format. Newer
images use
We call it legacy parameter format
> u-boot and a GPT partitioning scheme. This class allows the build to
generate
> a gpt-img file that can either be flashed to eMMC or written to an SDcard
(the
> same image is used for both).
gpt-img is much better than previous one. I like this name.
>
> This is the new image format used for rk3288 SoCs (e.g. the Firefly
board).
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  classes/rockchip-gpt-img.bbclass | 132
+++++++++++++++++++++++++++++++++++++++
>  1 file changed, 132 insertions(+)
>  create mode 100644 classes/rockchip-gpt-img.bbclass
>
> diff --git a/classes/rockchip-gpt-img.bbclass
b/classes/rockchip-gpt-img.bbclass
> new file mode 100644
> index 0000000..fd80625
> --- /dev/null
> +++ b/classes/rockchip-gpt-img.bbclass
> @@ -0,0 +1,132 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +inherit image_types
> +
> +# Use an uncompressed ext4 by default as rootfs
> +IMG_ROOTFS_TYPE = "ext4"
> +IMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${IMG_ROOTFS_TYPE}"
> +
> +# This image depends on the rootfs image
> +IMAGE_TYPEDEP_rockchip-gpt-img = "${IMG_ROOTFS_TYPE}"
> +
> +GPTIMG_SUFFIX  = "gpt-img"
> +GPTIMG         = "${IMAGE_NAME}.${GPTIMG_SUFFIX}"
> +GPTIMG_SIZE   ?= "4096"
This should be GPT size in sectors which is 64 sectors. The name
GPTIMG_SIZE is not clear enough. People may think it is whole gpt image.
What about call it GPT_SIZE?
> +BOOT_IMG       = "boot.img"
> +MINILOADER     = "loader.bin"
> +UBOOT          = "u-boot.out"
> +TRUST          = "trust.out"
> +GPTIMG_APPEND ?= "console=tty1 console=ttyS2,115200n8 rw
root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
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
> +IMAGE_DEPENDS_rockchip-gpt-img = "parted-native \
> +       u-boot-mkimage-native \
> +       mtools-native \
> +       dosfstools-native \
> +       virtual/kernel:do_deploy \
> +       virtual/bootloader:do_deploy"
> +
> +PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_image"
This is not just for rk3288. in fact, it can be used for all the Rockchip
SoC.
> +
> +IMAGE_CMD_rockchip-gpt-img () {
> +       # Change to image directory
> +       cd ${DEPLOY_DIR_IMAGE}
> +
> +       # Remove the exist image
> +       rm -rf *${GPTIMG_SUFFIX}
${IMAGE_NAME}  is derived using the IMAGE_BASENAME, MACHINE, and DATETIME
variables. So we don't need to delete previous one to avoid mistake.
> +
> +       create_rk_image
> +
> +       ${PER_CHIP_IMG_GENERATION_COMMAND}
> +
> +       cd ${DEPLOY_DIR_IMAGE}
> +       ln -s ${GPTIMG} "${IMAGE_BASENAME}-${MACHINE}.${GPTIMG_SUFFIX}"
> +}
> +
> +create_rk_image () {
> +
> +       # Initialize sdcard image file
> +       dd if=/dev/zero of=${GPTIMG} bs=1M count=0 seek=${GPTIMG_SIZE}
> +
> +       # Create partition table
> +       parted -s ${GPTIMG} mklabel gpt
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
> +       parted -s ${GPTIMG} unit s mkpart loader1 ${LOADER1_START} `expr
${RESERVED1_START} - 1`
> +       parted -s ${GPTIMG} unit s mkpart reserved1 ${RESERVED1_START}
`expr ${RESERVED2_START} - 1`
> +       parted -s ${GPTIMG} unit s mkpart reserved2 ${RESERVED2_START}
`expr ${LOADER2_START} - 1`
> +       parted -s ${GPTIMG} unit s mkpart loader2 ${LOADER2_START} `expr
${ATF_START} - 1`
> +       parted -s ${GPTIMG} unit s mkpart atf ${ATF_START} `expr
${BOOT_START} - 1`
> +
> +       # Create boot partition and mark it as bootable
> +       parted -s ${GPTIMG} unit s mkpart boot ${BOOT_START} `expr
${ROOTFS_START} - 1`
> +       parted -s ${GPTIMG} set 6 boot on
> +
> +       # Create rootfs partition
> +       parted -s ${GPTIMG} unit s mkpart root ${ROOTFS_START} 100%
> +
> +       parted ${GPTIMG} print
> +
> +       # Delete the boot image to avoid trouble with the build cache
> +       rm -f ${WORKDIR}/${BOOT_IMG}
what about use BOOT_IMG = "boot-${MACHINE}-${DATETIME}.img" instead? That
will leave the previous build for debug and avoid trouble.
> +
> +       # Create boot partition image
> +       BOOT_BLOCKS=$(LC_ALL=C parted -s ${GPTIMG} unit b print | awk '/
6 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
> +       BOOT_BLOCKS=`expr $BOOT_BLOCKS / 63 \* 63`
> +
> +       mkfs.vfat -n "boot" -S 512 -C ${WORKDIR}/${BOOT_IMG} $BOOT_BLOCKS
> +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s
${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::${KERNEL_IMAGETYPE}
> +
> +       DEVICETREE_DEFAULT=""
> +       for DTS_FILE in ${KERNEL_DEVICETREE}; do
> +               [ -n "${DEVICETREE_DEFAULT}"] &&
DEVICETREE_DEFAULT="${DTS_FILE}"
> +               mcopy -i ${WORKDIR}/${BOOT_IMG} -s
${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTS_FILE} ::${DTS_FILE}
> +       done
> +
> +       # Create extlinux config file
> +       cat > ${WORKDIR}/extlinux.conf <<EOF
> +default yocto
> +
> +label yocto
> +       kernel /${KERNEL_IMAGETYPE}
> +       devicetree /${DEVICETREE_DEFAULT}
> +       append ${GPTIMG_APPEND}
> +EOF
> +
> +       mmd -i ${WORKDIR}/${BOOT_IMG} ::/extlinux
> +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${WORKDIR}/extlinux.conf
::/extlinux/
> +
> +       # Burn Boot Partition
> +       dd if=${WORKDIR}/${BOOT_IMG} of=${GPTIMG} conv=notrunc,fsync
seek=${BOOT_START}
> +
> +       # Burn Rootfs Partition
> +       dd if=${IMG_ROOTFS} of=${GPTIMG} seek=${ROOTFS_START}
> +
> +}
> +
> +generate_rk3288_image () {
It is not only for rk3288. In fact, This function is for create load1
partition. So what about using generate_load1 or create_loader1 ?
> +
> +       # Burn bootloader
> +       mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE}/${SPL_BINARY}
${WORKDIR}/${UBOOT}
> +       cat ${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin >>
 ${WORKDIR}/${UBOOT}
> +       dd if=${WORKDIR}/${UBOOT} of=${GPTIMG} conv=notrunc,fsync seek=64
> +
> +}
> --
> 2.12.0.rc1.48.g076c053
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a1149abea2eb7a90548dc4e7d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Trevor<br><br>2017-02-19 10:43 GMT+08:00 Trevor Woerner=
 &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt;:<br>&=
gt; This bbclass was taken from the Rockchip team&#39;s work at<br>&gt; <a =
href=3D"https://github.com/rockchip-linux/meta-rockchip/commit/53d2e2e474a3=
014e3013d0059fd1da773fb0e2b7">https://github.com/rockchip-linux/meta-rockch=
ip/commit/53d2e2e474a3014e3013d0059fd1da773fb0e2b7</a><br>&gt; It was mostl=
y written by Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com">jacob-=
chen@iotwrt.com</a>&gt;. I&#39;ve made some<br>&gt; small modifications and=
 added it.<br>&gt;<br>&gt; Older images used (what Rockchip calls) the &quo=
t;rk-boot&quot; format. Newer images use<br>We call it legacy parameter for=
mat<br>&gt; u-boot and a GPT partitioning scheme. This class allows the bui=
ld to generate<br>&gt; a gpt-img file that can either be flashed to eMMC or=
 written to an SDcard (the<br>&gt; same image is used for both).<br>gpt-img=
 is much better than previous one. I like this name.<br>&gt;<br>&gt; This i=
s the new image format used for rk3288 SoCs (e.g. the Firefly board).<br>&g=
t;<br>&gt; Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gma=
il.com">twoerner@gmail.com</a>&gt;<br>&gt; ---<br>&gt; =C2=A0classes/rockch=
ip-gpt-img.bbclass | 132 +++++++++++++++++++++++++++++++++++++++<br>&gt; =
=C2=A01 file changed, 132 insertions(+)<br>&gt; =C2=A0create mode 100644 cl=
asses/rockchip-gpt-img.bbclass<br>&gt;<br>&gt; diff --git a/classes/rockchi=
p-gpt-img.bbclass b/classes/rockchip-gpt-img.bbclass<br>&gt; new file mode =
100644<br>&gt; index 0000000..fd80625<br>&gt; --- /dev/null<br>&gt; +++ b/c=
lasses/rockchip-gpt-img.bbclass<br>&gt; @@ -0,0 +1,132 @@<br>&gt; +# Copyri=
ght (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>&gt; +# Copyright (C) =
2017 Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmai=
l.com</a>&gt;<br>&gt; +# Released under the MIT license (see COPYING.MIT fo=
r the terms)<br>&gt; +<br>&gt; +inherit image_types<br>&gt; +<br>&gt; +# Us=
e an uncompressed ext4 by default as rootfs<br>&gt; +IMG_ROOTFS_TYPE =3D &q=
uot;ext4&quot;<br>&gt; +IMG_ROOTFS =3D &quot;${IMGDEPLOYDIR}/${IMAGE_NAME}.=
rootfs.${IMG_ROOTFS_TYPE}&quot;<br>&gt; +<br>&gt; +# This image depends on =
the rootfs image<br>&gt; +IMAGE_TYPEDEP_rockchip-gpt-img =3D &quot;${IMG_RO=
OTFS_TYPE}&quot;<br>&gt; +<br>&gt; +GPTIMG_SUFFIX =C2=A0=3D &quot;gpt-img&q=
uot;<br>&gt; +GPTIMG =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;${IMAGE_NAME}.${=
GPTIMG_SUFFIX}&quot;<br>&gt; +GPTIMG_SIZE =C2=A0 ?=3D &quot;4096&quot;<br>T=
his should be GPT size in sectors which is 64 sectors. The name GPTIMG_SIZE=
 is not clear enough. People may think it is whole gpt image. What about ca=
ll it GPT_SIZE?<br>&gt; +BOOT_IMG =C2=A0 =C2=A0 =C2=A0 =3D &quot;boot.img&q=
uot;<br>&gt; +MINILOADER =C2=A0 =C2=A0 =3D &quot;loader.bin&quot;<br>&gt; +=
UBOOT =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;u-boot.out&quot;<br>&gt; =
+TRUST =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;trust.out&quot;<br>&gt; =
+GPTIMG_APPEND ?=3D &quot;console=3Dtty1 console=3DttyS2,115200n8 rw root=
=3D/dev/mmcblk2p7 rootfstype=3Dext4 init=3D/sbin/init&quot;<br>&gt; +<br>&g=
t; +# default partitions [in Sectors]<br>&gt; +# More info at <a href=3D"ht=
tp://rockchip.wikidot.com/partitions">http://rockchip.wikidot.com/partition=
s</a><br>&gt; +LOADER1_SIZE =3D &quot;8000&quot;<br>&gt; +RESERVED1_SIZE =
=3D &quot;128&quot;<br>&gt; +RESERVED2_SIZE =3D &quot;8192&quot;<br>&gt; +L=
OADER2_SIZE =3D &quot;8192&quot;<br>&gt; +ATF_SIZE =3D &quot;8192&quot;<br>=
&gt; +BOOT_SIZE =3D &quot;229376&quot;<br>&gt; +<br>&gt; +IMAGE_DEPENDS_roc=
kchip-gpt-img =3D &quot;parted-native \<br>&gt; + =C2=A0 =C2=A0 =C2=A0 u-bo=
ot-mkimage-native \<br>&gt; + =C2=A0 =C2=A0 =C2=A0 mtools-native \<br>&gt; =
+ =C2=A0 =C2=A0 =C2=A0 dosfstools-native \<br>&gt; + =C2=A0 =C2=A0 =C2=A0 v=
irtual/kernel:do_deploy \<br>&gt; + =C2=A0 =C2=A0 =C2=A0 virtual/bootloader=
:do_deploy&quot;<br>&gt; +<br>&gt; +PER_CHIP_IMG_GENERATION_COMMAND_rk3288 =
=3D &quot;generate_rk3288_image&quot;<br>This is not just for rk3288. in fa=
ct, it can be used for all the Rockchip SoC.<br>&gt; +<br>&gt; +IMAGE_CMD_r=
ockchip-gpt-img () {<br>&gt; + =C2=A0 =C2=A0 =C2=A0 # Change to image direc=
tory<br>&gt; + =C2=A0 =C2=A0 =C2=A0 cd ${DEPLOY_DIR_IMAGE}<br>&gt; +<br>&gt=
; + =C2=A0 =C2=A0 =C2=A0 # Remove the exist image<br>&gt; + =C2=A0 =C2=A0 =
=C2=A0 rm -rf *${GPTIMG_SUFFIX}<br>${IMAG<font face=3D"arial, helvetica, sa=
ns-serif">E_NAME} =C2=A0is derived using the IMAGE_BASENAME, MACHINE, and D=
ATETIME variables. So we don&#39;t need to delete previous one to avoid mis=
take.=C2=A0</font><br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 create_rk_image=
<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 ${PER_CHIP_IMG_GENERATION_COMMAND=
}<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 cd ${DEPLOY_DIR_IMAGE}<br>&gt; +=
 =C2=A0 =C2=A0 =C2=A0 ln -s ${GPTIMG} &quot;${IMAGE_BASENAME}-${MACHINE}.${=
GPTIMG_SUFFIX}&quot;<br>&gt; +}<br>&gt; +<br>&gt; +create_rk_image () {<br>=
&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 # Initialize sdcard image file<br>&gt=
; + =C2=A0 =C2=A0 =C2=A0 dd if=3D/dev/zero of=3D${GPTIMG} bs=3D1M count=3D0=
 seek=3D${GPTIMG_SIZE}<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 # Create pa=
rtition table<br>&gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} mklabel gp=
t<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 # Create vendor defined partitio=
ns<br>&gt; + =C2=A0 =C2=A0 =C2=A0 LOADER1_START=3D64<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 RESERVED1_START=3D`expr ${LOADER1_START} =C2=A0+ ${LOADER1_SIZE}=
`<br>&gt; + =C2=A0 =C2=A0 =C2=A0 RESERVED2_START=3D`expr ${RESERVED1_START}=
 =C2=A0+ ${RESERVED1_SIZE}`<br>&gt; + =C2=A0 =C2=A0 =C2=A0 LOADER2_START=3D=
`expr ${RESERVED2_START} =C2=A0+ ${RESERVED2_SIZE}`<br>&gt; + =C2=A0 =C2=A0=
 =C2=A0 ATF_START=3D`expr ${LOADER2_START} =C2=A0+ ${LOADER2_SIZE}`<br>&gt;=
 + =C2=A0 =C2=A0 =C2=A0 BOOT_START=3D`expr ${ATF_START} =C2=A0+ ${ATF_SIZE}=
`<br>&gt; + =C2=A0 =C2=A0 =C2=A0 ROOTFS_START=3D`expr ${BOOT_START} =C2=A0+=
 ${BOOT_SIZE}`<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG}=
 unit s mkpart loader1 ${LOADER1_START} `expr ${RESERVED1_START} - 1`<br>&g=
t; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} unit s mkpart reserved1 ${RES=
ERVED1_START} `expr ${RESERVED2_START} - 1`<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
parted -s ${GPTIMG} unit s mkpart reserved2 ${RESERVED2_START} `expr ${LOAD=
ER2_START} - 1`<br>&gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} unit s m=
kpart loader2 ${LOADER2_START} `expr ${ATF_START} - 1`<br>&gt; + =C2=A0 =C2=
=A0 =C2=A0 parted -s ${GPTIMG} unit s mkpart atf ${ATF_START} `expr ${BOOT_=
START} - 1`<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 # Create boot partitio=
n and mark it as bootable<br>&gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG=
} unit s mkpart boot ${BOOT_START} `expr ${ROOTFS_START} - 1`<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} set 6 boot on<br>&gt; +<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 # Create rootfs partition<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
parted -s ${GPTIMG} unit s mkpart root ${ROOTFS_START} 100%<br>&gt; +<br>&g=
t; + =C2=A0 =C2=A0 =C2=A0 parted ${GPTIMG} print<br>&gt; +<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 # Delete the boot image to avoid trouble with the build cach=
e<br>&gt; + =C2=A0 =C2=A0 =C2=A0 rm -f ${WORKDIR}/${BOOT_IMG}<div>what abou=
t use BOOT_IMG =3D=C2=A0<span style=3D"color:rgb(51,51,51)">&quot;boot-${MA=
CHINE}-${DATETIME}.img&quot; instead? That will leave the previous build fo=
r debug and avoid trouble.=C2=A0</span></div><div>&gt; +<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 # Create boot partition image<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =
BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${GPTIMG} unit b print | awk &#39;/ 6 =
/ { print substr($4, 1, length($4 -1)) / 512 /2 }&#39;)<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 BOOT_BLOCKS=3D`expr $BOOT_BLOCKS / 63 \* 63`<br>&gt; +<br>&gt=
; + =C2=A0 =C2=A0 =C2=A0 mkfs.vfat -n &quot;boot&quot; -S 512 -C ${WORKDIR}=
/${BOOT_IMG} $BOOT_BLOCKS<br>&gt; + =C2=A0 =C2=A0 =C2=A0 mcopy -i ${WORKDIR=
}/${BOOT_IMG} -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::$=
{KERNEL_IMAGETYPE}<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 DEVICETREE_DEFA=
ULT=3D&quot;&quot;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 for DTS_FILE in ${KERNEL_=
DEVICETREE}; do<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
[ -n &quot;${DEVICETREE_DEFAULT}&quot;] &amp;&amp; DEVICETREE_DEFAULT=3D&qu=
ot;${DTS_FILE}&quot;<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAG=
ETYPE}-${DTS_FILE} ::${DTS_FILE}<br>&gt; + =C2=A0 =C2=A0 =C2=A0 done<br>&gt=
; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 # Create extlinux config file<br>&gt; + =
=C2=A0 =C2=A0 =C2=A0 cat &gt; ${WORKDIR}/extlinux.conf &lt;&lt;EOF<br>&gt; =
+default yocto<br>&gt; +<br>&gt; +label yocto<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 kernel /${KERNEL_IMAGETYPE}<br>&gt; + =C2=A0 =C2=A0 =C2=A0 devicetree /=
${DEVICETREE_DEFAULT}<br>&gt; + =C2=A0 =C2=A0 =C2=A0 append ${GPTIMG_APPEND=
}<br>&gt; +EOF<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 mmd -i ${WORKDIR}/$=
{BOOT_IMG} ::/extlinux<br>&gt; + =C2=A0 =C2=A0 =C2=A0 mcopy -i ${WORKDIR}/$=
{BOOT_IMG} -s ${WORKDIR}/extlinux.conf ::/extlinux/<br>&gt; +<br>&gt; + =C2=
=A0 =C2=A0 =C2=A0 # Burn Boot Partition<br>&gt; + =C2=A0 =C2=A0 =C2=A0 dd i=
f=3D${WORKDIR}/${BOOT_IMG} of=3D${GPTIMG} conv=3Dnotrunc,fsync seek=3D${BOO=
T_START}<br>&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 # Burn Rootfs Partition<b=
r>&gt; + =C2=A0 =C2=A0 =C2=A0 dd if=3D${IMG_ROOTFS} of=3D${GPTIMG} seek=3D$=
{ROOTFS_START}<br>&gt; +<br>&gt; +}<br>&gt; +<br>&gt; +generate_rk3288_imag=
e () {<div>It is not only for rk3288. In fact, This function is for create =
load1 partition. So what about using generate_load1 or create_loader1 ?<br>=
&gt; +<br>&gt; + =C2=A0 =C2=A0 =C2=A0 # Burn bootloader<br>&gt; + =C2=A0 =
=C2=A0 =C2=A0 mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE}/${SPL_BINARY=
} ${WORKDIR}/${UBOOT}<br>&gt; + =C2=A0 =C2=A0 =C2=A0 cat ${DEPLOY_DIR_IMAGE=
}/u-boot-${MACHINE}.bin &gt;&gt; =C2=A0${WORKDIR}/${UBOOT}<br>&gt; + =C2=A0=
 =C2=A0 =C2=A0 dd if=3D${WORKDIR}/${UBOOT} of=3D${GPTIMG} conv=3Dnotrunc,fs=
ync seek=3D64<br>&gt; +<br>&gt; +}<br>&gt; --<br>&gt; 2.12.0.rc1.48.g076c05=
3<br>&gt;<br>&gt; --<br>&gt; ______________________________________________=
_<br>&gt; yocto mailing list<br>&gt; <a href=3D"mailto:yocto@yoctoproject.o=
rg">yocto@yoctoproject.org</a><br>&gt; <a href=3D"https://lists.yoctoprojec=
t.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></di=
v></div></div>

--001a1149abea2eb7a90548dc4e7d--
