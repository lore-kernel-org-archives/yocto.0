Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6810E00DD1; Sun, 28 Feb 2016 02:23:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD93BE00D3D
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:22:58 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id n186so5507210wmn.0
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:22:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=YZdCoXIPexyyhtvcQmVxqH0RvH8XwRP1kAL+fD0ioFU=;
	b=z8lxRkri30VJ1elKHq2G7km7Qx3gasOKEeVzsfj7Rh9U/5ojNj4tWix0WpTGeF5CQU
	19PAtGrljeGWsGEqCMpLUmYwTm2JOmYKlHdj607J8GQmHT4p/DI9B2BPSa7Rq4zciE5w
	VpBgmeV3DYiPraSaeWVt9msGEEDwoGosmJT1nEIp9rdsLm3CVMe9LQqeYkzrhPNKMRU0
	ozP0VOD2FQUEAy/lr3xYVjoqX5T1Efm1TtbGGxGm+6xgD4mkfWaksZ0izMtingwy3Gf4
	uqbfszevsNsEQa4vPbv9F3rdvNpgFwaFc2RoKgk7bAdU6AprFa0UfmlX7QopD7/9NvaG
	qEAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=YZdCoXIPexyyhtvcQmVxqH0RvH8XwRP1kAL+fD0ioFU=;
	b=ko9u89Ltf2Wf6eXspO5ebKF4KHE0+4GeTDpv499CQYflXCqSefAhJzsbVA+BjyLqh3
	kYhu5cxYokgWVLHV4HmaMGrYsKBewo6lLEpM4NdKaG9M9qnZ1TNUXzUPHx2tGCPFw0t5
	ArcOTBEGhYVK7zgF49FjgfwNu1HqYjTHgmgY/7OdqkaXth4S/z8obbfhy397ZeqV3SDn
	Gdh7YDCTax5SgXP6oZfBnn7b2+5QbfpLCL1vQekaYi62GKTNnbA9ji3b0C3pJyuu2p83
	qON6IR/XU8pjilydbaLP4BDsVI/1qohEqTpm5+OFaARnWkYD7vrdzK7YgZ9rNsNqFQen
	L9ZA==
X-Gm-Message-State: AD7BkJKCFw6ltK0O9QKYJZroM/T+oCoAz0uCHBV6pjYDvJBlZBiXG/KpfwiiuwIL1oKUAg==
X-Received: by 10.194.109.161 with SMTP id ht1mr314060wjb.43.1456654977356;
	Sun, 28 Feb 2016 02:22:57 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	74sm11039328wmn.17.2016.02.28.02.22.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Feb 2016 02:22:56 -0800 (PST)
Date: Sun, 28 Feb 2016 11:22:54 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160228102254.GD12618@resin.home>
References: <1456580809-29922-1-git-send-email-net147@gmail.com>
	<1456580809-29922-3-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1456580809-29922-3-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 3/3] u-boot-rpi: update path to imagetool-uncompressed.py
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
X-List-Received-Date: Sun, 28 Feb 2016 10:23:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 28, 2016 at 12:46:49AM +1100, Jonathan Liu wrote:
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot-rpi_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-bsp/u-boot/u-boot-rpi_git.bb b/recipes-bsp/u-boot/u-boot-rpi_git.bb
> index ea0c173..8bffaa3 100644
> --- a/recipes-bsp/u-boot/u-boot-rpi_git.bb
> +++ b/recipes-bsp/u-boot/u-boot-rpi_git.bb
> @@ -24,6 +24,6 @@ COMPATIBLE_MACHINE = "raspberrypi"
>  
>  do_compile_append() {
>      # Create kernel.img from uboot.bin and name it u-boot.img
> -    ${STAGING_LIBEXECDIR_NATIVE}/rpi-mkimage/imagetool-uncompressed.py u-boot.bin
> +    ${STAGING_LIBEXECDIR_NATIVE}/imagetool-uncompressed.py u-boot.bin
>      mv kernel.img u-boot.img
>  }
> -- 
> 2.7.1
> 
> -- 

Merged to master. Thanks.

-- 
Andrei Gherzan

