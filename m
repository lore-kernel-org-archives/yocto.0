Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8769E0086B; Thu, 14 Jan 2016 17:56:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6E67E007EA
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 17:56:24 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id b14so3603092wmb.1
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 17:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=dSXTsRSdBzMIr56xi75ERdTxV3cOgyfpAsWTdOZ9kw0=;
	b=jwQkZViS2km407s+oe9DJvvhnKYTebZn+nDyj1clZQMX1VyZBuCf4OBY+1faDhvxR9
	YL7wh3BpGMcqRoQ5j1Pkn+Bc5HmpvekJSXr/FSztP4+3shmH00DSG5HDEF6ESBlDBHc2
	km3PkmgGRJLB4K8Fx2x/BsbQ3tBDHY3VM6/4BGoUrSdf4LrlzqjYYWXr95TYLM9MPOi9
	BqDZfgRPsBMhn3HabEDMBpwTw5aQdaPf5mFX0+ZyuEyGs8Hs9yOpHXgaHe7rRlHGG9+H
	NF5o3X/JDFbrbOyZAxX9HhsounNY6NPc/3TyB9j/a1ojpSga0dWRRIv0lHDYIV35tgEL
	19Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=dSXTsRSdBzMIr56xi75ERdTxV3cOgyfpAsWTdOZ9kw0=;
	b=J0FCOuMelPI0c3bJuC05wn8O0z/U9FQXyKZf5V+8bxpdtSiw6A2X4umm8sFoPNeWki
	Xrk1/CF+TzOSZhTI12YNvy5u9VEAzSfnq/pqNW1ktraVVBXO3oONIPy8yKerQu+FyUcJ
	TGYC0tTN6ovwNiPiPFhb3VV8ZihTlk0VUbz09SkaHUUGjFTMzExJxpNQzXql2yMBAYAZ
	xuBUgwpeUdSANtSb6lNYQlawoSYss0ya05XIIcqy+o57uv5CkXuwPxmPVikgpOsPLJx6
	a0/16+mhe62aPZk0OCSu+0qqITbBD8IxoBiTWQpMjUBUPgiRPC7Wm8a3r3odR46oiBv8
	PmJQ==
X-Gm-Message-State: ALoCoQlLNLzRrRRioHKm6wpQGj3+uMHAG7VKalte2yTqhOfEs/znLRyFAtAObZ2kpP8/+xGZkVbbwjc0bzic5DzbKQDSvzu69A==
MIME-Version: 1.0
X-Received: by 10.194.24.226 with SMTP id x2mr6958400wjf.43.1452822983285;
	Thu, 14 Jan 2016 17:56:23 -0800 (PST)
Received: by 10.194.209.131 with HTTP; Thu, 14 Jan 2016 17:56:23 -0800 (PST)
In-Reply-To: <4A4C9B28-462E-44CF-9B78-37CF913B25CA@t-online.de>
References: <4A4C9B28-462E-44CF-9B78-37CF913B25CA@t-online.de>
Date: Thu, 14 Jan 2016 17:56:23 -0800
Message-ID: <CAJ86T=XgFetivXJwegTEGWUpDHcaxC9KOFQf=7kj2kUqHEimLw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Separate out image generation into a new task
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
X-List-Received-Date: Fri, 15 Jan 2016 01:56:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 13, 2016 at 12:36 PM, Markus Volk <f_l_k@t-online.de> wrote:
> With the recent improvements in the master branch regarding image creatio=
n i=C2=B4m not able to build usb images anymore.

This patch might help:

  http://lists.openembedded.org/pipermail/openembedded-core/2016-January/11=
5474.html

> do_image_ext3 and do_image_jffs2 works well, then i=C2=B4m getting this e=
rror message:
>
> Log data follows:
> | DEBUG: Executing python function set_image_size
> | DEBUG: Python function set_image_size finished
> | DEBUG: Executing shell function do_image_hd1-usbimg
> | /home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-g=
nueabi/neutrino-image/1.0-r0/temp/run.do_image_hd1-usbimg.126432: 108: /hom=
e/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnueabi/n=
eutrino-image/1.0-r0/temp/run.do_image_hd1-usbimg.126432: do_image_hd1-usbi=
mg: not found
> | WARNING: exit code 127 from a shell command.
> | ERROR: Function failed: do_image_hd1-usbimg (log file is located at /ho=
me/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnueabi/=
neutrino-image/1.0-r0/temp/log.do_image_hd1-usbimg.126432)
> ERROR: Task 18 (/home/flk/yocto/poky/meta-neutrino/recipes-images/images/=
neutrino-image.bb, do_image_hd1-usbimg) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2349 tasks of which 742 didn't need to be =
rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>   /home/flk/yocto/poky/meta-neutrino/recipes-images/images/neutrino-image=
.bb, do_image_hd1-usbimg
> Summary: There were 3 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> Until now i used this file for building an usb image (very similar to the=
 way the sd image for raspberrypi is created):
>
> usb_image-hd1.bbclass:
>
> inherit image_types
>
> #
> ## this is heavily inspired by the raspberry pi sdimage class.
> #
> # Create an image that can by written onto an USB stick.
> #
> # The disk layout used is:
> #
> #    0                      -> IMAGE_ROOTFS_ALIGNMENT - reserved for othe=
r data
> #    IMAGE_ROOTFS_ALIGNMENT -> BOOT_SPACE             - u-boot script and=
 kernel
> #    BOOT_SPACE             -> USBIMG_SIZE             - rootfs
> #
> #                                                     Default Free space =
=3D 1.3x
> #                                                     Use IMAGE_OVERHEAD_=
FACTOR to add more space
> #                                                     <--------->
> #            1MiB              20MiB           USBIMG_ROOTFS
> # <-----------------------> <----------> <---------------------->
> #  ------------------------ ------------ ------------------------
> # | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |
> #  ------------------------ ------------ ------------------------
> # ^                        ^            ^                        ^
> # |                        |            |                        |
> # 0                      1MiB     1MiB + 20MiB       1MiB + 20Mib + USBIM=
G_ROOTFS
>
> # This image depends on the rootfs image
> IMAGE_TYPEDEP_hd1-usbimg =3D "${USBIMG_ROOTFS_TYPE}"
>
> # Boot partition volume id
> BOOTDD_VOLUME_ID ?=3D "KERNEL"
>
> # Boot partition size [in KiB] (will be rounded up to IMAGE_ROOTFS_ALIGNM=
ENT)
> BOOT_SPACE ?=3D "20480"
>
> # Set alignment to 4MB [in KiB]
> IMAGE_ROOTFS_ALIGNMENT =3D "1024"
>
> # Use an uncompressed ext3 by default as rootfs
> USBIMG_ROOTFS_TYPE ?=3D "ext3"
> USBIMG_ROOTFS =3D "${IMAGE_NAME}.rootfs.${USBIMG_ROOTFS_TYPE}"
>
> IMAGE_DEPENDS_hd1-usbimg =3D " \
>         parted-native \
>         mtools-native \
>         dosfstools-native \
>         virtual/kernel \
> "
>
> # USB image name
> USBIMG =3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.hd1-usbimg"
>
> # Compression method to apply to USBIMG after it has been created. Suppor=
ted
> # compression formats are "gzip", "bzip2" or "xz". The original .hd1-usbi=
mg file
> # is kept and a new compressed file is created if one of these compressio=
n
> # formats is chosen. If USBIMG_COMPRESSION is set to any other value it i=
s
> # silently ignored.
> #USBIMG_COMPRESSION ?=3D ""
>
> # Additional files and/or directories to be copied into the vfat partitio=
n from the IMAGE_ROOTFS.
> FATPAYLOAD ?=3D ""
>
> IMAGEDATESTAMP =3D "${@time.strftime('%Y.%m.%d',time.gmtime())}"
>
> IMAGE_CMD_hd1-usbimg () {
>
>         # Align partitions
>         BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNM=
ENT} - 1)
>         BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_=
ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
>         ROOTFS_SIZE=3D`du -bks ${USBIMG_ROOTFS} | awk '{print $1}'`
>         # Round up RootFS size to the alignment size as well
>         ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE} + ${IMAGE_ROOTFS_ALIG=
NMENT} - 1)
>         ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE_ALIGNED} - ${ROOTFS_SI=
ZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
>         USBIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALI=
GNED} + ${ROOTFS_SIZE_ALIGNED})
>
>         echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNE=
D} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
>
>         # Initialize usbstick image file
>         dd if=3D/dev/zero of=3D${USBIMG} bs=3D1024 count=3D0 seek=3D${USB=
IMG_SIZE}
>
>         # Create partition table
>         parted -s ${USBIMG} mklabel msdos
>         # Create boot partition and mark it as bootable (not necessary, b=
ut does not hurt)
>         parted -s ${USBIMG} unit KiB mkpart primary fat32 ${IMAGE_ROOTFS_=
ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT})
>         parted -s ${USBIMG} set 1 boot on
>         # Create rootfs partition to the end of disk
>         parted -s ${USBIMG} -- unit KiB mkpart primary ext2 $(expr ${BOOT=
_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) -1s
>         parted ${USBIMG} print
>
>         # Create a vfat image with boot files
>         BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${USBIMG} unit b print | awk=
 '/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
>         rm -f ${WORKDIR}/boot.img
>         mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img =
$BOOT_BLOCKS
>         mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAG=
ETYPE}-${MACHINE}.bin ::zImage.img
>
>         if [ -n ${FATPAYLOAD} ] ; then
>                 echo "Copying payload into VFAT"
>                 for entry in ${FATPAYLOAD} ; do
>                                 # add the || true to stop aborting on vfa=
t issues like not supporting .~lock files
>                                 mcopy -i ${WORKDIR}/boot.img -s -v ${IMAG=
E_ROOTFS}$entry :: || true
>                 done
>         fi
>
>         # Add stamp file
>         echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > ${WORKDIR}/image-version=
-info
>         mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info ::
>
>         # Burn Partitions
>         dd if=3D${WORKDIR}/boot.img of=3D${USBIMG} conv=3Dnotrunc seek=3D=
1 bs=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
>         # If USBIMG_ROOTFS_TYPE is a .xz file use xzcat
>         if echo "${USBIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
>         then
>                 xzcat ${USBIMG_ROOTFS} | dd of=3D${USBIMG} conv=3Dnotrunc=
 seek=3D1 bs=3D$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNM=
ENT} \* 1024) && sync && sync
>         else
>                 dd if=3D${USBIMG_ROOTFS} of=3D${USBIMG} conv=3Dnotrunc se=
ek=3D1 bs=3D$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT=
} \* 1024) && sync && sync
>         fi
>
>         # Optionally apply compression
>         case "${USBIMG_COMPRESSION}" in
>         "gzip")
>                 gzip -k9 "${USBIMG}"
>                 ;;
>         "bzip2")
>                 bzip2 -k9 "${USBIMG}"
>                 ;;
>         "xz")
>                 xz -k "${USBIMG}"
>                 ;;
>         esac
> }
>
>
> When reverting those changes, the problem is gone:
>
> git revert 3341f3fbee818a0bd62620b8bc34230b03c0689c
> git revert 0a4e1f968ada5099e3270ed06404d2827e9729aa
> git revert fdced52387613a09368716d1f3bb7a13a6edd46d
> git revert cdc0aeed9b17387ea37dcbfef7d474cce372e8db
>
>
> What am i missing here ?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

