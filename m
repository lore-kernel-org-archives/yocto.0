Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90864E009F8; Sun, 19 Feb 2017 04:18:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B349E0097D
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 04:18:37 -0800 (PST)
Received: by mail-qk0-f193.google.com with SMTP id n127so165708qkf.2
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 04:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gYYfmQxmcy6VDZPJW2maHqov1i08dUB5V8eHvwV+AS8=;
	b=hmjyvUNOeKLkOH/Gv8B/BOufpmffksVGOUH+Kw5Q1ZV+Xtw2fXMsNeRtooAFs8LahP
	qmpVRmpU2OllMh27sX3hC2ThtUvMZvWYoja8XZBotuAd7VZPrO1Mj87WpbKsliGJ+KJo
	XkwTNCAja2FImveijppPfj7QzpRgQ0nTVSo8cOxZ/J1YmGaa2afQRuMBOk0VYCilchpP
	HynX9bDUl0xdiLA8qE/ZDWx1etZVEyEbm17w34f4z7eTeiqkOGo3ZTMxwlBGTAXp0zPi
	6lKpFvZvUrWw52ebzs0Q8P5goaRFFYss6pK2MGsrrZsR6Ft7unXhDC0UfeXnAQZXTYH9
	GMVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gYYfmQxmcy6VDZPJW2maHqov1i08dUB5V8eHvwV+AS8=;
	b=GbS42bQZj2FibKEQawFAd4hVAxx3jT/zfYLEIq3TB8WDZ6W7prPQ/qBw8evq8iQwm9
	T6nhCErQ55gwLNA7EMvLsFn3cOzwHMLAX0LTq6cq0flwxeNprkps3+87VFOTxP8GnFZz
	J/UZYqNyqQcurDY/MtQFoEi0PtJ6v3m6H98O4/PN+CuNU3xxtmGaYiWjVFVKm0bVLaSK
	2ha8sp2lPptiYGPj096r/XIEY8ftNqrBSiONJxvBJASz2JlHJK7pkEESFsopB8kPGj+X
	p97HFvW01+dPZc55QwoqN0JG8/5JL0oZIwZPQrKTrxNdBcc5qRHnaHjj2q+uWBGqcxNG
	vfEw==
X-Gm-Message-State: AMke39ltMjZTWrxj4vba3f+1dl2dw5I36Anl4qwWG6thbDw5HGAfbR2AgGyhNrktPL337YHs+TQNjLZMBE9RNw==
X-Received: by 10.55.192.65 with SMTP id o62mr14323570qki.10.1487506717151;
	Sun, 19 Feb 2017 04:18:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Sun, 19 Feb 2017 04:18:36 -0800 (PST)
In-Reply-To: <f2c046b0-3685-c3c1-0da2-325d90919270@rock-chips.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-5-twoerner@gmail.com>
	<CAJrj+DMxz0u-Lf=HCXpSLYzF4e7aYsZMtkHK0qUNKyZ6oLt+mA@mail.gmail.com>
	<f2c046b0-3685-c3c1-0da2-325d90919270@rock-chips.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Sun, 19 Feb 2017 20:18:36 +0800
Message-ID: <CAJrj+DNXdQ3E0m9njhnc6FHhDhTocb=NA3PTXQPfJPN=DayB0g@mail.gmail.com>
To: Jacob Chen <jacob2.chen@rock-chips.com>
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
X-List-Received-Date: Sun, 19 Feb 2017 12:18:40 -0000
Content-Type: multipart/alternative; boundary=001a11465a447a16e60548e12597

--001a11465a447a16e60548e12597
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi

2017-02-19 16:31 GMT+08:00 Jacob Chen <jacob2.chen@rock-chips.com>:

> Hi all,
>
> Eddie Cai wrote on 2017=E5=B9=B402=E6=9C=8819=E6=97=A5 14:32:
>
> Hi Trevor
>
> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
> > This bbclass was taken from the Rockchip team's work at
> > https://github.com/rockchip-linux/meta-rockchip/commit/
> 53d2e2e474a3014e3013d0059fd1da773fb0e2b7
> > It was mostly written by Jacob Chen <jacob-chen@iotwrt.com>. I've made
> some
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
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >  classes/rockchip-gpt-img.bbclass | 132 ++++++++++++++++++++++++++++++
> +++++++++
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
> > +# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
> > +# Released under the MIT license (see COPYING.MIT for the terms)
> > +
> > +inherit image_types
> > +
> > +# Use an uncompressed ext4 by default as rootfs
> > +IMG_ROOTFS_TYPE =3D "ext4"
> > +IMG_ROOTFS =3D "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${IMG_ROOTFS_TYPE=
}"
> > +
> > +# This image depends on the rootfs image
> > +IMAGE_TYPEDEP_rockchip-gpt-img =3D "${IMG_ROOTFS_TYPE}"
> > +
> > +GPTIMG_SUFFIX  =3D "gpt-img"
> > +GPTIMG         =3D "${IMAGE_NAME}.${GPTIMG_SUFFIX}"
> > +GPTIMG_SIZE   ?=3D "4096"
> This should be GPT size in sectors which is 64 sectors. The name
> GPTIMG_SIZE is not clear enough. People may think it is whole gpt image.
> What about call it GPT_SIZE?
>
>
> It's whole gpt image.
>
OK, my mistake. So that look good to me.

>
>
> > +BOOT_IMG       =3D "boot.img"
> > +MINILOADER     =3D "loader.bin"
> > +UBOOT          =3D "u-boot.out"
> > +TRUST          =3D "trust.out"
> > +GPTIMG_APPEND ?=3D "console=3Dtty1 console=3DttyS2,115200n8 rw
> root=3D/dev/mmcblk2p7 rootfstype=3Dext4 init=3D/sbin/init"
> > +
> > +# default partitions [in Sectors]
> > +# More info at http://rockchip.wikidot.com/partitions
> > +LOADER1_SIZE =3D "8000"
> > +RESERVED1_SIZE =3D "128"
> > +RESERVED2_SIZE =3D "8192"
> > +LOADER2_SIZE =3D "8192"
> > +ATF_SIZE =3D "8192"
> > +BOOT_SIZE =3D "229376"
> > +
> > +IMAGE_DEPENDS_rockchip-gpt-img =3D "parted-native \
> > +       u-boot-mkimage-native \
> > +       mtools-native \
> > +       dosfstools-native \
> > +       virtual/kernel:do_deploy \
> > +       virtual/bootloader:do_deploy"
> > +
> > +PER_CHIP_IMG_GENERATION_COMMAND_rk3288 =3D "generate_rk3288_image"
> This is not just for rk3288. in fact, it can be used for all the Rockchip
> SoC.
>
>
> There're many differences between Chips.
> Some chips didn't implement SPL support and have to use rk-miniloader to
> create u-boot blob. (e.g. previous rk3399, rk3229)
>
all the chips supported by uboot-rockchip and upstream u-boot have SPL
support . The legacy should go to use legacy update image intead.

> Some chips didn't use "spl_back_to_brom" so their tpl have a different
> offset.(e.g. previous rk3288)
>
 The back_to_brom is not chip configuration. It is board configuration.
Actually all the rk3288 board in uboot-rockchip and upstream u-boot support
it now.

>
> The name "generate_load1" can't express it clearly.
>
Sorry, should be  generate_loader1 which is the partition name shows in
http://rockchip.wikidot.com/partitions

>
>
> > +
> > +IMAGE_CMD_rockchip-gpt-img () {
> > +       # Change to image directory
> > +       cd ${DEPLOY_DIR_IMAGE}
> > +
> > +       # Remove the exist image
> > +       rm -rf *${GPTIMG_SUFFIX}
> ${IMAGE_NAME}  is derived using the IMAGE_BASENAME, MACHINE, and DATETIME
> variables. So we don't need to delete previous one to avoid mistake.
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
> > +       dd if=3D/dev/zero of=3D${GPTIMG} bs=3D1M count=3D0 seek=3D${GPT=
IMG_SIZE}
> > +
> > +       # Create partition table
> > +       parted -s ${GPTIMG} mklabel gpt
> > +
> > +       # Create vendor defined partitions
> > +       LOADER1_START=3D64
> > +       RESERVED1_START=3D`expr ${LOADER1_START}  + ${LOADER1_SIZE}`
> > +       RESERVED2_START=3D`expr ${RESERVED1_START}  + ${RESERVED1_SIZE}=
`
> > +       LOADER2_START=3D`expr ${RESERVED2_START}  + ${RESERVED2_SIZE}`
> > +       ATF_START=3D`expr ${LOADER2_START}  + ${LOADER2_SIZE}`
> > +       BOOT_START=3D`expr ${ATF_START}  + ${ATF_SIZE}`
> > +       ROOTFS_START=3D`expr ${BOOT_START}  + ${BOOT_SIZE}`
> > +
> > +       parted -s ${GPTIMG} unit s mkpart loader1 ${LOADER1_START} `exp=
r
> ${RESERVED1_START} - 1`
> > +       parted -s ${GPTIMG} unit s mkpart reserved1 ${RESERVED1_START}
> `expr ${RESERVED2_START} - 1`
> > +       parted -s ${GPTIMG} unit s mkpart reserved2 ${RESERVED2_START}
> `expr ${LOADER2_START} - 1`
> > +       parted -s ${GPTIMG} unit s mkpart loader2 ${LOADER2_START} `exp=
r
> ${ATF_START} - 1`
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
> what about use BOOT_IMG =3D "boot-${MACHINE}-${DATETIME}.img" instead? Th=
at
> will leave the previous build for debug and avoid trouble.
>
>
> BOOT_IMG seems will not be deleted automatically so i delete it in here.
> If we leave the previous build, it will make a mess.
>
Can you try to fix it instead of just delete it? I believe add a timestamp
can help.

>
>
>
> > +
> > +       # Create boot partition image
> > +       BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${GPTIMG} unit b print | a=
wk '/
> 6 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
> > +       BOOT_BLOCKS=3D`expr $BOOT_BLOCKS / 63 \* 63`
> > +
> > +       mkfs.vfat -n "boot" -S 512 -C ${WORKDIR}/${BOOT_IMG} $BOOT_BLOC=
KS
> > +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${DEPLOY_DIR_IMAGE}/${KERNEL=
_IMAGETYPE}-${MACHINE}.bin
> ::${KERNEL_IMAGETYPE}
> > +
> > +       DEVICETREE_DEFAULT=3D""
> > +       for DTS_FILE in ${KERNEL_DEVICETREE}; do
> > +               [ -n "${DEVICETREE_DEFAULT}"] &&
> DEVICETREE_DEFAULT=3D"${DTS_FILE}"
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
> > +       dd if=3D${WORKDIR}/${BOOT_IMG} of=3D${GPTIMG} conv=3Dnotrunc,fs=
ync
> seek=3D${BOOT_START}
> > +
> > +       # Burn Rootfs Partition
> > +       dd if=3D${IMG_ROOTFS} of=3D${GPTIMG} seek=3D${ROOTFS_START}
> > +
> > +}
> > +
> > +generate_rk3288_image () {
> It is not only for rk3288. In fact, This function is for create load1
> partition. So what about using generate_load1 or create_loader1 ?
> > +
> > +       # Burn bootloader
> > +       mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE}/${SPL_BINARY}
> ${WORKDIR}/${UBOOT}
> > +       cat ${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin >>
>  ${WORKDIR}/${UBOOT}
> > +       dd if=3D${WORKDIR}/${UBOOT} of=3D${GPTIMG} conv=3Dnotrunc,fsync=
 seek=3D64
> > +
> > +}
> > --
> > 2.12.0.rc1.48.g076c053
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> It looks good, Reviewed-by: Jacob Chen <jacob-chen@iotwrt.com>
> <jacob-chen@iotwrt.com>
>

--001a11465a447a16e60548e12597
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">2017-02-19 16:31 GMT+08:00 Jacob Chen <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:jacob2.chen@rock-chips.com" target=3D"_blank">jacob2.chen@rock-chips.c=
om</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Hi all,<br>
    </p><div><div class=3D"gmail-h5">
    <br>
    <div class=3D"gmail-m_-1274525884099063180moz-cite-prefix">Eddie Cai wr=
ote on 2017=E5=B9=B402=E6=9C=8819=E6=97=A5 14:32:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi Trevor<br>
        <br>
        2017-02-19 10:43 GMT+08:00 Trevor Woerner &lt;<a href=3D"mailto:two=
erner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;:<br>
        &gt; This bbclass was taken from the Rockchip team&#39;s work at<br=
>
        &gt; <a href=3D"https://github.com/rockchip-linux/meta-rockchip/com=
mit/53d2e2e474a3014e3013d0059fd1da773fb0e2b7" target=3D"_blank">https://git=
hub.com/rockchip-<wbr>linux/meta-rockchip/commit/<wbr>53d2e2e474a3014e3013d=
0059fd1da<wbr>773fb0e2b7</a><br>
        &gt; It was mostly written by Jacob Chen &lt;<a href=3D"mailto:jaco=
b-chen@iotwrt.com" target=3D"_blank">jacob-chen@iotwrt.com</a>&gt;.
        I&#39;ve made some<br>
        &gt; small modifications and added it.<br>
        &gt;<br>
        &gt; Older images used (what Rockchip calls) the &quot;rk-boot&quot=
;
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
        &gt; Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@g=
mail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;<br>
        &gt; ---<br>
        &gt; =C2=A0classes/rockchip-gpt-img.<wbr>bbclass | 132
        ++++++++++++++++++++++++++++++<wbr>+++++++++<br>
        &gt; =C2=A01 file changed, 132 insertions(+)<br>
        &gt; =C2=A0create mode 100644 classes/rockchip-gpt-img.<wbr>bbclass=
<br>
        &gt;<br>
        &gt; diff --git a/classes/rockchip-gpt-img.<wbr>bbclass
        b/classes/rockchip-gpt-img.<wbr>bbclass<br>
        &gt; new file mode 100644<br>
        &gt; index 0000000..fd80625<br>
        &gt; --- /dev/null<br>
        &gt; +++ b/classes/rockchip-gpt-img.<wbr>bbclass<br>
        &gt; @@ -0,0 +1,132 @@<br>
        &gt; +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
        &gt; +# Copyright (C) 2017 Trevor Woerner &lt;<a href=3D"mailto:two=
erner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;<br>
        &gt; +# Released under the MIT license (see COPYING.MIT for the
        terms)<br>
        &gt; +<br>
        &gt; +inherit image_types<br>
        &gt; +<br>
        &gt; +# Use an uncompressed ext4 by default as rootfs<br>
        &gt; +IMG_ROOTFS_TYPE =3D &quot;ext4&quot;<br>
        &gt; +IMG_ROOTFS =3D
        &quot;${IMGDEPLOYDIR}/${IMAGE_NAME}<wbr>.rootfs.${IMG_ROOTFS_TYPE}&=
quot;<br>
        &gt; +<br>
        &gt; +# This image depends on the rootfs image<br>
        &gt; +IMAGE_TYPEDEP_rockchip-gpt-<wbr>img =3D &quot;${IMG_ROOTFS_TY=
PE}&quot;<br>
        &gt; +<br>
        &gt; +GPTIMG_SUFFIX =C2=A0=3D &quot;gpt-img&quot;<br>
        &gt; +GPTIMG =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;${IMAGE_NAME}.${=
GPTIMG_<wbr>SUFFIX}&quot;<br>
        &gt; +GPTIMG_SIZE =C2=A0 ?=3D &quot;4096&quot;<br>
        This should be GPT size in sectors which is 64 sectors. The name
        GPTIMG_SIZE is not clear enough. People may think it is whole
        gpt image. What about call it GPT_SIZE?<br>
      </div>
    </blockquote>
    <br></div></div>
    It&#39;s whole gpt image.</div></blockquote><div>OK, my mistake. So tha=
t look good to me. =C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div bgcolor=3D"#FFFFFF"><span class=3D"gmail-"><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">&gt; +BOOT_IMG =C2=A0 =C2=A0 =C2=A0 =3D &quot;boot.i=
mg&quot;<br>
        &gt; +MINILOADER =C2=A0 =C2=A0 =3D &quot;loader.bin&quot;<br>
        &gt; +UBOOT =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;u-boot.out&=
quot;<br>
        &gt; +TRUST =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;trust.out&q=
uot;<br>
        &gt; +GPTIMG_APPEND ?=3D &quot;console=3Dtty1 console=3DttyS2,11520=
0n8 rw
        root=3D/dev/mmcblk2p7 rootfstype=3Dext4 init=3D/sbin/init&quot;<br>
        &gt; +<br>
        &gt; +# default partitions [in Sectors]<br>
        &gt; +# More info at <a href=3D"http://rockchip.wikidot.com/partiti=
ons" target=3D"_blank">http://rockchip.wikidot.com/<wbr>partitions</a><br>
        &gt; +LOADER1_SIZE =3D &quot;8000&quot;<br>
        &gt; +RESERVED1_SIZE =3D &quot;128&quot;<br>
        &gt; +RESERVED2_SIZE =3D &quot;8192&quot;<br>
        &gt; +LOADER2_SIZE =3D &quot;8192&quot;<br>
        &gt; +ATF_SIZE =3D &quot;8192&quot;<br>
        &gt; +BOOT_SIZE =3D &quot;229376&quot;<br>
        &gt; +<br>
        &gt; +IMAGE_DEPENDS_rockchip-gpt-<wbr>img =3D &quot;parted-native \=
<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 u-boot-mkimage-native \<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 mtools-native \<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 dosfstools-native \<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 virtual/kernel:do_deploy \<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 virtual/bootloader:do_deploy&quot;<br>
        &gt; +<br>
        &gt; +PER_CHIP_IMG_GENERATION_<wbr>COMMAND_rk3288 =3D
        &quot;generate_rk3288_image&quot;<br>
        This is not just for rk3288. in fact, it can be used for all the
        Rockchip SoC.<br>
      </div>
    </blockquote>
    <br></span>
    There&#39;re many differences between Chips.<br>
    Some chips didn&#39;t implement SPL support and have to use
    rk-miniloader to create u-boot blob. (e.g. previous rk3399, rk3229)<br>=
</div></blockquote><div>all the chips supported by uboot-rockchip and upstr=
eam u-boot have SPL support . The legacy should go to use legacy update ima=
ge intead.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v bgcolor=3D"#FFFFFF">
    Some chips didn&#39;t use &quot;spl_back_to_brom&quot; so their tpl hav=
e a
    different offset.(e.g. previous rk3288)</div></blockquote><div>=C2=A0Th=
e back_to_brom is not chip configuration. It is board configuration. Actual=
ly all the rk3288 board in uboot-rockchip and upstream u-boot support it no=
w.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div bgcolo=
r=3D"#FFFFFF">
    <br>
    The name &quot;generate_load1&quot; can&#39;t express it clearly.</div>=
</blockquote><div>Sorry, should be =C2=A0generate_loader1 which is the part=
ition name shows in <a href=3D"http://rockchip.wikidot.com/partitions">http=
://rockchip.wikidot.com/partitions</a>=C2=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div bgcolor=3D"#FFFFFF"><div><div class=3D"gmail-=
h5"><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">&gt; +<br>
        &gt; +IMAGE_CMD_rockchip-gpt-img () {<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 # Change to image directory<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 cd ${DEPLOY_DIR_IMAGE}<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 # Remove the exist image<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 rm -rf *${GPTIMG_SUFFIX}<br>
        ${IMAG<font face=3D"arial, helvetica, sans-serif">E_NAME} =C2=A0is
          derived using the IMAGE_BASENAME, MACHINE, and DATETIME
          variables. So we don&#39;t need to delete previous one to avoid
          mistake.=C2=A0</font><br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 create_rk_image<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 ${PER_CHIP_IMG_GENERATION_<wbr>COMMAND}=
<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 cd ${DEPLOY_DIR_IMAGE}<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 ln -s ${GPTIMG}
        &quot;${IMAGE_BASENAME}-${MACHINE}.<wbr>${GPTIMG_SUFFIX}&quot;<br>
        &gt; +}<br>
        &gt; +<br>
        &gt; +create_rk_image () {<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 # Initialize sdcard image file<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 dd if=3D/dev/zero of=3D${GPTIMG} bs=3D1=
M count=3D0
        seek=3D${GPTIMG_SIZE}<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 # Create partition table<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} mklabel gpt<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 # Create vendor defined partitions<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 LOADER1_START=3D64<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 RESERVED1_START=3D`expr ${LOADER1_START=
} =C2=A0+
        ${LOADER1_SIZE}`<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 RESERVED2_START=3D`expr ${RESERVED1_STA=
RT} =C2=A0+
        ${RESERVED1_SIZE}`<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 LOADER2_START=3D`expr ${RESERVED2_START=
} =C2=A0+
        ${RESERVED2_SIZE}`<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 ATF_START=3D`expr ${LOADER2_START} =C2=
=A0+
        ${LOADER2_SIZE}`<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 BOOT_START=3D`expr ${ATF_START} =C2=A0+=
 ${ATF_SIZE}`<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 ROOTFS_START=3D`expr ${BOOT_START} =C2=
=A0+ ${BOOT_SIZE}`<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} unit s mkpart loade=
r1
        ${LOADER1_START} `expr ${RESERVED1_START} - 1`<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} unit s mkpart reser=
ved1
        ${RESERVED1_START} `expr ${RESERVED2_START} - 1`<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} unit s mkpart reser=
ved2
        ${RESERVED2_START} `expr ${LOADER2_START} - 1`<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} unit s mkpart loade=
r2
        ${LOADER2_START} `expr ${ATF_START} - 1`<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} unit s mkpart atf $=
{ATF_START}
        `expr ${BOOT_START} - 1`<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 # Create boot partition and mark it as =
bootable<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} unit s mkpart boot
        ${BOOT_START} `expr ${ROOTFS_START} - 1`<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} set 6 boot on<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 # Create rootfs partition<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 parted -s ${GPTIMG} unit s mkpart root
        ${ROOTFS_START} 100%<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 parted ${GPTIMG} print<br>
        &gt; +<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 # Delete the boot image to avoid troubl=
e with the
        build cache<br>
        &gt; + =C2=A0 =C2=A0 =C2=A0 rm -f ${WORKDIR}/${BOOT_IMG}
        <div>what about use BOOT_IMG =3D=C2=A0<span style=3D"color:rgb(51,5=
1,51)">&quot;boot-${MACHINE}-${DATETIME}<wbr>.img&quot;
            instead? That will leave the previous build for debug and
            avoid trouble. <br>
          </span></div>
      </div>
    </blockquote>
    <br></div></div>
    BOOT_IMG seems will not be deleted automatically so i delete it in
    here.<br>
    If we <span style=3D"color:rgb(51,51,51)">leave the previous build,
      it will make a mess.</span>
</div></blockquote><div>Can you try to fix it instead of just delete it? I =
believe add a timestamp can help.=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div bgcolor=3D"#FFFFFF">   =20
    <br><div><div class=3D"gmail-h5">
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>&gt; +<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 # Create boot partition image<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s =
${GPTIMG} unit b
          print | awk &#39;/ 6 / { print substr($4, 1, length($4 -1)) / 512
          /2 }&#39;)<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 BOOT_BLOCKS=3D`expr $BOOT_BLOCKS / 63=
 \* 63`<br>
          &gt; +<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 mkfs.vfat -n &quot;boot&quot; -S 512 =
-C
          ${WORKDIR}/${BOOT_IMG} $BOOT_BLOCKS<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 mcopy -i ${WORKDIR}/${BOOT_IMG} -s
          ${DEPLOY_DIR_IMAGE}/${KERNEL_<wbr>IMAGETYPE}-${MACHINE}.bin
          ::${KERNEL_IMAGETYPE}<br>
          &gt; +<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 DEVICETREE_DEFAULT=3D&quot;&quot;<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 for DTS_FILE in ${KERNEL_DEVICETREE};=
 do<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ -n &quo=
t;${DEVICETREE_DEFAULT}&quot;] &amp;&amp;
          DEVICETREE_DEFAULT=3D&quot;${DTS_<wbr>FILE}&quot;<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mcopy -i =
${WORKDIR}/${BOOT_IMG} -s
          ${DEPLOY_DIR_IMAGE}/${KERNEL_<wbr>IMAGETYPE}-${DTS_FILE}
          ::${DTS_FILE}<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 done<br>
          &gt; +<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 # Create extlinux config file<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 cat &gt; ${WORKDIR}/extlinux.conf &lt=
;&lt;EOF<br>
          &gt; +default yocto<br>
          &gt; +<br>
          &gt; +label yocto<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 kernel /${KERNEL_IMAGETYPE}<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 devicetree /${DEVICETREE_DEFAULT}<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 append ${GPTIMG_APPEND}<br>
          &gt; +EOF<br>
          &gt; +<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 mmd -i ${WORKDIR}/${BOOT_IMG} ::/extl=
inux<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 mcopy -i ${WORKDIR}/${BOOT_IMG} -s
          ${WORKDIR}/extlinux.conf ::/extlinux/<br>
          &gt; +<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 # Burn Boot Partition<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 dd if=3D${WORKDIR}/${BOOT_IMG} of=3D$=
{GPTIMG}
          conv=3Dnotrunc,fsync seek=3D${BOOT_START}<br>
          &gt; +<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 # Burn Rootfs Partition<br>
          &gt; + =C2=A0 =C2=A0 =C2=A0 dd if=3D${IMG_ROOTFS} of=3D${GPTIMG}
          seek=3D${ROOTFS_START}<br>
          &gt; +<br>
          &gt; +}<br>
          &gt; +<br>
          &gt; +generate_rk3288_image () {
          <div>It is not only for rk3288. In fact, This function is for
            create load1 partition. So what about using generate_load1
            or create_loader1 ?<br>
            &gt; +<br>
            &gt; + =C2=A0 =C2=A0 =C2=A0 # Burn bootloader<br>
            &gt; + =C2=A0 =C2=A0 =C2=A0 mkimage -n rk3288 -T rksd -d
            ${DEPLOY_DIR_IMAGE}/${SPL_<wbr>BINARY} ${WORKDIR}/${UBOOT}<br>
            &gt; + =C2=A0 =C2=A0 =C2=A0 cat ${DEPLOY_DIR_IMAGE}/u-boot-${<w=
br>MACHINE}.bin
            &gt;&gt; =C2=A0${WORKDIR}/${UBOOT}<br>
            &gt; + =C2=A0 =C2=A0 =C2=A0 dd if=3D${WORKDIR}/${UBOOT} of=3D${=
GPTIMG}
            conv=3Dnotrunc,fsync seek=3D64<br>
            &gt; +<br>
            &gt; +}<br>
            &gt; --<br>
            &gt; 2.12.0.rc1.48.g076c053<br>
            &gt;<br>
            &gt; --<br>
            &gt; ______________________________<wbr>_________________<br>
            &gt; yocto mailing list<br>
            &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br>
            &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a></d=
iv>
        </div>
      </div>
    </blockquote>
    <br>
    </div></div>
    It looks good, Reviewed-by: Jacob Chen <a class=3D"gmail-m_-12745258840=
99063180moz-txt-link-rfc2396E" href=3D"mailto:jacob-chen@iotwrt.com" target=
=3D"_blank">&lt;jacob-chen@iotwrt.com&gt;</a><br>
  </div>

</blockquote></div><br></div></div>

--001a11465a447a16e60548e12597--
