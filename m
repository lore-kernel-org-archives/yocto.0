Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 763CAE00CB4; Mon, 25 Apr 2016 00:22:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5B1DE00C86
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:22:43 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id v188so86335820wme.1
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=zphV8X05tVsC0nYtYgTO4rdCRDnOqQe3Sh3+h45eYyM=;
	b=wch84urpDyqYFv28mJgTGrlEjfhPrKtUpqnVeBz58MAb3cOXR9or3RTt0TGyo0owc5
	3oLuYgc4X2/Lw8ZZtAzysXRQ8Aj56+/cPfHmzLl+1AebjzqbpSxGwik9330TeSuzH39p
	+JH9YdWJLt2KcTXpVzIRGtJruWBOi/cVKoRNE7xkggietNiIke6Z002OQbnPy2i3tSVY
	Le+VmHZ62LopERymlr88W9qZADBF5eQl8c+6uXUGrrGCXknbDeFCHTUejtubjzJ2BnD/
	jPoD4lAw8KP+/AxKwXpsjr4BMUNfNGTOk9Ies2quqFeoeicxcTv6kvRad77u/4AvA1bw
	wmTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=zphV8X05tVsC0nYtYgTO4rdCRDnOqQe3Sh3+h45eYyM=;
	b=J2lToO0P9HZxWir12vAuDw8WVku9XCsKS0T0mzSUCNpdoZeqGa8xneW+pZg518Ze4U
	g2PllO89OeLiBd2+oMjp+XBhGWQcZQjifmiPByIq4Kbgbxps6C1a9eGz0pVoE2rQNxdX
	ecHNIuW74JvEFD9AJGyuudvG9iGVk+P/h6SBvytWsRp7E8zyCcHao29ieBDnI70WsIx0
	XTsiQRuPn3+iMHY9QV0BfECMCs5HvwC2ZT0slLcD6BTDc3fU9F74YBFT8+7FOG+ndPoN
	dn9VqgiYyx4x3K67ojXH+LTA1dxQFJWjl1rLryU06r6bwvTIcIqND1dYOh3p8gzb193O
	MPqA==
X-Gm-Message-State: AOPr4FU2TF4EgxJbS/kNqZHd4dblTAEtgoAiB7tldP0M1PKccL9EPURsA8cps+ejW9qsdg==
X-Received: by 10.194.184.38 with SMTP id er6mr31726048wjc.93.1461568962458;
	Mon, 25 Apr 2016 00:22:42 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	jq1sm22045966wjc.28.2016.04.25.00.22.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Apr 2016 00:22:41 -0700 (PDT)
Date: Mon, 25 Apr 2016 09:22:40 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Martin Bergek <martin@spotwise.com>
Message-ID: <20160425072240.GC26977@resin>
References: <B537844D-A7F2-4BF1-872B-A57826208F30@spotwise.com>
MIME-Version: 1.0
In-Reply-To: <B537844D-A7F2-4BF1-872B-A57826208F30@spotwise.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] Change serial console for Raspberry Pi 3
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
X-List-Received-Date: Mon, 25 Apr 2016 07:22:45 -0000
X-Groupsio-MsgNum: 29610
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vEao7xgI/oilGqZ+"
Content-Disposition: inline

--vEao7xgI/oilGqZ+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Martin,

On Tue, Apr 05, 2016 at 09:08:54AM +0200, Martin Bergek wrote:
> With the Raspberry Pi 3 the serial ports ttyS0 and ttyAMA0 have been switched around. This causes an issue with the serial console that has previously been set to ttyAMA0, causing the boot process to halt. I have a 100% failure rate when booting a Raspberry Pi 3 image built using the master branch of meta-raspberrypi. After a lot of testing it appears that the system fails to boot whenever the kernel command line specifies a console - regardless of whether it is ttyAMA0 or ttyS0.
>
> This patch changes the serial console and kernel command line to use default values, allowing the raspberrypi3 machine configuration to assign different values and to remove the kernel console. Now I get the console output to the screen but at least it boots. Not sure if this is an acceptable way of doing it but it fixed my problem.
>
> This patch has been verified on both the 4.1 and 4.4 kernel. It has also been tested with the raspberrypi2 machine configuration.
>
> Signed-off-by: Martin Bergek <martin at spotwise.com>
> ---
> conf/machine/include/rpi-base.inc          | 2 +-
> conf/machine/raspberrypi3.conf             | 4 ++++
> recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
> 3 files changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 792150e..5d6280b 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -7,7 +7,7 @@ include conf/machine/include/soc-family.inc
>
> IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
>
> -SERIAL_CONSOLE = "115200 ttyAMA0"
> +SERIAL_CONSOLE ?= "115200 ttyAMA0"
>
> XSERVER = " \
>     xserver-xorg \
> diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
> index 1b73f2f..2c76dc2 100644
> --- a/conf/machine/raspberrypi3.conf
> +++ b/conf/machine/raspberrypi3.conf
> @@ -6,4 +6,8 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
>
> MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
>
> +# Change serial console due to swapped ttyAMA0 and ttyS0 on the Raspberry Pi 3
> +SERIAL_CONSOLE = "115200 ttyS0"
> +CMDLINE = "dwc_otg.lpm_enable=0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
> +
> include conf/machine/raspberrypi2.conf
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index 24e7fe2..a3fe61a 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -20,7 +20,7 @@ KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
> KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
>
> # CMDLINE for raspberrypi
> -CMDLINE = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
> +CMDLINE ?= "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
>
> # Add the kernel debugger over console kernel command line option if enabled
> CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=ttyAMA0,115200", "", d)}'

This issue was fixed in master using serial0 magic string and the new
firmware. This will unlock your serial console. Be aware that you will
need to use enable_uart to force core_freq.

Cheers!

--
Andrei Gherzan

--vEao7xgI/oilGqZ+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXHcXAAAoJEHO76Gt+erfPkvEP/3jUrGcWOcIWg1dLbo0YKQ5G
hbDMdQDg1FEMfQrtXA2RpScdNzSjQonzsb08ZfdyIw1bS0RyRmVTSd+wvmV2WWEK
262LTklV9lZheISSVQo1+at8485fGZaG3eDAI70ua55xjpz5AcklWvSmzi6z7FU2
1M3g5mh2wxevJBfttCvseBSRWaN06+LJ/lj9TkPhqLSwv7P5emW6XtZgsR5GYvyS
nc4azZRNXdUMluPWpLfEngNo22f6V51VALKpiC03l4zU1y816JM9Qch1l837l4GF
ilkRH741wcJJuF/SHdq2aj5zhU1QmKTQPdAKHKjkhq7QaniRMKBxTPIVbHkjoU06
N4CR7ZGOdOrNQIxGcCSYS55C4hs8ybAhkSezn+pmIeXCxuekyMHhdnU1nFzAF+u3
OwqU/mlYuNx0t94XoKt2kytGRFTCXGtTDFKn6Je3SVqzmAgU1zRhyQBty74ld3eq
GtVnMFQw85eM+Rtsyly60KWRuXIOl1JdKMuwFimrAf6vTvH/76T9GxmrNzGUIUdd
euwHTCv5sQd9PtxMTO6d7vQJOfSiI+H4GZtoi7Wk+4ghOtjKK97AI0XwSPsIC8QN
0IrPsOe73grjqu2Qev/N3oUvmxmtcwotiCDW3o3xwLi9z3Jaj0uBmIfTMp+L8fW0
/KqKC1hU2Jg/6XJVlRsm
=A7g8
-----END PGP SIGNATURE-----

--vEao7xgI/oilGqZ+--
