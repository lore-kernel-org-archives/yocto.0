Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBB56E00D12; Tue, 13 Sep 2016 01:05:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BA2DE00B30
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 01:05:52 -0700 (PDT)
Received: by mail-ua0-f196.google.com with SMTP id b7so367087uab.3
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 01:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=gmL+WpxPYbYGqcICWFnwnTyCSu1cT8OXd4uQZg8vZmA=;
	b=JZmzcrwf7MMigDQsjh4gpVskNrg9zvltrV8JttkByJ4rYWJknEj5Jx9EwzTABbTsQN
	/mDWcxdsWZfFvJNJbJ6qpUwDDeVlzgZMjFZ3zlQa/D42Ik+EhRXUmRDpJ9pYD0DGIrbb
	buzBg9DgUKnSoxIUIau3J7MeE9KvIt0tacpaaoXZhIvS842eCqy7jy97m/3HG32MOWSW
	vMiz0hKPHOVMJ3zGf7LP5d+j1O0kZXvptMHjIM0WDsSlA8JpjCql/uoOGaTo6sdWwm2p
	mNphVylJptxlzpgw+H60sEV5LwBRNtBme4YKTJifgBWLb2yAhSn8qh1T/fYQLRrSQZaw
	w8BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=gmL+WpxPYbYGqcICWFnwnTyCSu1cT8OXd4uQZg8vZmA=;
	b=QePvGi23X0PKu9X6LC4x+rK34hKX3ZTtIzCYSnN6rqIy3ffJEnPaMBlN6Upfce/9t6
	u//Qug8FQZ9Ts73LzX25UK+x1l8XEWQlJKLTdnlbapYyLZT6xswTvEF6MK3AwQobTznG
	SuXUaJLsnW+HeeMy4MKpgX1QG/xtY7egqwHZmEQ4yD0A6fxnwlajaIGepfcEpovU6DDe
	FKXXvLb/scAgRqesfhMgQkFaxTsFWFIb47c7XJ7DKVkEgl8v+4xPbdkQfDE5JFokA0Qj
	i9OjzaP5k4myrv7y/K+IYCB+FGLe/heJzO2Lnes/mqpJHaVUhJxiw0vDDxx3g6x2NFQH
	UaDg==
X-Gm-Message-State: AE9vXwPZjNvJtMNYII1qTwntYj9SwNkXFJLPujbZu9FPnntgGiSIODE0LDJ57PydthcPPIH0bMDGzso86YpYjw==
X-Received: by 10.176.82.24 with SMTP id i24mr1661163uaa.85.1473753951847;
	Tue, 13 Sep 2016 01:05:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Tue, 13 Sep 2016 01:05:51 -0700 (PDT)
In-Reply-To: <1473725946-7854-2-git-send-email-schnitzeltony@googlemail.com>
References: <1473725946-7854-1-git-send-email-schnitzeltony@googlemail.com>
	<1473725946-7854-2-git-send-email-schnitzeltony@googlemail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Tue, 13 Sep 2016 10:05:51 +0200
Message-ID: <CALbNGRTByd6NXiH+4UtnAHM_25vZbxUVy+gfDBJm-zvKTZbzeA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] sdcard_image-rpi.bbclass: avoid corrupted images with latest oe-core
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
X-List-Received-Date: Tue, 13 Sep 2016 08:05:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 13, 2016 at 2:19 AM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> oe-core's commit d54339d4b1a7e884de636f6325ca60409ebd95ff creates image i=
n
> IMGDEPLOYDIR and copies through sstate to DEPLOY_DIR_IMAGE. That causes
> DEPLOY_DIR_IMAGE not valid when calling IMAGE_CMD. Therefore use
> IMGDEPLOYDIR for sdcard creation too.
>
> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.=
bbclass
> index f506858..1acf9d8 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -47,7 +47,7 @@ IMAGE_ROOTFS_ALIGNMENT =3D "4096"
>
>  # Use an uncompressed ext3 by default as rootfs
>  SDIMG_ROOTFS_TYPE ?=3D "ext3"
> -SDIMG_ROOTFS =3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTF=
S_TYPE}"
> +SDIMG_ROOTFS =3D "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TY=
PE}"
>
>  IMAGE_DEPENDS_rpi-sdimg =3D " \
>                         parted-native \
> @@ -59,7 +59,7 @@ IMAGE_DEPENDS_rpi-sdimg =3D " \
>                         "
>
>  # SD card image name
> -SDIMG =3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
> +SDIMG =3D "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>
>  # Compression method to apply to SDIMG after it has been created. Suppor=
ted
>  # compression formats are "gzip", "bzip2" or "xz". The original .rpi-sdi=
mg file
> --
> 2.5.5
>
Forgot to mention: Handy links on sdcard images are properly created
with this patch.

Andreas

