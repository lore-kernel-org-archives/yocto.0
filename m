Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03A37E00524
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2014 17:21:15 -0800 (PST)
Received: by mail-ve0-f169.google.com with SMTP id oy12so4036432veb.0
	for <yocto@yoctoproject.org>; Sat, 08 Feb 2014 17:21:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mG5EdxaUo+iRABjyIUwcz/BtwGJl1yQvARRklMj+mrY=;
	b=fAFAK1HjDU+Bzpw1hrTSjfoJreFNmZWDcc6JgIbMyAgnErzWSK4NUgKiksmMj9SF3J
	ToAWt50HUxJKQjZOuGX/MVgjsU1SgWa1dTcq10x9E9xErW1/Ntd0mPg6r+YncLLmMYBc
	PnuaMuGaJyrn2mWJOs0mtOOhFbRFG/BQZarJBPiWaQGW2Z79wp5/AQPoZdH6y/CdvXjA
	M/iiyaYogbgUG9XCQatxzAvwEc2Y1Ro2hqKBcj8N4cbYne96rexQfV9AF636CIcF/Ocq
	QwGFjrlB0dC000l+ItFssMuDt5ZblL9Z2MDg0/gX4Mu+/gM/cYHbrvv7PjcGaIfL+5a9
	Xerg==
X-Gm-Message-State: ALoCoQmMg2+jIHS7V7Fi08K+JcQQYb0dcJzakiQdVEngqlrFlqsvdWrB8DooXudi/xA0F/zdrH3E
X-Received: by 10.220.88.204 with SMTP id b12mr17130120vcm.3.1391908874517;
	Sat, 08 Feb 2014 17:21:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.244.138 with HTTP; Sat, 8 Feb 2014 17:20:54 -0800 (PST)
X-Originating-IP: [5.13.130.218]
In-Reply-To: <1391182212-10378-1-git-send-email-s.mennetrier@innotis.org>
References: <1391182212-10378-1-git-send-email-s.mennetrier@innotis.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 9 Feb 2014 03:20:54 +0200
Message-ID: <CAK18fxG+2MJPxA420ZvV17qrbB6mRL6a8WHn1uJyDFm4QcXWhw@mail.gmail.com>
To: =?ISO-8859-1?Q?S=E9bastien_Mennetrier?= <s.mennetrier@innotis.org>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 09 Feb 2014 01:21:23 -0000
Content-Type: multipart/alternative; boundary=047d7b3a92ee06941a04f1ef0a3e

--047d7b3a92ee06941a04f1ef0a3e
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,


On Fri, Jan 31, 2014 at 5:30 PM, S=E9bastien Mennetrier <
s.mennetrier@innotis.org> wrote:

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
>

I'm not sure how is this supposed to work. Could you please give more info?
I haven't seen this defined anywhere else so it must be something custom
you use.


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
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b3a92ee06941a04f1ef0a3e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div class=3D"gmail_extra"><br><br><div class=3D"gm=
ail_quote">On Fri, Jan 31, 2014 at 5:30 PM, S=E9bastien Mennetrier <span di=
r=3D"ltr">&lt;<a href=3D"mailto:s.mennetrier@innotis.org" target=3D"_blank"=
>s.mennetrier@innotis.org</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">Permit to build an image wit=
h initramfs.<br>
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
+<br></div></div></blockquote><div><br></div><div>I&#39;m not sure how is t=
his supposed to work. Could you please give more info? I haven&#39;t seen t=
his defined anywhere else so it must be something custom you use.=A0</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div cla=
ss=3D"h5">
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
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-=
align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Roman=
&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--047d7b3a92ee06941a04f1ef0a3e--
