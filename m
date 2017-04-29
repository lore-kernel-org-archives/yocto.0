Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D60DE00A48; Fri, 28 Apr 2017 23:11:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.68 listed in dnsbl.sorbs.net]
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1E52E009AA
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 23:11:03 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id z67so7919107itb.0
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 23:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Izb8Zu8fzj9MV5WI3z7KJogcCDYzO6eipEsyeChKmdw=;
	b=As1QlmuUxHu/RR/yLbfDVgdXJicphtEUo5Sz2Qg1HX4+k/91RlQJDAcTyi6vG43/tZ
	jxaQUNrGz5KLQwZppG4o7J5fDh6euKj7k3IX8cthBtGOrdpuOSj0/x/FnMxGaT2UvGGo
	NB+W3j9cpgq+9oicsFiRIWkSoJVk6hjIKnrM04H59btUoRJat+YEpZWiMJSAjFHbDOkB
	CoWwgUv3i0XiDNeDj0MEddVICP7PiCq9W1Wx0AdXLQjVOZkx1soNg21BIPtaEp5T/7t0
	YFTOdLW8J/nynAgyhzKnt6FFzgmf7JZfGyAXRel8KX+dhAawIefiMs+lMx5nG6ut4/fQ
	aGZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Izb8Zu8fzj9MV5WI3z7KJogcCDYzO6eipEsyeChKmdw=;
	b=KYsZjsFDnjTvlLYXB5rSyPnVGgPIeYEaYJtBt+82DBYN6n3lYmwINNw86MKx0Qfdpj
	c9gyumAcTWwUwJsQLHIfkXal/LDp3Zd8rycrvvbtwI9N2I3tuB5uerMWpvvlt8/q+uZZ
	6tITUsESbLC20tB6YMz3p0Fvr6ZCKUZ1I+D//7p1iA4HaxfnLUMDEn+J/zILp8ehzlvz
	RHxY34SX8O0UuGrKNJUXVH39TqEOjMbM2fjxdLvkVDg9SoIMk4yZu0DaMzcl0TgAGlZ6
	vsQpiFW9wEosjJuMmtqFGMEIFUW88QML77Nsli70tDl9+sYI45F2xqQUaRmlfw0EisLU
	7rBQ==
X-Gm-Message-State: AN3rC/7U3zXeriOzCByhgx1+vL+qAxmAHmWpbrceIx6K1HO+W6Lv2c9Q
	yQxkfcbpAVPxzfZrsns=
X-Received: by 10.36.110.132 with SMTP id w126mr15076itc.52.1493446263350;
	Fri, 28 Apr 2017 23:11:03 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	t69sm3466489ioi.54.2017.04.28.23.11.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Apr 2017 23:11:02 -0700 (PDT)
Date: Sat, 29 Apr 2017 02:11:00 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Message-ID: <20170429061100.GA7543@linux-uys3>
References: <20170428140126.27654-1-romain.perier@collabora.com>
	<20170428140126.27654-5-romain.perier@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20170428140126.27654-5-romain.perier@collabora.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 4/5] u-boot-rockchip: remove duplicated variables
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
X-List-Received-Date: Sat, 29 Apr 2017 06:11:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

This doesn't succeed for me:

	ERROR: /opt/oe/configs/z/build-master/firefly-rk3288/layers/meta-rockchip/recipes-bsp/u-boot/u-boot-rockchip_git.bb: This recipe does not have the LICENSE field set (u-boot-rockchip)
	ERROR: Failed to parse recipe: /opt/oe/configs/z/build-master/firefly-rk3288/layers/meta-rockchip/recipes-bsp/u-boot/u-boot-rockchip_git.bb

But it does work if I add...

On Fri 2017-04-28 @ 04:01:25 PM, Romain Perier wrote:
>  # Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>  # Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
> +# Copyright (C) 2017 Romain Perier <romain.perier@collabora.com>
>  # Released under the MIT license (see COPYING.MIT for the terms)
>  
>  require recipes-bsp/u-boot/u-boot.inc
require recipes-bsp/u-boot/u-boot-common_2017.01.inc
>  
>  DESCRIPTION = "Rockchip next-dev U-Boot"
> -LICENSE = "GPLv2+"
> -LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
>  COMPATIBLE_MACHINE = "(firefly-rk3288)"
...

Does this make sense?

I'm building against openembedded-core
e584be78f92ee6f08f570c239698d56ac78d05f9

	Build Configuration:
	BB_VERSION        = "1.34.0"
	BUILD_SYS         = "x86_64-linux"
	NATIVELSBSTRING   = "opensuse-42.2"
	TARGET_SYS        = "arm-oe-linux-gnueabi"
	MACHINE           = "firefly-rk3288"
	DISTRO            = "nodistro"
	DISTRO_VERSION    = "nodistro.0"
	TUNE_FEATURES     = "arm armv7ve vfp thumb neon callconvention-hard"
	TARGET_FPU        = "hard"
	meta-rockchip     = "devs/rperier/20170429:0d89dcc4a5a2827b68d920bbd32e4aece774b5eb"
	meta              = "master:e584be78f92ee6f08f570c239698d56ac78d05f9"

