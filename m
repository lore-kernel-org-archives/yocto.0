Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB177E009D4; Wed, 18 Jan 2017 09:35:46 -0800 (PST)
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
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21FF2E009CD
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 09:35:45 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id d140so5685289wmd.2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 09:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=87pehTIm4qJk4K0WZmjn4A3KKO4jK+2VBHDrt+FUPBU=;
	b=rAQW9YDJUE5Azz31mlEbMmBvTkVSIejqpd3IGeHzg6SsyrYAWO2UlFl8a5dyv6zmIj
	hXA+Lexm7Js6WbSuUzSq6JA+JEApqrsrMba7Z3lgFM3qLF46mvAOncfKN3zkoFoy6Atj
	hWBeuwpRHkw6HO1ucgxSVlo8qTXBGrixHDjXCmEreDHvk7wCOje1XIC392Iccy7fZsFX
	GZiGy6NyKbFZAe3mUrVLTBOkBzLyY1RZ1q8sOtEvCWr5TWew+XConjiTziN2WlAKA2Sv
	R0EIJQqFgt7t/hd6h9ZVmU85Je78+QFBcBHPQcvuXejJ09o7gF97d23cv7Fp04scPQRT
	NCuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=87pehTIm4qJk4K0WZmjn4A3KKO4jK+2VBHDrt+FUPBU=;
	b=jI6HIMRA0kiz7ZovPIMg5j8rT13/1psiwl9fMX+coUlV5MkXTKMUS7+uZ7pyRIR32F
	FksZtdNDgFbfv6Kr1H9sSzjNWeFW6IOyKFSFIPzLILSCz+hRGR8IyacERUAb+KTZivoF
	S40ZSUQ/hG/RjKmgEYE/AGJan/RTi9LO7gmP0d6g2BHEcssXIf2I3EfLXrhQ5L+lkbwz
	Ugis08Fo3tUFrMeN3lwUovn2m3Xy+GAKOGG/BzN4vbN5aenynzVrfaKVaS9Zb6xk4q+E
	oTaYmIS+1k1SdkkuXbvRJ41/H+p/XF+JlsoddXpKhDQg/cXTizqS4SP1fjn1XqC2T68s
	YZ1Q==
X-Gm-Message-State: AIkVDXK7oGByqbxOq/ndTMony/EJtxWEae5yYwEYFrBOiP9MCUZDtN1VKxrgjrES+2O80w==
X-Received: by 10.28.88.141 with SMTP id m135mr23252139wmb.59.1484760944732;
	Wed, 18 Jan 2017 09:35:44 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	r5sm46774491wme.23.2017.01.18.09.35.43 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 09:35:44 -0800 (PST)
Date: Wed, 18 Jan 2017 17:35:42 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20170118173542.GK14533@carbonA>
References: <1484760842-5100-1-git-send-email-andrei@gherzan.ro>
	<1484760842-5100-2-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1484760842-5100-2-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: Re: [PATCH 2/2] linux-raspberrypi_4.9: Update to 4.9.4
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
X-List-Received-Date: Wed, 18 Jan 2017 17:35:46 -0000
X-Groupsio-MsgNum: 33918
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/jvaajy/zP2g41+Q"
Content-Disposition: inline

--/jvaajy/zP2g41+Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 18, 2017 at 06:34:02PM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> index 20f43aa..cffea1a 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.9.2"
> +LINUX_VERSION ?= "4.9.4"
>
> -SRCREV = "4052b0da7dbab0df22ca8733cf50b3e573e221e0"
> +SRCREV = "8b0be887f834e7eccf0de3edf630003880779a5f"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
>  "
>  require linux-raspberrypi.inc
> --
> 2.7.4
>

Merged both to master.

--
Andrei Gherzan

--/jvaajy/zP2g41+Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlh/p20ACgkQc7voa356
t89YHBAAuwJVXAjKrvjDwIhWTJF+TRIfenN2N2soR+WQPkGt5vbxHl3clo7TQHrU
TV5e8CRg+Lk+XwxqV4G9FWfSWUodpEXAXBcNXsajwPtWQ91cW7Wncs9Joan2zecw
MDZmGyRSvwa03jGdubiUfmudDn3e39Qes+L80txxyUkdoFFmC1sRxrsSSLkYl6Iy
HvpOH/atO+5jVz1NDrRLbvdO9RjRkft764+gyDcydc0ETWD2jOt+XQhe7UUO0DYf
FNGN9Slz5D3eFtiPKUn7HJfs3UF2MywBC9MhWW5+ZaSK93Xuf1MRb5LWWovNXmOI
cPiwmjt4MkQ8LpWymcTC5KTHLfCVf8CKwvJ10eBOSnM6NhHHvT7uitAge1Ry2SN3
gdzgFmjJfu9NGf3Ksw51Trqnd3OnAoTMd0ya3oUIDPBHd7EXp/fdz1CEYck3OOCR
2dKxYsRulqqdET0Cm3Zdr/EJXqXGz9dI2f1ZL6+wgXKHduYW7tih7m1drZq7TmQf
2CmEhCjzZXQzqveMWXOmjQAwilML7EdQhIePKLMgA0ZuTxyLY7m1uC1O6ie0y7/3
r0+yjseJKk+FATfDCiIKTX0VCfJhmLSlyWA8VTAf87HEK3pgiiu0ZFRU5aMnMvE4
01tzgmCFoN/Bn/JDogqwgSmFKSJzsKSoBpAGwf4O8ettr5K46iw=
=JsRR
-----END PGP SIGNATURE-----

--/jvaajy/zP2g41+Q--
