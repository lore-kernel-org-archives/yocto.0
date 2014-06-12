Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 346E9E009E7; Thu, 12 Jun 2014 06:06:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.219.45 listed in list.dnswl.org]
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 035E3E0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 06:06:24 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id o6so1290646oag.4
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 06:06:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Isi79VUvLsRq9n2hjmySJfqLfaBT6XNWIpSZyl0KO9M=;
	b=HEoYzRluQhWxR5EC6rIN+cLqtH7Gj0XoDGyKmst/4QFdnJ63PEujlI9r1hTic2t/jD
	WVFu6Xh3kniKC7nACq+9m0nS1mJVdsaGBLiwwhHB/tdu1W7nz4GpeVr6dOJCgwirgJ3l
	oBwpXL5j940Pvpc1TdpZkhtNiiQlTJwPUoGDv7oO8f4Ue14pyxHZSp3Nyp4fUiIwMLE4
	ZKyeneReybu9dYRRFpTxnL5MIKM++oW+aS4UGDrxsVnWYe8zWu6hkQ26B6CTWzzfqMwj
	UrtA+O1eAK+0YOMvuPKoYVmRF7ECqPQ4Tfhlarc0IFqeVhs1YUANcgcanTFBvPXDy9Ny
	0/Dw==
X-Gm-Message-State: ALoCoQnYD3S+iMN4QxFlQrwkT5TaLFhjdIQfP2bwI1C+qALBrUvrR/bFeMXuQiGcXrkifI2e7Id+
X-Received: by 10.182.60.65 with SMTP id f1mr2201434obr.78.1402578383330; Thu,
	12 Jun 2014 06:06:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.115.164 with HTTP; Thu, 12 Jun 2014 06:06:02 -0700 (PDT)
In-Reply-To: <53999502.1050802@gmail.com>
References: <53999502.1050802@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 12 Jun 2014 15:06:02 +0200
Message-ID: <CAP71WjwUfj=SHGkjNkqv9bYDZoPOn4cD9+=03tGQHYxm8QuDRg@mail.gmail.com>
To: Daniel Hilst Selli <danielhilst@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Conditional patches on kernel depending on board, how to maintain?
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
X-List-Received-Date: Thu, 12 Jun 2014 13:06:30 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 12, 2014 at 1:54 PM, Daniel Hilst Selli
<danielhilst@gmail.com> wrote:
> I have a SoM which will be used on several boards, this SoM has a base
> kernel for it, with its board-*.c file. In each board I may have different
> peripherals, so I have to patch the same board-*.c file depending on my
> target board, and that patches may be conflicting one each other. For
> example, I could have a RF on first SPI bus on one board, and on another
> board a SD card on same first SPI bus.
>
> So basically I will have a different kernel(uImage) and rootfs (with kernel
> modules) for each board.
>
> I think to create a layer for each target board, with the linux-SoM.bbappend
> including the patches for that board..., so I enable the layer depending on
> target board I'm creating, but is too much file editions, or have a build
> directory for each target board, enabling the right layer on each
> local.conf, but this means mantaining build directories, or at last
> local.conf, which doesn't seem a good idea for me...
>
> Would be possible to do this relying only new layers and its configurations?
>

you can do:

SRC_URI_append_som1 = " file://som1.patch"

assuming som1 is a valid machine name (e.g. you have conf/machines/som1.conf)

you can do all builds with 1 layer, and 1 recipe for the kernel, with
many such lines.

