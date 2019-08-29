Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EE34E00DE6; Wed, 28 Aug 2019 17:08:17 -0700 (PDT)
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
	*      [209.85.222.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D20FFE00D38
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 17:08:13 -0700 (PDT)
Received: by mail-qk1-f179.google.com with SMTP id u190so1435545qkh.5
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 17:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Tf49XddQSQK3J2/mYSzvX9bFVgAwdbc+1Rq9yZ7x+BQ=;
	b=tCmp+dy6RFkw0PLtMU9eqKhG3QE115UiC+eqXZ5hiYb7xdqqHnpH0PL0rkmmAazef5
	/75VPi93bNLiKCqRPTQNHfJ2Gkrddr9WvBgUNBCVnelfB1MCt9ZikvCRrzPqW93idgPX
	+NXG0q2uPCeyUJXK2KhfpCIzaQODJsd77SIMtAinfmmI1LBKGo4NK7lyX+LILs3EXjYt
	B7a4LAkqwNX4sv1wtJlZgjtEduHbDRnB8hhda+xTgxgOgYx1UzBGfChxEt69AQPuS1JJ
	d+z5upL4oYNFP6W6W3ToGOFyeQDYGCWHFc+gk6oXpUd+9ShjkXjOcKgG1bd0x6BAqdmd
	dMog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Tf49XddQSQK3J2/mYSzvX9bFVgAwdbc+1Rq9yZ7x+BQ=;
	b=nJCHySMFYpB9zRtdMFmLpicFW/TeAd7bPmHqnHN4LbS6Ja8IYtmucbY9HMWOIFWML+
	hdFNhLGkcoYW3QqN6SNl4L5g9LU/tKLViheYz8oGPMqNaV8UJx3Yhi6j2yErnQ4s9Tvt
	niB7s8YRMtKS0ZDHeqNfBJ3nsGcj1PksXvP+nhkafAIVm5Sblpn7SMskmhw8buI2MJUI
	O+XpyqY0hA0l3jVu1gy2QF6/v3PrcOno8aPsowN9odBpUVVdmWbTXU4gncdKXHSOcqF0
	75EaVUw/K2r6Lef++AFYYqfgaqHV6v/XYHtHB6lPaznSsJ+efKFUjI3T49H/xse88QEz
	FW7g==
X-Gm-Message-State: APjAAAXmRrxKz92Vn6xL2gBrmVkKtEa7+5Ta8Hsjhz8KGR8kvXXrhFuL
	gWlUiNeFrvOgMOmvpYXEt8IKynG1YPrB8mOqsbI=
X-Google-Smtp-Source: APXvYqyXc0CuFVTTw1VkMj20wRBw6Ebsr/h7GydnZJIRcn7LEnLM9LeDS5Hb9pfJ3v10v99UUB7K46xhUeDJpWjA44Y=
X-Received: by 2002:a05:620a:16d6:: with SMTP id
	a22mr6897721qkn.414.1567037292991; 
	Wed, 28 Aug 2019 17:08:12 -0700 (PDT)
MIME-Version: 1.0
References: <52773198ef8346c98474992339fade98@sakuraus.com>
In-Reply-To: <52773198ef8346c98474992339fade98@sakuraus.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 29 Aug 2019 02:08:01 +0200
Message-ID: <CAGAf8Lx=hi_wC+5yEfj3c8Ff4D=sbg4_wxxFDxtAfyRS6Q79LQ@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Error trying to generate Raspberry Pi initramfs
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
X-List-Received-Date: Thu, 29 Aug 2019 00:08:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Three things:
[1] The initramfs is NOT the initrd (te second one is the temp
      stage in booting the linux to mmcblk...);
[2] There are some config parameters you need to set up in
      your kernel .config file:
      https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/co=
nfig-initramfs
[3] The command line is formed in u-boot or in grub2, or in
      your Linux boot loader (you need to add some lines
      in ash u-boot config script, as the following example):
      https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/u-=
boot.ash

Good Luck,
Zoran
_______


On Wed, Aug 28, 2019 at 7:26 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> I'm trying to generate an initramfs for a raspberry pi 3 for a sumo build=
. We are based off of the Qt boot2qt system.
>
> I have followed the instructions in the meta-raspberrypi.pdf documentatio=
n, section 3.14 Image with Initramfs.
>
> I edited the meta-raspberrypi/recipes-kernel/linux/linux-raspberry.inc fi=
le and added the variables into my local.conf file. I created a rpi-minimal=
-initramfs.bb recipe and it is created when I build the system. But the com=
mand line that is put into the boot partition is:
>
> dwc_otg.lpm_enable=3D0  root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait =
   fbcon=3Dmap:10 fbcon=3Dfont:VGA8x8
>
> No initramfs.
>
> In the linux-raspberry.inc file, after the insertion point for the new ke=
rnel variables, there is a test for KERNEL_INITRAMFS. I tried setting this =
in my local.conf file, but when I do I get an error for a missing file:
>
> | /home/..../tmp/deploy/images/raspberrypi3/uImage1-raspberrypi3.bin: No =
such file or directory
>
> So, apparently that can't be set directly.
>
> There seems to be something missing in the instructions in the meta-raspb=
errypi.pdf documentation. Anyone that has any experience with setting this =
up and can help me figure out what I'm missing, I would greatly appreciate =
the help.
>
> Regards,
> Greg Wilson-Lindberg
>
>
>
>
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

