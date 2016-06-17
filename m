Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F22C6E00972; Fri, 17 Jun 2016 01:56:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A050DE0071C
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 01:56:36 -0700 (PDT)
Received: from nbhjo (111-250-199-179.dynamic.hinet.net [111.250.199.179])
	by msfrf2622.sfr.fr (SMTP Server) with ESMTP id 8162C1C000434;
	Fri, 17 Jun 2016 10:56:35 +0200 (CEST)
Received: from nbhjo (111-250-199-179.dynamic.hinet.net
	[111.250.199.179])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2622.sfr.fr (SMTP Server) with ESMTPSA;
	Fri, 17 Jun 2016 10:56:33 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>
References: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
	<1464641195-88380-4-git-send-email-herve.jourdain@neuf.fr>
	<20160615001212.GF22479@resin>
	<033901d1c86c$ff1a9390$fd4fbab0$@neuf.fr>
In-Reply-To: <033901d1c86c$ff1a9390$fd4fbab0$@neuf.fr>
Date: Fri, 17 Jun 2016 10:56:29 +0200
Message-ID: <033c01d1c876$26754210$735fc630$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQMZxfZoy0tZ4IWhluMkeiXQw5xx5wIRCG1xAh+F3GECcGXfLZ0oVnig
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 3/5] rpi-base.inc: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Fri, 17 Jun 2016 08:56:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Andrei,

So I've found a solution, I'll send a patch for it soon, but I'd like to
know your opinion, not sure you will like it...
In sdcard_image-rpi.bbclass, just before defining IMAGE_CMD_rpi-sdimg, I
add:
RPI_KERNEL_VERSION :=
"${@get_kernelversion_file('${STAGING_KERNEL_BUILDDIR}')}'

Then inside of IMAGE_CMD_rpi-sdimg, I use that variable when calling
get_dts(), instead of None, for the kernel version.
Also, I needed to add a 'version' parameter to split_overlays, because
without it it has the same problem - called from the same IMAGE_CMD without
TMPDIR.

It works, but it means that contrary to what there was before,
sdcard_image-rpi.bbclass needs to get "awareness" of the kernel version.
Do you think it's a problem?
If it is, what are your suggestions?

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Herve Jourdain
Sent: vendredi 17 juin 2016 09:51
To: 'Andrei Gherzan' <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH v4 3/5] rpi-base.inc: support
for .dtbo files for dtb overlays

Hi Andrei,

Sorry for the delay, but I've met some unexpected issue: when calling
IMAGE_CMD (which is the code that lives in sdcard_image-rpi.bbclass in
raspberrypi's case), TMPDIR is willfully deleted before the call...
But STAGING_KERNEL_BUILDDIR, which is used to find out what version of
kernel is used in case it's not passed, actually depends on it, so it's not
expanded.
So the kernel version test in linux-raspberrypi-base.bbclass fails when
get_dts is called from sdcard_image-rpi.bbclass without specifying the
kernel version - then just returns the default KERNEL_DEVICETREE value!

I believe it happens the same when testing with 3.18 - but I didn't build
3.18, and maybe it doesn't matter for building the image.

I'm trying to work around this issue without too much side-effects, and I
haven't found a nice solution so far - short from removing the line that
deletes TMPDIR...

Any suggestion is appreciated.

Herve

-----Original Message-----
From: Andrei Gherzan [mailto:andrei@gherzan.ro]
Sent: mercredi 15 juin 2016 02:12
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH v4 3/5] rpi-base.inc: support
for .dtbo files for dtb overlays

On Tue, May 31, 2016 at 04:46:33AM +0800, Herve Jourdain wrote:
> Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead 
> of
.dtb.
> Add support for both variants of overlays ("-overlay.dtb" and ".dtbo") 
> for the default KERNEL_DEVICETREE variable
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  conf/machine/include/rpi-base.inc | 36
> +++++++++++++++++++++++++++++++++++-
>  1 file changed, 35 insertions(+), 1 deletion(-)
>
> diff --git a/conf/machine/include/rpi-base.inc
> b/conf/machine/include/rpi-base.inc
> index 56ca83e..2c9d8e0 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -16,7 +16,7 @@ XSERVER = " \
>      "
>
>  # Really supported starting from linux-raspberrypi 3.18.y only 
> -KERNEL_DEVICETREE ?= " \
> +KERNEL_DEVICETREE_OVERLAYS_DTB = " \
>      bcm2708-rpi-b.dtb \
>      bcm2708-rpi-b-plus.dtb \
>      bcm2709-rpi-2-b.dtb \
> @@ -38,6 +38,40 @@ KERNEL_DEVICETREE ?= " \
>      overlays/w1-gpio-pullup-overlay.dtb \
>      overlays/pi3-miniuart-bt-overlay.dtb \
>      "
> +KERNEL_DEVICETREE_OVERLAYS_DTBO = " \
> +    bcm2708-rpi-b.dtb \
> +    bcm2708-rpi-b-plus.dtb \
> +    bcm2709-rpi-2-b.dtb \
> +    bcm2710-rpi-3-b.dtb \
> +    \
> +    overlays/hifiberry-amp.dtbo \
> +    overlays/hifiberry-dac.dtbo \
> +    overlays/hifiberry-dacplus.dtbo \
> +    overlays/hifiberry-digi.dtbo \
> +    overlays/i2c-rtc.dtbo \
> +    overlays/iqaudio-dac.dtbo \
> +    overlays/iqaudio-dacplus.dtbo \
> +    overlays/lirc-rpi.dtbo \
> +    overlays/pitft22.dtbo \
> +    overlays/pitft28-resistive.dtbo \
> +    overlays/pps-gpio.dtbo \
> +    overlays/rpi-ft5406.dtbo \
> +    overlays/w1-gpio.dtbo \
> +    overlays/w1-gpio-pullup.dtbo \
> +    overlays/pi3-miniuart-bt.dtbo \
> +    "
> +
> +def cmpver_strings(ver1, ver2, truevalue, falsevalue):
> +    from distutils.version import LooseVersion
> +    ver1 = ''.join(ch for ch in ver1 if ch in '0123456789.')
> +    ver2 = ''.join(ch for ch in ver2 if ch in '0123456789.')
> +    if LooseVersion(ver1) >= LooseVersion(ver2):
> +        return truevalue
> +    else:
> +        return falsevalue
> +
> +KERNEL_DEVICETREE ?=
"${@cmpver_strings("${PREFERRED_VERSION_linux-raspberrypi}", "4.4",
"${KERNEL_DEVICETREE_OVERLAYS_DTBO}", "${KERNEL_DEVICETREE_OVERLAYS_DTB}")}"
> +
>  KERNEL_IMAGETYPE ?= "Image"
>

Can we avoid this duplication by translating dtbo->dtb for kernels before
4.4? And I would suggest doing this in linux-raspberrypi-base.bbclass . What
do you think? We should reuse code there for version too.

>  MACHINE_FEATURES += "apm usbhost keyboard vfat ext2 screen 
> touchscreen
alsa bluetooth wifi sdio"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


