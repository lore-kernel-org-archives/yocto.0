Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D60D3E00A07; Thu, 19 Jan 2017 06:40:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.194 listed in dnsbl.sorbs.net]
Received: from mail-yb0-f194.google.com (mail-yb0-f194.google.com
	[209.85.213.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82544E009FD
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:40:39 -0800 (PST)
Received: by mail-yb0-f194.google.com with SMTP id l23so2660898ybj.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 06:40:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EN3DNmQB5wWi6CoxGsdmX5crtXMvbYT03K4MeU75eyE=;
	b=hhwgex2zGdTPifetcZ0QA0GBbYM7rsXZ9oWxSrclW4HUvAHZngS2ijjmrXHI5lov7D
	Hrsg5rbcWqkGHKn7ypZXuza5WDzcFms09DT9TOIf9CQrmxaXc1zyrtMJBVJJCi6FBStT
	LY9nrBqxUtDfW6eP0W0BVsjEqNxKKHUqh0KbtRqL8fNLPka7/oU6AYtXDtsCwIj1a11J
	E8YaID7JHjHG6S+Dm7TpZ36Oi4SOVY0kQKwxGeTGrvvrDxEPZEqk3FahXt6fNdddWtwd
	NpiHZn0fL6Cr/Cu73079zr4nqfz1aPWs10s3Iw4ilfGnHtZXPuoU+Pmf+R3pw8LLDeFK
	vClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EN3DNmQB5wWi6CoxGsdmX5crtXMvbYT03K4MeU75eyE=;
	b=P/rwuu3Zj4lQKeGGg4JVKJCnaXS5ugteZto/r8mkEDdKSk3EdrirABfykhNx1052Ap
	aNcXTOEJl/3jD8gADHJUPvVVKD1n7ftOuwgMqlKl/0JFwcUxm8AFs5E0uMYEBXI0YBEB
	OgT18OL0kF6/M1Xb74DbWSre1IbVejs7T9wHDOnHDMzCyynM30LqMFceZNgTxFV+FLkX
	PmgUsZysKkrusQnPxwe+rmuMgoQlBlNqVQy61EJFePi9d1ryBj0Gtov2pqx2ZV12RXzP
	Mz4uX0MyW+e+XrQXkdT4IE5n6VSR07fXB0WrzfTbO913mBwj9LKozYRw2JMIXn+c6Ynm
	y/5g==
X-Gm-Message-State: AIkVDXKqVNHezzwiNsJFKKm8Qk6aW80Ap0pz2T7GzSRuFGqIfT2oeulPRY64OCiBLwIGnWdmROSqq01uBmJIxw==
X-Received: by 10.237.60.27 with SMTP id t27mr8644314qte.86.1484836839067;
	Thu, 19 Jan 2017 06:40:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.45.130 with HTTP; Thu, 19 Jan 2017 06:40:38 -0800 (PST)
In-Reply-To: <1484820572-11891-4-git-send-email-jacob-chen@iotwrt.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<1484820572-11891-4-git-send-email-jacob-chen@iotwrt.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Thu, 19 Jan 2017 22:40:38 +0800
Message-ID: <CAJrj+DP7XGadbn-03EuAy4WAKgV=Pq67AjKghfuzR5gMbSpxLA@mail.gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: yocto@yoctoproject.org, Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [PATCH 3/7] machine: firefly: use linux-rockchip by default
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
X-List-Received-Date: Thu, 19 Jan 2017 14:40:42 -0000
Content-Type: text/plain; charset=UTF-8

Hi

2017-01-19 18:09 GMT+08:00 Jacob Chen <jacob-chen@iotwrt.com>:
> This is the kernel vendor that supports all hw components for this board,
> so we use it by default.
The title and commit message didn't match the your content. Linux
rockchip should refer to http://github.com/linux-rockchip.
firefly-rk3288.conf already using http://github.com/linux-rockchip
>
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> ---
>  conf/machine/firefly-rk3288.conf | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
> index 8fa005d..47e63e1 100644
> --- a/conf/machine/firefly-rk3288.conf
> +++ b/conf/machine/firefly-rk3288.conf
> @@ -7,4 +7,8 @@
>  #http://www.t-firefly.com/en/
>
>  include conf/machine/include/rk3288.inc
> +include conf/machine/include/rk-linux.inc
> +
>  KERNEL_DEVICETREE = "rk3288-firefly.dtb"
> +
> +UBOOT_MACHINE = "firefly-rk3288_defconfig"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

