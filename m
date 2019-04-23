Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A970E00D39; Tue, 23 Apr 2019 01:10:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E222E00D2A
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:10:09 -0700 (PDT)
Received: by mail-it1-f196.google.com with SMTP id x132so22050907itf.2
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=AI3gyWPVyu1OInipNYCyTO/YeXj56Ds6TQ22x6tHRsA=;
	b=AfiG7VLYcTzTtPshgc0I8n57ozZIa2oYwwnEg7lbhPiy6nSBe1eu6tuJIY5+7l/cZC
	NN6M3nWmGSh83D/Y7iUSTjM/fVX9Kfa5yTXN4849gcRVbSCF/9vHCJhhFF8sMX2t9rm7
	KOFjFUB5bHJIhrMTIoNemSMuinv9nwBuMDrdCxUbuQdNP+7FeoA5c5fmKkSTDP5mwRIt
	W68G28RGx9ORW9LRJ9WepauvjT56MtaheJDsal28UYfp0o0Vl/AVcVeoTaLAaJOjgp2Y
	lit3SOi5aMCslneH0hAB3X6536HK4UDJ9gFyCdUmavAjRYi7WXvDmpvopBqocxTSb7Z/
	uwkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=AI3gyWPVyu1OInipNYCyTO/YeXj56Ds6TQ22x6tHRsA=;
	b=BCkZs4stt56h4QWJvin5UQo99OFv25uJ8qkB+UW4gxabePMEiLxSZwLKKNOonY2JLv
	z2obas9KfBMTQjRRSh0jRhgr5hbewCoS4Su391dtVWiO6GO8faKR1ELOaAfyo6z/CF7P
	rxW+e2/XtdHcubhRWwE2e4FT5pmKbHOZOX+GUGxvEO5m7jIk9jTR44xq0fkECMEf+pWU
	RQG64F5u4YoOdbPLbzBzrEJ2klI/QfD0/XvqG8jaC24s7VxQzw0M6ljKfFXb/08G7Awt
	+BM63+AyMKlUSqJXXHoZNyyhMonHjo3QgzyIxzH3ZXHxqvt8l0y0HIF7Ly4vKiX05aEA
	ntlw==
X-Gm-Message-State: APjAAAXHhthObam+HhpxKjL8HtIOGCO6ioRi4RIWPOvzd1Ns4ULeueLp
	9OVCNhMRrmGy9nWNvQZSGt0=
X-Google-Smtp-Source: APXvYqwmsiBaDMTKfEDCVKSZ0BUnK5HhndfOVAtWrP5CB3uIA2DcXzTnGcLg9vsVrE9opk4cqQMAvA==
X-Received: by 2002:a24:64d7:: with SMTP id t206mr1018843itc.89.1556007008733; 
	Tue, 23 Apr 2019 01:10:08 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id 82sm5069933iou.53.2019.04.23.01.10.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Apr 2019 01:10:07 -0700 (PDT)
Date: Tue, 23 Apr 2019 04:10:05 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Randy 'ayaka' Li <ayaka@soulik.info>
Message-ID: <20190423081005.GB12920@linux-uys3>
References: <20190421155339.6332-1-ayaka@soulik.info>
	<20190421155339.6332-3-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20190421155339.6332-3-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/5] conf/machine: add rk3399 support
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
X-List-Received-Date: Tue, 23 Apr 2019 08:10:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun 2019-04-21 @ 11:53:36 PM, Randy 'ayaka' Li wrote:
> RK3399 is a new generation powerful SoC from Rockchip, which has
> Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.
> 
> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
> ---
>  conf/machine/excavator-rk3399.conf | 10 ++++++++++
>  conf/machine/firefly-rk3399.conf   | 15 +++++++++++++++
>  conf/machine/include/rk3399.inc    | 17 +++++++++++++++++
>  3 files changed, 42 insertions(+)
>  create mode 100644 conf/machine/excavator-rk3399.conf
>  create mode 100644 conf/machine/firefly-rk3399.conf
>  create mode 100644 conf/machine/include/rk3399.inc
> 
> diff --git a/conf/machine/excavator-rk3399.conf b/conf/machine/excavator-rk3399.conf
> new file mode 100644
> index 0000000..c7134d2
> --- /dev/null
> +++ b/conf/machine/excavator-rk3399.conf
> @@ -0,0 +1,10 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: EXCAVATOR 3399
> +
> +include conf/machine/include/rk3399.inc
> +
> +KERNEL_DEVICETREE = "rk3399-sapphire-excavator-linux.dtb"
> +UBOOT_MACHINE = "evb-rk3399_defconfig"


> diff --git a/conf/machine/firefly-rk3399.conf b/conf/machine/firefly-rk3399.conf
> new file mode 100644
> index 0000000..fefafed
> --- /dev/null
> +++ b/conf/machine/firefly-rk3399.conf
> @@ -0,0 +1,15 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: Firefly RK3399
> +#@DESCRIPTION: Firefly-RK3399 is a Six-Core 64-bit High-Performance Platform.
> +#http://www.t-firefly.com/en/
> +
> +include conf/machine/include/rk3399.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip"

linux-rockchip doesn't exist in git.yoctoproject.org/meta-rockchip. Has
support for this MACHINE been added upstream (i.e. kernel.org)?

> +KERNEL_DEVICETREE = "rockchip/rk3399-firefly-linux.dtb"
> +UBOOT_MACHINE = "evb-rk3399_defconfig"
> +
> +GPTIMG_APPEND = "console=ttyS2,1500000n8 rw root=PARTUUID=614e0000-0000 rootfstype=ext4 init=/sbin/init"


> diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
> new file mode 100644
> index 0000000..6e2af57
> --- /dev/null
> +++ b/conf/machine/include/rk3399.inc
> @@ -0,0 +1,17 @@
> +# Copyright (C) 2019 SUMOMO Computer Association
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +SOC_FAMILY = "rk3399"
> +
> +require conf/machine/include/tune-cortexa72.inc
> +require conf/machine/include/soc-family.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux"

This setting conflicts with what you set in firefly-rk3399.conf above. Ideally
include files should probably use a weaker assignment? In any case, there is
no "linux" kernel defined, maybe you want "linux-stable" instead?

> +SERIAL_CONSOLES = "1500000;ttyS2"
> +KERNEL_IMAGETYPE = "Image"
> +#KBUILD_DEFCONFIG = "multi_v8_defconfig"
> +
> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"

vendor-u-boot? Does upstream U-Boot support these MACHINEs?

> +
> +IMAGE_FSTYPES = "rockchip-gpt-img"
> +IMAGE_CLASSES = "rockchip-gpt-img"
> -- 
> 2.20.1
> 

