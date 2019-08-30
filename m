Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EB61E00C78; Thu, 29 Aug 2019 20:16:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3972E00AE4
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 20:15:58 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id 4so4942421qki.6
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 20:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9H8Hj56HG1b5J1b5nLGoMJ0IoT9uGFM0H3H/hsUYo5w=;
	b=HxQbap/qO856AlItqOuM8o2Vt5biiSmRaioumJm5WrTuAcpw/J2bQDfWxiYQ6hI1Pn
	kJn03eB7YP+lfPkoYdUeIPk1xTcaioib9Iiz1VXZ8jB+12AC8ca9fxLFTZBjOdh7H4w5
	lTelJ3cdB7smYtWcgRAXopWwXwdWZkkOIZM9nMBF0fkf997E2dVgh5Q/A8TpgRjQXdVv
	DjYWVS4mEHn3Kuhlu7Qg+XSVnnDbzJYiHdn/hOmusar3TtbMUPoh4VVI6+Cro5yPeM4j
	lncTV/IbTyd0KoyukrEnjSI1lH639Gy77ODR6nuntHoL9F4eOMlAm6sle9E83Lz60vt9
	NpEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9H8Hj56HG1b5J1b5nLGoMJ0IoT9uGFM0H3H/hsUYo5w=;
	b=hq58CEShVhzDxExD8hB9mRcxHiBnMdY1uMkTtrBOOUMaGfwb0Vgx66tA5u/Gs7/Zxe
	PhqJdkBvMUILqaeugTlnEBIRFzUmtgngDAssY9T3kXv5j/mhIPQTQabLqdr1Fd4Q4XLL
	lidhLVTeR4Q/+2tvuQymlAr3L9j3I75r3+pkUDo7ykhllkAwboCQa87OSFpllYGr++wI
	nwd4QjTmndhg7uVZVwK8efyDffKJlw27pu0zStTP94m9s2mBNag+mW2+0DlRk2cjPzNp
	0TS9bDpmHBPxNLrz2U8hYrDjp4TD3dZKXWN+IofP2WfBJfE81LDTjb541XhyprXJToET
	Woow==
X-Gm-Message-State: APjAAAVootvCvZeHH+6QWEbGGhCkq6+2xzGbqxPXQ2vQ0FnROA1m+GFm
	i5KxFcLQ+wNXkfro2z/UHOsl5mTcsFwbwUKo3AA=
X-Google-Smtp-Source: APXvYqwmkogxYwedzMEeXTS0bsOSWvi77dRd3h1X3Eb89orWqKDOpHX5/g9AQ/Myqli0rroHxJleJw7adYcI9EAF8GI=
X-Received: by 2002:ae9:f80b:: with SMTP id x11mr13124275qkh.479.1567134958096;
	Thu, 29 Aug 2019 20:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <5d1cad0e5416442aad80dd7faca08983@sakuraus.com>
In-Reply-To: <5d1cad0e5416442aad80dd7faca08983@sakuraus.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 30 Aug 2019 05:15:46 +0200
Message-ID: <CAGAf8LxEQiOsMsPaNRpzGNWFSKYUpfjzPQ-DbrrUCas9XkWqTA@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Error trying to generate Raspberry Pi initramfs
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
X-List-Received-Date: Fri, 30 Aug 2019 03:16:00 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Greg,

This, what I have posted as answer work for me on BBB (BeagleBone
Black) seamlessly.

I did not try it on Sabre Automotive, but as we speak, I just
straightened out the optimal local.conf for it (with very rich
networking services on the top of Linux), and I am 100% sure the above
initramfs methodology will work on Sabre Automotive as well.

I have no idea about specifics on RPI 3. Sorry for that.

Best Regads,
Zoran
_______

On Thu, Aug 29, 2019 at 7:40 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> Hi Zoran,
> Thanks for your comments.
>
> I'm adding [meta-raspberrypi] to the as I have realized that some might have missed this Raspberry-pi specific question.
>
> Thanks,
> Greg Wilson-Lindberg
>
> > -----Original Message-----
> > From: Zoran Stojsavljevic [mailto:zoran.stojsavljevic@gmail.com]
> > Sent: Wednesday, August 28, 2019 05:08 PM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > Subject: Re: [yocto] Error trying to generate Raspberry Pi initramfs
> >
> > Three things:
> > [1] The initramfs is NOT the initrd (te second one is the temp
> >       stage in booting the linux to mmcblk...); [2] There are some config parameters
> > you need to set up in
> >       your kernel .config file:
> >       https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/config-
> > initramfs
> > [3] The command line is formed in u-boot or in grub2, or in
> >       your Linux boot loader (you need to add some lines
> >       in ash u-boot config script, as the following example):
> >       https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/u-boot.ash
> >
> > Good Luck,
> > Zoran
> > _______
> >
> >
> > On Wed, Aug 28, 2019 at 7:26 PM Greg Wilson-Lindberg
> > <GWilson@sakuraus.com> wrote:
> > >
> > > I'm trying to generate an initramfs for a raspberry pi 3 for a sumo build. We are
> > based off of the Qt boot2qt system.
> > >
> > > I have followed the instructions in the meta-raspberrypi.pdf documentation,
> > section 3.14 Image with Initramfs.
> > >
> > > I edited the meta-raspberrypi/recipes-kernel/linux/linux-raspberry.inc file and
> > added the variables into my local.conf file. I created a rpi-minimal-initramfs.bb
> > recipe and it is created when I build the system. But the command line that is put
> > into the boot partition is:
> > >
> > > dwc_otg.lpm_enable=0  root=/dev/mmcblk0p2 rootfstype=ext4 rootwait
> > fbcon=map:10 fbcon=font:VGA8x8
> > >
> > > No initramfs.
> > >
> > > In the linux-raspberry.inc file, after the insertion point for the new kernel variables,
> > there is a test for KERNEL_INITRAMFS. I tried setting this in my local.conf file, but
> > when I do I get an error for a missing file:
> > >
> > > | /home/..../tmp/deploy/images/raspberrypi3/uImage1-raspberrypi3.bin:
> > > | No such file or directory
> > >
> > > So, apparently that can't be set directly.
> > >
> > > There seems to be something missing in the instructions in the meta-
> > raspberrypi.pdf documentation. Anyone that has any experience with setting this up
> > and can help me figure out what I'm missing, I would greatly appreciate the help.
> > >
> > > Regards,
> > > Greg Wilson-Lindberg
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto

