Return-Path: <leon@anavi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4589E00D01; Sun, 28 Feb 2016 10:08:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RDNS_NONE,T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
X-Greylist: delayed 3951 seconds by postgrey-1.32 at yocto-www;
	Sun, 28 Feb 2016 10:08:20 PST
Received: from anavi.org (unknown [91.215.217.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D30EE00CAA
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 10:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=anavi.org; 
	s=default;
	h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=XfklEEENJG2TaUmzYEpHh4mu5iGoh5DoREYFvXf2T3E=;
	b=OIhnYR1CKNCAPCxbhmpe1AOeFK
	JkU/DnXJAjWCQQMcX4qkuiurKtF1okK+FP9MP1qq+9PZhA8dPakEzVouE5QBqVN1Tp70YXkNWgeFO
	MKZJ8WDgaY/L6KXodeRkGaLcrGcGBuqrvQ0CjaUhFIoclH6MAX6Fc1pqJ76u0IrZA16A=; 
Received: from [::1] (port=33497 helo=voyager.icnhost.net)
	by voyager.icnhost.net with esmtpa (Exim 4.86)
	(envelope-from <leon@anavi.org>)
	id 1aa4ji-0001v6-Cl; Sun, 28 Feb 2016 19:02:26 +0200
MIME-Version: 1.0
Date: Sun, 28 Feb 2016 19:02:26 +0200
From: Leon Anavi <leon@anavi.org>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
In-Reply-To: <1456667173-28743-4-git-send-email-petter@technux.se>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
	<1456667173-28743-4-git-send-email-petter@technux.se>
Message-ID: <d8adc2c8e7d9a282da1ea688781ebf2b@anavi.org>
X-Sender: leon@anavi.org
User-Agent: Roundcube Webmail/1.0.6
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - voyager.icnhost.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - anavi.org
X-Get-Message-Sender-Via: voyager.icnhost.net: authenticated_id: leon@anavi.org
X-Authenticated-Sender: voyager.icnhost.net: leon@anavi.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
X-List-Received-Date: Sun, 28 Feb 2016 18:08:24 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Hi Petter,

On 2016-02-28 15:46, Petter Mabäcker wrote:
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

Nice, this is exactly what I needed. Actually, yesterday I was searching 
how to enable I2C through local.conf on rpi. I hope your patch will be 
soon merged.

Thanks, Leon

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
>  When using device tree kernels, set this variable to enable the SPI 
> bus
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
>      Image based on rpi-basic-image which includes most of the packages 
> in this
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
>      * Set this 3 kernel variables (in linux-raspberrypi.inc for 
> example)
> @@ -183,7 +188,7 @@ To build an initramfs image :
>      * Set the meta-rasberrypi variable (in raspberrypi.conf for 
> example)
>          - KERNEL_INITRAMFS = "-initramfs"
> 
> -2.M. Device tree support
> +2.N. Device tree support
>  =========================
>  Device tree for RPi is only supported when using linux-raspberrypi 
> 3.18+
>  kernels.
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb
> b/recipes-bsp/bootfiles/rpi-config_git.bb
> index aa11b25..ccb9b7f 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -72,6 +72,12 @@ do_deploy() {
>          echo "# Enable SPI bus" 
> >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "dtparam=spi=on" 
> >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
> +
> +    if [ -n "${ENABLE_I2C}" ]; then
> +        echo "# Enable I2C" 
> >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtparam=i2c1=on" 
> >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtparam=i2c_arm=on" 
> >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
>  }
> 
>  addtask deploy before do_package after do_install
> --
> 1.9.1

-- 
http://anavi.org/

