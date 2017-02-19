Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F18AEE00A21; Sat, 18 Feb 2017 21:04:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5621E009F8
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 21:04:00 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id x71so1506738qkb.0
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 21:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=z4jSQmRqmiti5sqmpWqcTkCKGpkLXViUQV3Z9a/Vr9k=;
	b=ltq2P3zlsVhgT6jo4R4KVldCtb7GjQOxbSiZ7lDOAECtCznLkrG0snW7ZnYgdaR5Ok
	wC4oHm6tTNkLtwzK1P5FimNtv5bhR8XaYSs5njNTCY+VWMXgqPCs42ypa96ISlhj33XD
	GqkA9nWHwimDoeVYaMgNKmBd8UtKkvqwqeJCn3/6No1z+C7xC6O+LNP87g3kxl1M/6BD
	We6mXegBtHF2K0sIQVw2L3Iol3/LHTZ0wgGFKIWFMRl0n3YNCN1i91IqcYfqZkardvHA
	2KAeJKEQqmXjoT3SJeJOCrk3GnGB69VMcdcHfKByOwe+Z28IkT8FBN3ZVRJ1pdoFG/6P
	tk+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=z4jSQmRqmiti5sqmpWqcTkCKGpkLXViUQV3Z9a/Vr9k=;
	b=O/5nqg6HoK4VUnXThB6ESbe64ff77jeecn98R/MY+c0X7eb2VNIAd2nHU19Z2Ibv+N
	yP4QB1ecTI50nlcKb2zrogSwDnFejh0kCMQ4hYHMpDveDe24CbSVeqos28tg1cWIxITC
	N6qHCJPM1cnLiWr2CYgg85VgAiYFvYb0gvDQtEyR+Pqc3i67Q2qkci1OebVVpEqqERIr
	hh/4fXpvugkco4re44a29Ondbgn7j5rfxT8xREKEm8uGBAW+BCyC1iYS0oq7XTnww6xE
	9m75iPri2GOv2CtZ6K5Rh4sxXLcRYY9gWBwZr0E3aC8iCgj+YlCRaKdfxtTd2q23+/KU
	45vg==
X-Gm-Message-State: AMke39kQ2LHYjKKtZ0Y/1CVaKlLjA63La4kJOs1lC4XXicD1+ECV2UuF6kjtTKhBZmimsJAMl85iaO7NpJj0OA==
X-Received: by 10.55.89.70 with SMTP id n67mr14090261qkb.292.1487480640295;
	Sat, 18 Feb 2017 21:04:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Sat, 18 Feb 2017 21:03:59 -0800 (PST)
In-Reply-To: <20170219024340.23664-4-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-4-twoerner@gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Sun, 19 Feb 2017 13:03:59 +0800
Message-ID: <CAJrj+DNLj8HZikLNS7KKVTgqLG_fvmVpDM=XeCH+PVneHZKZaw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2 3/5] machine: firefly-rk3288: specify bootloader
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
X-List-Received-Date: Sun, 19 Feb 2017 05:04:05 -0000
Content-Type: text/plain; charset=UTF-8

Hi Trevor

2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
> Set the default preferred bootloader for firefly-rk3288 to be u-boot-rockchip
> and set the default name of the SPL binary.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/firefly-rk3288.conf | 1 +
>  conf/machine/include/rk3288.inc  | 3 +++
>  2 files changed, 4 insertions(+)
Reviewed-by Eddie Cai <eddie.cai.linux@gmail.com>
>
> diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
> index 8fa005d..58d752b 100644
> --- a/conf/machine/firefly-rk3288.conf
> +++ b/conf/machine/firefly-rk3288.conf
> @@ -8,3 +8,4 @@
>
>  include conf/machine/include/rk3288.inc
>  KERNEL_DEVICETREE = "rk3288-firefly.dtb"
> +UBOOT_MACHINE = "firefly-rk3288_defconfig"
> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
> index 769e5c1..4a4201f 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -10,3 +10,6 @@ PREFERRED_PROVIDER_virtual/kernel = "linux"
>  SERIAL_CONSOLES = "115200;ttyS2"
>  KERNEL_IMAGETYPE = "zImage"
>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
> +
> +PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
> +SPL_BINARY ?= "u-boot-spl-dtb.bin"
> --
> 2.12.0.rc1.48.g076c053
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

