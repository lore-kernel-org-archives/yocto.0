Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD5EDE00D18; Mon, 31 Oct 2016 07:17:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41D39E009D8
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:17:21 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id c17so18636070wmc.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=cHTo2+MlcrtlMFBC0U3EJHr7zjuD63i6UsjbgWSOLnQ=;
	b=ONXkvu/tspGDEdeVzs0iuOAAfaFP+fEscJoiCMzHjFTNkjVogh4is2RyPQp5PUYjlU
	z/wmLJDcInkCd4J9HRjiClPEbZ4Lny9EmBf6IGgv4hv51xFtEAf66nZrso1MdZ0oQLXL
	Ljup5gtJTFMThC6eoBBREJAzIIiiq/ypMITn38Aiiml5h9krrYRGjkY+8vcoIqVAmso0
	SJs1PpLRv8Kp0bqFJXtWfRdi8VFgX695PoNKViedCyS1BCOmMHoiJKx6bf+OQnBoN6Gu
	L3HRIDnhITKoPdq6TrsGIbowoAUN2EetqWG+vhQAJ6Agkc93crRh0rBmkxgIS9Xplqrm
	WByQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=cHTo2+MlcrtlMFBC0U3EJHr7zjuD63i6UsjbgWSOLnQ=;
	b=UxI221TCTl+cKDH2hcSBRlRBlQcfVKu+jg0zlwSxkbkrhqMUaiLSAQBSZeGL6oZl6t
	i1FROklWpy1egsBbUNrBTWSxK9A6IksPZfmyOv1iDsbdD8xzoH6uuNq4qgiPmbo0kFiV
	OOSDxeRPAXiXmJ3jZpQljE6nOmEeORHzjLkImxxNZ3CJSEj7Z1Ze8AnIBKcg8pg6OuYu
	tQd+udMGseYA1xi9DROIIwtvbmPugOXEZKXKIEZasmVukH9c8GKeSWDYgG5Ru0K1rWKv
	/7Tb/qu6K8a3x0fUsZ72WANojPQ52J9F7sNMKMz0EcGuP1J43vjvtg+MuVwAdtnc61sQ
	GGQw==
X-Gm-Message-State: ABUngvfsU2rgN+fmj6LgtJc4QfhCxIZZSPqplhlVIwKo0nimU89jzNBxl9Q/xhvo59qlZg==
X-Received: by 10.194.115.230 with SMTP id jr6mr22123220wjb.3.1477923440799;
	Mon, 31 Oct 2016 07:17:20 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	us3sm30177686wjb.32.2016.10.31.07.17.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 07:17:20 -0700 (PDT)
Date: Mon, 31 Oct 2016 14:17:18 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20161031141718.GC9939@carbonA>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/6] Kernel update + VC4-enhancements
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
X-List-Received-Date: Mon, 31 Oct 2016 14:17:26 -0000
X-Groupsio-MsgNum: 32687
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sHrvAb52M6C8blB9"
Content-Disposition: inline

--sHrvAb52M6C8blB9
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 22, 2016 at 07:47:48AM +0200, Andreas M=FCller wrote:
> Patches I am using for a while. If my images don't break for other
> issues I am able to run X11 and weston accelerated in one image. Had
> never a machine before able to do that.
>
> Andreas M=FCller (6):
>   mesa: align for vc4
>   xorg align for vc4
>   vc4: why no framebuffer device?
>   linux-raspberrypi: update to 4.4.21
>   eglinfo-x11: align to VC4
>   rpi-base.inc: build vc4-fkms-v3d.dtbo
>
>  conf/machine/include/rpi-base.inc                  |  1 +
>  recipes-graphics/eglinfo/eglinfo-x11_%.bbappend    |  2 +-
>  recipes-graphics/mesa/mesa_%.bbappend              |  1 +
>  .../xorg-xserver/xserver-xorg_%.bbappend           |  9 +++++++
>  .../0002-vc4-ioctl-rendering-allow.patch           | 29 ----------------=
------
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  5 ++--
>  recipes-kernel/linux/linux-rpi.inc                 |  2 +-
>  7 files changed, 15 insertions(+), 34 deletions(-)
>  create mode 100644 recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-i=
octl-rendering-allow.patch
>
> --
> 2.5.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Patch 1,2,3 and 5 from this series were merge to master. Thank you.

--
Andrei Gherzan

--sHrvAb52M6C8blB9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF1JuAAoJEHO76Gt+erfPaKEP/ixUDxXC0590kpueMp9+bXd7
doAmb8Lvj3UjbjLfKHeBRKElKcecCL+H8c4b91lGKBCDpCQDwH/HxDCy2/mZkhJW
NyEGRLpTzMb9xA22Q71d6rt+oPrm7hI7ZwkwV0AR3PgRv4dv7YI4UDUfOCHbhsk1
PREQfeiUx79HTBRrWSuM/E0POfW+sW0XjgoUh/LPTsrAZwM/JnNGmbnltPDU9Od/
htvZZ6wyeCOP2fzmxYx4XBHdEe8TBYSaVCUWfjRsC66cqVTeTRdMV9yABOmCncya
lQ9PukoaAw7nuncKFwSWhifDluolAgWTQ5ub2fyKvRdgJ3Ltbegl5/FjWnCGJipx
cPFa0Bn4EcCyagy/ZlhbNs6GkGFQEqTo/b5ERPk+K30nGxLWytmqJuscmZOeYa7i
8SVtyDkGWL3hO6o1LyKy2MXcbbSg+7rjiaue/j59lLjgX95c0eBQ12VIG1qh9pC/
tsRWQnK7YuowfnNrXzDfxQvubzf6ofKRS0hXogubzzhzzTk2820hUr20W9dxTp4k
sukgQj/Ow3A+60FaH30tr6EfwjnUFRi3OXI2MSqRoYyNZV3zO+MJrKApasRlBr9X
vJ7mohIHa4lbTWpKAjJzT+su6iBO6u60+huaaUYwBwn0SwpQ+XmvN7H+FmCfQbny
4rl3lZ8yFF7yYiEVJS9A
=6CB9
-----END PGP SIGNATURE-----

--sHrvAb52M6C8blB9--
