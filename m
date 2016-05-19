Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADC8AE00E69; Thu, 19 May 2016 07:45:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5CA3E00E61
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:45:54 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id w143so21556437wmw.3
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=fAKa7yLNhlnrYZpdrtZ7S1LwJpI5YKQB+AwPBn5+MEI=;
	b=yeDLQiwcfIHkFrM/9CIKylpoq8y0Cg8nkAzKji3UrGp8v6V18UunlxtkMv1rMF78tH
	GrruxJE5iKdYiSKefVvhK4WzQJs8raTc0aM20O8+TJJeMbGBQyqRGFwzNysYsEdn6ytv
	LC1qtH7JBHRvn0q3b3mwy8xiUzFD5xrwoQ4XzDMZjUOUyrSoEWGvtiE3WO7qpwZVnB2C
	BAvObmX++AEc5T2vaubIIuDGI08rbTjqOLXTsxnhIV219E/HLmCtg+ecHtf7QXOhYgH7
	aJVjtraOL8wxo/t1JZb0DUt6a9nfHIvYn7mKbVWKpBMrHgoebpjCz1iyPhXCbQ4zadmS
	W9VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=fAKa7yLNhlnrYZpdrtZ7S1LwJpI5YKQB+AwPBn5+MEI=;
	b=Bk+UTOJeL0Q4yuOJpofexw5rYkCuDJbvg+l5Qh4CCM1W4ywTQH5Ls1LmLXL9zeUjHv
	piKG22MM++5R+D3EtADSuvtpiBGIYJJ1jDK7rbm3ugKMBozDxzNekhfbZaWwGoynxcC3
	b37vJ9L8O4lsc/mzquoDrb2y8AmX22VCuk2pfN8OlsFxF2L+yzpaNKivcFuKSewZxmWZ
	QuT5A6o87bZ0g3iYMg1xIsIWw69PpF17Hyq+llA0pkFTeDIxDpqOXCg0/kMDv/oFsRv4
	SZsPMbfMAAfwqfglwsreacltNhqYnp/U5Wsl5noR5rVbnCkaMo45odsx4tcE/GUPTgSc
	eDrw==
X-Gm-Message-State: AOPr4FVecgwXjduUZ/T2CL3LizEVQZ1sbnhgVRYy2p9gT8aokRo5TYcMaTIdoRf8mXwGeg==
X-Received: by 10.28.93.6 with SMTP id r6mr15077743wmb.93.1463669153492;
	Thu, 19 May 2016 07:45:53 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188]) by smtp.gmail.com with ESMTPSA id
	t206sm15195676wmt.21.2016.05.19.07.45.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 07:45:53 -0700 (PDT)
Date: Thu, 19 May 2016 16:45:51 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160519144551.GC3601@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-2-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1463574082-126198-2-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/8] Support for vc4 graphics driver: change the default providers
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
X-List-Received-Date: Thu, 19 May 2016 14:45:55 -0000
X-Groupsio-MsgNum: 30072
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kVXhAStRUZ/+rrGn"
Content-Disposition: inline

--kVXhAStRUZ/+rrGn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Try to keep the commit log format as we currently have the layer.
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

On Wed, May 18, 2016 at 08:21:15PM +0800, Herve Jourdain wrote:
> This patch series enables the support for the VC4 graphics driver from Eric Anholt.
> Configure the default providers, depending on whether 'vc4graphics' is in MACHINE_FEATURES or not.
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  conf/machine/include/rpi-default-providers.inc | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
> index cabbd43..0bc8838 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -3,8 +3,8 @@
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi"
>  PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi"
>  PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
> -PREFERRED_PROVIDER_virtual/egl ?= "userland"
> -PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
> -PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
> -PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
> +PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "userland", d)}"
> +PREFERRED_PROVIDER_virtual/libgles2 ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "userland", d)}"
> +PREFERRED_PROVIDER_virtual/libgl ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
> +PREFERRED_PROVIDER_virtual/mesa ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
>  PREFERRED_PROVIDER_jpeg ?= "jpeg"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--kVXhAStRUZ/+rrGn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdGfAAoJEHO76Gt+erfPk+cP/ittPPWx/C3BvgyqPEj/CNpm
hSS1EiCbo+XyNBLimjvRb5K5icHNJ1DmlnQz851AbZS2SxTlS9CNd3/6gTq/10kE
dkKa0/qZna9bspl/x3kxIYMAEhJGCLK66sLdsSYfB+UVsq7n1ag8I764OZcJ7Hyo
Rbwppfdp/kbXQDn9J+ONl+2oerr3d+hWYtfKDbfV2HMdpUKlzjcaBxMq8v+0Ke8I
zsBY7REDgpCBI7AWzC3f4AYz9OJyu53BIVvziwheMyumRItsnq6/1Cc++IhHjnun
HGP22REO+yLt3bDuYPPXo0ST4Xq301e6sH4Kspy8uExoAdOtdd04sWhcGV805tzh
/mOrNc99cFkVnDBIGSybZiwbCk60dME4exKpAxSfbEyCNEQHai3hihFE4jb8D26w
5PcMRqor/ELZ317vd7+yEEMpcmbtmliqv4ijmZ8R0dPZTzrd5TKkIkv6MJqb5ZRT
ValtMDnSyPiiY7MTRO1wTqbRdr8BREwraozxn3dx2jJtAI2GxXBrOBdyEyKYEpsd
aVstmz0/8sIduArQ57U0QoHq0RVloHSerwZduvv3//P1p64GhE0FUIQB+reINVIa
zskavuNvEiu0qC4RuGC2mBIcRX6UJC3fJrgKNFqwQOcCFDwnQygvxWqnvkzqDBrM
XyapgquTjL25rZ5/yfo4
=pNOj
-----END PGP SIGNATURE-----

--kVXhAStRUZ/+rrGn--
