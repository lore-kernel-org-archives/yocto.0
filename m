Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 282CAE00D24; Thu, 22 Sep 2016 01:57:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C52EBE006B3
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 01:57:29 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id w84so12821531wmg.0
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 01:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=rog48W2may+0RkTg5gZb2n898Rg25lLgDE9HoiXyN7c=;
	b=M9TTqYZGMQFVFs0fYdcEf6xsPmA9pBjijGS7ummmf/uUaLKnRtYFWbK/8btPK4z8w6
	Gjhz9x+ur2Oavyn64PgyHBk68DD37GtEA/3iMLmPy6k4qA81enMUnmh2lDCdLGmpyzkM
	RFrgUnFbGkkpdTLULJrvnAjk5vnd5YPtEFsmKCRlRa/yqVNpH7Yn+NjF3uc37Xwq6V/J
	f9YBeZRH0q844SYMebNsGGyxWYQcceSubkPp63NkRlQGqxVNIh+JQbVP7Z45bfyWO95x
	EuLVk2UttVBf63Mf5UWp8I0rbqAesim4pIi2nBDTca621nSM7ur8UIXRoqQDakaj99+V
	9rZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=rog48W2may+0RkTg5gZb2n898Rg25lLgDE9HoiXyN7c=;
	b=hLQwMNH98THYZppZ3F/5mCy8djtzoSCc+6qNbCaKxlUchaSCCiVt3B8yY7Vneo5vU/
	RMctHKg9ya1HRwNw2Ro3SlQn1w1jhoto5/WHUAPC6KX5bbedJJzKtOddPKyd5FcPIA2G
	DopqZOpm5xWUxWGEznSiHlZOW2vqHJ/F6hqtpXG/tAtX1cgGVLOAHlswnf3XGpWBOuL4
	vv+WiMxAiDdn+RcepYz9WbzzYealFcncQKjOv4GX80rA/Ab3QYRxQMgJjGZ9KEojgSHR
	SiCTwBxMv2jfh4gryRUw4NdCQBjwd76nER+4bLY/n7Ob5MzdiVUvcfnY3S8v7AEV1Wj7
	hptw==
X-Gm-Message-State: AE9vXwN5XTHLyLsHT3BV2ia/bUuwKVclMl0X5rg9ZYhybhaN4TAMoBsLC6DBZXYiVgoqeqpjx237BVR6WuxX3w==
X-Received: by 10.194.162.162 with SMTP id yb2mr940630wjb.38.1474534648340;
	Thu, 22 Sep 2016 01:57:28 -0700 (PDT)
MIME-Version: 1.0
References: <1474442792-27579-1-git-send-email-gary@mlbassoc.com>
In-Reply-To: <1474442792-27579-1-git-send-email-gary@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 22 Sep 2016 08:57:17 +0000
Message-ID: <CAK18fxGfXEF9csxO++YoekZTW7xN+gjDFeZ9qoTSPG_LpKQniw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Fix sdimg generation
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
X-List-Received-Date: Thu, 22 Sep 2016 08:57:34 -0000
Content-Type: multipart/alternative; boundary=089e0115f9baec7ab6053d14d912

--089e0115f9baec7ab6053d14d912
Content-Type: text/plain; charset=UTF-8

Hi,

On Wed, 21 Sep 2016, 08:35 Gary Thomas, <gary@mlbassoc.com> wrote:

> Track changes in OE-core variable names - needed to be able to
> build an rpi-sdimg image file.
>
> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass
> b/classes/sdcard_image-rpi.bbclass
> index 388398b..ad245f3 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -47,7 +47,7 @@ IMAGE_ROOTFS_ALIGNMENT = "4096"
>
>  # Use an uncompressed ext3 by default as rootfs
>  SDIMG_ROOTFS_TYPE ?= "ext3"
> -SDIMG_ROOTFS =
> "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
> +SDIMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
>
>  IMAGE_DEPENDS_rpi-sdimg = " \
>                         parted-native \
> @@ -59,7 +59,7 @@ IMAGE_DEPENDS_rpi-sdimg = " \
>                         "
>
>  # SD card image name
> -SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
> +SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>
>  # Compression method to apply to SDIMG after it has been created.
> Supported
>  # compression formats are "gzip", "bzip2" or "xz". The original
> .rpi-sdimg file
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


A similar patch was merged to master. Thanks.

>
>

--089e0115f9baec7ab6053d14d912
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, 21 Sep 2016,=
 08:35 Gary Thomas, &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Track changes in=
 OE-core variable names - needed to be able to<br>
build an rpi-sdimg image file.<br>
<br>
Signed-off-by: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com" target=
=3D"_blank">gary@mlbassoc.com</a>&gt;<br>
---<br>
=C2=A0classes/sdcard_image-rpi.bbclass | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bb=
class<br>
index 388398b..ad245f3 100644<br>
--- a/classes/sdcard_image-rpi.bbclass<br>
+++ b/classes/sdcard_image-rpi.bbclass<br>
@@ -47,7 +47,7 @@ IMAGE_ROOTFS_ALIGNMENT =3D &quot;4096&quot;<br>
<br>
=C2=A0# Use an uncompressed ext3 by default as rootfs<br>
=C2=A0SDIMG_ROOTFS_TYPE ?=3D &quot;ext3&quot;<br>
-SDIMG_ROOTFS =3D &quot;${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${SDIMG_RO=
OTFS_TYPE}&quot;<br>
+SDIMG_ROOTFS =3D &quot;${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS=
_TYPE}&quot;<br>
<br>
=C2=A0IMAGE_DEPENDS_rpi-sdimg =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 parted-native \<br>
@@ -59,7 +59,7 @@ IMAGE_DEPENDS_rpi-sdimg =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;<br>
<br>
=C2=A0# SD card image name<br>
-SDIMG =3D &quot;${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg&quot;<b=
r>
+SDIMG =3D &quot;${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg&quot;<br>
<br>
=C2=A0# Compression method to apply to SDIMG after it has been created. Sup=
ported<br>
=C2=A0# compression formats are &quot;gzip&quot;, &quot;bzip2&quot; or &quo=
t;xz&quot;. The original .rpi-sdimg file<br>
--<br>
2.7.4<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a></bloc=
kquote></div><div><br></div><div>A similar patch was merged to master. Than=
ks.</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
</blockquote></div>

--089e0115f9baec7ab6053d14d912--
