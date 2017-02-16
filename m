Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87A97E00A0A; Wed, 15 Feb 2017 17:41:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CC3AE009DF
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 17:41:51 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 5so399427pgj.0
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 17:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=yP3SGk4Yyo7lLfdpQylRpw3uNtEIk57HGdvoIeUFvoA=;
	b=t/elnVWs9i3xrXNjxKiQjKhXH6CnTRUUUgdc6f80vKgycQIU8N/GV9AYo8pC/ezu3h
	5FiYBqXVUesrNFTR+EcsQxeYkJnQWBJC/yV/Of7p4JA0jPp9N/s6WpWjpfocUNYazdUh
	mOM8CRVrnwargs99zD56QuRNkujLyVapNJST/f7I3veyYMZAlSGqbgZp5lPIJeIx0+tr
	2+ja0JIxNnMhcTEJrW/Pe6VyoG9X1CiyFjyHqEdhpvDnSBkeGNIsnuoD8EunEJc0GidB
	hInGsb3EoglEiRn+Z8vTHt1MyIugZYK71cuI9jtjNwvMm3N3HxEa2kpeG5vR4vLg1KvK
	3UOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=yP3SGk4Yyo7lLfdpQylRpw3uNtEIk57HGdvoIeUFvoA=;
	b=EBLOXePgdraUbNXsIHDeV565X5xFiL/rWjeIAj1SPJ/plhIuEyiFV//ujanzrUtFM4
	3AjYJLI2iEEVxL/qzHTZ+fqAUQMM97c+hoJbjG67c7rQUnhFuH4p+JbJbOqHSGOU8g3U
	oNsa4dmi3YxCyjxTwEKI+RRnKdJlJI+qGUccTbYBh7SDmpzD5Q1pr3VQsnNFf2YC7BSB
	ZwImtMwftbVmMQk9M7ScNq3CBHuLJv4rvPUwuOjH8v0Ff91g/3Pko5iga6BBTfklW4kc
	YWnNt+fsTIes65c5v5Acj2Pd/P2jDKLthMcl+IoVGE1/GUN61U0lVgCg5cNl0S2TTknq
	LO0Q==
X-Gm-Message-State: AMke39neshI/4FCsO5hDumw49uL0g08UM7sKmwQDgKVZCeoEyYT2kyGqkTcQuDMDeYwCnw==
X-Received: by 10.99.174.71 with SMTP id e7mr43146066pgp.3.1487209310855;
	Wed, 15 Feb 2017 17:41:50 -0800 (PST)
Received: from carbonA ([2603:3023:807:fbe0:ab77:6fd:9c01:1923])
	by smtp.gmail.com with ESMTPSA id
	g70sm9672687pfb.50.2017.02.15.17.41.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 17:41:50 -0800 (PST)
Date: Wed, 15 Feb 2017 17:41:48 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: paul@paulbarker.me.uk
Message-ID: <20170216014148.GC31588@carbonA>
References: <20170213233243.16688-1-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <20170213233243.16688-1-paul@paulbarker.me.uk>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.4: Update to 4.4.48
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
X-List-Received-Date: Thu, 16 Feb 2017 01:41:55 -0000
X-Groupsio-MsgNum: 34498
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LwW0XdcUbUexiWVK"
Content-Disposition: inline

--LwW0XdcUbUexiWVK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 13, 2017 at 11:32:42PM +0000, paul@paulbarker.me.uk wrote:
> From: Paul Barker <paul@paulbarker.me.uk>
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index 0f78225..b235772 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.4.43"
> +LINUX_VERSION ?= "4.4.48"
>
> -SRCREV = "17ca1c930978a9ea6ddfec61fd0e2043e8ab3b17"
> +SRCREV = "7ddf96fbb7d637b79b449c7bd1c8d35f00571e4b"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
>             file://0001-fix-dtbo-rules.patch \
>  "
> --
> 2.11.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged both to master. Thanks.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--LwW0XdcUbUexiWVK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlilA1sACgkQc7voa356
t89KPw/9GXJJagOPmY8CNrSJv2v3o0Dhl4Hy8dQPwMyL0D0jEz+fTyad4OzR6Ty+
JnMVAo7uaN94zjlyanAlXgA9EnjyxR8HkYnyRZNw2KXYlfSp5ugyr2HlCcPZPbEG
w3pBAKdr1/51e+WcYrqfkQYELKZx+wDSAAwNAvlS3oKKrSCcrF2rhydHC9vAeJ8L
iPsPxdR0tNX2MK3ESil3gqpOrdMwHBLF9uy7zmq6/YrAr8etMB/GMXlfShjRA5GW
BOQHW8gLL5AIshb8o5h7V00oYH7AZAkyz2h8dAQKTam9fIO5dlkF6RETfT1ysD6K
isXGJA0jZb1zHpDhl0XWJXet05ki1fGEmxk3OCD61aVy/yJXoP4gXD6wMR+uMQVs
MWZApRQKp6qICPCfr8RJjlkUSGhFzLf4ZzTXSqMTtfS6+YaIVosZJgSj1KP9oRMw
9LmSd1BNnK1GJJOs3o5TiAhiZM0spWsfAfvywmk9J4udo53rguFN1JXmTiHaXckg
h3WbvQVFjwRkRs9xKZlMdooI2wz1ZgCuq2SvnkcGhhqG9Zls0MnojehhYNgOOWl2
cp7vhrYIvGHt1pZNuNsCAIVqKkYu2QaEKHj8d5fcuA/DGaELo6ELetCl5G6WSux+
7BzppztlCtG1AvZt5nMc/ybXdO2OjCA4DNczwtaT6dygybJ2OdM=
=aZIa
-----END PGP SIGNATURE-----

--LwW0XdcUbUexiWVK--
