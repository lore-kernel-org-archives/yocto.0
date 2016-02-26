Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7A7CE00DA6; Fri, 26 Feb 2016 09:15:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D6FCE00D90
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 09:14:55 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id a4so78498876wme.1
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 09:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=8+DkRyZjiecigtXOqr40/wKUEHKqev8Ysn+iG8G7fmM=;
	b=CLT0rM9UVbhlx+lyuYbCpKjUDCISIVB9LvA/7LMP7qPDxVa8MchRNPgoEikuBrqy1S
	ItsarHCnLMeKGOPskB5ySnba+19MXQqnakPEuyLGqj86TZnwqChqhJP4CkPpQ+4Im4Sb
	+N6l240XD6k2SouP3P0d/9+m2FFuzoibZkKbQBTR7aqnnohpbqU7wBUbZgH4U+Tbl/BP
	TCbPMjTzKN668E8qYPUX5+dJAJKCLRYdNPAjQRvFouKmtAzHCZORR7XFbAniuhRj/yf1
	HY5H/yhmoFlUjqvZIj2cwwWw9Ydxflbc05kNH0mRiyy2jsZWw7Invy7JolNrzCQkJMkO
	f3wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=8+DkRyZjiecigtXOqr40/wKUEHKqev8Ysn+iG8G7fmM=;
	b=X4EgehFPEZlgGutxNK8N3hAJBA2gj+GjLRFFz8NCyshxOyn61DQcwl2iU8jFEdhfB0
	ONbeWdMufcyC1zMQTehb9o1BEaeMtrG4Z6GfzRfVL58xxeE8PKubIlm3w7fszqHEFXmx
	gl9gIIRcnwe2bgAxjkSdEgha1PucWekNrFwoz0A9P8T7rCUDqCxebaDCx5CazO10QCeO
	FuZrcj7w8TWzcfo5F0VnSPiq94qdtoEDmmmwXoDW47RZcWrRSW3PSYiF+/N69YfkF1y6
	Z0l59hfuLn20EK9E2pL4k1TU1Fr7JwGnGWRgd7Lvh27Xs+cR4JxqGaat7d7h8e6L+OtQ
	G/PA==
X-Gm-Message-State: AD7BkJLBI5tc4+xVwbvrBu1NcD2TxSTJNcDVDUPLKRPJCo9aBeG/1ge88JzDoQsakV4vAA==
X-Received: by 10.28.87.139 with SMTP id l133mr4077440wmb.38.1456506895259;
	Fri, 26 Feb 2016 09:14:55 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	p125sm3692767wmd.16.2016.02.26.09.14.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Feb 2016 09:14:54 -0800 (PST)
Date: Fri, 26 Feb 2016 18:14:46 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160226171446.GA4154@resin.home>
References: <1456478817-7221-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1456478817-7221-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: fix path to mkknlimg
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
X-List-Received-Date: Fri, 26 Feb 2016 17:15:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:
> The path had libexecdir hardcoded so it was no longer correct when
> libexecdir was changed in meta/conf/bitbake.conf from ${libdir}/${BPN}
> to ${prefix_native}/libexec for nativesdk recipes.
> 
> Fixes "No such file or directory" error when executing do_rpiboot_mkimage.
> 
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index 70e8bfe..8c7c46c 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
>      if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
>          if test -n "${KERNEL_DEVICETREE}"; then
>              # Add RPi bootloader trailer to kernel image to enable DeviceTree support
> -            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
> +            ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>          fi
>      fi
>  }
> -- 
> 2.7.1
> 

Back alive. testing this.

-- 
Andrei Gherzan

