Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CBF5E00D43; Tue, 23 Apr 2019 01:24:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4618E00D39
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:24:31 -0700 (PDT)
Received: by mail-it1-f195.google.com with SMTP id a190so22067955ite.4
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=QqGQpevpxcIiaxPo+Z6elVoDJzxsCLbd2T+KqrnEBQw=;
	b=rGhpcbl6lM3W4nPljQXJEm27VY3BSM7SlyHvy6uPXqYHRHHKGQXgI4UfdEiT6um4ft
	HnJudwqwXutLjvjRRPft2r8CicuykWaj/gaWvzS7SXQFJ+9uyrfZ9wv2joigiVQUGGAT
	rz4yNTq/OGbkiPFFw2rukCizEORp4F6NKNv8X/FhLwtlfTBHX7U08CI4V7MHqGC9uBh3
	pkOBpuBfTzFCDYyMB8CmCiZKrE87Nh1eZv5r8ni+yY9K6j7y64vdO0FRW+OtDRHE8Uim
	McGo3fr6zq8CJfmbGeKerFC1M6hZ2yxa4YdQmPv++DbnzFUf+s+JsQhq3mwMOxVa5l/7
	yxfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=QqGQpevpxcIiaxPo+Z6elVoDJzxsCLbd2T+KqrnEBQw=;
	b=XzN7esRjQ2lQEymg6IcplSNb2wp80ORMOS/O/5oNF0nMekfBI7NEUEaBV/MsPnenMj
	OiMocLd1ltNw2gzbI2D/jvTd12wB7fmPNUxswtzqSO5inYZdi2soCVRAevDCu2BM0dKm
	cdZL78WnF34W2uuVRnN8xOTv7b403KyCBc8c9j54gPZBiS1LJ3YWXU9DwGos2ylZWi+A
	YoL85ur1wRuHKv95c5nPDgcVYIyuDnq4K0o8yF8vQ+i5HB0hgK/OpwedDhwyxBgEMAp8
	JivUqUd0Qb1XM0y1/YK48kSFIZh9Mo9GASNkuizxG4JYMHvMVQsgY+dWCk/gxPAqFOWX
	lRsg==
X-Gm-Message-State: APjAAAVD1UYnst2g+acyYYEFN3fe+NEhyv8O+H0+RNPYQrb6cY0Yjc3I
	PysZQ1q7EdaH6j0EdXQDxEA=
X-Google-Smtp-Source: APXvYqxTclmbq2Nkt+osyirfL2EGjoWTFYBsZdGpP/KxBc7wvhYAJvCGbNG7yqNoRMr/4wpyCVBhmg==
X-Received: by 2002:a05:660c:3c7:: with SMTP id c7mr1025077itl.2.1556007871161;
	Tue, 23 Apr 2019 01:24:31 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	i70sm2410097ioa.14.2019.04.23.01.24.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Apr 2019 01:24:30 -0700 (PDT)
Date: Tue, 23 Apr 2019 04:24:27 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Randy 'ayaka' Li <ayaka@soulik.info>
Message-ID: <20190423082427.GF12920@linux-uys3>
References: <20190421155339.6332-1-ayaka@soulik.info>
	<20190421155339.6332-2-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20190421155339.6332-2-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@rock-chips.com>
Subject: Re: [PATCH 1/5] conf/machine: rk3288: Add some machine files
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
X-List-Received-Date: Tue, 23 Apr 2019 08:24:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun 2019-04-21 @ 11:53:35 PM, Randy 'ayaka' Li wrote:
> Evb-rk3288 is the offical evaluate board.
> Fennec-rk3288 and Tinker-rk3288 is rk3288 based SBCs.
> Tinker Boards is a RPi compatible board made by ASUS.

I would rather these were separated out as individual commits. meta-rockchip
already has working support for the tinker-rk3288 board, so it's not being
added here.

> 
> Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
> ---
>  conf/machine/evb-rk3288.conf    | 10 ++++++++++
>  conf/machine/fennec-rk3288.conf | 10 ++++++++++
>  conf/machine/include/rk3288.inc |  5 +++++
>  conf/machine/tinker-rk3288.conf |  2 ++
>  4 files changed, 27 insertions(+)
>  create mode 100644 conf/machine/evb-rk3288.conf
>  create mode 100644 conf/machine/fennec-rk3288.conf
> 
> diff --git a/conf/machine/evb-rk3288.conf b/conf/machine/evb-rk3288.conf
> new file mode 100644
> index 0000000..e6c1f1e
> --- /dev/null
> +++ b/conf/machine/evb-rk3288.conf
> @@ -0,0 +1,10 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: EVB 3288
> +
> +include conf/machine/include/rk3288.inc
> +
> +KERNEL_DEVICETREE = "rk3288-evb-act8846.dtb"
> +UBOOT_MACHINE = "evb-rk3288_defconfig"


> diff --git a/conf/machine/fennec-rk3288.conf b/conf/machine/fennec-rk3288.conf
> new file mode 100644
> index 0000000..23e3ee7
> --- /dev/null
> +++ b/conf/machine/fennec-rk3288.conf
> @@ -0,0 +1,10 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: FENNEC RK3288
> +
> +include conf/machine/include/rk3288.inc
> +
> +KERNEL_DEVICETREE = "rk3288-fennec.dtb"
> +UBOOT_MACHINE = "fennec-rk3288_defconfig"


> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
> index 0528e8a..73b39fb 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -8,9 +8,14 @@ require conf/machine/include/soc-family.inc
>  require conf/machine/include/rockchip-defaults.inc
>  
>  SERIAL_CONSOLES = "115200;ttyS2"
> +SPL_BINARY = "u-boot-spl-dtb.bin"

You've put a U-Boot variable in the middle of a Linux block. This variable is
already defined in this file just a couple lines down (in the U-Boot section)
and uses a ?= to set it to the exact same thing you're setting it to.

> +KERNEL_IMAGETYPE = "zImage"
> +KBUILD_DEFCONFIG = "multi_v7_defconfig"

These two things are defined exactly the same in
conf/machine/include/rockchip-defaults.inc, which is already included above
with the "require ..." line.

>  
>  PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
>  SPL_BINARY ?= "u-boot-spl-dtb.bin"
>  
>  IMAGE_FSTYPES = "rockchip-gpt-img"
>  IMAGE_CLASSES += "rockchip-gpt-img"
> +
> +APPEND = "console=ttyS2,115200n8 rw root=/dev/mmcblk2p7 rootfstype=ext4 init=/sbin/init"

I'm guessing this was supposed to be 'GPTIMG_APPEND = "..."'? In any case, I'm
curious why you're switching from mmcblk0 to mmcblk2 here,
classes/rockchip-gpt-img.bbclass already contains this logic.


> diff --git a/conf/machine/tinker-rk3288.conf b/conf/machine/tinker-rk3288.conf
> index 294bdc7..cf793cd 100644
> --- a/conf/machine/tinker-rk3288.conf
> +++ b/conf/machine/tinker-rk3288.conf
> @@ -9,3 +9,5 @@ require conf/machine/include/rk3288.inc
>  
>  KERNEL_DEVICETREE = "rk3288-tinker.dtb"
>  UBOOT_MACHINE = "tinker-rk3288_defconfig"
> +
> +GPTIMG_APPEND = "console=tty1 console=ttyS2,115200n8 rw root=/dev/mmcblk0p7 rootfstype=ext4 init=/sbin/init"
> -- 
> 2.20.1
> 

