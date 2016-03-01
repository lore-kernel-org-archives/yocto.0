Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E23A7E00BB9; Tue,  1 Mar 2016 05:24:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91D6FE00B97
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:24:00 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id p65so33289590wmp.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=tp1WvR5Nr2T8SisjiUKAa2lFelok+Lvs0JmFCihlaWQ=;
	b=GPCeyjSjY1vWzzk77ZeTDvBkY5HCmEdjzktek8dG4bw/V2S9ELTE8wzj40jjYnWGPn
	JruPY/haFJfqhoMMTJRPOdzW7UU2+xxbzwctR3EaXj40siRz3cw7602lU1ju2HzNkBq+
	VeGnCps+3iS4HEwYTovcHpLuFJ878jvMClOSV0zOX4hv7p+2GYe8npw9ckyk5yvOjZ2i
	xizLYI070q3PGLAVkoCZ1Tv0/JbX6jMLAnNG8aG7RDh9HE/rrnwBFWZyg6PV9VHpmCvr
	yLAy7dY5nHEUArBBMiiycDwSK7E6xbjq/9GjO4jwThbEgzfBwIawO3njUX7a0bPVTtXo
	skPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=tp1WvR5Nr2T8SisjiUKAa2lFelok+Lvs0JmFCihlaWQ=;
	b=ipbDIAAHD3bC3FOdCkM3X2q6mDDMSWZR1iU+qsKSfpggZz4iQRIef4o/NThdt20Zw5
	OiZkFLERJUw3lJdTllRuvbG3MGzRlUMNvHgpp3VmnWdNqUBsfdC68ucJKeU/zt5Fnw4Q
	X6sJkt+0KE5V762EFAlBXH/Y3+BwTSN9n3Z6kDAvKAiQV/A37sC/XwmZCHDeJJuUyO8s
	c8jEHEbT19AQMHew1SiqW59ZLwoLYSkNfQG5so+Z6neE7dlvhbjZf0PXyQMzYRaNgMhw
	SH0TozG6uSUPu+PItVgAUjsb003TDoX5fBWvKpPMen2WV5QzIuLbesy2aUxPkACAxXCR
	9sfQ==
X-Gm-Message-State: AD7BkJL2cc6YJ/L5QbE+lt8UFfQIzpXr0M0pPsOCqQLAnYagc5Vk3aytj3rtGfKRXvva6Q==
X-Received: by 10.28.46.82 with SMTP id u79mr3990432wmu.67.1456838639220;
	Tue, 01 Mar 2016 05:23:59 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	b5sm21351077wmh.15.2016.03.01.05.23.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:23:57 -0800 (PST)
Date: Tue, 1 Mar 2016 14:23:52 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160301131114.GA21641@resin.home>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
	<1456667173-28743-4-git-send-email-petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <1456667173-28743-4-git-send-email-petter@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3 3/6] rpi-config: I2C support
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
X-List-Received-Date: Tue, 01 Mar 2016 13:24:05 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 02:46:10PM +0100, Petter Mabäcker wrote:
> With newer kernels (>=3.18) that supports device-trees I2C
> should be enabled with device-trees.
>
> This is now support by adding:
> ENABLE_I2C = "1"
> in local.conf
>
> This will enable the dtparams:
> i2c1
> i2c_arm
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>
> ---
>  README                                  | 21 +++++++++++++--------
>  recipes-bsp/bootfiles/rpi-config_git.bb |  6 ++++++
>  2 files changed, 19 insertions(+), 8 deletions(-)
>
> diff --git a/README b/README
> index a168692..8ef4e7a 100644
> --- a/README
> +++ b/README
> @@ -21,10 +21,11 @@ Contents:
>      2.G. Optional - Enable offline compositing support
>      2.H. Optional - Enable kgdb over console support
>      2.I. Optional - Enable SPI bus
> -    2.J. Images
> -    2.K. Boot to U-Boot
> -    2.L. Image with Initramfs
> -    2.M. Device tree support
> +    2.J. Optional - Enable I2C
> +    2.K. Images
> +    2.L. Boot to U-Boot
> +    2.M. Image with Initramfs
> +    2.N. Device tree support
>  3. Extra apps
>      3.A. omxplayer
>  4. Source code and mirrors
> @@ -151,8 +152,12 @@ ENABLE_KGDB = "1"
>  When using device tree kernels, set this variable to enable the SPI bus
>  ENABLE_SPI_BUS = "1"
>
> +2.J. Optional - Enable I2C
> +==========================
> +When using device tree kernels, set this variable to enable I2C
> +ENABLE_I2C = "1"
>
> -2.J. Images
> +2.K. Images
>  ===========
>  * rpi-hwup-image
>      Hardware up image
> @@ -162,7 +167,7 @@ ENABLE_SPI_BUS = "1"
>      Image based on rpi-basic-image which includes most of the packages in this
>      layer and some media samples.
>
> -2.K. Boot to U-Boot
> +2.L. Boot to U-Boot
>  ===================
>  To have u-boot load kernel image, set in your local.conf
>  KERNEL_IMAGETYPE = "uImage"
> @@ -170,7 +175,7 @@ KERNEL_IMAGETYPE = "uImage"
>  This will make kernel.img be u-boot image which will load uImage.
>  By default, kernel.img is the actual kernel image (ex. Image).
>
> -2.L. Image with Initramfs
> +2.M. Image with Initramfs
>  =========================
>  To build an initramfs image :
>      * Set this 3 kernel variables (in linux-raspberrypi.inc for example)
> @@ -183,7 +188,7 @@ To build an initramfs image :
>      * Set the meta-rasberrypi variable (in raspberrypi.conf for example)
>          - KERNEL_INITRAMFS = "-initramfs"
>
> -2.M. Device tree support
> +2.N. Device tree support
>  =========================
>  Device tree for RPi is only supported when using linux-raspberrypi 3.18+
>  kernels.
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index aa11b25..ccb9b7f 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -72,6 +72,12 @@ do_deploy() {
>          echo "# Enable SPI bus" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "dtparam=spi=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
> +
> +    if [ -n "${ENABLE_I2C}" ]; then
> +        echo "# Enable I2C" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtparam=i2c1=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtparam=i2c_arm=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
>  }
>
>  addtask deploy before do_package after do_install

I rebased this on current master and merged to master. Thanks.

--
Andrei Gherzan

