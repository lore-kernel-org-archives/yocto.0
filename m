Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3937DE00C84; Thu, 30 Nov 2017 09:16:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,URIBL_SBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: waveshare.com]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17D55E00AF2
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 09:16:42 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id t8so14401611wmc.3
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 09:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=AALoP3TURdP60YMGEckQm8rST2cACBNlM+x8UUf/Ruc=;
	b=q2HKHa6jVKET8XNJZl8zgEUa0r/Gne7FKqoh7pKTkifanr3FfMJ97AH4xo/SQLAp7F
	fW6bB66/F9F41Lncxb5+4PFtBljTc/Kgb2v+cUAs83VU2xnxKa0nuU5Kyf50lTev4XMj
	Wck52wqEK+rut2IGmF6xt09crpIqEvNHeo6wLfSbTXyXso1nUVtBgBQOfZKyzeW1CYJg
	o794lTvpmjlCJUjPqmKpqPYCZzdQCmZlFGzUYIojdgOO+00DeV2ZASLsVH9d09UeHZoi
	o2+LLdhLBCOW+BsqjPmdOjAx8WEeDcraMzeYD+CeeW2mLJ/9VmxiViKNyENHkTaPdchx
	fJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=AALoP3TURdP60YMGEckQm8rST2cACBNlM+x8UUf/Ruc=;
	b=lCfPl6ULk7KEWz2PrV5xENWdll+TPMPncpbKDDo8+7c+HsZvuMxMee5RVs9msV/h8+
	NDmMrAi8ydCQfA/JqddmXolmcR7ffQ+emeto4u43N3xsMYPObwLb8g5YbAPygWiZ9b9K
	Q0moxY7nQ+cViSyyTL/gyh09cTUcYpAX4vA+oe6opk+FvTtcWNHbTMKHKvD1/3izVgm5
	LLOmg52s8lRpgNktiFQlin4TZ9e4N+A/EvjC5dTv+cv32YouQ7jJvAdV4rVBW8w256we
	GZgzECLxUJ1LdlLPgdJ5OWQDU4F2GWGp7FhuDDziooFsRjOpQkaebhH/nm0w3O6Jz602
	Zbkw==
X-Gm-Message-State: AJaThX6mHDM9GjThWHdjvpqiyxkIOzJ7GKQXw3YkVo34IrPEi+9bPhpt
	s7sxnh+lO98SlMC9Fg3pIOX8+fgMt06o0OYwU/20VMWy
X-Google-Smtp-Source: AGs4zMYTJxDtAvAuFAgoza4bqGQThlHVjSU8ulqSv7xbDg9DsX9mcUI/nooeJ1siPfLlLm776U/D1VwVvQh8hz8Qs7o=
X-Received: by 10.28.48.150 with SMTP id w144mr2443200wmw.23.1512062201956;
	Thu, 30 Nov 2017 09:16:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.183.193 with HTTP; Thu, 30 Nov 2017 09:16:41 -0800 (PST)
In-Reply-To: <1511994009-11240-1-git-send-email-drew.moseley@northern.tech>
References: <1511994009-11240-1-git-send-email-drew.moseley@northern.tech>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 30 Nov 2017 17:16:41 +0000
Message-ID: <CAPyrkgz4w-EW6Q+Erv3DL391NTUSiCKG-DPrydDmX9NEapwrNg@mail.gmail.com>
To: drew.moseley@northern.tech
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: Setup lcd_rotate for Raspberry Pi display
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
X-List-Received-Date: Thu, 30 Nov 2017 17:16:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2017 at 10:20 PM,  <drew.moseley@northern.tech> wrote:
> From: Drew Moseley <drew.moseley@northern.tech>
>
> Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
> ---
>  docs/extra-build-config.md              | 6 ++++++
>  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
>  2 files changed, 12 insertions(+)
>
> diff --git a/docs/extra-build-config.md b/docs/extra-build-config.md
> index 380d969..0390eee 100644
> --- a/docs/extra-build-config.md
> +++ b/docs/extra-build-config.md
> @@ -170,6 +170,12 @@ Screen LCD, HDMI interface (<http://www.waveshare.co=
m/7inch-HDMI-LCD-C.htm>) Rev
>
>      WAVESHARE_1024X600_C_2_1 =3D "1"
>
> +If you would like to use the Raspberry Pi, 7 inch Capacitive Touch Scree=
n
> +LCD (https://www.raspberrypi.org/products/raspberry-pi-touch-display/), =
please
> +set the following in your local.conf:
> +
> +    RASPBERRYPI_DISPLAY =3D "1"
> +
>  ## Enable UART
>
>  RaspberryPi 0, 1, 2 and CM will have UART console enabled by default.
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfi=
les/rpi-config_git.bb
> index ca4160b..e9a4fe2 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -127,6 +127,12 @@ do_deploy() {
>          echo "hdmi_cvt 1024 600 60 6 0 0 0" >> ${DEPLOYDIR}/bcm2835-boot=
files/config.txt
>          echo "hdmi_drive=3D1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt
>      fi
> +
> +    # Raspberry Pi 7" Display/Touch screen (https://www.raspberrypi.org/=
products/raspberry-pi-touch-display/)
> +    if [ "${RASPBERRYPI_DISPLAY}" =3D "1" ]; then
> +        echo "# Raspberry Pi 7\" display/touch screen" >> ${DEPLOYDIR}/b=
cm2835-bootfiles/config.txt
> +        echo "lcd_rotate=3D2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt
> +    fi
>  }
>
>  do_deploy_append_raspberrypi3-64() {

This all looks good in general. Just a quick check though - are all
users of this display going to want that lcd_rotate value? I've never
used this display so not sure if that's specific to particular use
cases or not.

If you're happy that this is applicable for everyone could you submit
this as a pull request on github
(https://github.com/agherzan/meta-raspberrypi).

Thanks,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

