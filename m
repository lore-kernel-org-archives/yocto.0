Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E802E00A92; Mon, 10 Aug 2015 15:20:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D26BE00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 15:20:03 -0700 (PDT)
Received: by ioii16 with SMTP id i16so184295425ioi.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 15:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GOEmBBTYkKuGGoPgA9JEW+JkEsPp0VhwSdZiRYVeew8=;
	b=Sg65KPgj385Yl+5UmV8y+Tgl9/oUegvasbxz2IYsw1ZRA4npzkPpxYTRBgGNtNlurJ
	OFBNjhHo6D4Xf0p+/y8O6II87Tj4tplF7l++YdsJwZasgCWPTzNC/Q39lCdr+fNfb01Q
	pUDi1JLvC6d4H6gBOvsRpU564UNZMFNfdq/BjGeezaC8lY8yutWvXAQBQ/nNSh/Ftuzs
	AWrvqKBTRkUGN1qmBduovpyYwhDf4bD/q3nIN5SZdHi1OiQKWhZff22nlHOvEYn3t99w
	gSTXBYFNOOX62WguAc29vZ4FO+q7DES7UMIOM/k7qT8BDvXiSUWTCyYYWEIOqdHxipYj
	qJ/Q==
MIME-Version: 1.0
X-Received: by 10.107.158.197 with SMTP id h188mr22632948ioe.99.1439245203446; 
	Mon, 10 Aug 2015 15:20:03 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Mon, 10 Aug 2015 15:20:03 -0700 (PDT)
In-Reply-To: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
References: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
Date: Tue, 11 Aug 2015 00:20:03 +0200
Message-ID: <CALbNGRRmT5ZefSGBAZcNjWWfxpd6tjrYJRPMdkahcqGP3HHd7Q@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: Update kernel to 3.18.16
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
X-List-Received-Date: Mon, 10 Aug 2015 22:20:09 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 10, 2015 at 1:08 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
> This requires some changes to KERNEL_DEVICETREE as the dtb
> layout has changed to support overlays. This change also
> makes us ready to support kernel 4.x series
>
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---
>  conf/machine/include/rpi-base.inc              | 22 ++++++++++------------
>  recipes-kernel/linux/linux-raspberrypi_3.18.bb |  9 +++++++--
>  2 files changed, 17 insertions(+), 14 deletions(-)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 1dda207..8caa5ba 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -23,18 +23,16 @@ KERNEL_DEVICETREE ?= " \
>      bcm2708-rpi-b-plus.dtb \
>      bcm2709-rpi-2-b.dtb \
>      \
> -    ds1307-rtc-overlay.dtb \
> -    hifiberry-amp-overlay.dtb \
> -    hifiberry-dac-overlay.dtb \
> -    hifiberry-dacplus-overlay.dtb \
> -    hifiberry-digi-overlay.dtb \
> -    iqaudio-dac-overlay.dtb \
> -    iqaudio-dacplus-overlay.dtb \
> -    lirc-rpi-overlay.dtb \
> -    pcf8523-rtc-overlay.dtb \
> -    pps-gpio-overlay.dtb \
> -    w1-gpio-overlay.dtb \
> -    w1-gpio-pullup-overlay.dtb \
> +    overlays/hifiberry-amp-overlay.dtb \
> +    overlays/hifiberry-dac-overlay.dtb \
> +    overlays/hifiberry-dacplus-overlay.dtb \
> +    overlays/hifiberry-digi-overlay.dtb \
> +    overlays/iqaudio-dac-overlay.dtb \
> +    overlays/iqaudio-dacplus-overlay.dtb \
> +    overlays/lirc-rpi-overlay.dtb \
> +    overlays/pps-gpio-overlay.dtb \
> +    overlays/w1-gpio-overlay.dtb \
> +    overlays/w1-gpio-pullup-overlay.dtb \
>      "
>  KERNEL_IMAGETYPE ?= "Image"
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> index 6d8b155..18c2020 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> @@ -1,6 +1,11 @@
> -LINUX_VERSION ?= "3.18.11"
> +LINUX_VERSION ?= "3.18.16"
>
> -SRCREV = "d64fa8121fca9883d6fb14ca06d2abf66496195e"
> +SRCREV = "1bb18c8f721ef674a447f3622273f2e2de7a205c"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y"
>
>  require linux-raspberrypi.inc
> +
> +# Create missing out of tree 'overlays' directory prior to install step
> +do_compile_append() {
> +  mkdir -p ${B}/arch/arm/boot/dts/overlays
> +}
> --
> 1.9.1
>
Have no time to test but if working fine this series could be a good
base for V2 of the kernel 4.1 vc4 series.

Andreas

