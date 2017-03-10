Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3778DE00A1E; Fri, 10 Mar 2017 10:14:00 -0800 (PST)
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
	*      [209.85.217.180 listed in list.dnswl.org]
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA286E00A0C
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 10:13:56 -0800 (PST)
Received: by mail-ua0-f180.google.com with SMTP id 72so122016601uaf.3
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 10:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LEzzp7qrBg2IqQBiQph8K2I3j3H6uQHM/6OeaixRxiM=;
	b=dUmvn2U0MAzxcfO3oh0mIZqsulJoY7PLY0qbzJy86ryTMSFZMniZ7fAap6tPk6Xsi9
	/IjASD1ziNrrkwg5IDpgbNjukTVhk6APRCtUheV5bGNXP5STbOJRCcsPZEZTTPcv1JFG
	6TQDAxloWKsnwm45mNoRaJlgYJwwOMKg+jxjFL3W/YEfKga7WabcArmAoGToBlpfib9e
	lWV+LX/DVEezr3W3+ia77tWjU/5AL2KeK+bvdXEbAvjuutGlUO8wqSxj+IAfSrTb98ll
	ywhdXZTQeyzp/KrOFlxla/PphRAWYQFXJlVn2wsQoxdHW4GZ2yKyGmk29+N15BXM43VU
	WIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LEzzp7qrBg2IqQBiQph8K2I3j3H6uQHM/6OeaixRxiM=;
	b=pR4AAlyoChmeYYbVLr/SPLHdnzUiTkBDVFKw+Vcco1o+43zFmdszPBrpcfTRpPE1CS
	BGe3g6irk+1aAhUxk5IlICPoaUtwhoIpSsy4qIi4KQzFf2d27M33ho/mmjwY5rRf/05f
	kCj+q4eBk7U2SeNb+3Yiwn3LN58/nZ2I8M//+CK9doYxaPMvl604rMsZZbOJVWWEIIKD
	x0TbZXs2w/4cvqHzduaPHtm4wLNCOasRtt8NRTkf2366+bCUoTQk2nAmwppes7oqR1pa
	KDHgPpT/q4C+DwY1WJoSs05BrU8/o4IwwttjIofvBdrAcRswbwtzVmnVCbK/HcYU544O
	cwhw==
X-Gm-Message-State: AMke39kgbmsLP0e1b8tzZutHUuclCGnISv27QIMuxLruGGx4yqXKXKcZHGC9Hv+VW3pm4x2N5hraTONF1AqOUw==
X-Received: by 10.31.142.208 with SMTP id q199mr8270915vkd.93.1489169635661;
	Fri, 10 Mar 2017 10:13:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.39.37 with HTTP; Fri, 10 Mar 2017 10:13:25 -0800 (PST)
In-Reply-To: <DB5PR0101MB1686CDF4B73864FF6879490492200@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
References: <DB5PR0101MB1686CDF4B73864FF6879490492200@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 10 Mar 2017 10:13:25 -0800
Message-ID: <CAMKF1sohj3PLg2tjUBijrQUb1R7kUdcWPLpdi3G=NaV=_dOjkg@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [bitbake] Failed to patch "defconfig" for linux kernel
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
X-List-Received-Date: Fri, 10 Mar 2017 18:14:00 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 10, 2017 at 6:50 AM, Karim ATIKI <karim_atiki@hotmail.com> wrote:
> Hi,
>
>
> I'm currently trying to patch the linux kernel 3.8.13-r2 of an ARM based
> board (Hachiko) in order to enable Bluetooth and RFCOMM support.
>
>
> Currently, I select these options with bitbake -c menuconfig virtual/kernel
>
> I'd like to use a patch on the defconfig in order to avoid the menuconfig
> step.
>
>
> I've created a linux_3.8.13.bbappend file to apply the path.
>
>
> Th patch file looks like:
>
>
>
> --- a defconfig
> +++ b defconfig
> @@ -107,3 +107,16 @@
>  CONFIG_CRYPTO_CBC=y
>  CONFIG_CRYPTO_MD5=y
>  CONFIG_CRYPTO_DES=y
> +#
> +# FIR device drivers
> +#
> +CONFIG_BT=y
> +CONFIG_BT_RFCOMM=y
> +CONFIG_BT_RFCOMM_TTY=y
> +
> +#
> +# Bluetooth device drivers
> +#
> +CONFIG_BT_HCIBTUSB=y
> +CONFIG_WIRELESS=y
>
>
> The working directory of the linux is:
>
>
> /home/kai/yocto/build-hachiko/tmp/work/hachiko64-poky-linux-gnueabi/linux/3.8.13-r2/linux-3.8.13
>
>
> But when the linux is fetched and unpacked, the root defconfig file is put
> in:
>
>
> /home/kai/yocto/build-hachiko/tmp/work/hachiko64-poky-linux-gnueabi/linux/3.8.13-r2
>
>
> therefore, the patch step failed.
>
>
> I tried to modify the patch with  --- a/../defconfig and b/../defconfig
>
> but it does not work better.
>
>
> Any idea how to make it work ?


You can edit do_configure_prepend() in linux-rpi.inc

kernel_configure_variable CONFIG_BT y
...



>
>
> Thanks.
>
>
> Karim
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

