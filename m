Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDE06E00B77; Wed, 19 Apr 2017 09:52:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BFEEE00AE6
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:52:17 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id z129so5999379wmb.1
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=55GMzcLzJxAN10aURv/mHLDMS4A4UxYzkUISpw3g07I=;
	b=lZGWaXihWwsWVw9zDTrllHo0Sa71JQANDSzTo5Ba1d4ioRLyaag6Oe+QkxsNNkf+/Y
	+VLhYkdeDYE5anNSPHm6AyZshimmyCDfXKCzP84FnuG8mQwHIK0NqbhS5RksRANn6Iin
	fTP+ROCrdrn3ZMJ67R8NzEEauZvY4X5ha6hMjDSQerw9YoAYjpE1P/AYBqs5RWx0Scpr
	z6+09iBoqRE7UYpFcmOkFOsKZ8SMvpXFq9vRt7RuBfxNk60KEBeVE1ZWaXqZCpLLpaX1
	6duDtOfNOEHsCfHSm3hLVARELj2DqcbmeOQjPiHKl3LPAM3/YQwyfWq/+EnRztYk/pRB
	nSmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=55GMzcLzJxAN10aURv/mHLDMS4A4UxYzkUISpw3g07I=;
	b=HI4ylJOnaffm8IhM5JMdzFyHpllZXsTpKAet+p36YHDxN+U2NhFjsd66uljdScIGFn
	nBsoIM0N4Rl8cenkLwqzGyRWQGBjcI5BpwzDbNW/Wh+lJh77NDvlEppLUBGbWNefLZxT
	f2fx9BPJOApQDCNMJX9LP2hODP/FseZVnCnwFixquAQwU6RCSe8VOVtQ985X3nIJ6dB3
	NAeX5O6yeflHY5Hl9AO0hIiDt6nm6z1YkZIYhM1HkjwY7lpBhjABToXG08UNls9tW6/k
	dA4NWMYC7iK7HY5mY61eel8gb3+VxMY4BGD7CNq7T7bupeZyo+7dffSItO06XiHRN97q
	eL0Q==
X-Gm-Message-State: AN3rC/77DqSCG2QBnWhgSyST35Q+1CdyBnBoAaczb2mci1hV2jEJgOGi
	5sh1VFQKQraWWgJlwLY=
X-Received: by 10.28.67.68 with SMTP id q65mr13244506wma.142.1492620736059;
	Wed, 19 Apr 2017 09:52:16 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	d17sm4473375wmi.21.2017.04.19.09.52.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 19 Apr 2017 09:52:14 -0700 (PDT)
Date: Wed, 19 Apr 2017 17:52:10 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20170419165210.GC19325@carbonA>
References: <20170418181334.14839-1-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <20170418181334.14839-1-andrei@gherzan.ro>
User-Agent: Mutt/1.8.0 (2017-02-23)
Subject: Re: [meta-raspberrypi][morty][PATCH 1/3] udev: Create rules file to generate serial0/1
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
X-List-Received-Date: Wed, 19 Apr 2017 16:52:30 -0000
X-Groupsio-MsgNum: 35676
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kVXhAStRUZ/+rrGn"
Content-Disposition: inline

--kVXhAStRUZ/+rrGn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 18, 2017 at 07:13:32PM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-core/udev/udev-rules-rpi.bb           | 12 ++++++++++++
>  recipes-core/udev/udev-rules-rpi/99-com.rules | 21 +++++++++++++++++++++
>  2 files changed, 33 insertions(+)
>  create mode 100644 recipes-core/udev/udev-rules-rpi.bb
>  create mode 100644 recipes-core/udev/udev-rules-rpi/99-com.rules
>
> diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/udev-rules-rpi.bb
> new file mode 100644
> index 0000000..20443d3
> --- /dev/null
> +++ b/recipes-core/udev/udev-rules-rpi.bb
> @@ -0,0 +1,12 @@
> +DESCRIPTION = "udev rules for Raspberry Pi Boards"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +
> +SRC_URI = " file://99-com.rules"
> +
> +S = "${WORKDIR}"
> +
> +do_install () {
> +    install -d ${D}${sysconfdir}/udev/rules.d
> +    install -m 0644 ${WORKDIR}/99-com.rules ${D}${sysconfdir}/udev/rules.d/
> +}
> diff --git a/recipes-core/udev/udev-rules-rpi/99-com.rules b/recipes-core/udev/udev-rules-rpi/99-com.rules
> new file mode 100644
> index 0000000..6bf019b
> --- /dev/null
> +++ b/recipes-core/udev/udev-rules-rpi/99-com.rules
> @@ -0,0 +1,21 @@
> +KERNEL=="ttyAMA[01]", PROGRAM="/bin/sh -c '\
> +	ALIASES=/proc/device-tree/aliases; \
> +	if cmp -s $ALIASES/uart0 $ALIASES/serial0; then \
> +		echo 0;\
> +	elif cmp -s $ALIASES/uart0 $ALIASES/serial1; then \
> +		echo 1; \
> +	else \
> +		exit 1; \
> +	fi\
> +'", SYMLINK+="serial%c"
> +
> +KERNEL=="ttyS0", PROGRAM="/bin/sh -c '\
> +	ALIASES=/proc/device-tree/aliases; \
> +	if cmp -s $ALIASES/uart1 $ALIASES/serial0; then \
> +		echo 0; \
> +	elif cmp -s $ALIASES/uart1 $ALIASES/serial1; then \
> +		echo 1; \
> +	else \
> +		exit 1; \
> +	fi \
> +'", SYMLINK+="serial%c"
> --
> 2.12.2
>

Merged only this patch to morty as the other two need additional work.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--kVXhAStRUZ/+rrGn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj3lboACgkQJrqo2vax
FPbH3g//bDYtiz6to4VBK2qtpSsrXpKz3wh7sZR9k+KHGAWdFFlC2xIcLCKXav7r
AcBppESWNp8diUPwCLO4XEWT8wOTNX+u5EaTapOO3l6lDGzc+uNgZjry8whyqNJK
HQhVOaCHF7nDsszigLNfUH41U78w/LzJ2stBnIoBMmyDtDuLvCecWqSub69cMoiH
EeQlzfjbvd33+nPa9YYUJQMZGZ9s3ptqnIgUJvZMajzxULHkg88gaDIkxCRqZD2L
4Va+IjVLrW8MmrYg21hyNiPv5vMRauFnEIrc4+wEoK5SobKfmuOdxdeFzC83MCMW
1Wrjl1zszD665VfA4CWp12PmHJkTUlirmP3fG2BDhksbYw1moJp7rVQlaDhFVQN2
Yv1npC6xb0FQ8FFoteFeesH7SEw0jsg/yRnEePaqyttipKVf0MM5PFcvQxMfKWdC
fUxjMulaBltPMXugzsjnFUmnWxRcWpadjINthPUoC0/f1LhWpHefx1cQull+ZlSE
l7xXftScZ4poRm4u39K+wQlbIpUWuwDWA1pdZjpIRxnhlvQLTB5m3ABe8lH6enHI
o07ovbcOeizBaMX/bLPs/LwtjjlBqfjGxY2K7dycCY6nzY20EKEYfb4lJTacV+Lm
SCPYDrXbbf58jr4JKW++bBcEjDutbXCWl956bjylvZg0iCP5zNg=
=/CbR
-----END PGP SIGNATURE-----

--kVXhAStRUZ/+rrGn--
