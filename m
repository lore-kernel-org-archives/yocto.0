Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB401E00ACE; Mon,  3 Apr 2017 06:39:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3101FE00A6D
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 06:39:45 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id x75so6039071wma.1
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 06:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=eCDXFqIkfile0lciQTuNhnhSxc0nQALINEWsNbTAHhQ=;
	b=Kymu5Xfqhx3INchGGibNXVHlhBS2K34aUbN3RiQtUJFgSCkyI/KzoP04Olzpmn33qY
	cuwWVZIQbzEtTm29byoYlJyZBDhniXOx36DlRmurmU4367QEvKPH4fgWzk0BzIthvfOe
	wXEoThgWcILWpALGqmU9qifdCb9LvGZAUEf/mAQPFDsV9atl3SvfosZkbQwa/x6zXvxX
	4XvMLVsks3dPbIt33IN/rpupWGYW/3BkW9MroBzLpHSJcrCMz06DJNhqJVmBgOU4Tswg
	SnN7q2+ohPSpJhyflYT+ez2GnM6Uktadyz1Ll99pJdea8bT1mgHlCwKJ6Keary9ryFrM
	GAZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=eCDXFqIkfile0lciQTuNhnhSxc0nQALINEWsNbTAHhQ=;
	b=NX2DgiTrgI4jpTuCk5m0j26cc1QZGpFQd10iTVbaO1gZeAm73AAtOcW1vAjDnlfdDi
	/6btQ9Qie0brnJXJoL0eF5b2S8gP1/mBNrSZaQ+6ITf9lc2l2PRVcL9ojW3ku5s8LkGL
	12AU1zRca5nX2NFbijp3Ckw9x0JLznyRJBeHb3OWTxU2BYtI3lR7paiyFYHTirWoB4xA
	siKyQYUkGGNrqW7C+1OD9IThi7cPA0af27NQkMREN/sJFr1bGIgqj0xTEQaH5zdqD4yN
	kbqb+wPaGeWIyiEyoczpMZP2NETaTr9MPld/el9JOrQhDnWq8L84wIg82nToPjO1mz88
	ueXw==
X-Gm-Message-State: AFeK/H3twerraF2cIu47/lutRvkUmlLEufreOWrNeWXNLKMJIQHpp2UB
	RNiJxJYjVOKMqw==
X-Received: by 10.28.7.13 with SMTP id 13mr9737955wmh.16.1491226784564;
	Mon, 03 Apr 2017 06:39:44 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	w93sm18313101wrb.3.2017.04.03.06.39.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Apr 2017 06:39:43 -0700 (PDT)
Date: Mon, 3 Apr 2017 14:39:41 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170403133941.GC27299@carbonA>
References: <20170324174916.17866-1-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170324174916.17866-1-twoerner@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: waveshare screen support
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
X-List-Received-Date: Mon, 03 Apr 2017 13:39:49 -0000
X-Groupsio-MsgNum: 35372
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Bu8it7iiRSEf40bY"
Content-Disposition: inline

--Bu8it7iiRSEf40bY
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 24, 2017 at 01:49:16PM -0400, Trevor Woerner wrote:
> Add support for the Waveshare 1024x600 "C" Rev2.1 7" IPS Capacitive Touch
> Screen LCD with HDMI interface:
>
> 	http://www.waveshare.com/7inch-HDMI-LCD-C.htm
> 	http://www.waveshare.com/wiki/7inch_HDMI_LCD_(C)
>
> This product works "out of the box" with the Raspberry Pi. Simply connect
> the provided HDMI and USB cables between the two devices. The touch<=3D>m=
ouse
> integration works automatically.
>
> Tested with a Raspberry Pi 3, with a 32-bit raspberrypi3 build.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  README                                  | 13 ++++++++++---
>  recipes-bsp/bootfiles/rpi-config_git.bb | 10 ++++++++++
>  2 files changed, 20 insertions(+), 3 deletions(-)
>
> diff --git a/README b/README
> index 65a1e5f..c58bc99 100644
> --- a/README
> +++ b/README
> @@ -29,7 +29,8 @@ Contents:
>      3.L. Enable SPI bus
>      3.M. Enable I2C
>      3.N. Enable PiTFT support
> -    3.O. Enable UART support
> +    3.O. Misc. display
> +    3.P. Enable UART support
>  4. Extra apps
>      4.A. omxplayer
>  5. Board Configuration
> @@ -241,9 +242,15 @@ List of currently supported models:
>      - pitft22
>      - pitft28r
>
> -3.O. Enable UART
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +3.O. Misc. display
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +If you would like to use the Waveshare "C" 1024=D7600, 7 inch Capacitive=
 Touch
> +Screen LCD, HDMI interface (http://www.waveshare.com/7inch-HDMI-LCD-C.ht=
m)
> +Rev 2.1, please set the following in your local.conf
> +WAVESHARE_1024X600_C_2.1 =3D "1"
>
> +3.P. Enable UART
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  RaspberryPi 1, 2 and CM will have UART console enabled by default.
>
>  RaspberryPi 3 does not have the UART enabled by default because this nee=
ds a
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfi=
les/rpi-config_git.bb
> index 20ec343..8adc938 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -110,6 +110,16 @@ do_deploy() {
>          echo "# Enable VC4 Graphics" >> ${DEPLOYDIR}/bcm2835-bootfiles/c=
onfig.txt
>          echo "dtoverlay=3Dvc4-kms-v3d,${VC4_CMA_SIZE}" >> ${DEPLOYDIR}/b=
cm2835-bootfiles/config.txt
>      fi
> +
> +    # Waveshare "C" 1024x600 7" Rev2.1 IPS capacitive touch (http://www.=
waveshare.com/7inch-HDMI-LCD-C.htm)
> +    if [ "${WAVESHARE_1024X600_C_2.1}" =3D "1" ]; then
> +        echo "# Waveshare \"C\" 1024x600 7\" Rev2.1 IPS capacitive touch=
 screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "max_usb_current=3D1" >> ${DEPLOYDIR}/bcm2835-bootfiles/con=
fig.txt
> +        echo "hdmi_group=3D2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt
> +        echo "hdmi_mode=3D87" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt
> +        echo "hdmi_cvt 1024 600 60 6 0 0 0" >> ${DEPLOYDIR}/bcm2835-boot=
files/config.txt
> +        echo "hdmi_drive=3D1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt
> +    fi
>  }
>
>  do_deploy_append_raspberrypi3-64() {
> --
> 2.12.0.rc1.48.g076c053
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--Bu8it7iiRSEf40bY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljiUJwACgkQJrqo2vax
FPZJARAAgt50I+fzF48IUEgowXLKXvPU8ddt3QaGFrwr6la6GCEfsGUi3iO3B9uv
VKmrRUJfK5HlvDkKuVYBabLkbcDacfajOGH0JdXToomiqcNgv9reJ9vpC86czyVD
nSGu5nu0zz9nSz94qupqZZlR+n08B27a6856eCwvrKBIfTpvokgVoFUMVJNjX525
clniVCujKl4iTlMU/yOIO4akxdaKQbVRKAyF/5a8DZ1u8P9VdmskawAurDXrwfAF
NBPrDL0pZ36n+j9426Xx3+ipbzVhqyO3dw3XTvi67gqbJVCtT/B2cBlNRbFyWqFg
203NA78gYVlRKDTkMzPtRsAWeStOaJF52voxSBRmw3HRQiRhLJ4MUwq7yPX6rQTo
CwLAbzEb1Wvw+7e05UXPduSvNrp+jimoMjIBkEDXwXzfKXhmuOt7a+5g4TG3Pr0j
0Z7wiH8cSr5O/YBZuqwDB1e7q+GPI5xfuTNGLzwhkxsgpgYnXYhPkVBQ3hA5+//i
8TGnGUO+mZYMDxLZmafPLCkcVOovkd1j1JqkEjIfPXEPvjHwcRTS9YFfzuOen4KB
gIiz8DrFBmXVhtbkPCqnei8Z1OWajbHtujGemAc9PZXEZ2oUWn3uTP97zlE0m1vt
08Zdzn4pbfm4+sZ34r26n7ODEj3x2TPRqQXs13DIaC33JJjDn5k=
=5QTC
-----END PGP SIGNATURE-----

--Bu8it7iiRSEf40bY--
