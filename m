Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A67BE00B47; Wed, 21 Sep 2016 00:54:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f193.google.com (mail-yw0-f193.google.com
	[209.85.161.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8C24E008D3
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 00:54:01 -0700 (PDT)
Received: by mail-yw0-f193.google.com with SMTP id t67so2102895ywg.1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 00:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MuAP4k3GByLcrptA/mBpBBGjY9+3y8XZlAPC8QP1LBY=;
	b=ZPaFVt/+OMfHYVHJSQTT2Wmu+JFzk5wO7PKQ8bhOvwBzJAVCla+HcDxkwOUCqWmxLW
	wmjZ10mXX55io0Y6HvR9eABTpjo2/pWyoOqMT7598lWBkQZXkUoV1QzX8z9PoCJdRQqx
	u5CbsgvFUPVsjbL2rouVLvKith4ctBEqmkIOemXc6ga2ln4dVkW24sqRyPt8WCH8SrhR
	SEbTxmznJ5juvSHUkjQDrWDb500N6AQeMmtn9vRl87iucjdiMnBBy1LJA5CVyxFuS6wW
	s9QC/6nS7n2jLHhvZpWedyT83eNBCGLtVHwapge8WXyF15ZKYpe6tXmXwIensfjTh/Ey
	eykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MuAP4k3GByLcrptA/mBpBBGjY9+3y8XZlAPC8QP1LBY=;
	b=ZQ+05zjdty6nFh4MTwE8W/bPPCPdi31+qm+hzTkznRWOiKEgjbflGfoMvpA09TBEYx
	SXBi9ugsLZvObxgd3xRpI615ICtPlRHgAlbzM+IPoSYTPCPJl11pDHE7f3qVVmL64kRx
	DLvk8FoCBdaERMPE40Ua+HuhfkIp8xYj1yXoR2dzkWyWWGstSPkvVvE9IYysUZZQSRJr
	V7Zc58p9/G/f4T3d7w144aytyekmwO/f3sNMQkADNPzMHJVJ9xq+lUH/x0xL3qG9diTd
	BGaKSjYpAlMKwaA9CQeBPAwEvfHzUho45BB68Kc5odr/Kj7YLiXCN1SobF8vuzXgh/E3
	eKVQ==
X-Gm-Message-State: AE9vXwNP3pcd4PtNgmt0zCe04Vx5vrMHhFO9pNYTH3WNZRfvaEx1I5WvA8NCeUztecyFhOHX/+zw2hWzwV7kCg==
X-Received: by 10.129.112.68 with SMTP id l65mr32068597ywc.222.1474444440639; 
	Wed, 21 Sep 2016 00:54:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Wed, 21 Sep 2016 00:54:00 -0700 (PDT)
In-Reply-To: <1474442792-27579-1-git-send-email-gary@mlbassoc.com>
References: <1474442792-27579-1-git-send-email-gary@mlbassoc.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 21 Sep 2016 09:54:00 +0200
Message-ID: <CALbNGRTDF3YdM5P+kt2xDo+9RwiiE4GzfKMRbwC_VKN7tYk=OA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 21 Sep 2016 07:54:04 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 21, 2016 at 9:26 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> Track changes in OE-core variable names - needed to be able to
> build an rpi-sdimg image file.
>
> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index 388398b..ad245f3 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -47,7 +47,7 @@ IMAGE_ROOTFS_ALIGNMENT = "4096"
>
>  # Use an uncompressed ext3 by default as rootfs
>  SDIMG_ROOTFS_TYPE ?= "ext3"
> -SDIMG_ROOTFS = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
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
>  # Compression method to apply to SDIMG after it has been created. Supported
>  # compression formats are "gzip", "bzip2" or "xz". The original .rpi-sdimg file
> --
> 2.7.4
>
Isn't that the same as [1]?

[1] https://lists.yoctoproject.org/pipermail/yocto/2016-September/031961.html

Andreas

