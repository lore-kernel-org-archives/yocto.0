Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5246E00DAA; Sun, 28 Feb 2016 02:22:45 -0800 (PST)
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
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BDEEE00DAC
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:22:29 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id p65so5361730wmp.1
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=eDvf1cG4Sc/uUZTy1K9SrMJNKMasSGZXKiknHBU+aDc=;
	b=flM7UXZHMaV9ssQCHjS9wumdM5zTfyTCu9DFYhdkBKk/PUf0y6EzSVsmOBhs8VoarX
	TTGO4XIW0zixeaU8P/H3AO3Rl53Yuoy557qX6QmH7+XHtwvgvm+a01hCSv8moBet4ixs
	Q1zid2+1RLn/vkvEsRQDIao8oXUBR11S4wlLsLyPWduCZe6Jhhz4/NvzZoJ3ymbv4lsd
	Bz0QaqFeylbySvXOqebubvDqjorAkSQfkbg8ebIdxl7jeiLUKW/z048ZEXWTUdqDn55t
	fflOfypHnEvyJosBlnS9QR3dWWZKFw9GiSMkX/1SaDehkvKDKdXK9d5tGxcKjMFmw6Nf
	F7EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=eDvf1cG4Sc/uUZTy1K9SrMJNKMasSGZXKiknHBU+aDc=;
	b=dTjz2X25SkFJ+eklHIyXLtj3F6puJpLaa0rUQdbdnS8z7LpwyTtxj+QxXuqxbZMNE1
	APofiZq2kEogipKPb2mrn25SEIgjv3X3/TghAP39mmDpLuFEI55YE2WZsXEEchaGsJ2b
	PU36VvxP2X2x8/l+kgIISn6Co73w8spYqlADMExO+f+gSZo62SSYoBc9HbG6WtRUGt+W
	Br5xzxS0Gwe3iA4qMIOvnUJZO2FM82zvujBQkaBFsJbTqsHc6MpjypOObs6qnpq60m1r
	wnJYQrmvWTARRIgJ/gs6zwWOsASajdeV7gEPkHjFKX8Vu70rwFjZZGGPfkYHSm972jL+
	Edow==
X-Gm-Message-State: AD7BkJJZjujYv7NH+FzjLByayW7PdjzSV8aI+RCUopqdaC9ZXc8kCa3e/E7xMwTkt5tuLw==
X-Received: by 10.194.188.20 with SMTP id fw20mr11708511wjc.80.1456654949128; 
	Sun, 28 Feb 2016 02:22:29 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	hm9sm20482068wjb.34.2016.02.28.02.22.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Feb 2016 02:22:28 -0800 (PST)
Date: Sun, 28 Feb 2016 11:22:26 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160228102226.GC12618@resin.home>
References: <1456580809-29922-1-git-send-email-net147@gmail.com>
	<1456580809-29922-2-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1456580809-29922-2-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/3] linux-raspberrypi: update path to mkknlimg
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
X-List-Received-Date: Sun, 28 Feb 2016 10:22:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 28, 2016 at 12:46:48AM +1100, Jonathan Liu wrote:
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index 05f2d2b..8c7c46c 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
>      if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
>          if test -n "${KERNEL_DEVICETREE}"; then
>              # Add RPi bootloader trailer to kernel image to enable DeviceTree support
> -            ${STAGING_LIBEXECDIR_NATIVE}/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
> +            ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>          fi
>      fi
>  }
> -- 
> 2.7.1
> 
> -- 
Merged to master. Thanks.
-- 
Andrei Gherzan

