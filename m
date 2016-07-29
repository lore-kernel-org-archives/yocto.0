Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC322E00FDE; Thu, 28 Jul 2016 18:41:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8C72E00DC5
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 18:41:27 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id hh10so4372857pac.1
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 18:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=HxA+Cia1HKSE73Qgoq13VqmnirtEBDRyc3ykuautj9E=;
	b=hcBNaNlB3eVx/kWyEUclMb5UZI6sF4iMK7NBbAVyM8E65PydAHawC+zjWUGeeO1nsQ
	nykZwMjmCsCHz6L8kM9ZofkjeZPubytYv6k8heo2a0jR+WDyYimpHinEmR3iy8DS6oIA
	/pdWUDrMoXR86KQ7pe8KqUXE+HvEHMOfKmjpH+7S22QIROTFpQq1NG+D8ERcYL5NDZQY
	Ktf4s6OOnxy138OZeQewP3snmUVI3GkO9D4j+vnTvhMkta+YMfti0o+o9fPnmNKDMUG7
	fAY50eWJfejOQT9wm2mxI7UX5ynTR+SRjgeKPuZmC+XHh5j1FsD8GL9cyY5OfrKvySIf
	Rgvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=HxA+Cia1HKSE73Qgoq13VqmnirtEBDRyc3ykuautj9E=;
	b=m2cr+LkDg0w3u0ObfC0WQwfDqsrO8VzxQt35+rD6lVOJ2o4Ui2oyyXBS2Ky7f6Nlg/
	jyQJQQCza6n3s+3UfnVP/AvKTm/N0h0CbIFD9T3Yl1T/ey8LaWksONkeZheVuO/Blv2E
	njVs2MZpvrGRKFPhOHYJ2JqcZ2JWtAPZocwNjtYDCei9tx+eZ73GtpcTXOMCmu2axzUR
	F+aOlZxtRqB8B/sKkLw9UbxKpIhLz6/bTyiANl4VN57W6qcNqIb4mZIlNJij9bdZzx/8
	AD22BZMiQw76eITfQnv931z1uRJd2uMvUKdomhe/2d9Gx2nLRjBwiX2QeDp/nhLzrs8K
	ORbw==
X-Gm-Message-State: AEkoouuBxg3mfj4146N0JL1DjZVXIu1/+xfwz+8rr8d9qG+zjvklkkioi8CCkKtACW+tgw==
X-Received: by 10.66.191.66 with SMTP id gw2mr23849430pac.153.1469756486729;
	Thu, 28 Jul 2016 18:41:26 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:5170:19b0:da08:b7e9?
	([2601:646:8882:b8c:5170:19b0:da08:b7e9])
	by smtp.gmail.com with ESMTPSA id
	c64sm20004608pfg.35.2016.07.28.18.41.25
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Jul 2016 18:41:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
Date: Thu, 28 Jul 2016 18:41:25 -0700
Message-Id: <70B61AEF-DB1A-4E60-8A14-878623073F1A@gmail.com>
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
To: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v6 0/4] Support for .dtbo files for dtb overlays, required by kernels 4.4.6+
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
X-List-Received-Date: Fri, 29 Jul 2016 01:41:28 -0000
X-Groupsio-MsgNum: 31284
Content-Type: multipart/signed;
	boundary="Apple-Mail=_60A4AEB7-5E88-4FA7-B272-ABEC9A6ECD20";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_60A4AEB7-5E88-4FA7-B272-ABEC9A6ECD20
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jul 20, 2016, at 3:00 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>=20
> v6: rebased
>=20
> v5: modifications after more review
> * Added an Upstream-Status to the kernel patch
> * Only one instance of KERNEL_DEVICETREE defined (with the new .dtbo =
syntax)
> * Modification of the KERNEL_DEVICETREE is done in =
linux-raspberry-base.bbclass, based on the kernel version
>=20
> v4: rebased
> For kernels 4.4.9+, the behavior for the device tree overlays loading =
has been modified on RaspberryPi.
> For overlays, it loads .dtbo files, not .dtb anymore.
> Also, it does not check for -overlay extension, so the name of the =
overlay that is placed in the "overlays" directory must be =
<overlay_name>.dtbo, instead of <overlay_name>-overlay.dtb.
>=20
> This patch addresses the issue for kernels 4.4+, while keeping the =
same behavior for older kernels.
> This patch must be used in conjunction with another patch to =
meta/recipes-kernel/linux-dtb.inc, which will allow the processing of =
.dtbo files for overlays, instead of only .dtb like before.
>=20
> .dtb are still in use, but only for the "real" device trees (not the =
overlays).

I have staged this series in

https://github.com/kraj/meta-raspberrypi kraj/master

However, this all has to wait on two things.

The OE-core patch

https://patchwork.openembedded.org/patch/123747/

and we need to branch out for krogoth

>=20
> Herve Jourdain (4):
>  linux-raspberrypi_4.4.bb: support for .dtbo files for dtb overlays
>  rpi-base.inc: support for .dtbo files for dtb overlays
>  linux-raspberrypi-base.bbclass: support for .dtbo files for dtb
>    overlays
>  sdcard_image-rpi.bbclass: support for .dtbo files for dtb overlays
>=20
> classes/linux-raspberrypi-base.bbclass             | 19 ++++++----
> classes/sdcard_image-rpi.bbclass                   | 15 +++++---
> conf/machine/include/rpi-base.inc                  | 30 =
+++++++--------
> .../0001-fix-dtbo-rules.patch                      | 44 =
++++++++++++++++++++++
> recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
> 5 files changed, 81 insertions(+), 28 deletions(-)
> create mode 100644 =
recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>=20
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_60A4AEB7-5E88-4FA7-B272-ABEC9A6ECD20
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleatEUACgkQuwUzVZGdMxRT5wCfaqoCYr35vqWzUwQJEuZNneSX
MEgAnRawvEpD/92rMevbBJN319Fe/7F8
=sFXg
-----END PGP SIGNATURE-----

--Apple-Mail=_60A4AEB7-5E88-4FA7-B272-ABEC9A6ECD20--
