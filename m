Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35586E00A21; Sat, 18 Feb 2017 20:08:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C312CE009F8
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 20:08:52 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id v184so8556579pgv.1
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 20:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=+a1aNaJ8rlJhUlV/jKDhQsEIVJC/hChRkrMMfRyFhfo=;
	b=qSVc13GW816FOg+GagyGEKijZxdUP0BYLPri7CXQ9/h3PP/vmAlDPWmWNcM6B75AQ/
	zUUKblHYzNjE0YCu4Q339hBqBZObSPqvTv1wh8clFkTMRCeLUiUjcp7gKQlZsfHECOo8
	H4w1U0+8036mHvuQzZum/Xjnr4I+M/aiEdiiGQ0zIQEdOWeUyyp28azdWJBOYz9II7jm
	pbXWakzcUHtE1qgApsalJkclP8DdntcQ1ArcocblzX+aDwj8Z6j8Xoz27OPUsp4XwhW7
	iDYmLWB4HgzBpMRMihrYMoGMZ7ZoqW6j4TyRjRSmHlbzwQddnJ30Y3NDOHgCDI8/yz6H
	OFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=+a1aNaJ8rlJhUlV/jKDhQsEIVJC/hChRkrMMfRyFhfo=;
	b=pK1nl8eIGOtvUwtMYPAZEDiJKfJwmBav+6e592thergruS8q1cHoqI2Tp6fnlqwl9p
	MnNoZ6OKmGU3OQiHMhEcw2IPJxJi0BRQ+4vaBPEhh1hG67cb5o+cyF4iGhg9iNTin3pR
	WpqkavJnGl+5dwxloNp61ls5H9cwSdsQVsrWdf/uJ+GHZ5X5WAGBwolQluBWVKuZcTnp
	fkDX650bfklUVQSgY9wVhBm/ivULrwJ/D8kvg11IKASwfe/WjG9Y80ooxe5ccIhPbwmW
	TD/G7RxlviKqV9yIgpRTEz5TdRfsDanMnrHu9xnztV74yaMIflKGx92T0QIAyRxhGxtU
	uJ/A==
X-Gm-Message-State: AMke39lLyEVwMOk4+YwbvvR6ay7HICRIZS6Eb42RxZ9U+uYuKHU8gjLJ4S2CTB4XFlkfTw==
X-Received: by 10.84.238.139 with SMTP id v11mr22307389plk.143.1487477332555; 
	Sat, 18 Feb 2017 20:08:52 -0800 (PST)
Received: from carbonA (c-73-109-7-33.hsd1.wa.comcast.net. [73.109.7.33])
	by smtp.gmail.com with ESMTPSA id
	c204sm27457948pfb.51.2017.02.18.20.08.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Feb 2017 20:08:51 -0800 (PST)
Date: Sat, 18 Feb 2017 20:08:50 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: paul@paulbarker.me.uk
Message-ID: <20170219040850.GC6680@carbonA>
References: <20170218195101.29116-1-paul@paulbarker.me.uk>
	<20170218195101.29116-4-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <20170218195101.29116-4-paul@paulbarker.me.uk>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH RFC 3/3] linux-raspberrypi_dev: Disable version sanity check
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
X-List-Received-Date: Sun, 19 Feb 2017 04:08:57 -0000
X-Groupsio-MsgNum: 34595
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="CblX+4bnyfN0pR09"
Content-Disposition: inline

--CblX+4bnyfN0pR09
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 18, 2017 at 07:51:01PM +0000, paul@paulbarker.me.uk wrote:
> From: Paul Barker <paul@paulbarker.me.uk>
>
> After this change, LINUX_VERSION should not need to be changed every time
> upstream bumps the kernel version.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  recipes-kernel/linux/linux-raspberrypi_dev.bb | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
> index 88c164b..89ee908 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
> @@ -1,6 +1,6 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:"
>
> -LINUX_VERSION ?= "4.10.0-rc8"
> +LINUX_VERSION ?= "4.10"
>  LINUX_RPI_DEV_BRANCH ?= "rpi-4.10.y"
>
>  SRCREV = "${AUTOREV}"
> @@ -13,3 +13,7 @@ require linux-raspberrypi.inc
>  # set by default in rpi-4.8.y and later branches so we need to provide it
>  # manually. This value unused if KERNEL_IMAGETYPE is not uImage.
>  KERNEL_EXTRA_ARGS += "LOADADDR=0x00008000"
> +
> +# Disable version check so that we don't have to edit this recipe every time
> +# upstream bumps the version
> +KERNEL_VERSION_SANITY_SKIP = "1"
> --
> 2.11.0
>

This one depends on [yocto] [meta-raspberrypi][PATCH] linux-raspberrypi:
Fix uImage build on 4.9.y and later.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--CblX+4bnyfN0pR09
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlipGlIACgkQJrqo2vax
FPaK/w/+PPrsS5KCrXylIpW2pmBOdM/21RojhDv5yNn32CB1R9jPk7XPSd5CVHkB
VJXPU9h4ViBdyvurefJsVw1CshLQJdAWTgUeVOg2tVCoyKzbADgtnldM61AVNAIG
AHALXKxkQBUq6z+6TcwI9QmVWoOXP/SmdTEJOnP3KwyIWlP9a56nqnb5eTyp0RwV
1qkZQq0uLCSkOzGPJJ6/JyPa5i+lb9tT74xk5SNrDTKmp599LTzVzucC/6gilUXg
xicU5SCHkljGw6zkh+OLSDkuHB8mgiwv5DW09VTr8c1RN0zoT3Q6B+pfSC5i3xmL
Gjegf0K4PA4IrQwZ2HFNyitk/vCSN0Abl7ZXhPBP/M/50cZdVhXoVcn3XMJYx2xh
O136BPu24b8IXbCREOlz/mhWZpIfSTnY4sxR95Up6/BPvkrF3XmcfJZccHadpKGc
YxCLyiFDLH5RxIpCu2QSWUKp0Q8sfdUK4n0FNgKskIQUHdNJhxSKyIUgY814dkne
MU+Ge0lR+QZPKL9kQrUIYziMoWH+Wsm/KvRN0OeclfEjVFmrdSJwXV6rWxA4OUJN
wE02RUhWnrbvc8Xjm9CXbH+U4l2c4QT8JBDTn6h9Tiela9SH9DeoKzE7EP4KX9yz
bSf6nTUSWmwJqDttuYw++F17jBoSCa5hfindIy0p7BA/W2kJLrk=
=l5g0
-----END PGP SIGNATURE-----

--CblX+4bnyfN0pR09--
