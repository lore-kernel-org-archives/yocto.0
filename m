Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F7C0E00CD2; Sun, 31 Jul 2016 11:53:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85A01E00CC3
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 11:53:02 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id x83so23256268wma.3
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 11:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=i9/PGtWdyc1Suw6Q/E1tyZ/YGgg90IjnXpzOPUXm5f8=;
	b=SOnW0HaIis++YFtVxhuprN3E4FUqwt41o0omF6kMRbtHuJyEBBQNH3HYKX3bywYFQe
	ZxA1aMaszdpGBKWX7HGHzd8z8WUWdaxv5BjMd+yRGZgXjcSR3afA384gvU5yMH6RE8ox
	Kt64sSCa44ST9VOvEqrQJt13n4uJ8/RJV7M/99rxXH2JSGjXim5iC7psOtZ4Fep7t4Vp
	Q/RUm61fCH8PlmsbqxdNOJwi4NqOvHyPglD577LDNYknBPoKW0hZ+nj/cbqmbdAF208y
	ZrtkQtWAp9+OZ8X8JtGAp75XnVnr3OGWb0vSCFw5ktOMpkYqRti3sz225WQuCZitr+xT
	TTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=i9/PGtWdyc1Suw6Q/E1tyZ/YGgg90IjnXpzOPUXm5f8=;
	b=KUtRCcD5SbcjjzwA5+aZ9Mh3Lh69IUw8jmot/Woz/eazhcTWKFgUIyUeo1LVqLchjO
	A9vjD+0RWv0DjU63jD7/sB8tWdE6rbkAMr7vDjrrTldJTuJW4c9rObGq7nPSiUMPv969
	zqqkNZI21PVUIQFBqadjk8Dh8LfAcg3Ak5N+tUnNVtox+RMKm7pFlNwDzaIOAQL6r+i1
	y2IDdDa3BG6ySzjuLdYT0mKKL6ON0Fz8HqqbqbuvMoIr+/7q8VezI7Y+j/EQ1sv9+Ceu
	1gbD0UMugVn3s4z8PFGLgnMghSzAtcO7iCapauiqeoXyTrqQeGMyIRpbowR59KFhtKYH
	O1KA==
X-Gm-Message-State: AEkoouvNCsfNikOlHYpk42LcClHW0TO3Smxi8HD1DGl63IBGIS91LiCl86Cgsfh6Wdp33A==
X-Received: by 10.28.166.140 with SMTP id p134mr9900822wme.21.1469991181659;
	Sun, 31 Jul 2016 11:53:01 -0700 (PDT)
Received: from resin.home (host86-186-205-140.range86-186.btcentralplus.com.
	[86.186.205.140]) by smtp.gmail.com with ESMTPSA id
	v203sm13282574wmv.2.2016.07.31.11.53.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Jul 2016 11:53:00 -0700 (PDT)
Date: Sun, 31 Jul 2016 19:52:58 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160731185258.GB29087@resin.home>
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 00/12] Support for VC4 graphics driver
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
X-List-Received-Date: Sun, 31 Jul 2016 18:53:04 -0000
X-Groupsio-MsgNum: 31314
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="St7VIuEGZ6dlpu13"
Content-Disposition: inline

--St7VIuEGZ6dlpu13
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 21, 2016 at 08:32:05PM +0800, Herve Jourdain wrote:
> v4 series:
> a. rebased
> b. Upstream-Status added to the patch to the VC4 driver (needed only for kernel 4.4, accepted upstream in 4.7)
>
> v3 series:
> a. patch rebased
> b. new revision of kernel, to get a version of the VC4 graphics driver that handles render nodes
> c. patch to the VC4 driver to enable proper working of the render nodes (need to add authorization for IOCTLs)
>
> v2 series:
> a. Fix the 4.4.10 kernel revision
> b. Effectively add vc4-kms-v3d overlay to the list of overlays to build (forgotten previously)
> c. Make the parameter to the v4c-kms-v3d overlay configurable
> d. Add default values for the cma parameter to the v4c-kms-v3d overlay, depending on the board (and the memory it has)
>
> This patch series enables the support for the VC4 graphics driver from Eric Anholt.
> There was a previous patch series by Javier Martinez Canillas, but it required use of a different kernel.
> VC4 is now supported in the raspberrypi official kernel, at least for 4.4.9+.
> The support in 4.1 exists, but it is NOT STABLE, so it has been deemed unreasonable to support VC4 with 4.1 kernels.
>
> THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 and later.
>
> This patch series proposes to support VC4 by only adding 'vc4graphics' to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all the necessary configuration/changes to use the VC4 driver, including mesa/wayland/weston currently, and adding the overlay required.
> In order for this series to work, some previous patches are needed (support for .dtbo, and fix of the mesa packaging when there is no DRI driver).
> The memory reserved for the VC4 driver has default values depending on the version of the board used, but it can be configured by setting VC4_CMA_SIZE to a value supported by the overlay ('cma-256', 'cma-192', 'cma-128', 'cma-96', 'cma-64').
> 'cma-256' is the recommended value, but it might not be possible on boards with 512MB or DRAM, or less...
> 'cma-64' is known to not being able to support FHD/1080p.
>
> It was tested with wayland/weston, without the support for X11.
>
> This patch series depends on two other patch series previously posted, that enable the support for .dtbo overlay files.
>
> Herve Jourdain (12):
>   rpi-default-providers.inc: change default providers to support
>     vc4graphics
>   rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
>   raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   rpi-config_git.bb: add v4c overlay to config.txt to support
>     vc4graphics
>   wayland/weston_%.bbappend: modify configuration options to support
>     vc4graphics
>   weston/weston_%.bbappend: modify configuration options to support
>     vc4graphics
>   mesa_%.bbappend: new file to add the correct configuration options to
>     support vc4graphics
>   linux-rpi.inc: add the configuration options required to support
>     vc4graphics
>   linux-raspberrypi-4.4: add patch to enable proper operation of
>     renderD128 device
>
>  conf/machine/include/rpi-base.inc                  |  1 +
>  conf/machine/include/rpi-default-providers.inc     |  8 +++---
>  conf/machine/raspberrypi.conf                      |  2 ++
>  conf/machine/raspberrypi0.conf                     |  2 ++
>  conf/machine/raspberrypi2.conf                     |  2 ++
>  conf/machine/raspberrypi3.conf                     |  2 ++
>  recipes-bsp/bootfiles/rpi-config_git.bb            | 10 +++++++-
>  recipes-graphics/mesa/mesa_%.bbappend              |  4 +++
>  recipes-graphics/wayland/weston_%.bbappend         |  6 ++---
>  recipes-graphics/weston/weston_%.bbappend          | 13 +++++-----
>  .../0002-vc4-ioctl-rendering-allow.patch           | 29 ++++++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
>  recipes-kernel/linux/linux-rpi.inc                 | 10 ++++++++
>  13 files changed, 75 insertions(+), 15 deletions(-)
>  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I would have wanted to merge this but they depend on dtbo support which
doesn't have the required bits in oe.core. So I can't merge this until
that lands in oe-core.

Regards,

--
Andrei Gherzan

--St7VIuEGZ6dlpu13
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXnkkJAAoJEHO76Gt+erfPQwwP/0nhDdhW3vIswIN3CjjdaPk4
RvLmCl0PwL05qeD9sDXqRzM47mrHHS+LoklhOZyyK/ITyQ3+IbYoDQU2XF62lT05
Xxi27h329ilS5J+P2CjteaZFXMvi12uKlY3WM6AgSGTkj1uq852Vo418Vi8nlw8n
IdG4F5IuRgCmrFYf1t0lFe+PUzG7SP5RH504DgDlrMbiwzfVt2AGEwhl8dx8jMET
O6ST3baedqzu/8lgr5SLeKvC0RhlqZfGhgi1v0egYIoz6qV1pm+jxWFKGy6VVfKo
VBnYu4ZrccjjHpBXuTpiRDgsJ72rIhrxalwD99Jmexsz1Rd58c3ZHKafGg6AOSsk
8vtbECFUFqRz64XFDqpwPFww/x7hmsOuaR8MI/LhdYqPLdwcspfpI3vJdUhgGHPZ
XyOZdxi2qLKaWd/rvkyIMNABTezR8MSEeYhtooVwKRgax0oyt5/36+EptQ9FZ5ay
X7Qw5K/LsbcxZMtOzBPwOiouvvUtQIN4tw5Z8tuIaCjthREfOFxFfVJ+f7TGlaYE
Ir4Im2CbZ+7I4Xzs0mBsOB7W0r7x+jRJjsSE0WW7WX5QJ5dOaditASPyPk+ayu0r
6gcHuOWKziSj5Sw1+kuLL/x5n6gh3sTjX8Fb1ox6tUiPQHg43KWWA4SK6C3KQ9vE
CnPATmd+R3UX/67qz4Nc
=4EAx
-----END PGP SIGNATURE-----

--St7VIuEGZ6dlpu13--
