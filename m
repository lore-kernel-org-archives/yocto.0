Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB796E00BE6; Tue,  1 Mar 2016 05:28:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41188E00B97
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:28:12 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id l68so36730436wml.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=IFasArfIGaBBUHyisWL/qdlw6A67Nz7lxxRMG9x9YyU=;
	b=DzMiZzU3sBlXCy+fOLlRqZBOCOoPBtnVrz9l3ILx4LdgQDmduqUWqmLsX7XNl0wGrz
	3hu6IqLaC4KbSLgZBTk7dsf7SqWmw5jm4FHIbZlSDJ5FZnzFpnTr0Iu63XAbMl441wAP
	HcyQnkaNwFQN1kWs6QrnnaF52/tgMUmYYZOfHA8fW+/mlw8MRJCPhIt6Vr06ActyTKl+
	A5PypWabcyby1HMsXp1TBsm8NVb5C357zD7/8+Rph66gUVitVquYScr/DiGGoG5yA83v
	swfjnnSnJ8TVc2Z1wfHjy7hafWssJZADTgnZo5VNlvekmvRPh+oBlASk3WKebffNA4Pb
	/DYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=IFasArfIGaBBUHyisWL/qdlw6A67Nz7lxxRMG9x9YyU=;
	b=RhkBRQCb42pFib74GAtgNMOM62HftKT+M7fpVF5xRk1NdNuHVSqfc/XgU1oExEaA2Z
	+bvjPcS6Bi24YaYwoKSyNTq7FQOCu7u5PcSguHVHypkZXgPN8aC8WN/87iUAPPszxTP0
	dZAxkA+qCvXmZikiUVLksJ4IX6pxFcW+SHLvVVcSoyNZHPSTmwOLPvaZ3Il8OSaqwQHv
	WZ8HX9tFbV6Tltau88QiOrw5kcNqKZGp4ZJbtY/KEZ4mG+y6UPGwI4VmFJIU0wd81VGK
	hRjqSvitqRmPA/NgX2TYzbQX+8gw74WTLYAbv1ZT6AbCyNICEkmsgECbitOD3Ge13UZf
	0ngQ==
X-Gm-Message-State: AD7BkJLjZiujnyrdVzpXY/LaVHglEJnE7Fr24BJ52kCKM0gbtmoi/IdPy5frI9Lw3js/Yg==
X-Received: by 10.194.184.171 with SMTP id ev11mr19858540wjc.44.1456838892032; 
	Tue, 01 Mar 2016 05:28:12 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	m67sm21419256wma.10.2016.03.01.05.28.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:28:11 -0800 (PST)
Date: Tue, 1 Mar 2016 14:28:09 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160301132809.GC21641@resin.home>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
	<1456667173-28743-2-git-send-email-petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <1456667173-28743-2-git-send-email-petter@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3 1/6] README: Add SPI bus chapter to content
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
X-List-Received-Date: Tue, 01 Mar 2016 13:28:14 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 02:46:08PM +0100, Petter Mabäcker wrote:
> The optional SPI bus chapter was missing in the content list.
>
> While at it also place it together with the other "optional" chapters,
> instead of in the end.
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>
> ---
>  README | 28 +++++++++++++++-------------
>  1 file changed, 15 insertions(+), 13 deletions(-)
>
> diff --git a/README b/README
> index 16ac1cb..a168692 100644
> --- a/README
> +++ b/README
> @@ -20,10 +20,11 @@ Contents:
>      2.F. Optional - Video camera support with V4L2 drivers
>      2.G. Optional - Enable offline compositing support
>      2.H. Optional - Enable kgdb over console support
> -    2.I. Images
> -    2.J. Boot to U-Boot
> -    2.K. Image with Initramfs
> -    2.L. Device tree support
> +    2.I. Optional - Enable SPI bus
> +    2.J. Images
> +    2.K. Boot to U-Boot
> +    2.L. Image with Initramfs
> +    2.M. Device tree support
>  3. Extra apps
>      3.A. omxplayer
>  4. Source code and mirrors
> @@ -145,7 +146,13 @@ To add the kdbg over console (kgdboc) parameter to the kernel command line,
>  set this variable in local.conf:
>  ENABLE_KGDB = "1"
>
> -2.I. Images
> +2.I. Optional - Enable SPI bus
> +==============================
> +When using device tree kernels, set this variable to enable the SPI bus
> +ENABLE_SPI_BUS = "1"
> +
> +
> +2.J. Images
>  ===========
>  * rpi-hwup-image
>      Hardware up image
> @@ -155,7 +162,7 @@ ENABLE_KGDB = "1"
>      Image based on rpi-basic-image which includes most of the packages in this
>      layer and some media samples.
>
> -2.J. Boot to U-Boot
> +2.K. Boot to U-Boot
>  ===================
>  To have u-boot load kernel image, set in your local.conf
>  KERNEL_IMAGETYPE = "uImage"
> @@ -163,7 +170,7 @@ KERNEL_IMAGETYPE = "uImage"
>  This will make kernel.img be u-boot image which will load uImage.
>  By default, kernel.img is the actual kernel image (ex. Image).
>
> -2.K. Image with Initramfs
> +2.L. Image with Initramfs
>  =========================
>  To build an initramfs image :
>      * Set this 3 kernel variables (in linux-raspberrypi.inc for example)
> @@ -176,7 +183,7 @@ To build an initramfs image :
>      * Set the meta-rasberrypi variable (in raspberrypi.conf for example)
>          - KERNEL_INITRAMFS = "-initramfs"
>
> -2.L. Device tree support
> +2.M. Device tree support
>  =========================
>  Device tree for RPi is only supported when using linux-raspberrypi 3.18+
>  kernels.
> @@ -189,11 +196,6 @@ kernels.
>  NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always disabled for
>        older kernel versions.
>
> -2.M. Optional - enable SPI bus
> -==============================
> -When using device tree kernels, set this variable to enable the SPI bus
> -ENABLE_SPI_BUS = "1"
> -
>  3. Extra apps
>  =============
>

I restructured a little the readme and included a similar change. It is master.
Thanks.

--
Andrei Gherzan

