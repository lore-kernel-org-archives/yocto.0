Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63D33E004D2; Mon, 27 Feb 2017 16:48:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF1F0E003C1
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 16:48:17 -0800 (PST)
Received: by mail-qk0-f195.google.com with SMTP id r90so21179861qki.3
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 16:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F3HDb7y/Js6pSITBPkN1ksvLw6pbIhb+jgJCzaELxpE=;
	b=MOvFccUkZq7z/P0vSr0lQUz8BHJ5q/s4KkCSlWIOEN8h9CYvTzFPF8st+uo6+SBUl9
	OoHNZqZj0XXnNwVNp0rDQxjpxvOkBoWmtL+YyJVpSAwF01qMaqYMGF5op7BSIcNyw2HF
	X1tyY+dyrzE30OaKTDCrzFsQvnWTf4UtKkIldwn0BYvF7OqbdFCklqZsJ+R9S1a03tja
	6c6MOTbjOtxqrGuXlRblO+Wdhl2w7tQuLiVVknfPVI1Z+FAfDssq3DQAJngiN7ggFV83
	eIEdJeOiLzdasWRaPQGgFamqvZEP977EeDU80LRPEYP6PR5G0580zg+t3ghZlVCYmZ0L
	lRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F3HDb7y/Js6pSITBPkN1ksvLw6pbIhb+jgJCzaELxpE=;
	b=dQHc3M2CIG842geSNRHJhe3+9H2yKLL/fHJDqOZmJPbZEjKhP9FaEOm37tLCzVB1Uj
	x2YN4stMNjy7O4GOTtJfZ7n+5vXZiP+zYX4N/uSzkpV5MjKUkjck2abDaRhDG0l4AQPp
	BhJP2LEJVxlX64drTDEhH7O5tGoDi6gfPyaTunU9n4fDZ9I6QHHqikdEH30pacIhx2iv
	uywLOKXBFaEtMwQeVYxdV1Vqc63P+x7/MnB1Gd6rgYI6H29AgltMVpRhGeSZ8SFCOxPA
	Sx+24PszZwsOjwzi/RBcdGLt+PazWLjqCc5t50h1DtRYV+/fuTbRMSqUuA/mQV/1WrrD
	sOug==
X-Gm-Message-State: AMke39lkVa6vpLoMq4WAmBl8vGdoGcZEuZqHEKiR4bB5tQL0Ge4S6HnkN0Gzrg6Q3aU0jerMAsK1exKICrI0Eg==
X-Received: by 10.55.95.131 with SMTP id t125mr20593121qkb.279.1488242896663; 
	Mon, 27 Feb 2017 16:48:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Mon, 27 Feb 2017 16:48:16 -0800 (PST)
In-Reply-To: <20170227192056.10830-2-twoerner@gmail.com>
References: <20170227192056.10830-1-twoerner@gmail.com>
	<20170227192056.10830-2-twoerner@gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Tue, 28 Feb 2017 08:48:16 +0800
Message-ID: <CAJrj+DPQFRDxsF=2=T6sfdfhiHvHD6n0KbH6jS0nJfLjA2NxPA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [meta-rockchip][PATCH v4] classes: rockchip-gpt-img: add
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
X-List-Received-Date: Tue, 28 Feb 2017 00:48:19 -0000
Content-Type: multipart/alternative; boundary=94eb2c05504631fd1705498c8d70

--94eb2c05504631fd1705498c8d70
Content-Type: text/plain; charset=UTF-8

Hi Trevor

2017-02-28 3:20 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:

> This bbclass was taken from the Rockchip team's work at
> https://github.com/rockchip-linux/meta-rockchip/commit/
> 53d2e2e474a3014e3013d0059fd1da773fb0e2b7
> It was mostly written by Jacob Chen <jacob-chen@iotwrt.com>. I've made
> some
> small modifications and added it.
>
> Older images used (what Rockchip calls) the "legacy parameter" format.
> Newer
> images use u-boot and a GPT partitioning scheme. This class allows the
> build
> to generate a gpt-img file that can either be flashed to eMMC or written
> to an
> SDcard (the same image is used for both).
>
> This is the new image format used for rk3288 SoCs (e.g. the Firefly board).
>
> Reviewd-by: Eddie Cai <eddie.cai.linux@gmail.com>
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  classes/rockchip-gpt-img.bbclass | 133 ++++++++++++++++++++++++++++++
> +++++++++
>  1 file changed, 133 insertions(+)
>  create mode 100644 classes/rockchip-gpt-img.bbclass
>
> diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.
> bbclass
> new file mode 100644
> index 0000000..ba83c8a
> --- /dev/null
> +++ b/classes/rockchip-gpt-img.bbclass
> @@ -0,0 +1,133 @@
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
> +GPTIMG_SYMLK   = "${IMAGE_BASENAME}-${MACHINE}.${GPTIMG_SUFFIX}"
> +GPTIMG_SIZE   ?= "4096"
> +BOOT_IMG       = "boot.img"
> +MINILOADER     = "loader.bin"
> +UBOOT          = "u-boot.out"
> +TRUST          = "trust.out"
> +GPTIMG_APPEND ?= "console=tty1 console=ttyS2,115200n8 rw
> root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"
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
> +PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_loader1_image"
> +
> +IMAGE_CMD_rockchip-gpt-img () {
> +       # Change to image directory
> +       cd ${DEPLOY_DIR_IMAGE}
> +
> +       # Remove the existing image symlink
> +       rm -f "${GPTIMG_SYMLK}"
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
> ${RESERVED1_START} - 1`
> +       parted -s ${GPTIMG} unit s mkpart reserved1 ${RESERVED1_START}
> `expr ${RESERVED2_START} - 1`
> +       parted -s ${GPTIMG} unit s mkpart reserved2 ${RESERVED2_START}
> `expr ${LOADER2_START} - 1`
> +       parted -s ${GPTIMG} unit s mkpart loader2 ${LOADER2_START} `expr
> ${ATF_START} - 1`
> +       parted -s ${GPTIMG} unit s mkpart atf ${ATF_START} `expr
> ${BOOT_START} - 1`
> +
> +       # Create boot partition and mark it as bootable
> +       parted -s ${GPTIMG} unit s mkpart boot ${BOOT_START} `expr
> ${ROOTFS_START} - 1`
> +       parted -s ${GPTIMG} set 6 boot on
> +
> +       # Create rootfs partition
> +       parted -s ${GPTIMG} unit s mkpart root ${ROOTFS_START} 100%
> +
> +       parted ${GPTIMG} print
> +
> +       # Delete the boot image to avoid trouble with the build cache
> +       rm -f ${WORKDIR}/${BOOT_IMG}
> +
> +       # Create boot partition image
> +       BOOT_BLOCKS=$(LC_ALL=C parted -s ${GPTIMG} unit b print | awk '/ 6
> / { print substr($4, 1, length($4 -1)) / 512 /2 }')
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
> +       append ${GPTIMG_APPEND}
> +EOF
> +
> +       mmd -i ${WORKDIR}/${BOOT_IMG} ::/extlinux
> +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${WORKDIR}/extlinux.conf
> ::/extlinux/
> +
>
Could you also copy ${BOOT_IMG} to ${DEPLOY_DIR_IMAGE} . That is much
earier for people find boot image. In case they want to flash boot
partition alone.

> +       # Burn Boot Partition
> +       dd if=${WORKDIR}/${BOOT_IMG} of=${GPTIMG} conv=notrunc,fsync
> seek=${BOOT_START}
> +
> +       # Burn Rootfs Partition
> +       dd if=${IMG_ROOTFS} of=${GPTIMG} seek=${ROOTFS_START}
> +
> +}
> +
> +generate_rk3288_loader1_image () {
> +
> +       # Burn bootloader
> +       mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE}/${SPL_BINARY}
> ${WORKDIR}/${UBOOT}
> +       cat ${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin >>
> ${WORKDIR}/${UBOOT}
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
>

--94eb2c05504631fd1705498c8d70
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Trevor<div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">2017-02-28 3:20 GMT+08:00 Trevor Woerner <span dir=3D"ltr">&lt;<a =
href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span cla=
ss=3D"gmail-">This bbclass was taken from the Rockchip team&#39;s work at<b=
r>
<a href=3D"https://github.com/rockchip-linux/meta-rockchip/commit/53d2e2e47=
4a3014e3013d0059fd1da773fb0e2b7" rel=3D"noreferrer" target=3D"_blank">https=
://github.com/rockchip-<wbr>linux/meta-rockchip/commit/<wbr>53d2e2e474a3014=
e3013d0059fd1da<wbr>773fb0e2b7</a><br>
It was mostly written by Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt=
.com">jacob-chen@iotwrt.com</a>&gt;. I&#39;ve made some<br>
small modifications and added it.<br>
<br>
Older images used (what Rockchip calls) the &quot;legacy parameter&quot; fo=
rmat. Newer<br>
images use u-boot and a GPT partitioning scheme. This class allows the buil=
d<br>
to generate a gpt-img file that can either be flashed to eMMC or written to=
 an<br>
SDcard (the same image is used for both).<br>
<br>
This is the new image format used for rk3288 SoCs (e.g. the Firefly board).=
<br>
<br>
Reviewd-by: Eddie Cai &lt;<a href=3D"mailto:eddie.cai.linux@gmail.com">eddi=
e.cai.linux@gmail.com</a>&gt;<br>
Signed-off-by: Jacob Chen &lt;<a href=3D"mailto:jacob-chen@iotwrt.com">jaco=
b-chen@iotwrt.com</a>&gt;<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">two=
erner@gmail.com</a>&gt;<br>
---<br>
</span>=C2=A0classes/rockchip-gpt-img.<wbr>bbclass | 133 ++++++++++++++++++=
++++++++++++<wbr>+++++++++<br>
=C2=A01 file changed, 133 insertions(+)<br>
=C2=A0create mode 100644 classes/rockchip-gpt-img.<wbr>bbclass<br>
<span class=3D"gmail-"><br>
diff --git a/classes/rockchip-gpt-img.<wbr>bbclass b/classes/rockchip-gpt-i=
mg.<wbr>bbclass<br>
new file mode 100644<br>
</span>index 0000000..ba83c8a<br>
--- /dev/null<br>
+++ b/classes/rockchip-gpt-img.<wbr>bbclass<br>
@@ -0,0 +1,133 @@<br>
<span class=3D"gmail-">+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co=
., Ltd<br>
+# Copyright (C) 2017 Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.c=
om">twoerner@gmail.com</a>&gt;<br>
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
+IMAGE_TYPEDEP_rockchip-gpt-<wbr>img =3D &quot;${IMG_ROOTFS_TYPE}&quot;<br>
+<br>
+GPTIMG_SUFFIX=C2=A0 =3D &quot;gpt-img&quot;<br>
+GPTIMG=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;${IMAGE_NAME}.${GPTIMG_<=
wbr>SUFFIX}&quot;<br>
</span>+GPTIMG_SYMLK=C2=A0 =C2=A0=3D &quot;${IMAGE_BASENAME}-${MACHINE}.<wb=
r>${GPTIMG_SUFFIX}&quot;<br>
<div><div class=3D"gmail-h5">+GPTIMG_SIZE=C2=A0 =C2=A0?=3D &quot;4096&quot;=
<br>
+BOOT_IMG=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;boot.img&quot;<br>
+MINILOADER=C2=A0 =C2=A0 =C2=A0=3D &quot;loader.bin&quot;<br>
+UBOOT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;u-boot.out&quot;<br>
+TRUST=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;trust.out&quot;<br>
+GPTIMG_APPEND ?=3D &quot;console=3Dtty1 console=3DttyS2,115200n8 rw root=
=3D/dev/mmcblk2p7 rootfstype=3Dext4 init=3D/sbin/init&quot;<br>
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
+IMAGE_DEPENDS_rockchip-gpt-<wbr>img =3D &quot;parted-native \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u-boot-mkimage-native \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mtools-native \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dosfstools-native \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0virtual/kernel:do_deploy \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0virtual/bootloader:do_deploy&quot;<br>
+<br>
+PER_CHIP_IMG_GENERATION_<wbr>COMMAND_rk3288 =3D &quot;generate_rk3288_load=
er1_<wbr>image&quot;<br>
+<br>
+IMAGE_CMD_rockchip-gpt-img () {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Change to image directory<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cd ${DEPLOY_DIR_IMAGE}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Remove the existing image symlink<br>
</div></div>+=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -f &quot;${GPTIMG_SYMLK}&quot;<b=
r>
<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5">+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0create_rk_image<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0${PER_CHIP_IMG_GENERATION_<wbr>COMMAND}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cd ${DEPLOY_DIR_IMAGE}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -s ${GPTIMG} &quot;${IMAGE_BASENAME}-${MACHI=
NE}.<wbr>${GPTIMG_SUFFIX}&quot;<br>
+}<br>
+<br>
+create_rk_image () {<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Initialize sdcard image file<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dd if=3D/dev/zero of=3D${GPTIMG} bs=3D1M count=
=3D0 seek=3D${GPTIMG_SIZE}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create partition table<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${GPTIMG} mklabel gpt<br>
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
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${GPTIMG} unit s mkpart loader1 ${LOA=
DER1_START} `expr ${RESERVED1_START} - 1`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${GPTIMG} unit s mkpart reserved1 ${R=
ESERVED1_START} `expr ${RESERVED2_START} - 1`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${GPTIMG} unit s mkpart reserved2 ${R=
ESERVED2_START} `expr ${LOADER2_START} - 1`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${GPTIMG} unit s mkpart loader2 ${LOA=
DER2_START} `expr ${ATF_START} - 1`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${GPTIMG} unit s mkpart atf ${ATF_STA=
RT} `expr ${BOOT_START} - 1`<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create boot partition and mark it as bootable=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${GPTIMG} unit s mkpart boot ${BOOT_S=
TART} `expr ${ROOTFS_START} - 1`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${GPTIMG} set 6 boot on<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create rootfs partition<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted -s ${GPTIMG} unit s mkpart root ${ROOTFS=
_START} 100%<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0parted ${GPTIMG} print<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Delete the boot image to avoid trouble with t=
he build cache<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -f ${WORKDIR}/${BOOT_IMG}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create boot partition image<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${GPTIMG} =
unit b print | awk &#39;/ 6 / { print substr($4, 1, length($4 -1)) / 512 /2=
 }&#39;)<br>
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
+=C2=A0 =C2=A0 =C2=A0 =C2=A0append ${GPTIMG_APPEND}<br>
+EOF<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mmd -i ${WORKDIR}/${BOOT_IMG} ::/extlinux<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${WORKDIR}/e=
xtlinux.conf ::/extlinux/<br>
+<br></div></div></blockquote><div>Could you also copy ${BOOT_IMG}=C2=A0<fo=
nt color=3D"#000000">to=C2=A0<span style=3D"font-size:14px">${DEPLOY_DIR_IM=
AGE}</span>=C2=A0. That is much earier for people find boot image. In case =
they want to flash boot partition alone.=C2=A0</font></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div class=3D"gmail-HOEnZb"><div class=3D=
"gmail-h5">
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Burn Boot Partition<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dd if=3D${WORKDIR}/${BOOT_IMG} of=3D${GPTIMG} c=
onv=3Dnotrunc,fsync seek=3D${BOOT_START}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Burn Rootfs Partition<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dd if=3D${IMG_ROOTFS} of=3D${GPTIMG} seek=3D${R=
OOTFS_START}<br>
+<br>
+}<br>
+<br>
+generate_rk3288_loader1_image () {<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Burn bootloader<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE=
}/${SPL_<wbr>BINARY} ${WORKDIR}/${UBOOT}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cat ${DEPLOY_DIR_IMAGE}/u-boot-${<wbr>MACHINE}.=
bin &gt;&gt;=C2=A0 ${WORKDIR}/${UBOOT}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dd if=3D${WORKDIR}/${UBOOT} of=3D${GPTIMG} conv=
=3Dnotrunc,fsync seek=3D64<br>
+<br>
+}<br>
</div></div><div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5">--<br>
2.12.0.rc1.48.g076c053<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div>

--94eb2c05504631fd1705498c8d70--
