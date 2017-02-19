Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1212DE00A21; Sat, 18 Feb 2017 20:13:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C57C3E009F8
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 20:13:13 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id a123so5779465pgc.3
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 20:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=SCCSaCRPvJs/y42pt4NpvSXVH0qXjN6oex/sx/VboPQ=;
	b=2FzNsP/Wbj8+e/UInrsDFpvOHVbMQEHK8zMXA3NZPc5r50CpAUKoOYw8/LZM3MM0D5
	Hg6qkbkVTKmk6QOO9KHfJven2OTGA6mayAxYih0VNa5rVBxPM75wRUR5HjhZJCu6Nk7H
	tmUxQweZKDXzK2OMkBsJZ8BoxSJcxv6YRfc3Gwc8e+ac/aqifGVSjYPIMLCa3BFSD0yc
	LLcdzQUXgc+adWQqbSyKqESH1sIaPek+wCyN0wIssmcrd6lEDq18PaV5zSEKBG07hlcw
	3nUCYA7w+NdghF0A7L1AEOEd13/4ONkBw7vts5b4dLxKpgGDb9ydEl7EX3Mf4mw0vXO7
	/e9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=SCCSaCRPvJs/y42pt4NpvSXVH0qXjN6oex/sx/VboPQ=;
	b=rGtqPV07TK/biEQDUYKE8vkuq/OKiCAEAOVX6PfuPs6qNYPvBCu3PCAGKjZBKSCJXG
	nZlvSAA3JL+97eMDpxtU1lSPAItuhLb3ZTZJiY9HxptOKm1fsWoJa9/u9eutycZBV0PX
	7abY/KE4S/U7aIiAhHdOo6oMhFyHiCpwrzdc4B1FGgayjIfR9g8IW5WknHFLt3pZMSHf
	g4ZOlUngrFuWD/ZZPvk53P3ILweBB8Y2KxwYm8H0mGoqdZTbT1HzsNKkvP49Ipv3zT+M
	TEX/R8439hgOkCk5AnWkwWKjjSENX4Yt8DqE2ZCYEpPD7cPJTnap4YlOZK2YTSh7feoQ
	JcBg==
X-Gm-Message-State: AMke39l2DGHFNlz7gCJAjZg9jw0XiCxvrviChA7l92GFuBgjlPOKdEvwjKKKuue9Glr/uQ==
X-Received: by 10.99.135.200 with SMTP id i191mr6297831pge.157.1487477593005; 
	Sat, 18 Feb 2017 20:13:13 -0800 (PST)
Received: from carbonA ([2601:602:9a00:eabb:6d00:499:970f:8480])
	by smtp.gmail.com with ESMTPSA id
	s8sm27541760pfj.30.2017.02.18.20.13.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Feb 2017 20:13:12 -0800 (PST)
Date: Sat, 18 Feb 2017 20:13:07 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: paul@paulbarker.me.uk
Message-ID: <20170219041307.GD6680@carbonA>
References: <20170218193913.28490-1-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <20170218193913.28490-1-paul@paulbarker.me.uk>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Fix uImage build on 4.9.y and later
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
X-List-Received-Date: Sun, 19 Feb 2017 04:13:15 -0000
X-Groupsio-MsgNum: 34596
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ieNMXl1Fr3cevapt"
Content-Disposition: inline

--ieNMXl1Fr3cevapt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 18, 2017 at 07:39:13PM +0000, paul@paulbarker.me.uk wrote:
> From: Paul Barker <paul@paulbarker.me.uk>
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 5 +++++
>  recipes-kernel/linux/linux-raspberrypi_dev.bb | 5 +++++
>  2 files changed, 10 insertions(+)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> index dcca369..b113674 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> @@ -7,3 +7,8 @@ SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y
>             file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
>  "
>  require linux-raspberrypi.inc
> +
> +# A LOADADDR is needed when building a uImage format kernel. This value is not
> +# set by default in rpi-4.8.y and later branches so we need to provide it
> +# manually. This value unused if KERNEL_IMAGETYPE is not uImage.
> +KERNEL_EXTRA_ARGS += "LOADADDR=0x00008000"
> diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
> index bec0d23..e45903b 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_dev.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
> @@ -7,3 +7,8 @@ SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.10.y
>             file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
>  "
>  require linux-raspberrypi.inc
> +
> +# A LOADADDR is needed when building a uImage format kernel. This value is not
> +# set by default in rpi-4.8.y and later branches so we need to provide it
> +# manually. This value unused if KERNEL_IMAGETYPE is not uImage.
> +KERNEL_EXTRA_ARGS += "LOADADDR=0x00008000"

Any reason not to set this in the machine configuration file?

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--ieNMXl1Fr3cevapt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlipG1MACgkQJrqo2vax
FPa3qA/+JW7ZAqT8v+BLTke++wcVDucd5O1+rlPlhn+JvPkd44VrnF8gJcSOUZMJ
boyguOznB6Rw6ikoA5EaxiXO6EjTiTY6IBQ5aR+UpHuj+EyHejUJ/7fyAsoVQgrl
0mJrR1wS2TDwTpzq3BorX5FdEGEwTcAFtd5YIynzGPbYfbGFAqGflblwFYwbfV8T
2R0bzkmmolNWlnD3EGuMOpkKxKbqKr7EK9vw+7AACSGm0wckygNN7630Pw09eM38
8FQpWXrYmq2jiDMSMA8YzRyI9uazPiEKvh1EBns5GGd5+Zcj5hAB1qe1wKbC9wV6
+73HAFoZmLxbg2k6vzlO69WhMupcS4tekguZ+89f4CEclzc4IBMhzinD9KjxtNDr
RH/RM4QvQMVRkA902h6r29OmFzPja7Fqzy0BkKYLGk5CqEjrzL3IgEvQihYnJUVw
EvsD1KkwMFOIQo+Y32yk2uRYNARQ/+bCGaCLQlv2mIYYZ0g+bWzcHhsznppN01qZ
6Y8b4szFvkf46RKyC3JeyRonhskevQF59RGVCAiECkkVGuhCkTGFO37mpKFUYOGt
JcRkRoueGhogNzxnTl8YjMOoPBdQKEuJCaO/23UvDg8nM7+OHwBIbuENVQm6V+aH
iRM4qWreI4kSdMGUgKC3j2RAxj/hImgAQs7gT/FKs6QoaaN8k9Q=
=1JWY
-----END PGP SIGNATURE-----

--ieNMXl1Fr3cevapt--
