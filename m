Return-Path: <msm-oss@mcclintock.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44A02E00BD0; Wed, 21 Jun 2017 07:29:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41942E00B83
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:29:42 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id e187so19501208pgc.3
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mJbifuwFY8ULg4pZU98C689FvDfKgbL5WA08ztm/Ur4=;
	b=Ag+Q5ojhkHjHgRIFt8S9yLArIi5vyq6mhhHt6mW+97VTY2JRFoAy2UOgIFNhQfpuHb
	ETQ/6G2klMpNr2DsDbW8hpo0k0Yz66VdnWGJiQeBSIM9ahjaIH/xN/2WJGAn6+8KTPKA
	MNAgEgejnMzuJpU1hZVUUGFDjcDP45Xn+8R6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mJbifuwFY8ULg4pZU98C689FvDfKgbL5WA08ztm/Ur4=;
	b=n4oDdSb7T5jyau0MoquZIphKGXAIsPv/YyvlsudZJymRtHLvxoHihQWZqGtYPTjK3k
	ab7k5OlCby8d+3XG7w4VCdZnJFu/D04GOPUhJieykVMZhTWYdxTEVhV5mivxiJmhbgw+
	L1cLjP56Ev30fxCGWPWOB0K1V3CdSb7GE+hrBhf3A5adeTYSuFuXn2Bvnd5p7Lgjt1zR
	yEucj2ofc4UIdX59CshtneWny/y1fFOzQP4DSTxzqzObmkYh/TGmvDDjfjMbKyAjqPFQ
	XWKBL9tc1AVXqWE9qv5vWMhazm+56JgbOt0JFfhjlfQFO5r7XzyJd77UIFBVfXH6eSNy
	YeDg==
X-Gm-Message-State: AKS2vOw1URvRdfT46ohHp5c2HfBR1NC5AHn0w3O2UhcMPbDJjS1+HjYH
	mAQDdW60OCO4NkHFxIW5PGDFUoMxY8kciOs=
X-Received: by 10.99.96.85 with SMTP id u82mr37587040pgb.214.1498055382341;
	Wed, 21 Jun 2017 07:29:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.162.235 with HTTP; Wed, 21 Jun 2017 07:29:21 -0700 (PDT)
In-Reply-To: <CAK18fxGt-MwUV4vNEp_TZesDYBfsb_VrARR=PEag-4jorC6sFQ@mail.gmail.com>
References: <20170616191213.26849-1-msm-oss@mcclintock.net>
	<CAMKF1spDNLxLAKFa8Cet8v=N_ejPFhQCHOVbmS93b30Sxg585Q@mail.gmail.com>
	<20170617152051.GO10782@bill-the-cat>
	<CAMKF1sqna8Q7myyv=qaB8jUjjDycxeFT4kC2cQmQA7RJhD4BKw@mail.gmail.com>
	<CAEsOVNempB7jsvU-EpX+eDwEfnzFveWVE4TuJaTtm2rLnfN6UQ@mail.gmail.com>
	<CAK18fxGt-MwUV4vNEp_TZesDYBfsb_VrARR=PEag-4jorC6sFQ@mail.gmail.com>
From: Matthew McClintock <msm-oss@mcclintock.net>
Date: Wed, 21 Jun 2017 09:29:21 -0500
Message-ID: <CAEsOVNcdLCEPX7q=e6fp+Sg4od1oEQu_uUcFTBFK3KF4MNEetQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Tom Rini <trini@konsulko.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 21 Jun 2017 14:29:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 21, 2017 at 9:26 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Sun, Jun 18, 2017 at 7:51 PM, Matthew McClintock <msm-oss@mcclintock.net>
> wrote:
>>
>> On Sat, Jun 17, 2017 at 11:41 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> > On Sat, Jun 17, 2017 at 8:20 AM, Tom Rini <trini@konsulko.com> wrote:
>> >> On Fri, Jun 16, 2017 at 06:05:07PM -0700, Khem Raj wrote:
>> >>> On Fri, Jun 16, 2017 at 12:12 PM, Matthew McClintock
>> >>> <msm-oss@mcclintock.net> wrote:
>> >>> > This is useful to update the bootloader/vfat partition from u-boot
>> >>> > when
>> >>> > you don't want to update everything:
>> >>> >
>> >>> > U-Boot> tftpboot 0x1000000 tmp/0VXje
>> >>> > Waiting for Ethernet connection... done.
>> >>> > Using sms0 device
>> >>> > TFTP from server 192.168.0.1; our IP address is 192.168.0.26
>> >>> > Filename 'image.vfat'.
>> >>> > Load address: 0x1000000
>> >>> > Loading: ##################################################  40 MiB
>> >>> >          2.1 MiB/s
>> >>> > done
>> >>> > Bytes transferred = 41943040 (2800000 hex)
>> >>> > U-Boot> mmc part
>> >>> >
>> >>> > Partition Map for MMC device 0  --   Partition Type: DOS
>> >>> >
>> >>> > Part    Start Sector    Num Sectors     UUID            Type
>> >>> >   1     8192            81920           a63a4fbc-01     0c Boot
>> >>> >   2     90112           163840          a63a4fbc-02     83
>> >>> > U-Boot> mmc erase 0x2000 0x14000
>> >>> >
>> >>> > MMC erase: dev # 0, block # 8192, count 81920 ... 81920 blocks
>> >>> > erased:
>> >>> > OK
>> >>> > U-Boot> mmc write 0x1000000 0x2000 0x14000
>> >>> >
>> >>> > MMC write: dev # 0, block # 8192, count 81920 ... 81920 blocks
>> >>> > written:
>> >>> > OK
>> >>> > U-Boot>
>> >>> >
>> >>> > Signed-off-by: Matthew McClintock <msm-oss@mcclintock.net>
>> >>> > ---
>> >>> >  classes/sdcard_image-rpi.bbclass | 8 ++++++++
>> >>> >  1 file changed, 8 insertions(+)
>> >>> >
>> >>> > diff --git a/classes/sdcard_image-rpi.bbclass
>> >>> > b/classes/sdcard_image-rpi.bbclass
>> >>> > index af3e807..27a0dfc 100644
>> >>> > --- a/classes/sdcard_image-rpi.bbclass
>> >>> > +++ b/classes/sdcard_image-rpi.bbclass
>> >>> > @@ -72,6 +72,10 @@ SDIMG =
>> >>> > "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>> >>> >  # Additional files and/or directories to be copied into the vfat
>> >>> > partition from the IMAGE_ROOTFS.
>> >>> >  FATPAYLOAD ?= ""
>> >>> >
>> >>> > +# SD card vfat partition image name
>> >>> > +SDIMG_VFAT = "${IMGDEPLOYDIR}/${IMAGE_NAME}.vfat"
>> >>> > +SDIMG_LINK_VFAT = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.vfat"
>> >>> > +
>> >>> >  IMAGE_CMD_rpi-sdimg () {
>> >>> >
>> >>> >         # Align partitions
>> >>> > @@ -145,6 +149,10 @@ IMAGE_CMD_rpi-sdimg () {
>> >>> >         echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
>> >>> >         mcopy -i ${WORKDIR}/boot.img -v
>> >>> > ${WORKDIR}/image-version-info ::
>> >>> >
>> >>> > +        # Deploy vfat partition
>> >>> > +        cp ${WORKDIR}/boot.img ${SDIMG_VFAT}
>> >>> > +        ln -sf ${SDIMG_VFAT} ${SDIMG_LINK_VFAT}
>> >>> > +
>> >>>
>> >>> it is of use if I am not using u-boot ? is there any penalty ?
>>
>> Other than just having another thing copied into tmp there is no
>> effect, even if you're not using u-boot.
>>
>> >>
>> >> The stock firmware also uses a vfat partition, so this could just as
>> >> easily hold those contents.
>> >
>> > yes it does, can it do the same operations like u-boot ?
>
>
> I think what Khem is trying to say is if we don't need it (because I don't
> think there is any use for it when using proprietary bootloader) can we
> deploy it only in the case of uboot bootloader section?
>
> P.S.: Would really be helpful to push a PR to github too so I can merge it
> easier.

If that's what Khem is saying I can deply only with KERNEL_IMAGETYPE =
uImage... and also go via github. I suppose it's not too useful for
the proprietary bootloader.

Khem, is that what you want?

-M

