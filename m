Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17256E00B81; Tue, 23 Apr 2019 01:15:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6FF6E006D8
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:15:24 -0700 (PDT)
Received: by mail-io1-f66.google.com with SMTP id i21so11255949iol.7
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=cSB/D/RPXQhhcEMSjGsZBTdIC/Sq4HMt0esOlkrLI2M=;
	b=mugEhM3+iGr5AHFJ5AGXf9W0kudsVJr7MHdiIi+ax1DnEa3+t/xuHN0Hbk0mFQmJGR
	i2pCb+RjQ3sAtMcTWRCy8DdyhQT83R+F1duVo4NZh5Nlx+Qx4dh7//uTWzd8YEh+yi8D
	HNVOxCMoU7XouLe9uk7kgL6DmIoaHGOkHKmuqSw4vcTpa5OLm0hGFq+cI9nB8clSp3Nk
	aHKm759ahjlQmT6ZnHfsGOgnJELdtQjykSFqHWxE7ZpvbP2Githj9uYQaCT8UjP9Fdfs
	zmYQEhP/9CyCd7+JyNITX+dS321e6KhXHrHTXi5zzBbh9pKmG1Qteu0+DsjRz6aBJM3R
	BL5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=cSB/D/RPXQhhcEMSjGsZBTdIC/Sq4HMt0esOlkrLI2M=;
	b=IuM9iwHmYTDndlussnWEn6jLL6ZCrqWUQ068gYsjBc9H4QZf/0NbXc1jl6deuXJRDM
	kPMGclNftmEFJUdiBZHiR9hpq0xepO2DMvm8N5pSCW7Pndu535tuP0XzmCACAYsamBlv
	bY3FcCaZYX6Ng/rU4hom7QZHIU/U0jEK9mhcKrjFDnDRowUD209XtzjCNSz2jEzmQByi
	rEAmwp8SLs6DipE8bvxAh9YB8YZ1ra5dT3BrMHStxP85cyJt6fZGHrYnxEmXzzzgGYqS
	ehusZ/G+tkEGFvW/ZqbqUmcaTKrBAJgrmxS0jECGgOo3HiLWMWuTUeIEE8ZJWAJe19t0
	EFGQ==
X-Gm-Message-State: APjAAAUtqnaCV+Lv8yA4iLMIEbRxTxNtUhQT/HnBXSMClWq57jgjHZbf
	NQlM34leU8iN7cO3v/r6lzD1E30I
X-Google-Smtp-Source: APXvYqzUI0lfTTWEe4AMQ2OnCJ6FUvaLfq9QMyJT0TDWsmiJQtZoneBaw/q0kBudgnlZ6L6fosjP9g==
X-Received: by 2002:a6b:8fce:: with SMTP id
	r197mr14848938iod.255.1556007324015; 
	Tue, 23 Apr 2019 01:15:24 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	d195sm7334434itc.21.2019.04.23.01.15.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Apr 2019 01:15:23 -0700 (PDT)
Date: Tue, 23 Apr 2019 04:15:20 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Randy 'ayaka' Li <ayaka@soulik.info>
Message-ID: <20190423081520.GE12920@linux-uys3>
References: <20190421155339.6332-1-ayaka@soulik.info>
	<20190421155339.6332-4-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20190421155339.6332-4-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/5] conf/machine: add support for rk3328
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
X-List-Received-Date: Tue, 23 Apr 2019 08:15:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun 2019-04-21 @ 11:53:37 PM, Randy 'ayaka' Li wrote:
> The RK3328 is a SoC with Quad-core Cortex-A53 for Smart OTT/IPTV.
> 
> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
> ---
>  conf/machine/evb-rk3328.conf    | 12 ++++++++++++
>  conf/machine/include/rk3328.inc | 18 ++++++++++++++++++
>  2 files changed, 30 insertions(+)
>  create mode 100644 conf/machine/evb-rk3328.conf
>  create mode 100644 conf/machine/include/rk3328.inc
> 
> diff --git a/conf/machine/evb-rk3328.conf b/conf/machine/evb-rk3328.conf
> new file mode 100644
> index 0000000..67d2083
> --- /dev/null
> +++ b/conf/machine/evb-rk3328.conf
> @@ -0,0 +1,12 @@
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: EVB 3388
> +
> +include conf/machine/include/rk3328.inc
> +
> +KERNEL_DEVICETREE = "rockchip/rk3328-evb.dtb"
> +UBOOT_MACHINE = "evb-rk3328_defconfig"
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip"

There is no "linux-rockchip"

> +GPTIMG_APPEND = "console=ttyS20,1500000n8 rw root=/dev/mmcblk2p5 rootfstype=ext4 init=/sbin/init"


> diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
> new file mode 100644
> index 0000000..8dc018e
> --- /dev/null
> +++ b/conf/machine/include/rk3328.inc
> @@ -0,0 +1,18 @@
> +# Copyright (C) 2017 Randy Li <ayaka@soulik.info>
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +# RK3228H is the same SoC as rk3328.
> +SOC_FAMILY = "rk3328"
> +
> +require conf/machine/include/tune-cortexa53.inc
> +require conf/machine/include/soc-family.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux"

This conflicts with what you've just specified above. In any case, neither
"linux" nor "linux-rockchip" exist.

> +SERIAL_CONSOLES = "1500000;ttyS2"
> +KERNEL_IMAGETYPE = "Image"
> +KBUILD_DEFCONFIG = "multi_v8_defconfig"
> +
> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
> +
> +IMAGE_FSTYPES = "rockchip-gpt-img"
> +IMAGE_CLASSES = "rockchip-gpt-img"
> -- 
> 2.20.1
> 

