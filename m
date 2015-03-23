Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4467EE00754; Mon, 23 Mar 2015 08:59:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8167E006DA
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 08:59:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 734C0F811E0; Mon, 23 Mar 2015 09:59:28 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id F0F22F811DF;
	Mon, 23 Mar 2015 09:59:27 -0600 (MDT)
Message-ID: <55103860.7010503@mlbassoc.com>
Date: Mon, 23 Mar 2015 09:59:28 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>
In-Reply-To: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>
Subject: Re: [meta-raspberrypi][PATCH] make sound work out of the box for raspberrypi2
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
X-List-Received-Date: Mon, 23 Mar 2015 15:59:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-03-22 14:21, Andreas Müller wrote:
> Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
> ---
>   ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38 ++++++++++++++++++++++
>   recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
>   2 files changed, 43 insertions(+), 3 deletions(-)
>   create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch

I tried this patch (which downloaded very strangely using Thunderbird) and the
kernel rebuilt fine.  I now have the audio detected, but still no sound :-(
Again I've tried the internal (phono) speakers as well as HDMI audio.

Just to prove a point on the [brand new] hardware, I installed OpenELEC (XBMC)
and it works fine using the HDMI audio.  Sadly when I tried Raspbian and Ubuntu
there was no sound either...

Were you (Andreas) able to get any sound with this patch?

> diff --git a/recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch b/recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch
> new file mode 100644
> index 0000000..cb06253
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch
> @@ -0,0 +1,38 @@
> +From dc6d02c68956a1833bd30159d4e411f1515db66e Mon Sep 17 00:00:00 2001
> +From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
> +Date: Wed, 18 Mar 2015 23:51:37 +0100
> +Subject: [PATCH] start sound during boot by compiling SND_BCM2835 into kernel
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=UTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
> +---
> + arch/arm/configs/bcm2709_defconfig | 4 ++--
> + 1 file changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/arch/arm/configs/bcm2709_defconfig b/arch/arm/configs/bcm2709_defconfig
> +index b5bf4cb..426f2ed 100644
> +--- a/arch/arm/configs/bcm2709_defconfig
> ++++ b/arch/arm/configs/bcm2709_defconfig
> +@@ -765,7 +765,7 @@ CONFIG_LOGO=y
> + # CONFIG_LOGO_LINUX_MONO is not set
> + # CONFIG_LOGO_LINUX_VGA16 is not set
> + CONFIG_SOUND=y
> +-CONFIG_SND=m
> ++CONFIG_SND=y
> + CONFIG_SND_SEQUENCER=m
> + CONFIG_SND_SEQ_DUMMY=m
> + CONFIG_SND_MIXER_OSS=m
> +@@ -778,7 +778,7 @@ CONFIG_SND_VIRMIDI=m
> + CONFIG_SND_MTPAV=m
> + CONFIG_SND_SERIAL_U16550=m
> + CONFIG_SND_MPU401=m
> +-CONFIG_SND_BCM2835=m
> ++CONFIG_SND_BCM2835=y
> + CONFIG_SND_USB_AUDIO=m
> + CONFIG_SND_USB_UA101=m
> + CONFIG_SND_USB_CAIAQ=m
> +--
> +1.9.3
> +
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> index 921e702..053e892 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> @@ -1,8 +1,10 @@
>   LINUX_VERSION ?= "3.18.5"
>
>   SRCREV = "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> +SRC_URI = " \
> +    git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
> +    file://sl030raspberrypii2ckernel.patch \
> +    file://0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch \
> +"
>
>   require linux-raspberrypi.inc
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

