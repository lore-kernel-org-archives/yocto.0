Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29913E00B18; Fri, 16 Jun 2017 18:05:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48870E00A16
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 18:05:38 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id d64so7580889wmf.2
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 18:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2Coof55WMWt7PMv/2XGZmNPYGX3pMR/950rly+kSbfY=;
	b=USuuU7srFY/kD3VYm2IT4CM1/E0lYdVF5serTkUszLfmKw7So9yLQgYTnOSRroawrp
	zXLj0zj9o4YxuGiUxPs6vBujM/wDBE9Ouzd4QF8Tuc8a/dDz4p0RwKKTystEVCF4rZzr
	+GPMznreC6kdyjfVcWVpHOGPEwBPXYMgqxmNFHVKVlpzZpU/TlGmEcNuXJVnLRcoAc6K
	q7ILJhj4QnltxtMul82ZMjisGV1bglaZcS06f4N6nh+pQLmZnTLwWDHRdmkR2v/KM6ub
	FscKSGqB01FxJitiXldONhdVlM7RimULSLoVrbrf56KMeMDg94Qn1D5vQRruQ23G3WjF
	4Ulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2Coof55WMWt7PMv/2XGZmNPYGX3pMR/950rly+kSbfY=;
	b=SdhF3Phy6X8dt7EimJUBU7vZMtqTelrwWlFuOU0nk1YeDJJH8dNcQ+jukaV2eLOXPf
	moq99PSz4Pe9wXKz/I4g5F6hWDKRMAhR5t5blqQP0jzEGG/FmkzIyusek5JavuoI5jiB
	GS0yMfM4tQtTQbJ5KwtnvhrEbN0P6NUkJvIApyJQ4Hi7Wu0NSNZDErlMme4dUFmnTQ0r
	LYon0iFdzT35/wgFWJszU1jQcDH66Wh/D2F4IBNh7Ee083uwDW3Auok6MFF/d3B8GwQg
	GUrL0UrrmMQ1S24rDf1QpczBNbXdx4+CnHd+GDztk9YZsXYuefUQGOLvW154A4ga4+Jr
	0WFg==
X-Gm-Message-State: AKS2vOz8edHn1lx+W14JDau3wvKjkoJeTxgt/SKrXrohpG7kN3ElBGaO
	87f/NgOM4tr+zUI/TMTu1A1NCbopaA==
X-Received: by 10.80.171.197 with SMTP id u63mr8777065edc.127.1497661537556;
	Fri, 16 Jun 2017 18:05:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Fri, 16 Jun 2017 18:05:07 -0700 (PDT)
In-Reply-To: <20170616191213.26849-1-msm-oss@mcclintock.net>
References: <20170616191213.26849-1-msm-oss@mcclintock.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 16 Jun 2017 18:05:07 -0700
Message-ID: <CAMKF1spDNLxLAKFa8Cet8v=N_ejPFhQCHOVbmS93b30Sxg585Q@mail.gmail.com>
To: Matthew McClintock <msm-oss@mcclintock.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: deploy vfat partition
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
X-List-Received-Date: Sat, 17 Jun 2017 01:05:43 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 16, 2017 at 12:12 PM, Matthew McClintock
<msm-oss@mcclintock.net> wrote:
> This is useful to update the bootloader/vfat partition from u-boot when
> you don't want to update everything:
>
> U-Boot> tftpboot 0x1000000 tmp/0VXje
> Waiting for Ethernet connection... done.
> Using sms0 device
> TFTP from server 192.168.0.1; our IP address is 192.168.0.26
> Filename 'image.vfat'.
> Load address: 0x1000000
> Loading: ##################################################  40 MiB
>          2.1 MiB/s
> done
> Bytes transferred = 41943040 (2800000 hex)
> U-Boot> mmc part
>
> Partition Map for MMC device 0  --   Partition Type: DOS
>
> Part    Start Sector    Num Sectors     UUID            Type
>   1     8192            81920           a63a4fbc-01     0c Boot
>   2     90112           163840          a63a4fbc-02     83
> U-Boot> mmc erase 0x2000 0x14000
>
> MMC erase: dev # 0, block # 8192, count 81920 ... 81920 blocks erased:
> OK
> U-Boot> mmc write 0x1000000 0x2000 0x14000
>
> MMC write: dev # 0, block # 8192, count 81920 ... 81920 blocks written:
> OK
> U-Boot>
>
> Signed-off-by: Matthew McClintock <msm-oss@mcclintock.net>
> ---
>  classes/sdcard_image-rpi.bbclass | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index af3e807..27a0dfc 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -72,6 +72,10 @@ SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>  # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
>  FATPAYLOAD ?= ""
>
> +# SD card vfat partition image name
> +SDIMG_VFAT = "${IMGDEPLOYDIR}/${IMAGE_NAME}.vfat"
> +SDIMG_LINK_VFAT = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.vfat"
> +
>  IMAGE_CMD_rpi-sdimg () {
>
>         # Align partitions
> @@ -145,6 +149,10 @@ IMAGE_CMD_rpi-sdimg () {
>         echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
>         mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}/image-version-info ::
>
> +        # Deploy vfat partition
> +        cp ${WORKDIR}/boot.img ${SDIMG_VFAT}
> +        ln -sf ${SDIMG_VFAT} ${SDIMG_LINK_VFAT}
> +

it is of use if I am not using u-boot ? is there any penalty ?

>         # Burn Partitions
>         dd if=${WORKDIR}/boot.img of=${SDIMG} conv=notrunc seek=1 bs=$(expr ${IMAGE_ROOTFS_ALIGNMENT} \* 1024) && sync && sync
>         # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
> --
> 2.13.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

