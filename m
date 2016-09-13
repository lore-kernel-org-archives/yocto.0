Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 682EEE00D18; Mon, 12 Sep 2016 23:40:32 -0700 (PDT)
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
	*      [209.85.217.193 listed in list.dnswl.org]
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1BA9E00D01
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 23:40:28 -0700 (PDT)
Received: by mail-ua0-f193.google.com with SMTP id v13so316145uav.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 23:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3Ry9zHglunAJ0RRAiomn9ilHlNWLnpaWp21MbwOADcA=;
	b=wL7g2eoCXG+Y60QKNLzGsRapPVEmCW8G/gnocAHq83kH02EnCSH4TmhRJe4AfuGLJu
	GsC3tjV8qxwRpHqat5X7rMWHznVpSyxROxRNjA7UJZG5jgbbkPm6zGMfZ1S5EQi20XkU
	BKmPZL7X/DTg4ZtBorO8umoUGR6RMaJQnB6qEL4gl10W6K3PsXIaQloFEUheJmLm5Fxj
	edN3tmcM+dow+W4MCNX6rrQoivtFC/1QeZ2Ei5OOYJCQiCsgHF5ieFJBgBTMkHV/6Heo
	n5/OqOngIGm+aCQWIKy1kwZzPsQxCn2pceITXuZwqPiNfZFabGbSQOWxkiCN8wasPxNF
	mXXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3Ry9zHglunAJ0RRAiomn9ilHlNWLnpaWp21MbwOADcA=;
	b=eckBVlfTLw4hEu2BlH7/jtLMY2DiSZqFmJHToAypFMFW/4HDAQcNkyWPld8HKXPmQn
	sVYiKItpLnvQUFaMcxe+BVSd9EwNHnSn7Th8rs+9DkrCyib83CJLXR31AZuUgjyfseA5
	9SuF9LQ1Q9XSTjwIdlsZexzZ4a+eK1oovgIPoLpU3LJ3Kz1bbIFM6Wz/o+F/s+dnsM3g
	h4DWTYLOD8bjwl5rxm7LpPd8ZAtOeQhNargihddNnxgQrk5pBAfWaxLupPi3OdDhcKB0
	q7SgpZLSSB0vs722CiTSYF2y/o9SdTicZqLjq0M/BWpg4zOl7lvfeOIbrD3Ux3AX1L0O
	nBsw==
X-Gm-Message-State: AE9vXwOaDvu24NgvcES3JbBvQCEu2+GsQqOfcIDKgHryYynPyUKz7wLRIxX1GnF2McOVULvO8d3EWGrkCuFlMA==
X-Received: by 10.176.82.24 with SMTP id i24mr1495608uaa.85.1473748827979;
	Mon, 12 Sep 2016 23:40:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Mon, 12 Sep 2016 23:40:27 -0700 (PDT)
In-Reply-To: <20160913020611.9265-1-net147@gmail.com>
References: <20160913020611.9265-1-net147@gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Tue, 13 Sep 2016 08:40:27 +0200
Message-ID: <CALbNGRQFTfcPkzzgbaJxTQcmnj7GUuF=KF8L=qu2opHonm_CCw@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: remove redundant IMAGEDATESTAMP
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
X-List-Received-Date: Tue, 13 Sep 2016 06:40:32 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 13, 2016 at 4:06 AM, Jonathan Liu <net147@gmail.com> wrote:
> The IMAGE_NAME variable already contains the date and time so it is
> redundant to also include the date again with IMAGEDATESTAMP
> when writing to image-version-info in the boot partition.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index 57cefea..388398b 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -71,10 +71,6 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>  # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
>  FATPAYLOAD ?= ""
>
> -IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
> -IMAGE_CMD_rpi-sdimg[vardepsexclude] += "IMAGEDATESTAMP"
> -IMAGE_CMD_rpi-sdimg[vardepsexclude] += "DATETIME"
> -
>  IMAGE_CMD_rpi-sdimg () {
>
>         # Align partitions
> @@ -143,8 +139,8 @@ IMAGE_CMD_rpi-sdimg () {
>         fi
>
>         # Add stamp file
> -       echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > ${WORKDIR}/image-version-info
> -       mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info ::
> +       echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
> +       mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}/image-version-info ::
>
>         # Burn Partitions
>         dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
> --
> 2.9.3
>
Yes this is better solution than Khem's and mine

Andreas

