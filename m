Return-Path: <msm-oss@mcclintock.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFED2E00AF0; Sun, 18 Jun 2017 11:52:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3698AE00718
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 11:52:00 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id y7so13730875pfd.3
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 11:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yj3zLqaIN1LlatDwthZYfnEkADozKgMFrUqoaoltpDM=;
	b=ry5Yj7nLpi8A0b9krb861bGpwPMcwDZyqDbX5gpCeRt8I4ODAlm3TZa6330cYFiedo
	ngBRUz2xcYQNpvUzkaJWY5A2qwmOZaT+Y+cD/o75bcXILcikeEJSQAoJxYOxDFEhV/og
	sKvYpS8qR5FUJQYuXioXq+9U6M3n0O/wtLZyA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yj3zLqaIN1LlatDwthZYfnEkADozKgMFrUqoaoltpDM=;
	b=QHwsd7UAGydrEH4zd4CdOMtCv3va8y5N3AL/GkfF+R6NIan0kvlcCI6ss7H64+iC1f
	+jBYt6ux6myBLP4naLUsYPDn2rohpbaLCqcEWLSIX736+i9odpl4RuSTGi7ARVTjMCTz
	z3aNgz5kb6O5yr95HRGbyds4ZZ47SnzjCB2WvCi91IPxClr3owGQQLO7ITPM/x0AKMAT
	7pMUa9E8WxMoTzEHGOl8jCuXBXkNQAQ/iqqPJ24C5hruSrT/nknfVCJXOU5mEhAQN4ls
	QmnmXm89jkE5yfkKrtNfBDXi2RHl5lLxk/4eTr6q5gja3cHz62rMkTjegqlm6jpADpej
	eQ2A==
X-Gm-Message-State: AKS2vOzj89icM9ePFKWJkJehUhmAqWDVpFd8OCKfSJv8Wd9vRTE1XugM
	DyLbpXMj+p4vsB3rNuGU8FFLKtO0bhdA
X-Received: by 10.84.169.67 with SMTP id g61mr25042877plb.250.1497811919968;
	Sun, 18 Jun 2017 11:51:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.162.235 with HTTP; Sun, 18 Jun 2017 11:51:39 -0700 (PDT)
In-Reply-To: <CAMKF1sqna8Q7myyv=qaB8jUjjDycxeFT4kC2cQmQA7RJhD4BKw@mail.gmail.com>
References: <20170616191213.26849-1-msm-oss@mcclintock.net>
	<CAMKF1spDNLxLAKFa8Cet8v=N_ejPFhQCHOVbmS93b30Sxg585Q@mail.gmail.com>
	<20170617152051.GO10782@bill-the-cat>
	<CAMKF1sqna8Q7myyv=qaB8jUjjDycxeFT4kC2cQmQA7RJhD4BKw@mail.gmail.com>
From: Matthew McClintock <msm-oss@mcclintock.net>
Date: Sun, 18 Jun 2017 13:51:39 -0500
Message-ID: <CAEsOVNempB7jsvU-EpX+eDwEfnzFveWVE4TuJaTtm2rLnfN6UQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Sun, 18 Jun 2017 18:52:08 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Jun 17, 2017 at 11:41 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Sat, Jun 17, 2017 at 8:20 AM, Tom Rini <trini@konsulko.com> wrote:
>> On Fri, Jun 16, 2017 at 06:05:07PM -0700, Khem Raj wrote:
>>> On Fri, Jun 16, 2017 at 12:12 PM, Matthew McClintock
>>> <msm-oss@mcclintock.net> wrote:
>>> > This is useful to update the bootloader/vfat partition from u-boot when
>>> > you don't want to update everything:
>>> >
>>> > U-Boot> tftpboot 0x1000000 tmp/0VXje
>>> > Waiting for Ethernet connection... done.
>>> > Using sms0 device
>>> > TFTP from server 192.168.0.1; our IP address is 192.168.0.26
>>> > Filename 'image.vfat'.
>>> > Load address: 0x1000000
>>> > Loading: ##################################################  40 MiB
>>> >          2.1 MiB/s
>>> > done
>>> > Bytes transferred = 41943040 (2800000 hex)
>>> > U-Boot> mmc part
>>> >
>>> > Partition Map for MMC device 0  --   Partition Type: DOS
>>> >
>>> > Part    Start Sector    Num Sectors     UUID            Type
>>> >   1     8192            81920           a63a4fbc-01     0c Boot
>>> >   2     90112           163840          a63a4fbc-02     83
>>> > U-Boot> mmc erase 0x2000 0x14000
>>> >
>>> > MMC erase: dev # 0, block # 8192, count 81920 ... 81920 blocks erased:
>>> > OK
>>> > U-Boot> mmc write 0x1000000 0x2000 0x14000
>>> >
>>> > MMC write: dev # 0, block # 8192, count 81920 ... 81920 blocks written:
>>> > OK
>>> > U-Boot>
>>> >
>>> > Signed-off-by: Matthew McClintock <msm-oss@mcclintock.net>
>>> > ---
>>> >  classes/sdcard_image-rpi.bbclass | 8 ++++++++
>>> >  1 file changed, 8 insertions(+)
>>> >
>>> > diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
>>> > index af3e807..27a0dfc 100644
>>> > --- a/classes/sdcard_image-rpi.bbclass
>>> > +++ b/classes/sdcard_image-rpi.bbclass
>>> > @@ -72,6 +72,10 @@ SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>>> >  # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
>>> >  FATPAYLOAD ?= ""
>>> >
>>> > +# SD card vfat partition image name
>>> > +SDIMG_VFAT = "${IMGDEPLOYDIR}/${IMAGE_NAME}.vfat"
>>> > +SDIMG_LINK_VFAT = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.vfat"
>>> > +
>>> >  IMAGE_CMD_rpi-sdimg () {
>>> >
>>> >         # Align partitions
>>> > @@ -145,6 +149,10 @@ IMAGE_CMD_rpi-sdimg () {
>>> >         echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
>>> >         mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}/image-version-info ::
>>> >
>>> > +        # Deploy vfat partition
>>> > +        cp ${WORKDIR}/boot.img ${SDIMG_VFAT}
>>> > +        ln -sf ${SDIMG_VFAT} ${SDIMG_LINK_VFAT}
>>> > +
>>>
>>> it is of use if I am not using u-boot ? is there any penalty ?

Other than just having another thing copied into tmp there is no
effect, even if you're not using u-boot.

>>
>> The stock firmware also uses a vfat partition, so this could just as
>> easily hold those contents.
>
> yes it does, can it do the same operations like u-boot ?

Didn't see anything that lets you use networking and upgrade
partitions, etc like u-boot does.

FWIW using this to completely automate loading new images without the
need for a display or a local user.

The only remaining thing to sort out is the device tree, I'm having to
use the one passed for the first stage bootloader at the moment for
the board to come up right, I assume if I put a bad one there the
board might be bricked, once I sort out using a separate device tree
for just booting Linux I can update Linux and the device tree and
generally never need to worry about bricking a board.

-M

