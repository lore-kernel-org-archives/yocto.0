Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82E28E00BD2; Sun, 16 Apr 2017 18:28:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4C6CE00BCC
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:28:40 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id o81so6803245wmb.0
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=lr5ZUpQkIAMYcaJchWKZawlT5MdvZOqhMxvg0Ifa5f0=;
	b=oKXPZw7AW8oDzL0tZFEx6lDXHRW44LDvdvOQB4kRskJwf0jqzEO3ZnDF2QVl5Aevd6
	8Cr3BWsDrsVqHvBZ9ZjdYRDWtr0Doe46J+ky/rMIJ2IeVRa8hhFnv2Tle6V8AAAVdHqT
	RkqrHZkUxrEUMUQmztMNA/gxjh7OiqkRjHe9gG8O5UGFlGeI1U3QLF5wXjqBlCHHaulu
	Z9jfnkVnph9w7PV+i/aCB4/8Yf94CscNmpCF3xUd9rXRfTSlJGFYQwzLu4mCG3/ITweH
	2n4eaPD8pyCutOVXaC4CcSmqRXqrWhF81MUuMUfE/s6gsKDfbe418TlvRu1zK8vMTYT1
	Goqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=lr5ZUpQkIAMYcaJchWKZawlT5MdvZOqhMxvg0Ifa5f0=;
	b=YeNa1VHGNbtHbpzq5KoDsVU+hj3j/EjKSNuirSumkWfSFHqYJfU2Gs/AlYXxHq23ox
	jySG2qr6hDYpB1DtoV7IMvkkAxKkP2SR6njNJIOfZz50C7afhVdaVYR/vsUpl7WUBLDY
	wvkMhbMd5Jc2AAyiwvudqwyTnlraUFAx/nBBrbiKQYQXErQDRA+hcjSsqg4IEXDrubWR
	oM6j9KZk7CJd5+BZTzm0PH4BIchktThCvVWQUTy7o8Hg78eUw+QoX7KMaSNjMGkczlyS
	8SRyk6ST0u5LY4TBB/Rtlw04dAEYQxeZfXKtIy2gJz58GsNZ3uQLsXAchwQpEZ9t27zu
	QKTA==
X-Gm-Message-State: AN3rC/7q4y6DJf14XzWhQ764AhWpBfaOa0704/1fXkWNPUSywbuaHcsk
	AfKE9ofF4hUQXQ==
X-Received: by 10.28.223.84 with SMTP id w81mr6880119wmg.32.1492392519900;
	Sun, 16 Apr 2017 18:28:39 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	l141sm8445215wma.32.2017.04.16.18.28.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:28:39 -0700 (PDT)
Date: Mon, 17 Apr 2017 02:28:37 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170417012837.GE16624@carbonA>
References: <20170414162035.23522-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170414162035.23522-1-raj.khem@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/5] pitft: Add support for pitft35r
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
X-List-Received-Date: Mon, 17 Apr 2017 01:28:42 -0000
X-Groupsio-MsgNum: 35594
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Qz2CZ664xQdCRdPu"
Content-Disposition: inline

--Qz2CZ664xQdCRdPu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 14, 2017 at 09:20:31AM -0700, Khem Raj wrote:
> From: Rob Woolley <rob.woolley@windriver.com>
>
> The support for the PiTFT 3.5 inch resistive touchscreen is optional.
> It may be enabled by adding the following line in local.conf:
>
> MACHINE_FEATURES += "pitft pitft35r"
>
> Signed-off-by: Rob Woolley <rob.woolley@windriver.com>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  README                                  | 1 +
>  conf/machine/include/rpi-base.inc       | 1 +
>  conf/machine/raspberrypi3-64.conf       | 1 +
>  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
>  4 files changed, 9 insertions(+)
>
> diff --git a/README b/README
> index 9fdd5eb..e44475c 100644
> --- a/README
> +++ b/README
> @@ -241,6 +241,7 @@ the modelname should be added as a MACHINE_FEATURES in local.conf like below:
>  List of currently supported models:
>      - pitft22
>      - pitft28r
> +    - pitft35r
>
>  3.O. Misc. display
>  ==================
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 092cbeb..9bcb91d 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -31,6 +31,7 @@ KERNEL_DEVICETREE ?= " \
>      overlays/lirc-rpi.dtbo \
>      overlays/pitft22.dtbo \
>      overlays/pitft28-resistive.dtbo \
> +    overlays/pitft35-resistive.dtbo \
>      overlays/pps-gpio.dtbo \
>      overlays/rpi-ft5406.dtbo \
>      overlays/w1-gpio.dtbo \
> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
> index ca10ed9..0efe3ff 100644
> --- a/conf/machine/raspberrypi3-64.conf
> +++ b/conf/machine/raspberrypi3-64.conf
> @@ -23,6 +23,7 @@ KERNEL_DEVICETREE = " \
>      overlays/lirc-rpi.dtbo \
>      overlays/pitft22.dtbo \
>      overlays/pitft28-resistive.dtbo \
> +    overlays/pitft35-resistive.dtbo \
>      overlays/pps-gpio.dtbo \
>      overlays/rpi-ft5406.dtbo \
>      overlays/w1-gpio.dtbo \
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index af55983..b3c5084 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -18,6 +18,7 @@ PR = "r5"
>  PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
>  PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
>  PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
> +PITFT35r="${@bb.utils.contains("MACHINE_FEATURES", "pitft35r", "1", "0", d)}"
>
>  VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
>
> @@ -99,6 +100,11 @@ do_deploy() {
>          echo "dtoverlay=pitft28-resistive,rotate=90,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
>
> +    if [ "${PITFT35r}" = "1" ]; then
> +        echo "# Enable PITFT35r display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtoverlay=pitft35-resistive,rotate=90,speed=42000000,fps=20" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
> +
>      # UART support
>      if [ "${ENABLE_UART}" = "1" ]; then
>          echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> --
> 2.12.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged the patches from Rob. Thanks.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--Qz2CZ664xQdCRdPu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0GkUACgkQJrqo2vax
FPYT6g//UwgRGwWO7P6Ogi5p9WNY9o0QVtU3H9fBWTmrP6HKaj/lCCgOdCiEgTlZ
/zIebzgpNqKA3rSzvlfXTa8eq2HVPRIkQXko4X4aMvM5+Jy3E1fpal3xW04yFK+/
RrtymkmgR7Uzbq2Aj40yLLzpvvyzOsMIjke+SfCmNBKrwfpkIx1ahtS13Iu+D42h
sT//GcNlW2G2TmD/1g26NcCCOVx3Vp809tX0jwlFhfEOI+Mbrr4ueleRotVxLoMY
vcDJafpLL1CPbqB/9DG5Cjjl5lD55xbTYeVKlyDcjMSGHI7oeaOf9DTuD7nbNv3m
U52M+7HzxlDeuWEgZlUbtvN/kRmDfdI0H9yhg8k38HMNyN/27UdGGI6RkG0FSYaP
JFvFDUUe7xgJ6BnsWgpXJhCSiwS8nMUAxdOWmfzNMm4K5F9XYjOmkFPNbM7kxmad
/HU3eavZm2NDX3/HSWSm8JW3sZsvze6SzFxw5K/qjJVu0owT6yFe0c78XlbDKl0k
dix7eUHQA8MA7JSyLV7r3IxYpFq70DsIlM8vJhPRC8o9BwT2agoHeXfQYeVE24eW
9G1BLCkJjEyD0yhOSvburbLBuVjbfKJWSRnz4/1vK/ap3KqSNgZj2PUMcJv+wm0P
oKfQ7xIP5giH3A1HCb+oW2mRPW26trizw3VlcAFPxwvPTk+gZLY=
=fSHN
-----END PGP SIGNATURE-----

--Qz2CZ664xQdCRdPu--
