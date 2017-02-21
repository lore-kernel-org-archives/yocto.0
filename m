Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DA57E0094C; Tue, 21 Feb 2017 14:21:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8528E008D0
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 14:21:31 -0800 (PST)
Received: by mail-qk0-f196.google.com with SMTP id r90so1613535qki.3
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 14:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=cUUKeltAyreUrs6eFBulAOl0Bri+cjj2nmKocAXwpeU=;
	b=fjBroQpWlph1joCuxy2xfS7xpOgJ89/MBMebx8EJ1SdifiMIh3huA+Beziu8r8AV6c
	y1sTXzUej1Zm8HtTztORAOLPd/eFuET4PWatKfp21tLtRp7SlSQenyXyp6NJm06Sy9Ct
	8t//0XmL5WcCK7NBXvvUUWXWFB18wJYrRLJsYpUZmG8nK7jxfn7N/WtY81TgzhO8JtM6
	Q7kMGpzeiOmIk2f6zmxPIMR+50m2ECmplwnYlyDbFoCwb8IG57+FmXgi3jA5bmo7Fvuc
	sdxLbc39FYSzGTgyBbGr1xJYWESpe9hNILgMcZ+4uo7c49SMjN879zpyfiZAmnnsad0n
	yrfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=cUUKeltAyreUrs6eFBulAOl0Bri+cjj2nmKocAXwpeU=;
	b=fOpO5Y6CdIBueGT45i60tx6u1whOVRjqWrpoGlvbpqXakvfKRKeXTmTVheTzkLAiQM
	tLAn9/M8S2P+ePF/7l6Lcks76eowmOXWAQY0x9GiD7yj9vOWyAbppokxijan5h/NU2P3
	Ju11iYWW7CbLA/aOULbhN/5m4RPeYypL+bsM14fwWOnBaZbnU9SnOFOdnltqgJ9o3cV1
	k4Tiisffw351Avew71EVLcW6Hz8/4qYUdHXXaudt4j4g+XyMX1bDrPcPUKZYrgmslEDe
	3TUP/HDEyL/Mx7GSNa0o+F8u6CbyIWFfdztSCfQjnsctLTzwRdWF0DOv+pvlJUcu1mqY
	ke6Q==
X-Gm-Message-State: AMke39kqFae4IK6hHFLEFEuQGBrJ+3c1wR3F3QYjakA4y1NID7Q/b4nUP4IvoAQYbCNKop6KhnkFUhPaDocBTw==
X-Received: by 10.55.74.83 with SMTP id x80mr15224920qka.275.1487715690705;
	Tue, 21 Feb 2017 14:21:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Tue, 21 Feb 2017 14:21:30 -0800 (PST)
In-Reply-To: <CAJrj+DNXdQ3E0m9njhnc6FHhDhTocb=NA3PTXQPfJPN=DayB0g@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-5-twoerner@gmail.com>
	<CAJrj+DMxz0u-Lf=HCXpSLYzF4e7aYsZMtkHK0qUNKyZ6oLt+mA@mail.gmail.com>
	<f2c046b0-3685-c3c1-0da2-325d90919270@rock-chips.com>
	<CAJrj+DNXdQ3E0m9njhnc6FHhDhTocb=NA3PTXQPfJPN=DayB0g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 21 Feb 2017 17:21:30 -0500
Message-ID: <CAHUNapRFYroR8SVZUDZ2Z=h_yURYUv7y8-DevVVvpcX=55G8Vg@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: Jacob Chen <jacob2.chen@rock-chips.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 21 Feb 2017 22:21:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Okay, thanks for the review!! I'll create a v3 and post it next week.
I'm away and don't have a board with me to test.

On Sun, Feb 19, 2017 at 7:18 AM, Eddie Cai <eddie.cai.linux@gmail.com> wrot=
e:
> Hi
>
> 2017-02-19 16:31 GMT+08:00 Jacob Chen <jacob2.chen@rock-chips.com>:
>>
>> Hi all,
>>
>>
>> Eddie Cai wrote on 2017=E5=B9=B402=E6=9C=8819=E6=97=A5 14:32:
>>
>> Hi Trevor
>>
>> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>> > This bbclass was taken from the Rockchip team's work at
>> >
>> > https://github.com/rockchip-linux/meta-rockchip/commit/53d2e2e474a3014=
e3013d0059fd1da773fb0e2b7
>> > It was mostly written by Jacob Chen <jacob-chen@iotwrt.com>. I've made
>> > some
>> > small modifications and added it.
>> >
>> > Older images used (what Rockchip calls) the "rk-boot" format. Newer
>> > images use
>> We call it legacy parameter format
>> > u-boot and a GPT partitioning scheme. This class allows the build to
>> > generate
>> > a gpt-img file that can either be flashed to eMMC or written to an
>> > SDcard (the
>> > same image is used for both).
>> gpt-img is much better than previous one. I like this name.
>> >
>> > This is the new image format used for rk3288 SoCs (e.g. the Firefly
>> > board).
>> >
>> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>> > ---
>> >  classes/rockchip-gpt-img.bbclass | 132
>> > +++++++++++++++++++++++++++++++++++++++
>> >  1 file changed, 132 insertions(+)
>> >  create mode 100644 classes/rockchip-gpt-img.bbclass
>> >
>> > diff --git a/classes/rockchip-gpt-img.bbclass
>> > b/classes/rockchip-gpt-img.bbclass
>> > new file mode 100644
>> > index 0000000..fd80625
>> > --- /dev/null
>> > +++ b/classes/rockchip-gpt-img.bbclass
>> > @@ -0,0 +1,132 @@
>> > +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>> > +# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
>> > +# Released under the MIT license (see COPYING.MIT for the terms)
>> > +
>> > +inherit image_types
>> > +
>> > +# Use an uncompressed ext4 by default as rootfs
>> > +IMG_ROOTFS_TYPE =3D "ext4"
>> > +IMG_ROOTFS =3D "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${IMG_ROOTFS_TYP=
E}"
>> > +
>> > +# This image depends on the rootfs image
>> > +IMAGE_TYPEDEP_rockchip-gpt-img =3D "${IMG_ROOTFS_TYPE}"
>> > +
>> > +GPTIMG_SUFFIX  =3D "gpt-img"
>> > +GPTIMG         =3D "${IMAGE_NAME}.${GPTIMG_SUFFIX}"
>> > +GPTIMG_SIZE   ?=3D "4096"
>> This should be GPT size in sectors which is 64 sectors. The name
>> GPTIMG_SIZE is not clear enough. People may think it is whole gpt image.
>> What about call it GPT_SIZE?
>>
>>
>> It's whole gpt image.
>
> OK, my mistake. So that look good to me.
>>
>>
>>
>> > +BOOT_IMG       =3D "boot.img"
>> > +MINILOADER     =3D "loader.bin"
>> > +UBOOT          =3D "u-boot.out"
>> > +TRUST          =3D "trust.out"
>> > +GPTIMG_APPEND ?=3D "console=3Dtty1 console=3DttyS2,115200n8 rw
>> > root=3D/dev/mmcblk2p7 rootfstype=3Dext4 init=3D/sbin/init"
>> > +
>> > +# default partitions [in Sectors]
>> > +# More info at http://rockchip.wikidot.com/partitions
>> > +LOADER1_SIZE =3D "8000"
>> > +RESERVED1_SIZE =3D "128"
>> > +RESERVED2_SIZE =3D "8192"
>> > +LOADER2_SIZE =3D "8192"
>> > +ATF_SIZE =3D "8192"
>> > +BOOT_SIZE =3D "229376"
>> > +
>> > +IMAGE_DEPENDS_rockchip-gpt-img =3D "parted-native \
>> > +       u-boot-mkimage-native \
>> > +       mtools-native \
>> > +       dosfstools-native \
>> > +       virtual/kernel:do_deploy \
>> > +       virtual/bootloader:do_deploy"
>> > +
>> > +PER_CHIP_IMG_GENERATION_COMMAND_rk3288 =3D "generate_rk3288_image"
>> This is not just for rk3288. in fact, it can be used for all the Rockchi=
p
>> SoC.
>>
>>
>> There're many differences between Chips.
>> Some chips didn't implement SPL support and have to use rk-miniloader to
>> create u-boot blob. (e.g. previous rk3399, rk3229)
>
> all the chips supported by uboot-rockchip and upstream u-boot have SPL
> support . The legacy should go to use legacy update image intead.
>>
>> Some chips didn't use "spl_back_to_brom" so their tpl have a different
>> offset.(e.g. previous rk3288)
>
>  The back_to_brom is not chip configuration. It is board configuration.
> Actually all the rk3288 board in uboot-rockchip and upstream u-boot suppo=
rt
> it now.
>>
>>
>> The name "generate_load1" can't express it clearly.
>
> Sorry, should be  generate_loader1 which is the partition name shows in
> http://rockchip.wikidot.com/partitions
>>
>>
>>
>> > +
>> > +IMAGE_CMD_rockchip-gpt-img () {
>> > +       # Change to image directory
>> > +       cd ${DEPLOY_DIR_IMAGE}
>> > +
>> > +       # Remove the exist image
>> > +       rm -rf *${GPTIMG_SUFFIX}
>> ${IMAGE_NAME}  is derived using the IMAGE_BASENAME, MACHINE, and DATETIM=
E
>> variables. So we don't need to delete previous one to avoid mistake.
>> > +
>> > +       create_rk_image
>> > +
>> > +       ${PER_CHIP_IMG_GENERATION_COMMAND}
>> > +
>> > +       cd ${DEPLOY_DIR_IMAGE}
>> > +       ln -s ${GPTIMG} "${IMAGE_BASENAME}-${MACHINE}.${GPTIMG_SUFFIX}=
"
>> > +}
>> > +
>> > +create_rk_image () {
>> > +
>> > +       # Initialize sdcard image file
>> > +       dd if=3D/dev/zero of=3D${GPTIMG} bs=3D1M count=3D0 seek=3D${GP=
TIMG_SIZE}
>> > +
>> > +       # Create partition table
>> > +       parted -s ${GPTIMG} mklabel gpt
>> > +
>> > +       # Create vendor defined partitions
>> > +       LOADER1_START=3D64
>> > +       RESERVED1_START=3D`expr ${LOADER1_START}  + ${LOADER1_SIZE}`
>> > +       RESERVED2_START=3D`expr ${RESERVED1_START}  + ${RESERVED1_SIZE=
}`
>> > +       LOADER2_START=3D`expr ${RESERVED2_START}  + ${RESERVED2_SIZE}`
>> > +       ATF_START=3D`expr ${LOADER2_START}  + ${LOADER2_SIZE}`
>> > +       BOOT_START=3D`expr ${ATF_START}  + ${ATF_SIZE}`
>> > +       ROOTFS_START=3D`expr ${BOOT_START}  + ${BOOT_SIZE}`
>> > +
>> > +       parted -s ${GPTIMG} unit s mkpart loader1 ${LOADER1_START} `ex=
pr
>> > ${RESERVED1_START} - 1`
>> > +       parted -s ${GPTIMG} unit s mkpart reserved1 ${RESERVED1_START}
>> > `expr ${RESERVED2_START} - 1`
>> > +       parted -s ${GPTIMG} unit s mkpart reserved2 ${RESERVED2_START}
>> > `expr ${LOADER2_START} - 1`
>> > +       parted -s ${GPTIMG} unit s mkpart loader2 ${LOADER2_START} `ex=
pr
>> > ${ATF_START} - 1`
>> > +       parted -s ${GPTIMG} unit s mkpart atf ${ATF_START} `expr
>> > ${BOOT_START} - 1`
>> > +
>> > +       # Create boot partition and mark it as bootable
>> > +       parted -s ${GPTIMG} unit s mkpart boot ${BOOT_START} `expr
>> > ${ROOTFS_START} - 1`
>> > +       parted -s ${GPTIMG} set 6 boot on
>> > +
>> > +       # Create rootfs partition
>> > +       parted -s ${GPTIMG} unit s mkpart root ${ROOTFS_START} 100%
>> > +
>> > +       parted ${GPTIMG} print
>> > +
>> > +       # Delete the boot image to avoid trouble with the build cache
>> > +       rm -f ${WORKDIR}/${BOOT_IMG}
>> what about use BOOT_IMG =3D "boot-${MACHINE}-${DATETIME}.img" instead? T=
hat
>> will leave the previous build for debug and avoid trouble.
>>
>>
>> BOOT_IMG seems will not be deleted automatically so i delete it in here.
>> If we leave the previous build, it will make a mess.
>
> Can you try to fix it instead of just delete it? I believe add a timestam=
p
> can help.
>>
>>
>>
>>
>> > +
>> > +       # Create boot partition image
>> > +       BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${GPTIMG} unit b print | =
awk '/
>> > 6 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
>> > +       BOOT_BLOCKS=3D`expr $BOOT_BLOCKS / 63 \* 63`
>> > +
>> > +       mkfs.vfat -n "boot" -S 512 -C ${WORKDIR}/${BOOT_IMG}
>> > $BOOT_BLOCKS
>> > +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s
>> > ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::${KERNEL_IMAG=
ETYPE}
>> > +
>> > +       DEVICETREE_DEFAULT=3D""
>> > +       for DTS_FILE in ${KERNEL_DEVICETREE}; do
>> > +               [ -n "${DEVICETREE_DEFAULT}"] &&
>> > DEVICETREE_DEFAULT=3D"${DTS_FILE}"
>> > +               mcopy -i ${WORKDIR}/${BOOT_IMG} -s
>> > ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTS_FILE} ::${DTS_FILE}
>> > +       done
>> > +
>> > +       # Create extlinux config file
>> > +       cat > ${WORKDIR}/extlinux.conf <<EOF
>> > +default yocto
>> > +
>> > +label yocto
>> > +       kernel /${KERNEL_IMAGETYPE}
>> > +       devicetree /${DEVICETREE_DEFAULT}
>> > +       append ${GPTIMG_APPEND}
>> > +EOF
>> > +
>> > +       mmd -i ${WORKDIR}/${BOOT_IMG} ::/extlinux
>> > +       mcopy -i ${WORKDIR}/${BOOT_IMG} -s ${WORKDIR}/extlinux.conf
>> > ::/extlinux/
>> > +
>> > +       # Burn Boot Partition
>> > +       dd if=3D${WORKDIR}/${BOOT_IMG} of=3D${GPTIMG} conv=3Dnotrunc,f=
sync
>> > seek=3D${BOOT_START}
>> > +
>> > +       # Burn Rootfs Partition
>> > +       dd if=3D${IMG_ROOTFS} of=3D${GPTIMG} seek=3D${ROOTFS_START}
>> > +
>> > +}
>> > +
>> > +generate_rk3288_image () {
>> It is not only for rk3288. In fact, This function is for create load1
>> partition. So what about using generate_load1 or create_loader1 ?
>> > +
>> > +       # Burn bootloader
>> > +       mkimage -n rk3288 -T rksd -d ${DEPLOY_DIR_IMAGE}/${SPL_BINARY}
>> > ${WORKDIR}/${UBOOT}
>> > +       cat ${DEPLOY_DIR_IMAGE}/u-boot-${MACHINE}.bin >>
>> > ${WORKDIR}/${UBOOT}
>> > +       dd if=3D${WORKDIR}/${UBOOT} of=3D${GPTIMG} conv=3Dnotrunc,fsyn=
c
>> > seek=3D64
>> > +
>> > +}
>> > --
>> > 2.12.0.rc1.48.g076c053
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> It looks good, Reviewed-by: Jacob Chen <jacob-chen@iotwrt.com>
>
>

