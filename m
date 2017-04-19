Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14243E00AD0; Wed, 19 Apr 2017 09:53:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F9B2E00ACE
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:53:26 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id w64so85235371wma.0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=k9km2zOR395w+dvelRY7YHRe7Y0GnI3uNpk/h0jbmMY=;
	b=i1UuqnT1nQ8vZpUMzCTc5TSV1J98Perdo2sULaCAzbOF2GXrTnTAgh+7aALQ0FYV/0
	TK8fWMnA/ITiXco2+rFMzkXDlCxqocGKUOu+xXOusGS9PSrHH9hPnT8JU+V09yIlQ2YB
	e6ugGv8eGLdUVqQEPkXBVPpbIIDmAi+yr4HggNQrX3xKTJ7Xpf+4BDJaxnkW0dc/3cx5
	DMwYNUot71z4Uv+0jMonSeHYp0eqO3u4TYKn4QgO1NB1JOdpIPEuwI+D29pMa2C/Ce5O
	H/cgihe+fa/4ATDlDy2/yMD2aa/7ZDco96ZDvAQZpumZ/4kZloI2uiA9uUrQyxi9nHc8
	LNOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=k9km2zOR395w+dvelRY7YHRe7Y0GnI3uNpk/h0jbmMY=;
	b=aN+6goKZXe2H1qDlMEQc7uCIiMr6wGj9tGrukimn41t3udI1kfwXyIF7Bc7iej/meM
	Hi4CMYjsRlyiSRli8SiFZwMSwgT9MOB2kUQTxM9WCZSXLqtlE9BMs+Rfjpk2ulo4C496
	IvNC7pyy4Q/LSD0x/g8tb78BXqjlNAUF4zFPjsM1C1ydP0xg15hZbi2D2Vj5uhMULj7T
	gnc9oYqhRLnAweZ+03JCK50afpM1vMHmBQ8Hk9HWvH/JTHVUOfS5TmJNDIj3pO0j7Z6T
	gDald342JuIXrDbVX+SbhhfBlEMwwYGRw+maYQ1RIef3Hmbk42mlYX+ui5piU1qO39sm
	cJsg==
X-Gm-Message-State: AN3rC/7W2O0hxBhMlbeTgu+DWO/r0CZ8QhIQzpzKGlWAef8ben3WFfz4
	AyOBI2VEqinFig==
X-Received: by 10.28.21.13 with SMTP id 13mr18785869wmv.118.1492620805901;
	Wed, 19 Apr 2017 09:53:25 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	h199sm13464100wme.4.2017.04.19.09.53.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 19 Apr 2017 09:53:25 -0700 (PDT)
Date: Wed, 19 Apr 2017 17:53:21 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <pbarker@toganlabs.com>
Message-ID: <20170419165321.GD19325@carbonA>
References: <20170418205108.14629-1-pbarker@toganlabs.com>
MIME-Version: 1.0
In-Reply-To: <20170418205108.14629-1-pbarker@toganlabs.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][morty][PATCH 0/8] Stable branch backports
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
X-List-Received-Date: Wed, 19 Apr 2017 16:53:36 -0000
X-Groupsio-MsgNum: 35677
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EY/WZ/HvNxOox07X"
Content-Disposition: inline

--EY/WZ/HvNxOox07X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 18, 2017 at 09:51:00PM +0100, Paul Barker wrote:
> * Upgrade linux-raspberrypi 4.9 recipe
>
> * Add support for raspberrypi3-64 MACHINE
>
> Boot tested on raspberrypi, raspberrypi3 and raspberrypi3-64 using the 4.9
> series kernel.
>
> These patches were tested on top of Andrei's latest series of backports. The
> exact series tested can be found at:
>     https://gitlab.com/oryx/meta-raspberrypi/commits/pbarker/morty-next-2017-04-18
>
> Andrei Gherzan (1):
>   linux-raspberrypi_4.9: Bump to 4.9.21
>
> Herve Jourdain (1):
>   Add raspberrypi3-64.conf
>
> Khem Raj (5):
>   linux-raspberrypi: Add defconfig for raspberrypi3-64
>   raspberrypi3-64.conf: Use 4.9 as default kernel
>   raspberrypi3-64.conf: Specifiy rpi3-64bit dtbs
>   sdcard: Use kernel8.img for 64bit kernel image name
>   rpi-config: Specify bcm2710-rpi-3-b dtb for 64bit rpi3
>
> Paul Barker (1):
>   raspberrypi3-64: Override rpi-default-versions.inc
>
>  classes/sdcard_image-rpi.bbclass              |  1 +
>  conf/machine/raspberrypi3-64.conf             | 41 +++++++++++++++++++++++++++
>  recipes-bsp/bootfiles/rpi-config_git.bb       |  6 ++++
>  recipes-kernel/linux/linux-raspberrypi.inc    |  1 +
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb |  4 +--
>  5 files changed, 51 insertions(+), 2 deletions(-)
>  create mode 100644 conf/machine/raspberrypi3-64.conf
>
> --
> 2.11.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Paul, how is testing looking with these patches?

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--EY/WZ/HvNxOox07X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj3lgEACgkQJrqo2vax
FPbZMhAAiCtNrY2bjZn3YU6phgmIfSJMAJJg5E6QLRbRioy4o/uMj7+e4x97kvIJ
XJqUVd+t09K+FuHI17NdSt5RfO/9/aoi7K/CB//pDvaVfT1v6rZUjGthnNGdaAA+
IVm01/oDga1YNm7bVjPCbolS7TvT8E88WHuwsIK6V1PVt0BcLfQ62ohCmgB73mOO
qELyKY/e1Pea2ivmqtzSqnnbvISy5ClrEpBiYud+b2z50xAbxuPrtrmyx2pjhoku
zfa99Sq99UioD2bQGV7xrZGdZjDNCv47ithWBgD2RaC+HH2V6kpq6LVj77W3RSr5
8bikuy47ZuK/5SJwOoLdNKw/v8EoneusmG9AlsULT/GuZm28sAStnwI3HBP1j9mo
F8Mi+ZpSlODr2iL6YqLgXaBLau8KY7shPDZyFukqpzFkY0bDrhZaiV+vBA3ZpXd6
PPBYO4f7x3gA9rk2YlIXioRNdWO4hyomtRlMJhyBtZm6wWCZg3LJi0ajNqVHzxtq
WYBv5AH8HP5AIkvDav/Bj7TBX+GGxU+af04mqEnO0DBK5FqBLq8g54VPIyA0Gwln
WOwsPsWTnVobMwecjdtbmykgMrvnowik5iBtVjierZjspU6dVgxqvMK4xiIqMoSm
UPB++TIeQHZo+8gHyV8/RGDNcbc3+pZ5m8RoDXdku9PNKt0rFQI=
=Yhmb
-----END PGP SIGNATURE-----

--EY/WZ/HvNxOox07X--
