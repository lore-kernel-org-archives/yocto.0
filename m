Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CE77E00AC8; Wed, 19 Apr 2017 09:51:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DEFDE00995
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:51:33 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id o81so5983751wmb.0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=6xTHJoifu+UUNkyZCdY4mmoQeDoLOdm7V48DgxMEJsY=;
	b=cAymsdpPsi5yehFoux4Jjnsot6vBpmOy6C6sq+amH1zsR//5vy78zCF5nVrUxmvxBH
	Vy9qmhLf6LTDAVLjB2e6juOdY7TgkOLWbSZUXO1aNdZb4XBvZ/MuLrGWpPBQW6qF5v5I
	TQFSp25ncVNW+7Z6xoumrCPRo2y+Lbp2BI/F8sZ/WXIHr+SyKm7XPHR26lMQ3VCTbI4p
	CN3LY7rUpSibqlm9JvXtc5c5WDn5Ekke/4T59eKherCT55pukxuQPkv97xxFzbCCY1Ao
	oHQcOZpssgOGp678HeTLkPzAr+jpjcwcT7T80s1fbrRSRqvauWVlzMI+qOQKgdp21IXK
	yrQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=6xTHJoifu+UUNkyZCdY4mmoQeDoLOdm7V48DgxMEJsY=;
	b=sV5bQBR+reZSJj1G9T8PAyGcs6axcIw9g8mwJ3To4BjUdROM9HSpnI9hW7J+5t1vav
	X7jea1HDGGvUJry6t946LzZtIpQ7s0A67hkDFr/tHHJ2Qx24Rf0BGI4cUNZQK20AAzRK
	vEiyhptUWwpAbseER1CNyJhI0pGJIBChS7SLLof+5+2KtKD3WqWfKoVuYISPjiupVm9l
	095mGTLwxt98vPT/oneJ3Vj8hOtkjmWjcASxSJjJ7FRw0Nu1tbkpHlMoMPcSJAxTCICj
	V3osLKEETWl74ctPAbJmI4y+OzVQFG7XO0MgAqlABi7IF/si8r/5zxLil40xhFuZQTaC
	G7RA==
X-Gm-Message-State: AN3rC/5jmULoJZxRthK8jhv+PSVeWt4xh/LM921KPaVCN5n7lksTScy/
	lclUrfgvTk7LkQ==
X-Received: by 10.28.206.195 with SMTP id e186mr3635762wmg.37.1492620692537;
	Wed, 19 Apr 2017 09:51:32 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	198sm20116281wmn.30.2017.04.19.09.51.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 19 Apr 2017 09:51:31 -0700 (PDT)
Date: Wed, 19 Apr 2017 17:51:27 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20170419165127.GB19325@carbonA>
References: <20170417123710.6374-1-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <20170417123710.6374-1-andrei@gherzan.ro>
User-Agent: Mutt/1.8.0 (2017-02-23)
Subject: Re: [meta-raspberrypi][morty][PATCH 1/7] linux-firmware: Bring up wifi/ble interface on rpi3
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
X-List-Received-Date: Wed, 19 Apr 2017 16:51:39 -0000
X-Groupsio-MsgNum: 35675
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s2ZSL+KKDSLx8OML"
Content-Disposition: inline

--s2ZSL+KKDSLx8OML
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 17, 2017 at 01:37:04PM +0100, Andrei Gherzan wrote:
> From: Khem Raj <raj.khem@gmail.com>
>
> Currently the firmware is installed but kernel fails to load it
> due this .txt file missing in the firmware directory and it ends
> up with wifi/bluetooth i/f not being initialized. The error is
> also in dmesg
>
> [    3.120991] usbcore: registered new interface driver brcmfmac
> [    3.148240] brcmfmac mmc1:0001:1: Direct firmware load for brcm/brcmfmac43430-sdio.txt failed with error -2
>
> After applying this patch now ifconfig -a can list wlan0 interface
> successfully.
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  .../linux-firmware/files/brcmfmac43430-sdio.txt    | 66 ++++++++++++++++++++++
>  .../linux-firmware/linux-firmware_%.bbappend       | 12 ++++
>  2 files changed, 78 insertions(+)
>  create mode 100644 recipes-kernel/linux-firmware/files/brcmfmac43430-sdio.txt
>  create mode 100644 recipes-kernel/linux-firmware/linux-firmware_%.bbappend
>
> diff --git a/recipes-kernel/linux-firmware/files/brcmfmac43430-sdio.txt b/recipes-kernel/linux-firmware/files/brcmfmac43430-sdio.txt
> new file mode 100644
> index 0000000..ea4f648
> --- /dev/null
> +++ b/recipes-kernel/linux-firmware/files/brcmfmac43430-sdio.txt
> @@ -0,0 +1,66 @@
> +# NVRAM file for BCM943430WLPTH
> +# 2.4 GHz, 20 MHz BW mode
> +
> +# The following parameter values are just placeholders, need to be updated.
> +manfid=0x2d0
> +prodid=0x0727
> +vendid=0x14e4
> +devid=0x43e2
> +boardtype=0x0727
> +boardrev=0x1101
> +boardnum=22
> +macaddr=00:90:4c:c5:12:38
> +sromrev=11
> +boardflags=0x00404201
> +boardflags3=0x08000000
> +xtalfreq=37400
> +nocrc=1
> +ag0=255
> +aa2g=1
> +ccode=ALL
> +
> +pa0itssit=0x20
> +extpagain2g=0
> +#PA parameters for 2.4GHz, measured at CHIP OUTPUT
> +pa2ga0=-168,7161,-820
> +AvVmid_c0=0x0,0xc8
> +cckpwroffset0=5
> +
> +# PPR params
> +maxp2ga0=84
> +txpwrbckof=6
> +cckbw202gpo=0
> +legofdmbw202gpo=0x66111111
> +mcsbw202gpo=0x77711111
> +propbw202gpo=0xdd
> +
> +# OFDM IIR :
> +ofdmdigfilttype=18
> +ofdmdigfilttypebe=18
> +# PAPD mode:
> +papdmode=1
> +papdvalidtest=1
> +pacalidx2g=42
> +papdepsoffset=-22
> +papdendidx=58
> +
> +# LTECX flags
> +ltecxmux=0
> +ltecxpadnum=0x0102
> +ltecxfnsel=0x44
> +ltecxgcigpio=0x01
> +
> +il0macaddr=00:90:4c:c5:12:38
> +wl0id=0x431b
> +
> +deadman_to=0xffffffff
> +# muxenab: 0x1 for UART enable, 0x2 for GPIOs, 0x8 for JTAG
> +muxenab=0x1
> +# CLDO PWM voltage settings - 0x4 - 1.1 volt
> +#cldo_pwm=0x4
> +
> +#VCO freq 326.4MHz
> +spurconfig=0x3
> +
> +edonthd20l=-75
> +edoffthd20ul=-80
> diff --git a/recipes-kernel/linux-firmware/linux-firmware_%.bbappend b/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
> new file mode 100644
> index 0000000..252da22
> --- /dev/null
> +++ b/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
> @@ -0,0 +1,12 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +
> +SRC_URI += "file://brcmfmac43430-sdio.txt"
> +
> +do_install_append() {
> +	install -D -m 0644 ${WORKDIR}/brcmfmac43430-sdio.txt ${D}/lib/firmware/brcm/brcmfmac43430-sdio.txt
> +}
> +
> +FILES_${PN}-bcm43430 += " \
> +  /lib/firmware/brcm/brcmfmac43430-sdio.txt \
> +"
> +
> --
> 2.12.2
>

Merged series to morty.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--s2ZSL+KKDSLx8OML
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj3lY8ACgkQJrqo2vax
FPaioBAAnbNBU66N7k7VXkg/MDliv2pZkNkbisE2KuhPAGl+oEiucPhlQxm2ACBH
MfcZJcXR/lPkxV5hq5ZVazR/RCMLmN9DxUo5IoZfgrqDofniIAjrXXhChpv5C1YW
/fUaXa+T+MfHo0feJ1ojDzwzknq47HcD1IO9C3B6oa/BqNmX+HHpgssoD7RnVl9W
K0xv9qQIbCYHseew8V1817C8Df7KkDhNgghv9fxgYxlt1lKY/O4oL+CSIXnaDd+y
OdBMbXOYYEWSeCEVwWriIW8q2kY8H9ZB9PNvLbrrSi8Y3gv9vur74xr9A5PdT5Xr
w6tOqOfC6Spte7Zc82Rw3CGGgjipXYkrPxfI0Dhcc2PXZ7dtvxO9MamuFLnsTsuW
cXcvVUZ83VFiU9SKdDGAsASPg6huIksHoT+17TfAjEOPX7ORwC7Q0Hj28J1PEiX6
Xdn+zskeZVxO03QOIS1dkMNWGYsDkSOrnrSD1iRU62KKn48bnDcYDXxxIy4I4sl0
TwZtF6t0L2jh+kEJQWlmef1tDhzHVhj8dwbCs2rxEuG+GK69qAUTf+hRog0T+3fC
5Eh24IRQHVrPhA9Jl+92h7z3gm91cZ3NNytGxQFPGb2S+8cDqD+3GU2OxFl2wWiA
xJIH6Eg2x4RvdTFsaHQECT4bSlXj8PJtwtT310Jlsd2U46Rjm6E=
=rsVT
-----END PGP SIGNATURE-----

--s2ZSL+KKDSLx8OML--
