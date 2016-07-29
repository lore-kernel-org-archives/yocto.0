Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBAD7E00FDE; Thu, 28 Jul 2016 18:36:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFA4FE00FD1
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 18:36:22 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id h186so4522913pfg.2
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 18:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=tpZN+kE3FfxtZdaK/dtEjxRemNt/tstTZusqpUfBLvw=;
	b=vJbI/wkLGfdDlGMsSX8tLMe2bk35k5AI4Pdhf7ia3z9cj53xl4tSsFsrGVGjZWDs2a
	bcLZPdJQOGd+7Bg0y+UqtcYbHT1NcOEFOgqWEXI4anMOrJxInhhKI7RE8IUt/dXqI6iE
	z8MxtfCOvldvnlheUvaB4TL7b+Nk6bFAQPqCmxjX+3LJrmZa1fjneJiKIg0FAOBeBN77
	gfK02D+MqthcyYOgRkY5sXM800jDp9Fdi42F9Z5hnrTlAdY5jjtQGXzvDQZcaEC4ycmZ
	EWqGCMLan42cZL00pF7NHj2RwOPw6JZy8oaJ4yDZ3iewqSHXoRWOmg/OFVPQDhQhuqfY
	dy9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=tpZN+kE3FfxtZdaK/dtEjxRemNt/tstTZusqpUfBLvw=;
	b=V95YA3gvOh/+DZ++s77Na+cy9aDW8rRvlLaacDnpzFi6WZJkBnspoo8QH0RjvSMPlr
	VRZkNHHc9miBI2KYvmLt8RaGhNNnf0XrGWXOTJTZi9qX/Ysl8BPsLsyl4CCftsxEchId
	+t7EzAkD/SFRUypU5UbyGLmQ1Q/nbKy6X6fas4FnlkTwVnvxzfERzm06w0keyKopi6yP
	339AQHpteEodqpb5ZfLL87QRHbKLXBdvXOqqEmz06N8uVlRWjHfIKWLI7iySM3lV6WVX
	KrzAS3Wb1Zjk9PtIKQFoTwUtFD/GpJN7l9ejcSKQcwYFKisCbt5Po4SSsTp+AFbuuRnL
	NLZg==
X-Gm-Message-State: AEkoouuu/Ktcw2euzxM21B9BQ+oO2U4QI7vI+PyMZYySRRmRLL9AOa4JptpwnSH5q+z19g==
X-Received: by 10.98.87.138 with SMTP id i10mr64662979pfj.16.1469756182133;
	Thu, 28 Jul 2016 18:36:22 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:5170:19b0:da08:b7e9?
	([2601:646:8882:b8c:5170:19b0:da08:b7e9])
	by smtp.gmail.com with ESMTPSA id
	tm1sm19979213pac.23.2016.07.28.18.36.21
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Jul 2016 18:36:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
Date: Thu, 28 Jul 2016 18:36:14 -0700
Message-Id: <E62BF29C-3A8F-4EC4-B3D3-B7CE2B4F6A3A@gmail.com>
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
To: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: Apple Mail (2.3124)
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
X-List-Received-Date: Fri, 29 Jul 2016 01:36:26 -0000
X-Groupsio-MsgNum: 31282
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C4F9E2DA-4DE8-4932-BCDA-82F14000E224";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_C4F9E2DA-4DE8-4932-BCDA-82F14000E224
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jul 21, 2016, at 5:32 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>=20
> v4 series:
> a. rebased
> b. Upstream-Status added to the patch to the VC4 driver (needed only =
for kernel 4.4, accepted upstream in 4.7)
>=20
> v3 series:
> a. patch rebased
> b. new revision of kernel, to get a version of the VC4 graphics driver =
that handles render nodes
> c. patch to the VC4 driver to enable proper working of the render =
nodes (need to add authorization for IOCTLs)
>=20
> v2 series:
> a. Fix the 4.4.10 kernel revision
> b. Effectively add vc4-kms-v3d overlay to the list of overlays to =
build (forgotten previously)
> c. Make the parameter to the v4c-kms-v3d overlay configurable
> d. Add default values for the cma parameter to the v4c-kms-v3d =
overlay, depending on the board (and the memory it has)
>=20
> This patch series enables the support for the VC4 graphics driver from =
Eric Anholt.
> There was a previous patch series by Javier Martinez Canillas, but it =
required use of a different kernel.
> VC4 is now supported in the raspberrypi official kernel, at least for =
4.4.9+.
> The support in 4.1 exists, but it is NOT STABLE, so it has been deemed =
unreasonable to support VC4 with 4.1 kernels.
>=20
> THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 =
and later.
>=20
> This patch series proposes to support VC4 by only adding 'vc4graphics' =
to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger =
all the necessary configuration/changes to use the VC4 driver, including =
mesa/wayland/weston currently, and adding the overlay required.
> In order for this series to work, some previous patches are needed =
(support for .dtbo, and fix of the mesa packaging when there is no DRI =
driver).
> The memory reserved for the VC4 driver has default values depending on =
the version of the board used, but it can be configured by setting =
VC4_CMA_SIZE to a value supported by the overlay ('cma-256', 'cma-192', =
'cma-128', 'cma-96', 'cma-64').
> 'cma-256' is the recommended value, but it might not be possible on =
boards with 512MB or DRAM, or less...
> 'cma-64' is known to not being able to support FHD/1080p.
>=20
> It was tested with wayland/weston, without the support for X11.
>=20
> This patch series depends on two other patch series previously posted, =
that enable the support for .dtbo overlay files.

I have staged this series into

https://github.com/kraj/meta-raspberrypi kraj/master

>=20
> Herve Jourdain (12):
>  rpi-default-providers.inc: change default providers to support
>    vc4graphics
>  rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
>  raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
>    vc4graphics
>  raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
>    vc4graphics
>  raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
>    vc4graphics
>  raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
>    vc4graphics
>  rpi-config_git.bb: add v4c overlay to config.txt to support
>    vc4graphics
>  wayland/weston_%.bbappend: modify configuration options to support
>    vc4graphics
>  weston/weston_%.bbappend: modify configuration options to support
>    vc4graphics
>  mesa_%.bbappend: new file to add the correct configuration options to
>    support vc4graphics
>  linux-rpi.inc: add the configuration options required to support
>    vc4graphics
>  linux-raspberrypi-4.4: add patch to enable proper operation of
>    renderD128 device
>=20
> conf/machine/include/rpi-base.inc                  |  1 +
> conf/machine/include/rpi-default-providers.inc     |  8 +++---
> conf/machine/raspberrypi.conf                      |  2 ++
> conf/machine/raspberrypi0.conf                     |  2 ++
> conf/machine/raspberrypi2.conf                     |  2 ++
> conf/machine/raspberrypi3.conf                     |  2 ++
> recipes-bsp/bootfiles/rpi-config_git.bb            | 10 +++++++-
> recipes-graphics/mesa/mesa_%.bbappend              |  4 +++
> recipes-graphics/wayland/weston_%.bbappend         |  6 ++---
> recipes-graphics/weston/weston_%.bbappend          | 13 +++++-----
> .../0002-vc4-ioctl-rendering-allow.patch           | 29 =
++++++++++++++++++++++
> recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
> recipes-kernel/linux/linux-rpi.inc                 | 10 ++++++++
> 13 files changed, 75 insertions(+), 15 deletions(-)
> create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
> create mode 100644 =
recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.=
patch
>=20
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_C4F9E2DA-4DE8-4932-BCDA-82F14000E224
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleasxQACgkQuwUzVZGdMxS0vgCaAu2TOFgJmHahejiRlmGa/X2N
CxsAnRTV6cd8husa0RXRLAr1XT7P3ahr
=C6Yu
-----END PGP SIGNATURE-----

--Apple-Mail=_C4F9E2DA-4DE8-4932-BCDA-82F14000E224--
