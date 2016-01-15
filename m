Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFF12E00AAB; Thu, 14 Jan 2016 21:58:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.83 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout07.t-online.de (mailout07.t-online.de [194.25.134.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C9BDE00A9C
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 21:58:24 -0800 (PST)
Received: from fwd11.aul.t-online.de (fwd11.aul.t-online.de [172.20.27.152])
	by mailout07.t-online.de (Postfix) with SMTP id 33B741C6B77;
	Fri, 15 Jan 2016 06:58:21 +0100 (CET)
Received: from [192.168.2.113]
	(rAfDgEZQwhGLCghLdhNjG+urW4kjV4yq2hf5fK2eh1cStkn2RfbUxcH20K3VNA+gUR@[87.150.76.38])
	by fwd11.t-online.de with (TLSv1:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1aJxOq-11JN9U0; Fri, 15 Jan 2016 06:58:16 +0100
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
From: Markus Volk <f_l_k@t-online.de>
In-Reply-To: <CAJ86T=XgFetivXJwegTEGWUpDHcaxC9KOFQf=7kj2kUqHEimLw@mail.gmail.com>
Date: Fri, 15 Jan 2016 06:58:16 +0100
Message-Id: <7236895B-362F-4CBE-8772-089601BCD3B8@t-online.de>
References: <4A4C9B28-462E-44CF-9B78-37CF913B25CA@t-online.de>
	<CAJ86T=XgFetivXJwegTEGWUpDHcaxC9KOFQf=7kj2kUqHEimLw@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
X-Mailer: Apple Mail (2.3112)
X-ID: rAfDgEZQwhGLCghLdhNjG+urW4kjV4yq2hf5fK2eh1cStkn2RfbUxcH20K3VNA+gUR
X-TOI-MSGID: a93866b3-6d3d-4911-880c-86990c7f8c98
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
X-List-Received-Date: Fri, 15 Jan 2016 05:58:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thank you,

unfortunately this has=C2=B4t solved the problem for me

> Am 15.01.2016 um 02:56 schrieb Andre McCurdy <armccurdy@gmail.com>:
>=20
> On Wed, Jan 13, 2016 at 12:36 PM, Markus Volk <f_l_k@t-online.de> =
wrote:
>> With the recent improvements in the master branch regarding image =
creation i=C2=B4m not able to build usb images anymore.
>=20
> This patch might help:
>=20
>  =
http://lists.openembedded.org/pipermail/openembedded-core/2016-January/115=
474.html
>=20
>> do_image_ext3 and do_image_jffs2 works well, then i=C2=B4m getting =
this error message:
>>=20
>> Log data follows:
>> | DEBUG: Executing python function set_image_size
>> | DEBUG: Python function set_image_size finished
>> | DEBUG: Executing shell function do_image_hd1-usbimg
>> | =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/run.do_image_hd1-usbimg.126432: 108: =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/run.do_image_hd1-usbimg.126432: =
do_image_hd1-usbimg: not found
>> | WARNING: exit code 127 from a shell command.
>> | ERROR: Function failed: do_image_hd1-usbimg (log file is located at =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/log.do_image_hd1-usbimg.126432)
>> ERROR: Task 18 =
(/home/flk/yocto/poky/meta-neutrino/recipes-images/images/neutrino-image.b=
b, do_image_hd1-usbimg) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 2349 tasks of which 742 didn't need to =
be rerun and 1 failed.
>> Waiting for 0 running tasks to finish:
>>=20
>> Summary: 1 task failed:
>>  =
/home/flk/yocto/poky/meta-neutrino/recipes-images/images/neutrino-image.bb=
, do_image_hd1-usbimg
>> Summary: There were 3 WARNING messages shown.
>> Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.
>>=20
>>=20
>> Until now i used this file for building an usb image (very similar to =
the way the sd image for raspberrypi is created):
>>=20
>> usb_image-hd1.bbclass:
>>=20
>> inherit image_types
>>=20
>> #
>> ## this is heavily inspired by the raspberry pi sdimage class.
>> #
>> # Create an image that can by written onto an USB stick.
>> #
>> # The disk layout used is:
>> #
>> #    0                      -> IMAGE_ROOTFS_ALIGNMENT - reserved for =
other data
>> #    IMAGE_ROOTFS_ALIGNMENT -> BOOT_SPACE             - u-boot script =
and kernel
>> #    BOOT_SPACE             -> USBIMG_SIZE             - rootfs
>> #
>> #                                                     Default Free =
space =3D 1.3x
>> #                                                     Use =
IMAGE_OVERHEAD_FACTOR to add more space
>> #                                                     <--------->
>> #            1MiB              20MiB           USBIMG_ROOTFS
>> # <-----------------------> <----------> <---------------------->
>> #  ------------------------ ------------ ------------------------
>> # | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |
>> #  ------------------------ ------------ ------------------------
>> # ^                        ^            ^                        ^
>> # |                        |            |                        |
>> # 0                      1MiB     1MiB + 20MiB       1MiB + 20Mib + =
USBIMG_ROOTFS
>>=20
>> # This image depends on the rootfs image
>> IMAGE_TYPEDEP_hd1-usbimg =3D "${USBIMG_ROOTFS_TYPE}"
>>=20
>> # Boot partition volume id
>> BOOTDD_VOLUME_ID ?=3D "KERNEL"
>>=20
>> # Boot partition size [in KiB] (will be rounded up to =
IMAGE_ROOTFS_ALIGNMENT)
>> BOOT_SPACE ?=3D "20480"
>>=20
>> # Set alignment to 4MB [in KiB]
>> IMAGE_ROOTFS_ALIGNMENT =3D "1024"
>>=20
>> # Use an uncompressed ext3 by default as rootfs
>> USBIMG_ROOTFS_TYPE ?=3D "ext3"
>> USBIMG_ROOTFS =3D "${IMAGE_NAME}.rootfs.${USBIMG_ROOTFS_TYPE}"
>>=20
>> IMAGE_DEPENDS_hd1-usbimg =3D " \
>>        parted-native \
>>        mtools-native \
>>        dosfstools-native \
>>        virtual/kernel \
>> "
>>=20
>> # USB image name
>> USBIMG =3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.hd1-usbimg"
>>=20
>> # Compression method to apply to USBIMG after it has been created. =
Supported
>> # compression formats are "gzip", "bzip2" or "xz". The original =
.hd1-usbimg file
>> # is kept and a new compressed file is created if one of these =
compression
>> # formats is chosen. If USBIMG_COMPRESSION is set to any other value =
it is
>> # silently ignored.
>> #USBIMG_COMPRESSION ?=3D ""
>>=20
>> # Additional files and/or directories to be copied into the vfat =
partition from the IMAGE_ROOTFS.
>> FATPAYLOAD ?=3D ""
>>=20
>> IMAGEDATESTAMP =3D "${@time.strftime('%Y.%m.%d',time.gmtime())}"
>>=20
>> IMAGE_CMD_hd1-usbimg () {
>>=20
>>        # Align partitions
>>        BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE} + =
${IMAGE_ROOTFS_ALIGNMENT} - 1)
>>        BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE_ALIGNED} - =
${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
>>        ROOTFS_SIZE=3D`du -bks ${USBIMG_ROOTFS} | awk '{print $1}'`
>>        # Round up RootFS size to the alignment size as well
>>        ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE} + =
${IMAGE_ROOTFS_ALIGNMENT} - 1)
>>        ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE_ALIGNED} - =
${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
>>        USBIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} + =
${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})
>>=20
>>        echo "Creating filesystem with Boot partition =
${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
>>=20
>>        # Initialize usbstick image file
>>        dd if=3D/dev/zero of=3D${USBIMG} bs=3D1024 count=3D0 =
seek=3D${USBIMG_SIZE}
>>=20
>>        # Create partition table
>>        parted -s ${USBIMG} mklabel msdos
>>        # Create boot partition and mark it as bootable (not =
necessary, but does not hurt)
>>        parted -s ${USBIMG} unit KiB mkpart primary fat32 =
${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ =
${IMAGE_ROOTFS_ALIGNMENT})
>>        parted -s ${USBIMG} set 1 boot on
>>        # Create rootfs partition to the end of disk
>>        parted -s ${USBIMG} -- unit KiB mkpart primary ext2 $(expr =
${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) -1s
>>        parted ${USBIMG} print
>>=20
>>        # Create a vfat image with boot files
>>        BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${USBIMG} unit b print | =
awk '/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
>>        rm -f ${WORKDIR}/boot.img
>>        mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C =
${WORKDIR}/boot.img $BOOT_BLOCKS
>>        mcopy -i ${WORKDIR}/boot.img -s =
${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::zImage.img
>>=20
>>        if [ -n ${FATPAYLOAD} ] ; then
>>                echo "Copying payload into VFAT"
>>                for entry in ${FATPAYLOAD} ; do
>>                                # add the || true to stop aborting on =
vfat issues like not supporting .~lock files
>>                                mcopy -i ${WORKDIR}/boot.img -s -v =
${IMAGE_ROOTFS}$entry :: || true
>>                done
>>        fi
>>=20
>>        # Add stamp file
>>        echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > =
${WORKDIR}/image-version-info
>>        mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info =
::
>>=20
>>        # Burn Partitions
>>        dd if=3D${WORKDIR}/boot.img of=3D${USBIMG} conv=3Dnotrunc =
seek=3D1 bs=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
>>        # If USBIMG_ROOTFS_TYPE is a .xz file use xzcat
>>        if echo "${USBIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
>>        then
>>                xzcat ${USBIMG_ROOTFS} | dd of=3D${USBIMG} =
conv=3Dnotrunc seek=3D1 bs=3D$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + =
${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
>>        else
>>                dd if=3D${USBIMG_ROOTFS} of=3D${USBIMG} conv=3Dnotrunc =
seek=3D1 bs=3D$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + =
${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
>>        fi
>>=20
>>        # Optionally apply compression
>>        case "${USBIMG_COMPRESSION}" in
>>        "gzip")
>>                gzip -k9 "${USBIMG}"
>>                ;;
>>        "bzip2")
>>                bzip2 -k9 "${USBIMG}"
>>                ;;
>>        "xz")
>>                xz -k "${USBIMG}"
>>                ;;
>>        esac
>> }
>>=20
>>=20
>> When reverting those changes, the problem is gone:
>>=20
>> git revert 3341f3fbee818a0bd62620b8bc34230b03c0689c
>> git revert 0a4e1f968ada5099e3270ed06404d2827e9729aa
>> git revert fdced52387613a09368716d1f3bb7a13a6edd46d
>> git revert cdc0aeed9b17387ea37dcbfef7d474cce372e8db
>>=20
>>=20
>> What am i missing here ?
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


