Return-Path: <sebmennetrier@gmail.com>
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FD33E0030B
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 23:45:14 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id j1so6689589iga.2
	for <yocto@yoctoproject.org>; Mon, 03 Feb 2014 23:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:content-type;
	bh=PMKu0/G8oSefCnP6wnSlP7s5v57OwzOhzXdUQ/MV3G0=;
	b=Is1dvsClAl3cqPaDp2xNhJJkl0CG2PXo8kmIbrYHSo9EBk8qw9X/Q+ZeQL/tJEpvOB
	/l/BPtsZD2wK99q4okfuWsuZmtPeeBJnhXKUSbZln0pIKbRLYu79I/ZVA7M5KSWR0KpZ
	CyhB9BGthqSF1yJ/Bgj005I/E6Tq6GF+O0I3nVBIhPV5NAy2H28+LprygfSPasbGGwRq
	DTUDPKEkZ3coR8JnIPcAaTunIIUOMEOx/HOY5Nylm8rAu6kqrZMmCXxibsZ4ZvA5OeEr
	UbVbdEa1MQlFj/TPUeRBwB2ChLW3a5UoEXtZuISLhdzOHeJLoJKrMQOsJask+RrikFA4
	QRwA==
MIME-Version: 1.0
X-Received: by 10.43.19.66 with SMTP id qj2mr29885913icb.31.1391499913976;
	Mon, 03 Feb 2014 23:45:13 -0800 (PST)
Sender: sebmennetrier@gmail.com
Received: by 10.43.141.70 with HTTP; Mon, 3 Feb 2014 23:45:13 -0800 (PST)
In-Reply-To: <1391182212-10378-1-git-send-email-s.mennetrier@innotis.org>
References: <1391182212-10378-1-git-send-email-s.mennetrier@innotis.org>
Date: Tue, 4 Feb 2014 08:45:13 +0100
X-Google-Sender-Auth: j5qXvLOlTNwTgxZAFgEzZur1u-I
Message-ID: <CABgO3_PqTspCQ3s4LJ3+Rpx9YtegTLGMs=fPis_3a+CypriKBA@mail.gmail.com>
From: Sebastien MENNETRIER <s.mennetrier@innotis.org>
To: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V2] Add initramfs support
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
X-List-Received-Date: Tue, 04 Feb 2014 07:45:15 -0000
Content-Type: multipart/alternative; boundary=bcaec5186ffa13e30004f18fd2ab

--bcaec5186ffa13e30004f18fd2ab
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Ping ?


2014-01-31 S=E9bastien Mennetrier <s.mennetrier@innotis.org>:

> Permit to build an image with initramfs.
>
> Signed-off-by: S=E9bastien Mennetrier <s.mennetrier@innotis.org>
> ---
>  classes/sdcard_image-rpi.bbclass | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass
> b/classes/sdcard_image-rpi.bbclass
> index 3ee4e94..815aaa9 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -26,6 +26,9 @@ inherit image_types
>  # Set kernel and boot loader
>  IMAGE_BOOTLOADER ?=3D "bcm2835-bootfiles"
>
> +# Set initramfs extension
> +KERNEL_INITRAMFS ?=3D ""
> +
>  # Boot partition volume id
>  BOOTDD_VOLUME_ID ?=3D "${MACHINE}"
>
> @@ -91,7 +94,7 @@ IMAGE_CMD_rpi-sdimg () {
>         BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${SDIMG} unit b print | awk =
'/ 1
> / { print substr($4, 1, length($4 -1)) / 512 /2 }')
>         mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img
> $BOOT_BLOCKS
>         mcopy -i ${WORKDIR}/boot.img -s
> ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
> -       mcopy -i ${WORKDIR}/boot.img -s
> ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::kernel.img
> +       mcopy -i ${WORKDIR}/boot.img -s
> ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin
> ::kernel.img
>
>         if [ -n ${FATPAYLOAD} ] ; then
>                 echo "Copying payload into VFAT"
> --
> 1.8.1.2
>
>


--=20

Regards,
S=E9bastien

--bcaec5186ffa13e30004f18fd2ab
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ping ?</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">2014-01-31 S=E9bastien Mennetrier <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:s.mennetrier@innotis.org" target=3D"_blank">s.mennetrier@in=
notis.org</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">Permit to build an image w=
ith initramfs.<br>
<br>
</div>Signed-off-by: S=E9bastien Mennetrier &lt;<a href=3D"mailto:s.mennetr=
ier@innotis.org">s.mennetrier@innotis.org</a>&gt;<br>
<div class=3D"HOEnZb"><div class=3D"h5">---<br>
=A0classes/sdcard_image-rpi.bbclass | 5 ++++-<br>
=A01 file changed, 4 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bb=
class<br>
index 3ee4e94..815aaa9 100644<br>
--- a/classes/sdcard_image-rpi.bbclass<br>
+++ b/classes/sdcard_image-rpi.bbclass<br>
@@ -26,6 +26,9 @@ inherit image_types<br>
=A0# Set kernel and boot loader<br>
=A0IMAGE_BOOTLOADER ?=3D &quot;bcm2835-bootfiles&quot;<br>
<br>
+# Set initramfs extension<br>
+KERNEL_INITRAMFS ?=3D &quot;&quot;<br>
+<br>
=A0# Boot partition volume id<br>
=A0BOOTDD_VOLUME_ID ?=3D &quot;${MACHINE}&quot;<br>
<br>
@@ -91,7 +94,7 @@ IMAGE_CMD_rpi-sdimg () {<br>
=A0 =A0 =A0 =A0 BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${SDIMG} unit b print =
| awk &#39;/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }&#39;)<br>
=A0 =A0 =A0 =A0 mkfs.vfat -n &quot;${BOOTDD_VOLUME_ID}&quot; -S 512 -C ${WO=
RKDIR}/boot.img $BOOT_BLOCKS<br>
=A0 =A0 =A0 =A0 mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835=
-bootfiles/* ::/<br>
- =A0 =A0 =A0 mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_=
IMAGETYPE}-${MACHINE}.bin ::kernel.img<br>
+ =A0 =A0 =A0 mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_=
IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::kernel.img<br>
<br>
=A0 =A0 =A0 =A0 if [ -n ${FATPAYLOAD} ] ; then<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo &quot;Copying payload into VFAT&quot;<=
br>
--<br>
1.8.1.2<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr"><div><br>Regards,<br></div>S=E9bastien<br></div>
</div>

--bcaec5186ffa13e30004f18fd2ab--
