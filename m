Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7B10E006C2
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 16:20:09 -0800 (PST)
Received: by mail-vc0-f179.google.com with SMTP id gb23so708088vcb.24
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 16:20:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=X4Cmg113iEm/WNrl3sJMykE+dIIQpbjvNTSBXi4ipXk=;
	b=ccREUKeareRUYXmXM67P9kvCq8LeZ/snIrIW/tG5FzBbA8bDF0vCo0NOuH3lJgw4lU
	HHY3AiPKvPNkHBRPRs2e9uADGQgdkq30MBp132OqKCDydfGskkdTUv/1S2fUofL7q/7V
	h9b9kXx6/MWc9Ab2vJFYy3v23X9DgaoIH9NtiHKG4mqQ2AwuakLy/DrB7R/awD27jCd+
	is8LCsLlUyA3UPxbJHk45ymq32NvOt8Yp7tWeKLSaXJthrmyHgsu+EXS6hGIuPFRkv7V
	HtpQ4eXST6h8XLzL87O8d/9vT11dEevjfAOE54gVKec1f7SzMHWfGm7FjlQ4lfNGIbYF
	OY5Q==
X-Received: by 10.220.219.77 with SMTP id ht13mr7906926vcb.66.1359159608711;
	Fri, 25 Jan 2013 16:20:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.153.163 with HTTP; Fri, 25 Jan 2013 16:19:48 -0800 (PST)
X-Originating-IP: [5.13.203.15]
In-Reply-To: <1359120805-25408-3-git-send-email-thaytan@noraisin.net>
References: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
	<1359120805-25408-3-git-send-email-thaytan@noraisin.net>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 26 Jan 2013 02:19:48 +0200
Message-ID: <CAK18fxFcUy4Vc40PitX5u+f46V0VpOn0anxg1wSyaWFHFZ-Xbg@mail.gmail.com>
To: Jan Schmidt <thaytan@noraisin.net>
X-Gm-Message-State: ALoCoQm0Im1ffjpas1cbo00kpHlvZUAf2Rct74wAyK6U/fWvrqghevQsKLv7oZ5Myq6vCM375v3G
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 3/3] sdcard-image: Use the size of the generated rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 26 Jan 2013 00:20:10 -0000
Content-Type: multipart/alternative; boundary=14dae9cfc8a8ab9adb04d42601d2

--14dae9cfc8a8ab9adb04d42601d2
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jan 25, 2013 at 3:33 PM, Jan Schmidt <thaytan@noraisin.net> wrote:

> When constructing the SD card image, the code was using
> the inherited ROOTFS_SIZE, which is the size of the
> rootfs contents. When building (for example) a compressed
> rootfs, this allocates a partition much larger than necessary.
>
> Instead, take the size of the generated rootfs file that is
> about to be written into the generated image.
>
> Signed-off-by: Jan Schmidt <thaytan@noraisin.net>
> ---
>  classes/sdcard_image-rpi.bbclass |    5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass
> b/classes/sdcard_image-rpi.bbclass
> index 421f561..355ff9c 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -60,7 +60,8 @@ IMAGE_CMD_rpi-sdimg () {
>         # Align partitions
>         BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} +
> ${IMAGE_ROOTFS_ALIGNMENT} - 1)
>         BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} -
> ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
> -       SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
> ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})
> +       ROOTFS_SIZE=`du -ks ${SDIMG_ROOTFS} | awk '{print $1}'`
>

This is a good idea but you will have to align the new ROOTFS_SIZE
to IMAGE_ROOTFS_ALIGNMENT.


> +       SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
> ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})


So you are actually removing IMAGE_ROOTFS_ALIGNMENT space at the end of the
sd image. Why are you doing this? Nothing stated in the comment.

ag

--14dae9cfc8a8ab9adb04d42601d2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Jan 25, 2013 at 3:33 PM, Jan Schmidt <span dir=3D"=
ltr">&lt;<a href=3D"mailto:thaytan@noraisin.net" target=3D"_blank">thaytan@=
noraisin.net</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">When constructing the SD card image, the code was using<br=
>


the inherited ROOTFS_SIZE, which is the size of the<br>
rootfs contents. When building (for example) a compressed<br>
rootfs, this allocates a partition much larger than necessary.<br>
<br>
Instead, take the size of the generated rootfs file that is<br>
about to be written into the generated image.<br>
<br>
Signed-off-by: Jan Schmidt &lt;<a href=3D"mailto:thaytan@noraisin.net">thay=
tan@noraisin.net</a>&gt;<br>
---<br>
=A0classes/sdcard_image-rpi.bbclass | =A0 =A05 +++--<br>
=A01 file changed, 3 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bb=
class<br>
index 421f561..355ff9c 100644<br>
--- a/classes/sdcard_image-rpi.bbclass<br>
+++ b/classes/sdcard_image-rpi.bbclass<br>
@@ -60,7 +60,8 @@ IMAGE_CMD_rpi-sdimg () {<br>
=A0 =A0 =A0 =A0 # Align partitions<br>
=A0 =A0 =A0 =A0 BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_=
ALIGNMENT} - 1)<br>
=A0 =A0 =A0 =A0 BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_=
SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})<br>
- =A0 =A0 =A0 SDIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_=
ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})<br>
+ =A0 =A0 =A0 ROOTFS_SIZE=3D`du -ks ${SDIMG_ROOTFS} | awk &#39;{print $1}&#=
39;`<br></blockquote><div><br></div><div style>This is a good idea but you =
will have to align the new ROOTFS_SIZE to=A0IMAGE_ROOTFS_ALIGNMENT.</div><d=
iv>=A0</div>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
+ =A0 =A0 =A0 SDIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_=
ALIGNED} + ${ROOTFS_SIZE})=A0</blockquote><div style><br></div><div style>S=
o you are actually removing=A0IMAGE_ROOTFS_ALIGNMENT space at the end of th=
e sd image. Why are you doing this? Nothing stated in the comment.<br>

</div><div style><br></div><div style>ag</div></div>
</div></div>

--14dae9cfc8a8ab9adb04d42601d2--
