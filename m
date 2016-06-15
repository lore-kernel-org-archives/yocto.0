Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B127E00C82; Tue, 14 Jun 2016 17:17:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B9D5E00C7D
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 17:17:06 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id 187so95212wmz.1
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 17:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=6VhOVa6JW9EolVJWtzxzI8IfS+Y2pp8l1upXWaaBtQs=;
	b=ak226jbfbsPtJ+a72ZeNpJ45raXMCovbSDZ/j0LBcdoQa/klTuuJPb9C/+H+SRSVzu
	JmLHI/zlmMwB7NAPDHUFO5RUajwy6U6uj5yHzJn9i5TLtssei7hp4RVLK9Fme7Q2xVHW
	4PDcAl1klV9avYk0eunwT1CukBkgY2AysvE1jj8eN2pSxTUVohy0uDWrdKgIK4toyNmi
	UxK/rakwytewsU4cxCmhn3zxD/3SlQSUNkJcYC1+qjvSVgXyb+DHvpvFXqEASv2b4XmS
	vYyWtw6uuy5BmzciziT8ENz/iuZoeRR8yTWMF7bV7DnfKaJnC8kAHJFQYLVoSMAu4El5
	A3Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=6VhOVa6JW9EolVJWtzxzI8IfS+Y2pp8l1upXWaaBtQs=;
	b=U5LiNuiBjImEYg1YkZQ0OyDwuXzXkrGqGDM5oxn+eeo55nUFZKj6N3zvLLDPC0GtCr
	qXoxtvMwo3C+Ri01F6Z6IamjC4OAn8shJxEDqq2Uj0DJtsi4c6zK8s29sbQT6vTnAcWA
	It1y3+K0GvZ1ntwTZm6v8P/LyWsRF3DeFGAQ0Z1xWPdf6k1pO1S3Afaz5JyazqZxsPb5
	4nD6xwolx/T+JiFvo0a7B7RguGXdLSV0/+kZednHo4AD7xgAK1GJ9+BmrPnL3IJeRJmt
	IS1CBoUGwo0Lc7kyjr7QQAK1v/cC2Hz8jCYldptsvjzFQzGVNkwZ2hIfZG70pFtgnURO
	sS8Q==
X-Gm-Message-State: ALyK8tKlFYps4SyhV+w+VXHS6iq8u2bd+RBVjQXotT7zmvxBFdA8t8/GGfZY7BU1mXADcQ==
X-Received: by 10.28.194.87 with SMTP id s84mr7719607wmf.59.1465949825900;
	Tue, 14 Jun 2016 17:17:05 -0700 (PDT)
Received: from resin ([85.255.232.185]) by smtp.gmail.com with ESMTPSA id
	a198sm1042227wme.16.2016.06.14.17.17.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jun 2016 17:17:04 -0700 (PDT)
Date: Wed, 15 Jun 2016 01:17:00 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20160615001700.GG22479@resin>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Allow override of PV
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
X-List-Received-Date: Wed, 15 Jun 2016 00:17:10 -0000
X-Groupsio-MsgNum: 30529
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3xoW37o/FfUZJwQG"
Content-Disposition: inline

--3xoW37o/FfUZJwQG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, May 29, 2016 at 04:59:08PM +0100, Paul Barker wrote:
> PV is now set in each version of the linux-raspberrypi recipe instead of in
> linux-raspberrypi.inc. This allows linux-raspberrypi.inc to be used in custom
> kernel recipes in another layer which require a different PV value.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc     | 1 -
>  recipes-kernel/linux/linux-raspberrypi_3.18.bb | 1 +
>  recipes-kernel/linux/linux-raspberrypi_4.1.bb  | 1 +
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb  | 1 +
>  4 files changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index 4799c74..dd477cd 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -13,7 +13,6 @@ SRC_URI += " \
>  COMPATIBLE_MACHINE = "raspberrypi"
>
>  PE = "1"
> -PV = "${LINUX_VERSION}+git${SRCPV}"
>
>  # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
>  KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> index 1110b71..b16a1d7 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> @@ -1,6 +1,7 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
>  LINUX_VERSION ?= "3.18.16"
> +PV = "${LINUX_VERSION}+git${SRCPV}"
>
>  SRCREV = "1bb18c8f721ef674a447f3622273f2e2de7a205c"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> index 79fac66..9e1572e 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> @@ -1,6 +1,7 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
>  LINUX_VERSION ?= "4.1.21"
> +PV = "${LINUX_VERSION}+git${SRCPV}"
>
>  SRCREV = "ff45bc0e8917c77461b2901e2743e6339bb70413"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index ba47b22..12bb43a 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,6 +1,7 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
>  LINUX_VERSION ?= "4.4.9"
> +PV = "${LINUX_VERSION}+git${SRCPV}"
>
>  SRCREV = "3b440738b5c1adc3ec3ee72ceca799d1b8d264df"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \

I'm not really happy in duplicating PV. Wouldn't a weak assignment work
for you? PV ?= "${LINUX_VERSION}+git${SRCPV}" . So you can overwrite it
as you want.

--
Andrei Gherzan

--3xoW37o/FfUZJwQG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXYJ58AAoJEHO76Gt+erfP6pwP/Ax2tCX8NjMuow2GoiuG6A3l
ooVh0+KTVbC8+MNUZhhpF6QZ7ACSE/3n7/rsPLuDQoBojB2xuwnKR6WGbtI3HRTT
d43YdpI/tkbKUg1MNkDal2brd2vZnv6yFCMtB6Duu/eAC1VW0G6kgICJKcyhrpZM
lXXT8QwwLjO+1xqNsVsWF5NmXJMKW24czss4IKPMjOcER2PjmlWN2rZruZEtc1Qt
8zQnmHP3+9Rm5jfmoHknv5ctiYJTVmnLTGlJhVwhnkIvGiG1qyPjWBdpY4ZWqBpZ
Tkxt1mOQTE88Kgk8KtlwJef9IyW+zYOgKtFJ9Df8KCQTODSju5eBQz4NFbu0yr0b
do1dFPVkJzJyMCS+Ra5pb3CZTgUtLAbuDL+wKi3WeSsg9INPanV0E0ad9INJh2Ns
QmNyRdIBxeeN05U9lmlfp/ThtabGjULJ2kORBwsGPoqNwGxHVEyEDPnpuPWswR3F
IHoNbFEtH+dEcCEsyFCL+GDjikdTNdrZe8v9FtQGieXIkozygdZELQh7Fa+OCubM
dLXXeTWBtFGz9nOX7L7k4aKV+X82/P7XBbUdNScRu53Z+g690p8uFpHnkdzZpGFk
tBbmqYEFYOF/j8bjpfrCeaK25qvhS5H/m/VACgsKk+2rHam3qBn7iqH14iIG8OEP
5S0e7Y0PLfXN9duNzYF+
=7gax
-----END PGP SIGNATURE-----

--3xoW37o/FfUZJwQG--
