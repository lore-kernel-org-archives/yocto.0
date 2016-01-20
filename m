Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A36EEE00AB5; Wed, 20 Jan 2016 07:44:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailout10.t-online.de (mailout10.t-online.de [194.25.134.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CECE9E00AA6
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 07:44:30 -0800 (PST)
Received: from fwd35.aul.t-online.de (fwd35.aul.t-online.de [172.20.27.145])
	by mailout10.t-online.de (Postfix) with SMTP id 828105A0CF7
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 16:44:27 +0100 (CET)
Received: from [192.168.2.113]
	(ZY3rVmZdQh-qjp+EBhEf0imSezHPo2JN6Cc9SwG0IkpUvmoQKiRitg-ABlrl9W5Q3L@[87.150.76.38])
	by fwd35.t-online.de with (TLSv1:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1aLuvn-27TZoG0; Wed, 20 Jan 2016 16:44:23 +0100
From: Markus Volk <f_l_k@t-online.de>
Message-Id: <0D9D9ADB-3DAA-4EC3-B39A-2A4A0797037E@t-online.de>
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
Date: Wed, 20 Jan 2016 16:44:23 +0100
References: <4A4C9B28-462E-44CF-9B78-37CF913B25CA@t-online.de>
	<CAJ86T=XgFetivXJwegTEGWUpDHcaxC9KOFQf=7kj2kUqHEimLw@mail.gmail.com>
	<7236895B-362F-4CBE-8772-089601BCD3B8@t-online.de>
	<0DAF51D5-DE03-4DB8-9D12-F5567ABC5661@t-online.de>
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <0DAF51D5-DE03-4DB8-9D12-F5567ABC5661@t-online.de>
X-Mailer: Apple Mail (2.3112)
X-ID: ZY3rVmZdQh-qjp+EBhEf0imSezHPo2JN6Cc9SwG0IkpUvmoQKiRitg-ABlrl9W5Q3L
X-TOI-MSGID: 7d1373c0-f4ea-4795-99d4-4ef8d5598448
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
X-List-Received-Date: Wed, 20 Jan 2016 15:44:34 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_AF9697F5-A3D2-4EA8-AF3B-0B665C8CF5DD"

--Apple-Mail=_AF9697F5-A3D2-4EA8-AF3B-0B665C8CF5DD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Another strange thing. The IMG_COMMAND did result in an empty second =
partition. It did take a while to realize, what  the problem was, =
because there was no error message at all. It just didn=C2=B4t work.=20

I had to do this:


-USBIMG_ROOTFS =3D "${IMAGE_NAME}.rootfs.${USBIMG_ROOTFS_TYPE}=E2=80=9C
  +USBIMG_ROOTFS =3D =
"${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${USBIMG_ROOTFS_TYPE}=E2=80=9C

> Am 16.01.2016 um 21:12 schrieb Markus Volk <f_l_k@t-online.de>:
>=20
> I found the mistake. The Problem seems to be the hyphen in the =
IMAGE_CMD name
>=20
> IMAGE_CMD_hd1-usbimg 	didn=C2=B4t work
> IMAGE_CMD_usbimg 		does
>=20
> I=C2=B4m curious if it still works with IMAGE_CMD_rpi-sdimg on the =
raspberrypi. Has someone already tried ?
>=20
>>=20
>> Thank you,
>>=20
>> unfortunately this has=C2=B4t solved the problem for me
>>=20
>>> Am 15.01.2016 um 02:56 schrieb Andre McCurdy <armccurdy@gmail.com>:
>>>=20
>>> On Wed, Jan 13, 2016 at 12:36 PM, Markus Volk <f_l_k@t-online.de> =
wrote:
>>>> With the recent improvements in the master branch regarding image =
creation i=C2=B4m not able to build usb images anymore.
>>>=20
>>> This patch might help:
>>>=20
>>> =
http://lists.openembedded.org/pipermail/openembedded-core/2016-January/115=
474.html
>>>=20
>>>> do_image_ext3 and do_image_jffs2 works well, then i=C2=B4m getting =
this error message:
>>>>=20
>>>> Log data follows:
>>>> | DEBUG: Executing python function set_image_size
>>>> | DEBUG: Python function set_image_size finished
>>>> | DEBUG: Executing shell function do_image_hd1-usbimg
>>>> | =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/run.do_image_hd1-usbimg.126432: 108: =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/run.do_image_hd1-usbimg.126432: =
do_image_hd1-usbimg: not found
>>>> | WARNING: exit code 127 from a shell command.
>>>> | ERROR: Function failed: do_image_hd1-usbimg (log file is located =
at =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/log.do_image_hd1-usbimg.126432)
>>>> ERROR: Task 18 =
(/home/flk/yocto/poky/meta-neutrino/recipes-images/images/neutrino-image.b=
b, do_image_hd1-usbimg) failed with exit code '1'
>>>> NOTE: Tasks Summary: Attempted 2349 tasks of which 742 didn't need =
to be rerun and 1 failed.
>>>> Waiting for 0 running tasks to finish:
>>>>=20
>>>> Summary: 1 task failed:
>>>> =
/home/flk/yocto/poky/meta-neutrino/recipes-images/images/neutrino-image.bb=
, do_image_hd1-usbimg
>>>> Summary: There were 3 WARNING messages shown.
>>>> Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.
>>>>=20
>>>>=20
>>>> Until now i used this file for building an usb image (very similar =
to the way the sd image for raspberrypi is created):
>>>>=20
>>>> usb_image-hd1.bbclass:
>>>>=20
>>>> inherit image_types
>>>>=20
>>>> #
>>>> ## this is heavily inspired by the raspberry pi sdimage class.
>>>> #
>>>> # Create an image that can by written onto an USB stick.
>>>> #
>>>> # The disk layout used is:
>>>> #
>>>> #    0                      -> IMAGE_ROOTFS_ALIGNMENT - reserved =
for other data
>>>> #    IMAGE_ROOTFS_ALIGNMENT -> BOOT_SPACE             - u-boot =
script and kernel
>>>> #    BOOT_SPACE             -> USBIMG_SIZE             - rootfs
>>>> #
>>>> #                                                     Default Free =
space =3D 1.3x
>>>> #                                                     Use =
IMAGE_OVERHEAD_FACTOR to add more space
>>>> #                                                     <--------->
>>>> #            1MiB              20MiB           USBIMG_ROOTFS
>>>> # <-----------------------> <----------> <---------------------->
>>>> #  ------------------------ ------------ ------------------------
>>>> # | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |
>>>> #  ------------------------ ------------ ------------------------
>>>> # ^                        ^            ^                        ^
>>>> # |                        |            |                        |
>>>> # 0                      1MiB     1MiB + 20MiB       1MiB + 20Mib + =
USBIMG_ROOTFS
>>>>=20
>>>> # This image depends on the rootfs image
>>>> IMAGE_TYPEDEP_hd1-usbimg =3D "${USBIMG_ROOTFS_TYPE}"
>>>>=20
>>>> # Boot partition volume id
>>>> BOOTDD_VOLUME_ID ?=3D "KERNEL"
>>>>=20
>>>> # Boot partition size [in KiB] (will be rounded up to =
IMAGE_ROOTFS_ALIGNMENT)
>>>> BOOT_SPACE ?=3D "20480"
>>>>=20
>>>> # Set alignment to 4MB [in KiB]
>>>> IMAGE_ROOTFS_ALIGNMENT =3D "1024"
>>>>=20
>>>> # Use an uncompressed ext3 by default as rootfs
>>>> USBIMG_ROOTFS_TYPE ?=3D "ext3"
>>>> USBIMG_ROOTFS =3D "${IMAGE_NAME}.rootfs.${USBIMG_ROOTFS_TYPE}"
>>>>=20
>>>> IMAGE_DEPENDS_hd1-usbimg =3D " \
>>>>      parted-native \
>>>>      mtools-native \
>>>>      dosfstools-native \
>>>>      virtual/kernel \
>>>> "
>>>>=20
>>>> # USB image name
>>>> USBIMG =3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.hd1-usbimg"
>>>>=20
>>>> # Compression method to apply to USBIMG after it has been created. =
Supported
>>>> # compression formats are "gzip", "bzip2" or "xz". The original =
.hd1-usbimg file
>>>> # is kept and a new compressed file is created if one of these =
compression
>>>> # formats is chosen. If USBIMG_COMPRESSION is set to any other =
value it is
>>>> # silently ignored.
>>>> #USBIMG_COMPRESSION ?=3D ""
>>>>=20
>>>> # Additional files and/or directories to be copied into the vfat =
partition from the IMAGE_ROOTFS.
>>>> FATPAYLOAD ?=3D ""
>>>>=20
>>>> IMAGEDATESTAMP =3D "${@time.strftime('%Y.%m.%d',time.gmtime())}"
>>>>=20
>>>> IMAGE_CMD_hd1-usbimg () {
>>>>=20
>>>>      # Align partitions
>>>>      BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE} + =
${IMAGE_ROOTFS_ALIGNMENT} - 1)
>>>>      BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE_ALIGNED} - =
${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
>>>>      ROOTFS_SIZE=3D`du -bks ${USBIMG_ROOTFS} | awk '{print $1}'`
>>>>      # Round up RootFS size to the alignment size as well
>>>>      ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE} + =
${IMAGE_ROOTFS_ALIGNMENT} - 1)
>>>>      ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE_ALIGNED} - =
${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
>>>>      USBIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} + =
${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})
>>>>=20
>>>>      echo "Creating filesystem with Boot partition =
${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
>>>>=20
>>>>      # Initialize usbstick image file
>>>>      dd if=3D/dev/zero of=3D${USBIMG} bs=3D1024 count=3D0 =
seek=3D${USBIMG_SIZE}
>>>>=20
>>>>      # Create partition table
>>>>      parted -s ${USBIMG} mklabel msdos
>>>>      # Create boot partition and mark it as bootable (not =
necessary, but does not hurt)
>>>>      parted -s ${USBIMG} unit KiB mkpart primary fat32 =
${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ =
${IMAGE_ROOTFS_ALIGNMENT})
>>>>      parted -s ${USBIMG} set 1 boot on
>>>>      # Create rootfs partition to the end of disk
>>>>      parted -s ${USBIMG} -- unit KiB mkpart primary ext2 $(expr =
${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) -1s
>>>>      parted ${USBIMG} print
>>>>=20
>>>>      # Create a vfat image with boot files
>>>>      BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${USBIMG} unit b print | =
awk '/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }')
>>>>      rm -f ${WORKDIR}/boot.img
>>>>      mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C =
${WORKDIR}/boot.img $BOOT_BLOCKS
>>>>      mcopy -i ${WORKDIR}/boot.img -s =
${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::zImage.img
>>>>=20
>>>>      if [ -n ${FATPAYLOAD} ] ; then
>>>>              echo "Copying payload into VFAT"
>>>>              for entry in ${FATPAYLOAD} ; do
>>>>                              # add the || true to stop aborting on =
vfat issues like not supporting .~lock files
>>>>                              mcopy -i ${WORKDIR}/boot.img -s -v =
${IMAGE_ROOTFS}$entry :: || true
>>>>              done
>>>>      fi
>>>>=20
>>>>      # Add stamp file
>>>>      echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > =
${WORKDIR}/image-version-info
>>>>      mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info =
::
>>>>=20
>>>>      # Burn Partitions
>>>>      dd if=3D${WORKDIR}/boot.img of=3D${USBIMG} conv=3Dnotrunc =
seek=3D1 bs=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
>>>>      # If USBIMG_ROOTFS_TYPE is a .xz file use xzcat
>>>>      if echo "${USBIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"
>>>>      then
>>>>              xzcat ${USBIMG_ROOTFS} | dd of=3D${USBIMG} =
conv=3Dnotrunc seek=3D1 bs=3D$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + =
${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
>>>>      else
>>>>              dd if=3D${USBIMG_ROOTFS} of=3D${USBIMG} conv=3Dnotrunc =
seek=3D1 bs=3D$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + =
${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
>>>>      fi
>>>>=20
>>>>      # Optionally apply compression
>>>>      case "${USBIMG_COMPRESSION}" in
>>>>      "gzip")
>>>>              gzip -k9 "${USBIMG}"
>>>>              ;;
>>>>      "bzip2")
>>>>              bzip2 -k9 "${USBIMG}"
>>>>              ;;
>>>>      "xz")
>>>>              xz -k "${USBIMG}"
>>>>              ;;
>>>>      esac
>>>> }
>>>>=20
>>>>=20
>>>> When reverting those changes, the problem is gone:
>>>>=20
>>>> git revert 3341f3fbee818a0bd62620b8bc34230b03c0689c
>>>> git revert 0a4e1f968ada5099e3270ed06404d2827e9729aa
>>>> git revert fdced52387613a09368716d1f3bb7a13a6edd46d
>>>> git revert cdc0aeed9b17387ea37dcbfef7d474cce372e8db
>>>>=20
>>>>=20
>>>> What am i missing here ?
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20


--Apple-Mail=_AF9697F5-A3D2-4EA8-AF3B-0B665C8CF5DD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div class=3D"">Another strange thing. The IMG_COMMAND did =
result in an empty second partition. It did take a while to realize, =
what &nbsp;the problem was, because there was no error message at all. =
It just didn=C2=B4t work.&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D"">I had to do this:</div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><table class=3D" diff-table tab-size" data-tab-size=3D"8" =
style=3D"box-sizing: border-box; border-spacing: 0px; width: 978px; =
tab-size: 8; color: rgb(51, 51, 51); font-family: Helvetica, arial, =
nimbussansl, liberationsans, freesans, clean, sans-serif, 'Apple Color =
Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 13px;"><tbody =
style=3D"box-sizing: border-box;" class=3D""><tr style=3D"box-sizing: =
border-box;" class=3D""><td class=3D"is-hovered blob-code-deletion =
blob-code" style=3D"box-sizing: border-box; padding: 0px 10px; position: =
relative; vertical-align: top; background-color: rgb(255, 236, =
236);"><span class=3D"blob-code-inner" style=3D"box-sizing: border-box; =
font-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; =
font-size: 12px; white-space: pre; overflow: visible; word-wrap: =
normal;">-USBIMG_ROOTFS =3D =
"${IMAGE_NAME}.rootfs.${USBIMG_ROOTFS_TYPE}=E2=80=9C</span></td></tr></tbo=
dy></table></div><div><span style=3D"color: rgb(51, 51, 51); =
font-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; =
white-space: pre; background-color: rgb(234, 255, 234);" class=3D"">  =
+USBIMG_ROOTFS =3D "${</span><span class=3D"x x-first x-last" =
style=3D"color: rgb(51, 51, 51); font-family: Consolas, 'Liberation =
Mono', Menlo, Courier, monospace; white-space: pre; box-sizing: =
border-box; border-top-left-radius: 0.2em; border-bottom-left-radius: =
0.2em; border-top-right-radius: 0.2em; border-bottom-right-radius: =
0.2em; background-color: rgb(166, 243, =
166);">DEPLOY_DIR_IMAGE}/${</span><span style=3D"color: rgb(51, 51, 51); =
font-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; =
white-space: pre; background-color: rgb(234, 255, 234);" =
class=3D"">IMAGE_NAME}.rootfs.${USBIMG_ROOTFS_TYPE}</span><font =
color=3D"#333333" face=3D"Consolas, Liberation Mono, Menlo, Courier, =
monospace" class=3D""><span style=3D"white-space: pre;" =
class=3D"">=E2=80=9C</span></font></div><div><span style=3D"color: =
rgb(51, 51, 51); font-family: Consolas, 'Liberation Mono', Menlo, =
Courier, monospace; white-space: pre; background-color: rgb(234, 255, =
234);" class=3D""><br class=3D""></span></div><div><blockquote =
type=3D"cite" class=3D""><div class=3D"">Am 16.01.2016 um 21:12 schrieb =
Markus Volk &lt;<a href=3D"mailto:f_l_k@t-online.de" =
class=3D"">f_l_k@t-online.de</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">I =
found the mistake. The Problem seems to be the hyphen in the IMAGE_CMD =
name<br class=3D""><br class=3D"">IMAGE_CMD_hd1-usbimg <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>didn=C2=B4t=
 work<br class=3D"">IMAGE_CMD_usbimg <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>does<br class=3D""><br =
class=3D"">I=C2=B4m curious if it still works with IMAGE_CMD_rpi-sdimg =
on the raspberrypi. Has someone already tried ?<br class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">Thank =
you,<br class=3D""><br class=3D"">unfortunately this has=C2=B4t solved =
the problem for me<br class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">Am 15.01.2016 um 02:56 schrieb Andre McCurdy &lt;<a =
href=3D"mailto:armccurdy@gmail.com" =
class=3D"">armccurdy@gmail.com</a>&gt;:<br class=3D""><br class=3D"">On =
Wed, Jan 13, 2016 at 12:36 PM, Markus Volk &lt;<a =
href=3D"mailto:f_l_k@t-online.de" class=3D"">f_l_k@t-online.de</a>&gt; =
wrote:<br class=3D""><blockquote type=3D"cite" class=3D"">With the =
recent improvements in the master branch regarding image creation i=C2=B4m=
 not able to build usb images anymore.<br class=3D""></blockquote><br =
class=3D"">This patch might help:<br class=3D""><br class=3D""><a =
href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2016-Jan=
uary/115474.html" =
class=3D"">http://lists.openembedded.org/pipermail/openembedded-core/2016-=
January/115474.html</a><br class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D"">do_image_ext3 and do_image_jffs2 works well, =
then i=C2=B4m getting this error message:<br class=3D""><br class=3D"">Log=
 data follows:<br class=3D"">| DEBUG: Executing python function =
set_image_size<br class=3D"">| DEBUG: Python function set_image_size =
finished<br class=3D"">| DEBUG: Executing shell function =
do_image_hd1-usbimg<br class=3D"">| =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/run.do_image_hd1-usbimg.126432: 108: =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/run.do_image_hd1-usbimg.126432: =
do_image_hd1-usbimg: not found<br class=3D"">| WARNING: exit code 127 =
from a shell command.<br class=3D"">| ERROR: Function failed: =
do_image_hd1-usbimg (log file is located at =
/home/flk/yocto/poky/build-zee/tmp-glibc/work/coolstream_hd1-oe-linux-gnue=
abi/neutrino-image/1.0-r0/temp/log.do_image_hd1-usbimg.126432)<br =
class=3D"">ERROR: Task 18 =
(/home/flk/yocto/poky/meta-neutrino/recipes-images/images/neutrino-image.b=
b, do_image_hd1-usbimg) failed with exit code '1'<br class=3D"">NOTE: =
Tasks Summary: Attempted 2349 tasks of which 742 didn't need to be rerun =
and 1 failed.<br class=3D"">Waiting for 0 running tasks to finish:<br =
class=3D""><br class=3D"">Summary: 1 task failed:<br =
class=3D"">/home/flk/yocto/poky/meta-neutrino/recipes-images/images/neutri=
no-image.bb, do_image_hd1-usbimg<br class=3D"">Summary: There were 3 =
WARNING messages shown.<br class=3D"">Summary: There was 1 ERROR message =
shown, returning a non-zero exit code.<br class=3D""><br class=3D""><br =
class=3D"">Until now i used this file for building an usb image (very =
similar to the way the sd image for raspberrypi is created):<br =
class=3D""><br class=3D"">usb_image-hd1.bbclass:<br class=3D""><br =
class=3D"">inherit image_types<br class=3D""><br class=3D"">#<br =
class=3D"">## this is heavily inspired by the raspberry pi sdimage =
class.<br class=3D"">#<br class=3D""># Create an image that can by =
written onto an USB stick.<br class=3D"">#<br class=3D""># The disk =
layout used is:<br class=3D"">#<br class=3D""># &nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&gt; =
IMAGE_ROOTFS_ALIGNMENT - reserved for other data<br class=3D""># =
&nbsp;&nbsp;&nbsp;IMAGE_ROOTFS_ALIGNMENT -&gt; BOOT_SPACE =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- =
u-boot script and kernel<br class=3D""># &nbsp;&nbsp;&nbsp;BOOT_SPACE =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&=
gt; USBIMG_SIZE =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- =
rootfs<br class=3D"">#<br class=3D""># =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;Default Free space =3D 1.3x<br class=3D""># =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;Use IMAGE_OVERHEAD_FACTOR to add more space<br =
class=3D""># =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&lt;---------&gt;<br class=3D""># =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1MiB =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;20MiB =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;USBIMG_ROOTFS<=
br class=3D""># &lt;-----------------------&gt; &lt;----------&gt; =
&lt;----------------------&gt;<br class=3D""># =
&nbsp;------------------------ ------------ ------------------------<br =
class=3D""># | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br =
class=3D""># &nbsp;------------------------ ------------ =
------------------------<br class=3D""># ^ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;^<br =
class=3D""># | =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<br =
class=3D""># 0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1MiB =
&nbsp;&nbsp;&nbsp;&nbsp;1MiB + 20MiB =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1MiB + 20Mib + USBIMG_ROOTFS<br =
class=3D""><br class=3D""># This image depends on the rootfs image<br =
class=3D"">IMAGE_TYPEDEP_hd1-usbimg =3D "${USBIMG_ROOTFS_TYPE}"<br =
class=3D""><br class=3D""># Boot partition volume id<br =
class=3D"">BOOTDD_VOLUME_ID ?=3D "KERNEL"<br class=3D""><br class=3D""># =
Boot partition size [in KiB] (will be rounded up to =
IMAGE_ROOTFS_ALIGNMENT)<br class=3D"">BOOT_SPACE ?=3D "20480"<br =
class=3D""><br class=3D""># Set alignment to 4MB [in KiB]<br =
class=3D"">IMAGE_ROOTFS_ALIGNMENT =3D "1024"<br class=3D""><br =
class=3D""># Use an uncompressed ext3 by default as rootfs<br =
class=3D"">USBIMG_ROOTFS_TYPE ?=3D "ext3"<br class=3D"">USBIMG_ROOTFS =3D =
"${IMAGE_NAME}.rootfs.${USBIMG_ROOTFS_TYPE}"<br class=3D""><br =
class=3D"">IMAGE_DEPENDS_hd1-usbimg =3D " \<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;parted-native \<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mtools-native \<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dosfstools-native \<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;virtual/kernel \<br class=3D"">"<br =
class=3D""><br class=3D""># USB image name<br class=3D"">USBIMG =3D =
"${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.hd1-usbimg"<br class=3D""><br =
class=3D""># Compression method to apply to USBIMG after it has been =
created. Supported<br class=3D""># compression formats are "gzip", =
"bzip2" or "xz". The original .hd1-usbimg file<br class=3D""># is kept =
and a new compressed file is created if one of these compression<br =
class=3D""># formats is chosen. If USBIMG_COMPRESSION is set to any =
other value it is<br class=3D""># silently ignored.<br =
class=3D"">#USBIMG_COMPRESSION ?=3D ""<br class=3D""><br class=3D""># =
Additional files and/or directories to be copied into the vfat partition =
from the IMAGE_ROOTFS.<br class=3D"">FATPAYLOAD ?=3D ""<br class=3D""><br =
class=3D"">IMAGEDATESTAMP =3D =
"${@time.strftime('%Y.%m.%d',time.gmtime())}"<br class=3D""><br =
class=3D"">IMAGE_CMD_hd1-usbimg () {<br class=3D""><br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Align partitions<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE} =
+ ${IMAGE_ROOTFS_ALIGNMENT} - 1)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BOOT_SPACE_ALIGNED=3D$(expr =
${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} % =
${IMAGE_ROOTFS_ALIGNMENT})<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROOTFS_SIZE=3D`du -bks ${USBIMG_ROOTFS} | =
awk '{print $1}'`<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Round =
up RootFS size to the alignment size as well<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROOTFS_SIZE_ALIGNED=3D$(expr =
${ROOTFS_SIZE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ROOTFS_SIZE_ALIGNED=3D$(expr =
${ROOTFS_SIZE_ALIGNED} - ${ROOTFS_SIZE_ALIGNED} % =
${IMAGE_ROOTFS_ALIGNMENT})<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;USBIMG_SIZE=3D$(expr =
${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + =
${ROOTFS_SIZE_ALIGNED})<br class=3D""><br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo "Creating filesystem with Boot =
partition ${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} =
KiB"<br class=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# =
Initialize usbstick image file<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dd if=3D/dev/zero of=3D${USBIMG} bs=3D1024 =
count=3D0 seek=3D${USBIMG_SIZE}<br class=3D""><br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Create partition table<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;parted -s ${USBIMG} mklabel msdos<br =
class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Create boot partition and =
mark it as bootable (not necessary, but does not hurt)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;parted -s ${USBIMG} unit KiB mkpart =
primary fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ =
${IMAGE_ROOTFS_ALIGNMENT})<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;parted -s ${USBIMG} set 1 boot on<br =
class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Create rootfs partition to =
the end of disk<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;parted -s =
${USBIMG} -- unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} =
\+ ${IMAGE_ROOTFS_ALIGNMENT}) -1s<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;parted ${USBIMG} print<br class=3D""><br =
class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Create a vfat image with =
boot files<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s =
${USBIMG} unit b print | awk '/ 1 / { print substr($4, 1, length($4 -1)) =
/ 512 /2 }')<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rm -f =
${WORKDIR}/boot.img<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 =
-C ${WORKDIR}/boot.img $BOOT_BLOCKS<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mcopy -i ${WORKDIR}/boot.img -s =
${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::zImage.img<br =
class=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if [ -n =
${FATPAYLOAD} ] ; then<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;echo "Copying payload into VFAT"<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;for entry in ${FATPAYLOAD} ; do<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;# add the || true to stop aborting on vfat =
issues like not supporting .~lock files<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;mcopy -i ${WORKDIR}/boot.img -s -v =
${IMAGE_ROOTFS}$entry :: || true<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;done<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fi<br class=3D""><br=
 class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Add stamp file<br class=3D"">=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" =
&gt; ${WORKDIR}/image-version-info<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mcopy -i ${WORKDIR}/boot.img -v =
${WORKDIR}//image-version-info ::<br class=3D""><br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Burn Partitions<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dd if=3D${WORKDIR}/boot.img of=3D${USBIMG} =
conv=3Dnotrunc seek=3D1 bs=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) =
&amp;&amp; sync &amp;&amp; sync<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# If USBIMG_ROOTFS_TYPE is a .xz file use =
xzcat<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if echo =
"${USBIMG_ROOTFS_TYPE}" | egrep -q "*\.xz"<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;then<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;xzcat ${USBIMG_ROOTFS} | dd of=3D${USBIMG} conv=3Dnotrunc seek=3D1 =
bs=3D$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* =
1024) &amp;&amp; sync &amp;&amp; sync<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;dd if=3D${USBIMG_ROOTFS} of=3D${USBIMG} conv=3Dnotrunc seek=3D1 =
bs=3D$(expr 1024 \* ${BOOT_SPACE_ALIGNED} + ${IMAGE_ROOTFS_ALIGNMENT} \* =
1024) &amp;&amp; sync &amp;&amp; sync<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fi<br class=3D""><br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Optionally apply compression<br =
class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case "${USBIMG_COMPRESSION}" =
in<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"gzip")<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;gzip -k9 "${USBIMG}"<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;;;<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"bzip2")<br =
class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;bzip2 -k9 "${USBIMG}"<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;;;<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"xz")<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;xz -k "${USBIMG}"<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;;;<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;esac<br =
class=3D"">}<br class=3D""><br class=3D""><br class=3D"">When reverting =
those changes, the problem is gone:<br class=3D""><br class=3D"">git =
revert 3341f3fbee818a0bd62620b8bc34230b03c0689c<br class=3D"">git revert =
0a4e1f968ada5099e3270ed06404d2827e9729aa<br class=3D"">git revert =
fdced52387613a09368716d1f3bb7a13a6edd46d<br class=3D"">git revert =
cdc0aeed9b17387ea37dcbfef7d474cce372e8db<br class=3D""><br class=3D""><br =
class=3D"">What am i missing here ?<br class=3D"">--<br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D"">yocto@yoctoproject.org<br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></blockquote></blockquote><br class=3D"">-- <br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></blockquote><br class=3D""></div></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_AF9697F5-A3D2-4EA8-AF3B-0B665C8CF5DD--
