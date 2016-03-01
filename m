Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20C7BE00BEF; Tue,  1 Mar 2016 05:39:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49C0EE00B97
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:39:09 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id l68so33795992wml.1
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=Ck8qkiI02lzAoT7Ycjj5syj18bZTY2fVYM+kooWKV0g=;
	b=PYY5BA6Y3BxwwfvVwWxCPNSFQ9Gv9tleUOzeoNl0zELRn+DE6sZZ2E1hZgTs8iKmQb
	aHf772Aq5/G8Ckk7CBA0Q4X7Yv4efNn5hCf1pIDS3dISJkmcN8QGoX7SVo4ZO3IgQG0S
	2yLEpLueIFO6pCYE7lNvgdDGT0zz1OoUlhTS3KSgmRd7n0dN9+bja1CnoKxwhAXdm7sL
	Tu/XYIG5X7GKleNhFIqIWIIVVFz62tVioOQacSjyqEogxydBBVLLgWbvpdrNqZOJAb8G
	aPuJg1aIL80UyMyL1LIFs7cDRWE63OPorP/4Qu3jmndjn7j49X7wOEIj+/P+eoEF2pSx
	y+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=Ck8qkiI02lzAoT7Ycjj5syj18bZTY2fVYM+kooWKV0g=;
	b=VfbVao+CS+hlFHNwuE3ZEBStjZ+Hd0oKScw2kQNUUZH2XR7ueGhl6HZ9dOntebYq8b
	T5w8baYRSjqxCtk9BDVAewA4hxoTrhCBbM19YiowzsyPN0iAUCxRbpfUz8ZmewQnduli
	dTngS7oCUUz0jaOqzEFm5VcizP16UAy2jXvuxx60mdBuncTV73CIndlND6mWoaiA02+G
	stfZKxtPuyyjT09RGk9OjpJLNhXMr8fzrW0dFnaYK9fC0YTzQqW0V6EytUUJndrno6di
	E3rhX5qRFY9c030EKt7mhYaKQHHWgo2fvH9j6DE0MkOlqPkwaODq2S509d84HHnIefMR
	XpPA==
X-Gm-Message-State: AD7BkJI7dX3JEH5j2f9pxN2mBvwVlWmKg65qQlyARIMbT2Wjv+WyOGtocz7f2Pdt9Sj68g==
X-Received: by 10.194.91.233 with SMTP id ch9mr20515174wjb.121.1456839549253; 
	Tue, 01 Mar 2016 05:39:09 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	lz5sm30891142wjb.5.2016.03.01.05.39.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:39:08 -0800 (PST)
Date: Tue, 1 Mar 2016 14:39:06 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160301133906.GD21641@resin.home>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
	<1456667173-28743-6-git-send-email-petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <1456667173-28743-6-git-send-email-petter@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3 5/6] pitft: Add basic support for PiTFT
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
X-List-Received-Date: Tue, 01 Mar 2016 13:39:14 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 02:46:12PM +0100, Petter Mabäcker wrote:
> Add basic support for PiTFT display by using device-trees.
>
> In order get it working below configurations must be active in
> local.conf:
>
> MACHINE_FEATURES += "pitft"
>  - This will enable SPI bus and i2c device-trees, it will also setup
>    framebuffer for console and x server on PiTFT.
>
> [Support #70]
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>
> ---
>  README                                             | 29 ++++++++++++++++------
>  recipes-bsp/bootfiles/rpi-config_git.bb            |  6 +++--
>  .../rpi/xorg.conf.d/99-pitft.conf                  |  5 ++++
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  | 11 ++++++--
>  recipes-kernel/linux/linux-raspberrypi.inc         |  6 ++++-
>  5 files changed, 44 insertions(+), 13 deletions(-)
>  create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
>
> diff --git a/README b/README
> index 8ef4e7a..6a6c398 100644
> --- a/README
> +++ b/README
> @@ -22,10 +22,11 @@ Contents:
>      2.H. Optional - Enable kgdb over console support
>      2.I. Optional - Enable SPI bus
>      2.J. Optional - Enable I2C
> -    2.K. Images
> -    2.L. Boot to U-Boot
> -    2.M. Image with Initramfs
> -    2.N. Device tree support
> +    2.K. Optional - Enable PiTFT support
> +    2.L. Images
> +    2.M. Boot to U-Boot
> +    2.N. Image with Initramfs
> +    2.O. Device tree support
>  3. Extra apps
>      3.A. omxplayer
>  4. Source code and mirrors
> @@ -157,7 +158,19 @@ ENABLE_SPI_BUS = "1"
>  When using device tree kernels, set this variable to enable I2C
>  ENABLE_I2C = "1"
>
> -2.K. Images
> +2.K. Optional - Enable PiTFT support
> +====================================
> +Basic support for using PiTFT screens can be enabled by adding
> +below in local.conf:
> +
> +MACHINE_FEATURES += "pitft"
> +  - This will enable SPI bus and i2c device-trees, it will also setup
> +    framebuffer for console and x server on PiTFT.
> +
> +NOTE: To get this working the overlay for the PiTFT model must be build,
> +      added and specified as well (dtoverlay=<driver> in config.txt)
> +
> +2.L. Images
>  ===========
>  * rpi-hwup-image
>      Hardware up image
> @@ -167,7 +180,7 @@ ENABLE_I2C = "1"
>      Image based on rpi-basic-image which includes most of the packages in this
>      layer and some media samples.
>
> -2.L. Boot to U-Boot
> +2.M. Boot to U-Boot
>  ===================
>  To have u-boot load kernel image, set in your local.conf
>  KERNEL_IMAGETYPE = "uImage"
> @@ -175,7 +188,7 @@ KERNEL_IMAGETYPE = "uImage"
>  This will make kernel.img be u-boot image which will load uImage.
>  By default, kernel.img is the actual kernel image (ex. Image).
>
> -2.M. Image with Initramfs
> +2.N. Image with Initramfs
>  =========================
>  To build an initramfs image :
>      * Set this 3 kernel variables (in linux-raspberrypi.inc for example)
> @@ -188,7 +201,7 @@ To build an initramfs image :
>      * Set the meta-rasberrypi variable (in raspberrypi.conf for example)
>          - KERNEL_INITRAMFS = "-initramfs"
>
> -2.N. Device tree support
> +2.O. Device tree support
>  =========================
>  Device tree for RPi is only supported when using linux-raspberrypi 3.18+
>  kernels.
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index ccb9b7f..236a359 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -15,6 +15,8 @@ S = "${WORKDIR}/git"
>
>  PR = "r4"
>
> +PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
> +
>  inherit deploy
>
>  do_deploy() {
> @@ -68,12 +70,12 @@ do_deploy() {
>      fi
>
>      # SPI bus support
> -    if [ -n "${ENABLE_SPI_BUS}" ]; then
> +    if [ -n "${ENABLE_SPI_BUS}" ] || [ "${PITFT}" = "1" ]; then
>          echo "# Enable SPI bus" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "dtparam=spi=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
>
> -    if [ -n "${ENABLE_I2C}" ]; then
> +    if [ -n "${ENABLE_I2C}" ] || [ "${PITFT}" = "1" ]; then
>          echo "# Enable I2C" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "dtparam=i2c1=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "dtparam=i2c_arm=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
> new file mode 100644
> index 0000000..0d2b36b
> --- /dev/null
> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
> @@ -0,0 +1,5 @@
> +Section "Device"
> +    Identifier "Adafruit PiTFT"
> +    Driver "fbdev"
> +    Option "fbdev" "/dev/fb1"
> +EndSection
> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> index 2cf40f8..0ae2ee0 100644
> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -1,10 +1,17 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> -SRC_URI_append_rpi = " file://xorg.conf.d/10-evdev.conf "
> +SRC_URI_append_rpi = " file://xorg.conf.d/10-evdev.conf \
> +                       file://xorg.conf.d/99-pitft.conf \
> +                     "
>
>  do_install_append_rpi () {
>  	install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
> -	install -m 0644 ${WORKDIR}/xorg.conf.d/* ${D}/${sysconfdir}/X11/xorg.conf.d/
> +	install -m 0644 ${WORKDIR}/xorg.conf.d/10-evdev.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
> +
> +	PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
> +	if [ "${PITFT}" = "1" ]; then
> +		install -m 0644 ${WORKDIR}/xorg.conf.d/99-pitft.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
> +	fi
>  }
>
>  FILES_${PN}_rpi += "${sysconfdir}/X11/xorg.conf ${sysconfdir}/X11/xorg.conf.d/*"
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index 8c7c46c..e31270d 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -53,7 +53,11 @@ do_install_prepend() {
>  do_deploy_append() {
>      # Deploy cmdline.txt
>      install -d ${DEPLOYDIR}/bcm2835-bootfiles
> -    echo "${CMDLINE}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
> +    PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
> +    if [ ${PITFT} = "1" ]; then
> +        PITFT_PARAMS="fbcon=map:10 fbcon=font:VGA8x8"
> +    fi
> +    echo "${CMDLINE}${PITFT_PARAMS}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
>  }
>
>  do_rpiboot_mkimage() {

Merged to master.

--
Andrei Gherzan

