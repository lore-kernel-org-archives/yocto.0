Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18643E00B6D; Wed, 13 Jan 2016 12:37:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.83 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mailout07.t-online.de (mailout07.t-online.de [194.25.134.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73640E00B66
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 12:37:02 -0800 (PST)
Received: from fwd35.aul.t-online.de (fwd35.aul.t-online.de [172.20.27.145])
	by mailout07.t-online.de (Postfix) with SMTP id 77496366E6E
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 21:37:00 +0100 (CET)
Received: from [192.168.2.113]
	(EIb8LEZBZhbm74FegP9bN3sXN-r9QMuFZqVPhbt6+gq5XIzk-47fMpvqidx1lmZgUf@[87.150.76.38])
	by fwd35.t-online.de with (TLSv1:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1aJSA3-0uFKF60; Wed, 13 Jan 2016 21:36:55 +0100
From: Markus Volk <f_l_k@t-online.de>
Message-Id: <4A4C9B28-462E-44CF-9B78-37CF913B25CA@t-online.de>
Date: Wed, 13 Jan 2016 21:36:55 +0100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
X-ID: EIb8LEZBZhbm74FegP9bN3sXN-r9QMuFZqVPhbt6+gq5XIzk-47fMpvqidx1lmZgUf
X-TOI-MSGID: c9380b89-4c71-4d35-9ecd-32477483125a
Subject: Separate out image generation into a new task
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
X-List-Received-Date: Wed, 13 Jan 2016 20:37:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

With the recent improvements in the master branch regarding image =
creation i=C2=B4m not able to build usb images anymore. do_image_ext3 =
and do_image_jffs2 works well, then i=C2=B4m getting this error message:

Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: Python function set_image_size finished
| DEBUG: Executing shell function do_image_hd1-usbimg
| =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/run.do_image_hd1-usbimg.126432: 108: =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/run.do_image_hd1-usbimg.126432: =
do_image_hd1-usbimg: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Function failed: do_image_hd1-usbimg (log file is located at =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/log.do_image_hd1-usbimg.126432)
ERROR: Task 18 =
(/home/flk/yocto/poky/meta-neutrino/recipes-images/images/neutrino-image.b=
b, do_image_hd1-usbimg) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2349 tasks of which 742 didn't need to be =
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  =
/home/flk/yocto/poky/meta-neutrino/recipes-images/images/neutrino-image.bb=
, do_image_hd1-usbimg
Summary: There were 3 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.


Until now i used this file for building an usb image (very similar to =
the way the sd image for raspberrypi is created):

usb_image-hd1.bbclass:

inherit image_types

#
## this is heavily inspired by the raspberry pi sdimage class.
#
# Create an image that can by written onto an USB stick.
#
# The disk layout used is:
#
#    0                      -> IMAGE_ROOTFS_ALIGNMENT - reserved for =
other data
#    IMAGE_ROOTFS_ALIGNMENT -> BOOT_SPACE             - u-boot script =
and kernel
#    BOOT_SPACE             -> USBIMG_SIZE             - rootfs
#
#                                                     Default Free space =
=3D 1.3x
#                                                     Use =
IMAGE_OVERHEAD_FACTOR to add more space
#                                                     <--------->
#            1MiB              20MiB           USBIMG_ROOTFS
# <-----------------------> <----------> <---------------------->
#  ------------------------ ------------ ------------------------
# | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |
#  ------------------------ ------------ ------------------------
# ^                        ^            ^                        ^
# |                        |            |                        |
# 0                      1MiB     1MiB + 20MiB       1MiB + 20Mib + =
USBIMG_ROOTFS

# This image depends on the rootfs image
IMAGE_TYPEDEP_hd1-usbimg =3D "${USBIMG_ROOTFS_TYPE}"

# Boot partition volume id
BOOTDD_VOLUME_ID ?=3D "KERNEL"

# Boot partition size [in KiB] (will be rounded up to =
IMAGE_ROOTFS_ALIGNMENT)
BOOT_SPACE ?=3D "20480"

# Set alignment to 4MB [in KiB]
IMAGE_ROOTFS_ALIGNMENT =3D "1024"

# Use an uncompressed ext3 by default as rootfs
USBIMG_ROOTFS_TYPE ?=3D "ext3"
USBIMG_ROOTFS =3D "${IMAGE_NAME}.rootfs.${USBIMG_ROOTFS_TYPE}"

IMAGE_DEPENDS_hd1-usbimg =3D " \
	parted-native \
	mtools-native \
	dosfstools-native \
	virtual/kernel \
"

# USB image name
USBIMG =3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.hd1-usbimg"

# Compression method to apply to USBIMG after it has been created. =
Supported
# compression formats are "gzip", "bzip2" or "xz". The original =
.hd1-usbimg file
# is kept and a new compressed file is created if one of these =
compression
# formats is chosen. If USBIMG_COMPRESSION is set to any other value it =
is
# silently ignored.
#USBIMG_COMPRESSION ?=3D ""

# Additional files and/or directories to be copied into the vfat =
partition from the IMAGE_ROOTFS.
FATPAYLOAD ?=3D ""

IMAGEDATESTAMP =3D "${@time.strftime('%Y.%m.%d',time.gmtime())}"

IMAGE_CMD_hd1-usbimg () {

	# Align partitions
	BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE} + =
${IMAGE_ROOTFS_ALIGNMENT} - 1)
	BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE_ALIGNED} - =
${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
	ROOTFS_SIZE=3D`du -bks ${USBIMG_ROOTFS} | awk '{print $1}'`
        # Round up RootFS size to the alignment size as well
	ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE} + =
${IMAGE_ROOTFS_ALIGNMENT} - 1)
	ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE_ALIGNED} - =
${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
	USBIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} + =
${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})

	echo "Creating filesystem with Boot partition =
${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"

	# Initialize usbstick image file
	dd if=3D/dev/zero of=3D${USBIMG} bs=3D1024 count=3D0 =
seek=3D${USBIMG_SIZE}

	# Create partition table
	parted -s ${USBIMG} mklabel msdos
	# Create boot partition and mark it as bootable (not necessary, =
but does not hurt)
	parted -s ${USBIMG} unit KiB mkpart primary fat32 =
${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ =
${IMAGE_ROOTFS_ALIGNMENT})
	parted -s ${USBIMG} set 1 boot on
	# Create rootfs partition to the end of disk
	parted -s ${USBIMG} -- unit KiB mkpart primary ext2 $(expr =
${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) -1s
	parted ${USBIMG} print

	# Create a vfat image with boot files
	BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${USBIMG} unit b print | =
awk '/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
	rm -f ${WORKDIR}/boot.img
	mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img =
$BOOT_BLOCKS
	mcopy -i ${WORKDIR}/boot.img -s =
${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::zImage.img

	if [ -n ${FATPAYLOAD} ] ; then
		echo "Copying payload into VFAT"
		for entry in ${FATPAYLOAD} ; do
				# add the || true to stop aborting on =
vfat issues like not supporting .~lock files
				mcopy -i ${WORKDIR}/boot.img -s -v =
${IMAGE_ROOTFS}$entry :: || true
		done
	fi

	# Add stamp file
	echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > =
${WORKDIR}/image-version-info
	mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info =
::

	# Burn Partitions
	dd if=3D${WORKDIR}/boot.img of=3D${USBIMG} conv=3Dnotrunc seek=3D1=
 bs=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
	# If USBIMG_ROOTFS_TYPE is a .xz file use xzcat
	if echo "${USBIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
	then
		xzcat ${USBIMG_ROOTFS} | dd of=3D${USBIMG} conv=3Dnotrunc =
seek=3D1 bs=3D$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + =
${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
	else
		dd if=3D${USBIMG_ROOTFS} of=3D${USBIMG} conv=3Dnotrunc =
seek=3D1 bs=3D$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + =
${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
	fi

	# Optionally apply compression
	case "${USBIMG_COMPRESSION}" in
	"gzip")
		gzip -k9 "${USBIMG}"
		;;
	"bzip2")
		bzip2 -k9 "${USBIMG}"
		;;
	"xz")
		xz -k "${USBIMG}"
		;;
	esac
}


When reverting those changes, the problem is gone:

git revert 3341f3fbee818a0bd62620b8bc34230b03c0689c
git revert 0a4e1f968ada5099e3270ed06404d2827e9729aa
git revert fdced52387613a09368716d1f3bb7a13a6edd46d
git revert cdc0aeed9b17387ea37dcbfef7d474cce372e8db


What am i missing here ?=

