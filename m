Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4099E00A21; Sat, 18 Feb 2017 19:40:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.196 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25F4AE009F8
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 19:40:01 -0800 (PST)
Received: by mail-qt0-f196.google.com with SMTP id h53so10467964qth.3
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 19:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GO59QpW0rTG82eV0iimlPRzZcTTO0vSKUOVt7WoK8C0=;
	b=iG7R7BNgPiEZQuAgbJsb4pvbkDf3jEdofiIO2YihdJgJxdyFmGFryNtrjycvvHiKlR
	A1Bw67pKaz+tHaI5zJqFcXUsyRVoXYMwmj6bez2xjDhXhKlSt1yQMba3ztsRmeiAPNjx
	XOjoN+dMTF0JgU2nkvtOvJwLn70mrM+wYg0Bvw47NB7JCDxALHtUL2XZpZbGN2cib8Z+
	tEl4YONJcAaacq+tlfbu8QwV2Ek4IyENQPxWrn+MpJqik+TAOXI3zXiSF9B9LexIUjeO
	ElKmW2AwlFT0KmSKk1Ufs+sd1JlMdfdqziCK4Sa4Ad8uQHJ5E58nJibrZfd95/xiuLhF
	fbCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GO59QpW0rTG82eV0iimlPRzZcTTO0vSKUOVt7WoK8C0=;
	b=skQBoeTuui1pZ/BxsogWkE92rbV4kdKwMyMRdtKpp3KU4Ytdg6ht3bLIDda99WptwB
	jXbZl/NuBkU62xJ1QQ4BNx41lXcnL2nbc/5q28waVnijLXOEE6wCEY4MUiOmHJ2WS5wZ
	9iVlryUe8nt4BtI3dp5M4Db6HxJmMnNT8xFhTAlKQqY0RtGP+TueETU65lhhqLFkdtOl
	/i+9Eo4tmqawiGfWq+1eyr1Miksl5di2Gs0ph/c+IA+G8wWaJGUeNydI2p40c7boMHmv
	Qja4CXFwPCZhqq7ROmjoCKDMDz8d/7kb0EQbM4kti0lUVIhDzHbkiR7acbNHazBIoJ7f
	FdGg==
X-Gm-Message-State: AMke39kcNpWIMDcLzrhoXp1fvz+yuFUG6r6hyGJge4yYb7AluYevtAMdPmMvw/4YVHhJI/H7nRbNstYFGsowtg==
X-Received: by 10.237.35.210 with SMTP id k18mr14079914qtc.219.1487475601280; 
	Sat, 18 Feb 2017 19:40:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Sat, 18 Feb 2017 19:40:00 -0800 (PST)
In-Reply-To: <20170219024340.23664-2-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-2-twoerner@gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Sun, 19 Feb 2017 11:40:00 +0800
Message-ID: <CAJrj+DP3MxzVcvZkN=APegrjydGYQZeE3J4MBoZ7RPMxQ-fkfQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2 1/5] machine: rk3288: enable SoC-specific assignments
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
X-List-Received-Date: Sun, 19 Feb 2017 03:40:03 -0000
Content-Type: text/plain; charset=UTF-8

Hi Trevor

Is this the same one i submit before?
https://www.mail-archive.com/yocto@yoctoproject.org/msg33572.html

2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
> Enable machine overrides for RK3288.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rk3288.inc | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
> index 86fc567..769e5c1 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -1,7 +1,10 @@
>  # Copyright (C) 2015 Romain Perier
>  # Released under the MIT license (see COPYING.MIT for the terms)
>
> +SOC_FAMILY = "rk3288"
> +
>  require conf/machine/include/tune-cortexa17.inc
> +require conf/machine/include/soc-family.inc
>
>  PREFERRED_PROVIDER_virtual/kernel = "linux"
>  SERIAL_CONSOLES = "115200;ttyS2"
> --
> 2.12.0.rc1.48.g076c053
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

