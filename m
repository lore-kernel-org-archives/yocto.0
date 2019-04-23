Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD864E00D39; Tue, 23 Apr 2019 01:13:08 -0700 (PDT)
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
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D068E00927
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:13:07 -0700 (PDT)
Received: by mail-it1-f195.google.com with SMTP id y134so22013178itc.5
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=QHO0UWouScBbzWH1tKzH+jidvuVafalt4vJtqWMtFtg=;
	b=bTz5wQHoT3DTWab4xIZWp878aT4udzb5O5n5FcfFDQP4lLxPCc7PGc6AHq5EBAOUlX
	g0ub2PjaKrVC9yyY89rGkUewAc/vzkGiQ+EGnozJ2J9bB8NR62CQMM7klcXS6KQcTByx
	0wOW0jQ/shdFbF4AMJv6twS7PsyXyMS/6k2NHdUGmjs5t6ECoDxo0ZzqueoweeldZ2YX
	BLSOPmbzQmod93iLVje8o8UFNhzKpOPuN/AANIoypTzXXPqIjeCfQtGGy/I4adWG7u4k
	2D/aFia7sOfNbSe8DjPJVHNiNKMfLvQawSUAfrLyJbSun2bP115x2CREYDK+gtFis9rj
	ehYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=QHO0UWouScBbzWH1tKzH+jidvuVafalt4vJtqWMtFtg=;
	b=Z+RSL0Teq9mRIS4hoCKI1HD28aSoSJghtklEKd3lzBYpC9pSp4Hrt8luzQq/63ZRkN
	C77KVy6J2mMMJQT1rV3Fhrs7hF/GVV5FirqXZirDoKAwwpeJRCj0+CHh7d9Pwx0/LXEI
	jr9qxC7hpDARs0OpwOmsN0n6S33ZqkDxuw+dOxZ8Uv6xFsVsvB7qR9Wzy1BHelt0rryE
	GFwVWMHnAWR6ZoQM532bqamfLbAJlpv+Wxuyd5Vyn3hxpFb1DfsIKsWCLUXnMyZDWitn
	Gu3g14aIXdkYV6RCs3bN9VnYSesB5kfd58in+9FHJ3o2ItQ1HUREYJ4pt4mPu/gulAAk
	Ptbg==
X-Gm-Message-State: APjAAAU5tBZxS4aqbMAj5jos6b670sZfIUdR75fcBSZljCxu3rZA9ccO
	l68kAtgjyL/BmsgS3+ByBF64um/j
X-Google-Smtp-Source: APXvYqz3a8dFL5Ytewjd7mtym49cZON5x2hC7ogmqIOkoMrabUyXhoGr4O4foWSr9+oiU+5Ft+jhVw==
X-Received: by 2002:a24:89c3:: with SMTP id s186mr1071332itd.112.1556007187098;
	Tue, 23 Apr 2019 01:13:07 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	d133sm8040459ita.5.2019.04.23.01.13.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Apr 2019 01:13:06 -0700 (PDT)
Date: Tue, 23 Apr 2019 04:13:03 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Randy 'ayaka' Li <ayaka@soulik.info>
Message-ID: <20190423081303.GD12920@linux-uys3>
References: <20190421155339.6332-1-ayaka@soulik.info>
	<20190421155339.6332-5-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20190421155339.6332-5-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/5] conf/machine: add support for rk3036
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
X-List-Received-Date: Tue, 23 Apr 2019 08:13:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun 2019-04-21 @ 11:53:38 PM, Randy 'ayaka' Li wrote:
> RK3036 is a SoC from Rockchip which has Dual-Core
> ARM Cortex-A7 CPU, for low-end OTT TV Box.
> 
> Supporting video acceleration for the HEVC and AVC
> up to 1080P video. With a HDMI sink.
> 
> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
> Signed-off-by: Randy Li <randy.li@rock-chips.com>
> ---
>  conf/machine/include/rk3036.inc | 19 +++++++++++++++++++
>  conf/machine/kylin-rk3036.conf  | 12 ++++++++++++
>  2 files changed, 31 insertions(+)
>  create mode 100644 conf/machine/include/rk3036.inc
>  create mode 100644 conf/machine/kylin-rk3036.conf
> 
> diff --git a/conf/machine/include/rk3036.inc b/conf/machine/include/rk3036.inc
> new file mode 100644
> index 0000000..5a9c55e
> --- /dev/null
> +++ b/conf/machine/include/rk3036.inc
> @@ -0,0 +1,19 @@
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +SOC_FAMILY = "rk3036"
> +
> +require conf/machine/include/tune-cortexa7.inc
> +require conf/machine/include/soc-family.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux"
> +SERIAL_CONSOLES = "115200;ttyS2"
> +KERNEL_IMAGETYPE = "zImage"
> +KBUILD_DEFCONFIG = "multi_v7_defconfig"
> +
> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
> +SPL_BINARY ?= "u-boot-spl-nodtb.bin"
> +
> +IMAGE_FSTYPES = "rockchip-gpt-img"
> +IMAGE_CLASSES = "rockchip-gpt-img"
> +
> +GPTIMG_APPEND = "console=ttyS2,115200n8 rw root=/dev/mmcblk1p7 rootfstype=ext4 init=/sbin/init rootwait"
> diff --git a/conf/machine/kylin-rk3036.conf b/conf/machine/kylin-rk3036.conf
> new file mode 100644
> index 0000000..9e42e87
> --- /dev/null
> +++ b/conf/machine/kylin-rk3036.conf
> @@ -0,0 +1,12 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: Kylin rk3036
> +
> +include conf/machine/include/rk3036.inc
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux-rockchip"

There is no "linux-rockchip", maybe you meant "linux-stable"?

> +
> +KERNEL_DEVICETREE = "rk3036-kylin.dtb"
> +UBOOT_MACHINE = "kylin-rk3036_defconfig"
> -- 
> 2.20.1
> 

