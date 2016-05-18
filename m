Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9AD2E00888; Wed, 18 May 2016 09:27:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92254E006D3
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 09:27:14 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id g132so5479702pfb.3
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 09:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=wzAUkQALa9nAXQVaUVlWCc/34X1ei3bsY5xv9a6Gip0=;
	b=PjebWaKKmHzBMjolF+v3F0FhMKOYukroY9fhm/aszyAoY0rrf9HUrmCdnElN7NFCGy
	xLHmECx9DcYYPjtP9NoGW/vMlDWgXVTUbWOtQ7Lggfw78MvHIfi9HKMp39MMB6Txk8Yq
	Sr0C5KacaCIWWE9WsrDs+o89S/AUoi8hudb4w5iEFmANbiXWa/J0mkeglkyuhSoNU0L5
	lHtXi3UgjJ6+JcZp0qUXKJCggP90W/38xTI+eOSNphjJ561cegzu7o1ayCj0ndTR9xzJ
	inMcoC8QyFKf5Cp45jbkCcFopE/xtulHQ594h5H0rJ0t6F+FJXCv8VfY1rJgT+ZrXfoZ
	Sk0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=wzAUkQALa9nAXQVaUVlWCc/34X1ei3bsY5xv9a6Gip0=;
	b=JRTJaQlfIx3FabPUFhDS6IBIL/VNZTHIAftjnfV34uDwgb+GBd9ISGIW2KjP73nw2L
	vhNYkcSIywQmahLakU/b1gH43mCo6TLAmDkePoyhomKYn3uHmkm6lvIs/885ZBeT44Tl
	5sWRjNweKtnvEsEophJkwVsDiZdUI4ikTbOsfzwKWdk246NVi9QZu8rDx3rPoIsGDDMm
	kBtGN4BuRmUju5q/ueWZkL8r3XOzyYg1GPGN03WJ/gflpQ/cMLF3tAKvXpJ/whtV62R9
	x2jRgXNlXjD89b0lHi7854kkwAnV/qn9Wbf5neycIBNAa6oS32KtvcN5MqUwCqhZTGsS
	ckjw==
X-Gm-Message-State: AOPr4FWDSObLla94m9Gm47bnpjTSm8x31XR/1VOFuNNQFU5dtM8z42Jcp8oDRv238X+9NQ==
X-Received: by 10.98.91.198 with SMTP id p189mr12537307pfb.146.1463588834209; 
	Wed, 18 May 2016 09:27:14 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:7175:401e:6100:ea45?
	([2601:646:8800:5a9a:7175:401e:6100:ea45])
	by smtp.gmail.com with ESMTPSA id
	76sm13428923pfz.44.2016.05.18.09.27.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 18 May 2016 09:27:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
Date: Wed, 18 May 2016 09:27:08 -0700
Message-Id: <722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
To: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Wed, 18 May 2016 16:27:18 -0000
X-Groupsio-MsgNum: 30043
Content-Type: multipart/signed;
	boundary="Apple-Mail=_150398FD-5012-4500-A628-8E9C84471025";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_150398FD-5012-4500-A628-8E9C84471025
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 18, 2016, at 5:21 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>=20
> This patch series enables the support for the VC4 graphics driver from =
Eric Anholt.
> Kernel upgrade to 4.4.10 (some 4.4.9 version would be enough, but the =
required firmware supports 4.4.10, so bump it anyway)

I have sent a patch for similar update. Have you looked at that

>=20
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
> recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb =
b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index 831ac5a..0bc6531 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,8 +1,8 @@
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>=20
> -LINUX_VERSION ?=3D "4.4.8"
> +LINUX_VERSION ?=3D "4.4.10"
>=20
> -SRCREV =3D "fe7ad6aa5c6940817fe971d80a7b2a1d6052190a"
> +SRCREV =3D "4c2795dd50f98fa162cb53190eb557be44f92f58"
> SRC_URI =3D =
"git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.4.y =
\
>            file://0001-fix-dtbo-rules.patch \
> "
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_150398FD-5012-4500-A628-8E9C84471025
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlc8l+AACgkQuwUzVZGdMxRo1wCaA3RcFzoCaIfttmKXbqZwNvau
WgwAn3IwTVfh4ty7YU3qjDYOGHHQs8kd
=xnYv
-----END PGP SIGNATURE-----

--Apple-Mail=_150398FD-5012-4500-A628-8E9C84471025--
