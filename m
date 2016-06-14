Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58423E00CCF; Tue, 14 Jun 2016 16:55:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B590E00C97
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 16:55:14 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id m124so1982577wme.3
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 16:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=0YgJgsUR8vDVGJMKTevpmr76EY2KdIyaXV8FT+UUfKs=;
	b=cNg72GiXCzg2YQCaXI9FD8Ebt5ecXe1kuYEtNNEyRrUxqDxguA3BzmFlP8tCCn+l5u
	zSY0+1esdCkb1n6HHIlmqBrk45lj6gOlSMhNr1TtTatyXN/4nMIAF28LV0XGGiJkuQN2
	x94JeVtVEVnW2NP6xRnaqBIjkFlOrsyegSTvUWOC975r4xUn/S1mW2uW2U13Lx8Z2VfV
	gz1UoPVA19IN7mPB78nVmIBwJfbeVhY5730h8nd39iG9MM13Ih+KWymOGh9Hp+TM729B
	zC81HhYl27QNhgUuJ+dMZUUVAU4rM96dpDtYEsewo7M/xkaEMtdw8MLZ7Q15Ligpsu1N
	9sPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=0YgJgsUR8vDVGJMKTevpmr76EY2KdIyaXV8FT+UUfKs=;
	b=XqXZb0lAWB0wTm0OA1paPD94VqwIdmxNVwwQN8gQe0sDZXfiBhJB/E/cFDwkpmFHcy
	XHbBLjUrzSRjsV1S+ty/fkscXV6BKTwCPHd58v5WlBM2Yk/jDDSPhf8T2VbRH1g9yZ+7
	XbhDC6TyZKNL7eUG1p4H041yKlHhXHaVXOmJ5YiqbqL0d28tYAZCQt+dUCkGypuXpsBp
	XZ+6ORZWw50LdVXtulP3jMFTkxjYg34lzEdxrvJhGxsD2yRpVYXZJG8GBIyON/eY45Xt
	wW2lAgSF+HrYqLWNnrS1Gy0wN4yWvDTMtQ+3J1tOWOxw9qpcJRcNIXRaIndmmCeT+Jn8
	tiPQ==
X-Gm-Message-State: ALyK8tIkk5AOkGghp06apP45xTrQ9jwN4hY6OcVvkWWLw0h2eOPml34ERuYIgyAYRmJrxw==
X-Received: by 10.28.15.197 with SMTP id 188mr7217404wmp.75.1465948514078;
	Tue, 14 Jun 2016 16:55:14 -0700 (PDT)
Received: from resin ([85.255.232.185])
	by smtp.gmail.com with ESMTPSA id u4sm35353902wjz.4.2016.06.14.16.55.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jun 2016 16:55:13 -0700 (PDT)
Date: Wed, 15 Jun 2016 00:55:07 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160614235507.GD22479@resin>
References: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
	<1464641195-88380-6-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1464641195-88380-6-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 5/5] linux-raspberrypi_4.4.inc: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Tue, 14 Jun 2016 23:55:23 -0000
X-Groupsio-MsgNum: 30526
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FFoLq8A0u+X9iRU8"
Content-Disposition: inline

--FFoLq8A0u+X9iRU8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 31, 2016 at 04:46:35AM +0800, Herve Jourdain wrote:
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index ba47b22..789fef1 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -4,5 +4,6 @@ LINUX_VERSION ?= "4.4.9"
>
>  SRCREV = "3b440738b5c1adc3ec3ee72ceca799d1b8d264df"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
> +           file://0001-fix-dtbo-rules.patch \
>  "
>  require linux-raspberrypi.inc
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Can we merge this patch in the 4th one? Only if you decide to push
another version based on other comments.

--
Andrei Gherzan

--FFoLq8A0u+X9iRU8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXYJlbAAoJEHO76Gt+erfPeukP/RtCdJsLxBTEfFSOjRxq7dph
0/GUsMoGan7fmvRyE4Ky4ihOI9AmrTp4abp7bGYba7jQpzN7gBrebWj3+jU/IgBr
pJj/6y3wWDPbik4nuwU6o9ZGcL+eFV6mtM7ryiWqh+y/nEdCn/UIsSQBIfA+pfRy
2Akj/mxrH1clHpM0+3fYejXifYikDNUgUajCgVPev+/p9nwrPzGiwCqA9O3cQVdK
O5VO1hStn9XxGipX3FduX/ebLL70Nq7gNb8LSYF3wRyfuflaQyB2aGSVKndmZOsv
f5tu8CPmv7hosIUC0dxK2yhizi5BUm/L6gw3//OxBjD1Oy687IxKbd8+CSp9pNr3
uUQwaAKHL/qkWBocT3ML8BgWp6fgGBvLURpYu9oZNyXbaU2YJyM9jQSy8W2rV7Rk
zlvSw3I4oCATDPIzxC65penRd6KEDIV+afqqf6JoRbLGHOnijPqT7u2lbTYye7f0
LCjLWLoou5J166GpX8oZszX4YCXgY/8XGXABeP88daPkVyWEAyOV9NEAbODjgIZ+
28HwXnacbzgANDTF5ixpmUDiW7IggLbUU2Z5i1ah3RjVXcKwwk1HXG87ye1uULVP
4uS4I1+BEJdieavvjuByduwqoYxEbJEkJYbIGRp14DIHZpuuFKxoRhnQCtDv1GWE
csmpNQU33X1oYLEHBCCP
=jdNu
-----END PGP SIGNATURE-----

--FFoLq8A0u+X9iRU8--
