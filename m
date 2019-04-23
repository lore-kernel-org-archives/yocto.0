Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BC99E00B1B; Tue, 23 Apr 2019 10:47:22 -0700 (PDT)
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
	*      [209.85.166.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f173.google.com (mail-it1-f173.google.com
	[209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 682F8E00942
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 10:47:20 -0700 (PDT)
Received: by mail-it1-f173.google.com with SMTP id s3so1636078itk.1
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 10:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=+vou60SWwl4z4S2hLMqA5NIMOe0LHEknmWipCtcJYxg=;
	b=e7yF7pbM1omUcGmfOR9qfaCluVyW3PBldyCHeyYoKD5SIIJNs10VVqEpEsF8CKh3YA
	KbCbaIsJMb0TmrN4zyGY0642AadjripDFzMFsj3Kg7NXGqCpaEUr2kIv+uCIeOWnBnp8
	ys4bXrfBSUtpe5imcQJ4ucbmmOcwmn8PJPBvuwUcq5IOzaxOHnsQDBbh+53mQ4CwCAHV
	lJMz45yf25eyynFrSkJB0KEVRmGmljG0FiDd141PiURG7hkojOAdB41KlnHuxiuoHcWK
	NoOWQL3aw7m4lOreKplbikmQQDq6H3pTjbqFM5/eKe8puCB1xKTmW+4GsAGNN0mRDUXC
	nAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=+vou60SWwl4z4S2hLMqA5NIMOe0LHEknmWipCtcJYxg=;
	b=IL+edmmH34rwB/fjuq5MbmXInImk0SyU/u+TgqlX/aqbZ7DihLmTiDwkXkP/FUrEjT
	B7FSJkezpPHbYMQ7vATh7aQfdZE4k8NiI92/LkFs5FpcAEgb8v2ERxFZ0bUzcWeh/463
	bHk5KArtp6lE/rKBijZR5Cg320iKBp+8bKlPn6UJAqmnfPi6TuHIRq8CFUzf5fPQUzIN
	xdz9sN92Nebg14wGtADymi5lZM/XGgv2j29EKjJXyipc2n9V4IysSdxBR/i4d1IwUw65
	6A3fzdKoELqJuJjuyllLlpTQuS5j2lCKzVUnZHAki8GBmbDXWPHeciJ+pUpO9Ctx+1TJ
	oaSA==
X-Gm-Message-State: APjAAAW20CX/C8N5zB1/DUnrYpRp4EFtaQpp9TQ7LXyp6QPB3pE10yEg
	NaVMSYJqFlA0SpfTXwo1+/SGAxqL
X-Google-Smtp-Source: APXvYqxjAo4fQvtBVoSF9ekTOkEqxECRXccYvQpccteMU8Qi7RsK56m+rQDwoxTvPeOV0aPQvPG5CQ==
X-Received: by 2002:a02:6c83:: with SMTP id w125mr19104093jab.20.1556041639906;
	Tue, 23 Apr 2019 10:47:19 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	t19sm5750074iol.72.2019.04.23.10.47.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Apr 2019 10:47:19 -0700 (PDT)
Date: Tue, 23 Apr 2019 13:47:16 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Randy 'ayaka' Li <ayaka@soulik.info>
Message-ID: <20190423174716.GA7171@linux-uys3>
References: <20190423132514.21996-1-ayaka@soulik.info>
	<20190423132514.21996-2-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20190423132514.21996-2-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH v2 01/10] conf/machine: add support for rk3399
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
X-List-Received-Date: Tue, 23 Apr 2019 17:47:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue 2019-04-23 @ 09:25:05 PM, Randy 'ayaka' Li wrote:
> RK3399 is a new generation powerful SoC from Rockchip, which has
> Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.
> 
> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
> ---
>  conf/machine/excavator-rk3399.conf | 12 ++++++++++++
>  conf/machine/firefly-rk3399.conf   | 14 ++++++++++++++
>  conf/machine/include/rk3399.inc    | 17 +++++++++++++++++
>  3 files changed, 43 insertions(+)
>  create mode 100644 conf/machine/excavator-rk3399.conf
>  create mode 100644 conf/machine/firefly-rk3399.conf
>  create mode 100644 conf/machine/include/rk3399.inc
> 
> diff --git a/conf/machine/excavator-rk3399.conf b/conf/machine/excavator-rk3399.conf
> new file mode 100644
> index 0000000..8506a50
> --- /dev/null
> +++ b/conf/machine/excavator-rk3399.conf
> @@ -0,0 +1,12 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: EXCAVATOR 3399
> +
> +include conf/machine/include/rk3399.inc
> +
> +KERNEL_DEVICETREE = "rockchip/rk3399-sapphire-excavator.dtb"
> +UBOOT_MACHINE = "evb-rk3399_defconfig"
> +
> +GPTIMG_APPEND = "console=ttyS2,1500000n8 rw root=PARTUUID=B921B045-1DF0 rootfstype=ext4 init=/sbin/init"
> diff --git a/conf/machine/firefly-rk3399.conf b/conf/machine/firefly-rk3399.conf
> new file mode 100644
> index 0000000..4e35c3d
> --- /dev/null
> +++ b/conf/machine/firefly-rk3399.conf
> @@ -0,0 +1,14 @@
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
> +KERNEL_DEVICETREE = "rockchip/rk3399-firefly.dtb"
> +UBOOT_MACHINE = "evb-rk3399_defconfig"
> +
> +GPTIMG_APPEND = "console=ttyS2,1500000n8 rw root=PARTUUID=B921B045-1DF0 rootfstype=ext4 init=/sbin/init"
> diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
> new file mode 100644
> index 0000000..9237616
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
> +require conf/machine/include/rockchip-defaults.inc
> +
> +SERIAL_CONSOLES = "1500000;ttyS2"
> +KERNEL_IMAGETYPE = "Image"
> +KBUILD_DEFCONFIG = "defconfig"
> +
> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"

Using u-boot-rockchip causes build failures. In both cases (excavator-rk3399
and firefly-rk3399) I get:

	| #
	| # configuration written to .config
	| #
	| make[1]: Leaving directory '/z/build-master/meta-rockchip/build/tmp-glibc/work/firefly_rk3399-oe-linux/u-boot-rockchip/20171218-r0/build'
	| make: Leaving directory '/z/build-master/meta-rockchip/build/tmp-glibc/work/firefly_rk3399-oe-linux/u-boot-rockchip/20171218-r0/git'
	| /z/build-master/meta-rockchip/build/tmp-glibc/work/firefly_rk3399-oe-linux/u-boot-rockchip/20171218-r0/temp/run.do_configure.27647: line 113: merge_config.sh: command not found
	| WARNING: /z/build-master/meta-rockchip/build/tmp-glibc/work/firefly_rk3399-oe-linux/u-boot-rockchip/20171218-r0/temp/run.do_configure.27647:1 exit 127 from 'merge_config.sh -m .config'
	| ERROR: Function failed: do_configure (log file is located at /z/build-master/meta-rockchip/build/tmp-glibc/work/firefly_rk3399-oe-linux/u-boot-rockchip/20171218-r0/temp/log.do_configure.27647)

Do you have an updated recipe for u-boot-rockchip?

> +
> +IMAGE_FSTYPES = "rockchip-gpt-img"
> +IMAGE_CLASSES = "rockchip-gpt-img"
> -- 
> 2.20.1
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

