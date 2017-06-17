Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9384FE00A93; Sat, 17 Jun 2017 08:20:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DB15E0076C
	for <yocto@yoctoproject.org>; Sat, 17 Jun 2017 08:20:25 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id l75so28881340ywc.3
	for <yocto@yoctoproject.org>; Sat, 17 Jun 2017 08:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Seipyjdo6sY8YtvUmNm8jJg+ghf2GczRzCxTOUS03pY=;
	b=CcnO3eSYBhsc/0+g3Tpu1wPB4252FfgkawY9txi/mzZ/brAI7+m59LVZEMm1Z4CH8Q
	5BIcyBlCr55XwxMFqWDx8vQA2i4MaUFQ3WUpQ/gvG/3+BU2ZPYEcTNz4aXIfX9b2akzj
	kvidAdS1eWh2SsifJ6X9T6lTJnBfXmiuXCkRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Seipyjdo6sY8YtvUmNm8jJg+ghf2GczRzCxTOUS03pY=;
	b=PjY359vZF/Hym+zfhiqt4WqAS1kAGdWxaqlm+2i2+gqDmpj9z4V7UTVsfaWvbkjGii
	Ru2GFe87z5P0pUe9EBUQSy4ppKDZIhBIg0yKtNqd9vjp3lUQSw0fkkG5gTXIs2IGCaM2
	KKNz6M9pvWQRav5jxn5tmQbytw+GBmZSyZ7obf0Ca3c7yyKoyzn6pE7Y+vb3V35kT5w8
	qIfKG90W083AQzoIr68vM240O/c+kXBRx8y49KAdqIRf87W6lX92xseoYNOLdUqztCT7
	47X9Du3hmd/LbwE97ufqktGUpAf2RJewKjgZTZrixUKJ0+FrkY/GuwCF7uNbKE37sn86
	QwdA==
X-Gm-Message-State: AKS2vOyPPQRNAOuKD3DMr5cx1H9eByj54w3JipbKmJ0GwZTUFknpmvb5
	IT02dunftdmLFg+z
X-Received: by 10.13.229.3 with SMTP id o3mr13363014ywe.27.1497712824761;
	Sat, 17 Jun 2017 08:20:24 -0700 (PDT)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133]) by smtp.gmail.com with ESMTPSA id
	u187sm2156208ywd.22.2017.06.17.08.20.23
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Sat, 17 Jun 2017 08:20:23 -0700 (PDT)
Date: Sat, 17 Jun 2017 11:20:51 -0400
From: Tom Rini <trini@konsulko.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170617152051.GO10782@bill-the-cat>
References: <20170616191213.26849-1-msm-oss@mcclintock.net>
	<CAMKF1spDNLxLAKFa8Cet8v=N_ejPFhQCHOVbmS93b30Sxg585Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1spDNLxLAKFa8Cet8v=N_ejPFhQCHOVbmS93b30Sxg585Q@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
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
X-List-Received-Date: Sat, 17 Jun 2017 15:20:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 16, 2017 at 06:05:07PM -0700, Khem Raj wrote:
> On Fri, Jun 16, 2017 at 12:12 PM, Matthew McClintock
> <msm-oss@mcclintock.net> wrote:
> > This is useful to update the bootloader/vfat partition from u-boot when
> > you don't want to update everything:
> >
> > U-Boot> tftpboot 0x1000000 tmp/0VXje
> > Waiting for Ethernet connection... done.
> > Using sms0 device
> > TFTP from server 192.168.0.1; our IP address is 192.168.0.26
> > Filename 'image.vfat'.
> > Load address: 0x1000000
> > Loading: ##################################################  40 MiB
> >          2.1 MiB/s
> > done
> > Bytes transferred = 41943040 (2800000 hex)
> > U-Boot> mmc part
> >
> > Partition Map for MMC device 0  --   Partition Type: DOS
> >
> > Part    Start Sector    Num Sectors     UUID            Type
> >   1     8192            81920           a63a4fbc-01     0c Boot
> >   2     90112           163840          a63a4fbc-02     83
> > U-Boot> mmc erase 0x2000 0x14000
> >
> > MMC erase: dev # 0, block # 8192, count 81920 ... 81920 blocks erased:
> > OK
> > U-Boot> mmc write 0x1000000 0x2000 0x14000
> >
> > MMC write: dev # 0, block # 8192, count 81920 ... 81920 blocks written:
> > OK
> > U-Boot>
> >
> > Signed-off-by: Matthew McClintock <msm-oss@mcclintock.net>
> > ---
> >  classes/sdcard_image-rpi.bbclass | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> > index af3e807..27a0dfc 100644
> > --- a/classes/sdcard_image-rpi.bbclass
> > +++ b/classes/sdcard_image-rpi.bbclass
> > @@ -72,6 +72,10 @@ SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
> >  # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
> >  FATPAYLOAD ?= ""
> >
> > +# SD card vfat partition image name
> > +SDIMG_VFAT = "${IMGDEPLOYDIR}/${IMAGE_NAME}.vfat"
> > +SDIMG_LINK_VFAT = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.vfat"
> > +
> >  IMAGE_CMD_rpi-sdimg () {
> >
> >         # Align partitions
> > @@ -145,6 +149,10 @@ IMAGE_CMD_rpi-sdimg () {
> >         echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
> >         mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}/image-version-info ::
> >
> > +        # Deploy vfat partition
> > +        cp ${WORKDIR}/boot.img ${SDIMG_VFAT}
> > +        ln -sf ${SDIMG_VFAT} ${SDIMG_LINK_VFAT}
> > +
> 
> it is of use if I am not using u-boot ? is there any penalty ?

The stock firmware also uses a vfat partition, so this could just as
easily hold those contents.

-- 
Tom

