Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B400AE00C38; Sat, 12 Nov 2016 10:48:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 2.6 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server *      [46.198.0.251 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D12CE00BF3
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 10:48:20 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id a20so4593359wme.2
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 10:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=JzZ9w8A/zEve8JnlidgjKL6kJtlvi1689bVuBqrieVg=;
	b=aFg8lkcTn8afaRZCC5P5e7sEmQOvSDuHFmYVdER+cnXM8oit7pV2ejKNvgsa/IL1WV
	SnXSg42rTdeBMiM6fcbv/BFq1vUoFdFl+NLMSq2xO2+TIFI4FxGzJaHNPBb9u5hXgZur
	AIGNX4NuEj5VdeDY1mx6/kjkS1S9B8fv9ildzBdZqoAdUD17+ssWxptNzTcRZQiv6KMx
	g6wgF8G6Uvq5PmQQn7F2o7/jejyFAjhUrgLuNQWgN4+BGgYnLcgWhrZd6a+NuCneh5A+
	Stp93r0RZpXWrO25olB1VVCX/920PifWcUE/pq/nbTEd2cY6bGnn3c9xuisEv/x0c7/B
	1Qxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=JzZ9w8A/zEve8JnlidgjKL6kJtlvi1689bVuBqrieVg=;
	b=B60Ctl4sSynS5kSaIpJh2IFBSS7vZecMwStcAbM6Q+j7oxqoInmUZYX3r2E0WNcLGq
	GeuKMfeMKurlci4Aw2Ph8IQwxpsETicYfnoKvw0XxKhWbdkOMsT0W2lCCCqNrLMmF45q
	TOxWvMVMCPJKkL/TJV1nyObpiNkN8/cFqX6ycW9HsoeROFy+rGzsSdzYDriMLqcKDp1r
	dRB1pv/m7fjWe3Zv87LURHLInp+n/hC+Ak2eDe06e2Lenf7mMLmL7PWNg4sTW0b3RnKN
	y3gUa7y+Zwq3BhRcaw68jSHAVWMRRCs5iRfe6zu7gUm3az7xIBv1kreuNLiR4ZS9tgXx
	d5jg==
X-Gm-Message-State: ABUngvdvD8jorawlSr+i8kbJ+jzPBqJwyz6BMcpoITukcXWjG+CzezEeoWqY6fCQLAEt9Q==
X-Received: by 10.194.113.2 with SMTP id iu2mr1676896wjb.32.1478976500150;
	Sat, 12 Nov 2016 10:48:20 -0800 (PST)
Received: from carbonA.lan (46-198-0-251.adsl.cyta.gr. [46.198.0.251])
	by smtp.gmail.com with ESMTPSA id
	b184sm19157026wma.0.2016.11.12.10.48.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 12 Nov 2016 10:48:19 -0800 (PST)
Date: Sat, 12 Nov 2016 18:48:17 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161112184817.GB32346@carbonA.lan>
References: <20161103062706.12667-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161103062706.12667-1-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.8.bb: Upgrade to 4.8.6
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
X-List-Received-Date: Sat, 12 Nov 2016 18:48:22 -0000
X-Groupsio-MsgNum: 32953
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Bn2rw/3z4jIqBvZU"
Content-Disposition: inline

--Bn2rw/3z4jIqBvZU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Nov 02, 2016 at 11:27:06PM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> index 528cfef..4664249 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.8.4"
> +LINUX_VERSION ?= "4.8.6"
>
> -SRCREV = "d8f7c2da3d33ea4fb4f67411badad374b1160b44"
> +SRCREV = "6abac13566786086cd912d87e4f1a922e2a391b2"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
>  "
>  require linux-raspberrypi.inc
> --
> 2.10.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.
--
Andrei Gherzan

--Bn2rw/3z4jIqBvZU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYJ2PxAAoJEHO76Gt+erfPW8AQALD0ZQnvjsIRY/h1CyWszo+k
PxGeBDLGhlu+qoMzRx58KyPt/CjXPjqneD/NNdp7wn9kiF92bjwuJRBnFQwHDo/f
7BxNAgn/cz89nLsO/o81R3SjjjawfYg8hTXnASi5VMm7wny2InTbG7Y7mK4C9Mkw
cGIxtZDkv3KRwrbtjWDng+Ha/+DjjReSmaRU+TFE0jSqDOUKMmiQnGwzn6VFNHj8
ugwqvOOKs3KjCjzpV+b4eCRPIWTvsDjTyvssgmjfR3f1d9r5qNUWikW5QGQFsG0e
51DYOlXWii2uluO1jXObOue0nWgfTNytYTIZGPU21/Yg8S3CCZWKc77UkeSI0esH
yKZsuyfVh1eY2kgeQ78qK2uqCWP3AIaecm4NxJcEhmV+W32tE7Zn9vER19WvTEdN
7bmbk/awmRKo2HZzf8B7hV05gdKtwcGNeZgkmY2BbvXYZ5A+oqLe6O7xvmNiOnj2
Y4Uaqneokw761q+7oZu5OgUrAU/OhZm5Td+dbTYaj7UgNfjjEKY1gHMc7lnJQGXi
aBozH+8D/dPh0uTp0oP/AMdTNwH8YKE+Yv8aOlkR0EQ1m1NvATk1cjokmJQj7AcR
NFgcKuQ0zAvEBZFqjZIWEFWrjqpVL8MsjhDXwmm+FJQ8VAQ7mfpxUMoxFEK9553o
MasSA7APSMEEAIzZWkYH
=N1sX
-----END PGP SIGNATURE-----

--Bn2rw/3z4jIqBvZU--
