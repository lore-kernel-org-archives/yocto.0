Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9A39E00B63; Sun, 18 Jun 2017 22:19:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47734E00AF0
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 22:19:04 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id m62so59923737itc.0
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 22:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=FXHszqYFZjWXuPMQT6TXdZ5Kh8pj0NjKzuY1wwEpHxU=;
	b=ooT1yQyf2kRPG9NiwTH5p/Z2wLpP8RweGJ28ZtMjQnFBKiCTlj0Ngq9v0cc0z6UcRo
	IkY5DuE9CdgK/ehtTAtx1aVl4rjjF0lnxM+CzsQia6NjF4tZCbd9+Wg2skfIk3PMLupo
	qumbe7yYUMtVIEB5qRQGQMmsLHit1NDOfh4RdBdoOTxpqwzanLB3NJ2l4ehBpAUxSl4U
	8ihR646y0hCZWEo0JTrBAP7t1aPfLQhxa788kxq1kNZeM5yQIijx7AxzMpz4YfIF9xZY
	gRpK8VpkXtkdSeAPuSovOxJr75EBT+dilnWxciV/GFEFPyVNWGBTMaWiN2VWApJWkPej
	fmRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=FXHszqYFZjWXuPMQT6TXdZ5Kh8pj0NjKzuY1wwEpHxU=;
	b=nUxkfhBHR2PgVVGEkD0Xq1A3cbTvzXkkfXQBHqdViOL6Tnzl29kmY+8RVcowhb5uFq
	ma3jxcUKbY1JfvxvED+Kc+xeZOMi1tY+mgmQWQWIeez/ZJK56rT/mrYHxqWDI8X3r0P9
	Ij/n5SpCnGtxdDgxPeA5VfHVrmSy4/WLJwZK3nazob/9iA/ie4jAQFYb70fYXVlpkS8t
	1OwoswxjZZAl7k9/G3hO8WgXa/hCy+3a+s1FKjV38UXTmsufQBAjeM8dg3UiLt6tO2Li
	4J5gx4U8X6Qee4YkyRIvprqOz1GoZxBeffcDwQHkbeXl3xOIUMZlNlN41kZzCWEVqH+A
	kHJA==
X-Gm-Message-State: AKS2vOzKDFM0kjE0cW+YARj3UoklCtvUS8vRwWCxgtyVZrSnNkVlmC0r
	GWMKkL2UHe4xkw==
X-Received: by 10.36.73.131 with SMTP id e3mr20972332itd.0.1497849543592;
	Sun, 18 Jun 2017 22:19:03 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id x83sm5717781ita.5.2017.06.18.22.19.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Jun 2017 22:19:02 -0700 (PDT)
Date: Mon, 19 Jun 2017 01:19:00 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: drew.moseley@mender.io
Message-ID: <20170619051900.GA9243@linux-uys3>
References: <cover.1497646644.git.drew.moseley@mender.io>
	<195a92fc1faa49495d1a2b6cda0134f07ce72189.1497646644.git.drew.moseley@mender.io>
MIME-Version: 1.0
In-Reply-To: <195a92fc1faa49495d1a2b6cda0134f07ce72189.1497646644.git.drew.moseley@mender.io>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-chip][RFC PATCH 3/3] chip: Add chip-u-boot-scr recipe and flash script
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
X-List-Received-Date: Mon, 19 Jun 2017 05:19:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2017-06-16 @ 05:15:40 PM, drew.moseley@mender.io wrote:
> diff --git a/README b/README
> index cccf59e..cf52e05 100644
> --- a/README
> +++ b/README
> @@ -59,4 +59,28 @@ To build a machine supported by this BSP layer follow the next steps:

Please wrap the additions to the README to 80 columns.

>  II. Flashing a C.H.I.P. board
>  ========================================
>  
> -<TODO>
> +As part of the build including this BSP layer, a U-Boot script and a shell script
> +are created to assist in flashing your images to the CHIP board.  Note that this
> +script assumes a maximum size for your UBI image of 0x0A000000 bytes.  If your UBI
> +image exceeds that, then you will need to adapt this to your environment.
> +
> +To successfully run this script you will first need to set your board into FEL mode.
> +chip. https://docs.getchip.com/chip.html#flash-chip-with-an-os
> +Insert a wire into the U14 header between pin 7 (FEL) and GND.  Then connect the
> +board with a USB cable to your build system.
> +
> +You need to specify the base filename of your UBI image using the UBI_IMAGE shell
> +variable before invoking the generated script as follows:
> +
> +$ UBI_IMAGE=core-image-full-cmdline-chip.ubi ./tmp/deploy/images/chip/flash_CHIP_board.sh

Outside of a udev tweak, this script needs to be run as root. It's traditional
to indicate commands run as root by prefixing them with a PS1 of '#'.

> +
> +This script will take some time to execute.  If you have a serial console connected to
> +your board, you will see the progress and a message on the console will indicate when
> +the flashing is completed. Additionally, once the image is properly flashed, the status
> +LED on the CHIP board will flash 30 times per second indicating that it is safe to power
> +down your board and disable FEL mode.
> +
> +WARNING: This will erase the entire contents of your CHIP board.
> +
> +NOTE: This setup is still compatible with the CHIP flashing utility available
> +at http://flash.getchip.com if you choose to reinstall the stock images.

