Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC1F4E00AD0; Wed, 19 Apr 2017 11:19:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FD5CE00ACE
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 11:19:03 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id l28so4279529wre.0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 11:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=n1eGIKJ4zoMpUD1jSmZl++1MA+DFZKp8lV0wcertJXI=;
	b=HQfiJCUb7L1Rl77MtWlI5fNCExs3qQfwmFK5IcSqsHOX5JHJGDd+QzQilGGdOgEiR+
	a/jmpbvMEQN0zOyAQn8SLYBl8bAW/OZMQH7FKhdlkhUtAO3cQc1y2YuulYK9306fD/Gr
	saHblakqum33TKjtxDRzoPsC31bNH5EmpVZwFNVI7yXhZL2sPA+B7uMjrVerOOdfOmZB
	3aE+adStAN8BIZK/7YxhOrC+MQEs45c8kGQDhi2scBcJz6TXNurJLpAm+Tt2SQFSlY4O
	eQzw2TBVk4KbGEuv/cb7T1g1AeuTzU5m9sj67XEkcWXMtcKCMP09bYvg29ak+5pckPx7
	zRpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=n1eGIKJ4zoMpUD1jSmZl++1MA+DFZKp8lV0wcertJXI=;
	b=BvkESuW+mSPrIMGIa1TTTrJFzmAJr3E5DQvUIUBnqO4eBvpI2OsZC5R4oj/dSNC3tx
	u1iYO8Dcwowt5wndiFy4LW//NJaxyFLYU8OYUEqgz/OPY1Ya0qM0wuvQrlts7rtw3YFp
	MVFMbo9Srui5WJLHM1EuuUhvfw6cZNIyZatVzYI2HCYmpBf7Qxwf4oNKMUU+IJbRaGHi
	4Kx+/8jGHiioIgPsQovJwLf0YH6kNon7uxUWwvu1+sNWmVnj8Mdw0WjoQ5nx8dbwjHJG
	ezBeV/s6LzNKzwrSdhx7eWkiXGLdvTX5G6N4NeONOtyzl8H5CCBX5HM+DlXjMQ5gTecu
	zQrQ==
X-Gm-Message-State: AN3rC/7ufJiSjoQ254UX8WNmW/sgMJ/+eowTdLwGz1d7dZ8+6sb2Ne+9
	BQBClASoz8BAPk0VWTA=
X-Received: by 10.223.171.6 with SMTP id q6mr4100048wrc.147.1492625942556;
	Wed, 19 Apr 2017 11:19:02 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191])
	by smtp.gmail.com with ESMTPSA id 43sm4325621wry.31.2017.04.19.11.19.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 19 Apr 2017 11:19:01 -0700 (PDT)
Date: Wed, 19 Apr 2017 19:19:00 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <pbarker@toganlabs.com>
Message-ID: <20170419181900.GE19325@carbonA>
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
X-List-Received-Date: Wed, 19 Apr 2017 18:19:05 -0000
X-Groupsio-MsgNum: 35683
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zjcmjzIkjQU2rmur"
Content-Disposition: inline

--zjcmjzIkjQU2rmur
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

Merged entire patch set to morty. Thanks Paul.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--zjcmjzIkjQU2rmur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj3qhMACgkQJrqo2vax
FPbayA/9HZoKBfG1W4oHKOtU+QpDTweD/+rTL7dpDPgEVSiaYpXvSkx0NRJqmKIn
W31UdbpoVebYxbe0411CWxJSUknl1pjjs2ON8WO5sRNorWMfdOfekXozeEUpu6lq
vS1jQMMbh4NljlZ6xqBdqe/ncqXIQES2tRCTGLhJ7ijvCFIi06eA3Gw/rWg/vYcT
6hKLwQ8hRqAwY/iJd50eBfW4tncZ94oabsSJDnVHtnroQPRKtl34e4IIDSHa07+e
d0TdcYoeowgfHXBzZlV0Z25O/SNKudz9fGaWn9A0i2W6/nQqCInNQjcWgM+5MC/P
kfHIt9yk8q+aUxQ4IDOp5pGCGHHZj7aGAGZCOfRB15BhP1bw/MCuHtNBZqVX0hDA
T6IXLkuRW/9oZl2i2pQNLngqxhysYaaN03iVMMA542qijOseMjKMPUyvgrhry8Gb
Z1k4rupP6CflBoZE2VKiF1Gtp4b6I5u5UQD+oKtAGwUJQNKJcPrCvATFYCDkpkJd
4U0pFRvHgnXgutQJe3av6MV7+d3aNzLS3mFS3DmmqXanam7/E2ZLbzlI4VBuz4CE
pnF8fCpVE86TilInnAn9giZNMVW8XQXGaRc/BbLZ4J6N2dhPc1AYxeafCWqcE0u6
2u1ridg34s4t7LiFoI99qZSXv3Nbv6gxXMuxWARuq4qDhUnNvmU=
=LFmP
-----END PGP SIGNATURE-----

--zjcmjzIkjQU2rmur--
