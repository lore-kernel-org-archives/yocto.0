Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24C95E00C29; Tue, 12 Apr 2016 19:16:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C702CE00B9E
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 19:16:20 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id n3so51183961wmn.0
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 19:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=HReiZMhour5OhX9DTAosG5WDcx68GyoYubuJnrcku80=;
	b=hDRZW6QRSXkUiIRttENE4UqVyd4rONxy6zf7crj2nyipkcN2dcp19oHkkab2NaY+gL
	IK2iQYE+Jc9qvCTuXx8paiZOHiQc3sRoRM2+VjGwY0u0HDT/o5duOeGwtQuYOEzopcQp
	ZP1uXXRB2IjMDLnNCEn1BdSo5LEh+89BaGSkeICvXpJxo5V15TsbSadACmitPccw7wzG
	oJVVOIHvKMQR/f4RoLcA0WVAsinnPhiLCKtvynFr67/0zFxF2oqqxxNIAtBgK0lq6ql2
	i9k6rCiwsKCO+bAijckFEN0Rou7hE/scApR2fDuyjKjln3ge+XQeWonhvJg9GCtKYPfQ
	tQ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=HReiZMhour5OhX9DTAosG5WDcx68GyoYubuJnrcku80=;
	b=ZkAyvnQ7Sw4EdoK/GocEfObZ7QW2vdQUlWb8xo5Vwb3/JRl7qGLVQhVgpDuZo+WB/X
	3BVcowNeaU3JZyIsXNB/xnL0enPJ2Tnt4v66/aLBi8skqm8xNFO5LZqmLdPvIZTJ56g0
	9CkhzyI9tUaCuBHGEOOEIcPjCshJQQMp5JKrRwn1fwIXwoHLdfmWUHMuvurgVRpJ9g3s
	lQzE7bAKn/lqB4XqI3Fl1kMxshnFSTyAfzO1ka1GLWBN8gMeJepXRfPHM/O22vDwBJw7
	FsSTgkh+s7dnZl/m5LoojZzGMYsxon2DD/CwH3uTwZsumOoVAmu4LH73vw8x5ZIcsdIy
	fp6A==
X-Gm-Message-State: AOPr4FX4sWykEahM1h4iWiCMLrJZz8G91o50fywOsYijb6zPZhXbthJRr2tRgR3MBAPVHQ==
X-Received: by 10.28.6.140 with SMTP id 134mr7624217wmg.23.1460513779878;
	Tue, 12 Apr 2016 19:16:19 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	u145sm25464020wmu.17.2016.04.12.19.16.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Apr 2016 19:16:19 -0700 (PDT)
Date: Wed, 13 Apr 2016 04:16:13 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160413021613.GA22139@resin>
References: <1459348549-32007-1-git-send-email-petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <1459348549-32007-1-git-send-email-petter@technux.se>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 0/5] Various upgrade/fixes from Technux
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
X-List-Received-Date: Wed, 13 Apr 2016 02:16:24 -0000
X-Groupsio-MsgNum: 29391
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline

--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 30, 2016 at 04:35:44PM +0200, Petter Mab=E4cker wrote:
> Various fixes from Technux, with focus on PiTFT28 resistive support and
> Official Raspberry Pi 7 inch touchscreen enablers.
>
> Petter Mab=E4cker (5):
>   pitft: Add support for pitft28r
>   rpi-base.inc: Remove deprecated MACHINE_FEATURES
>   rpi-base.inc: Add overlay for rpi-ft5406
>   .gitignore: Ignore some additional files
>   linux-raspberrypi: Drop support for 3.14
>
>  .gitignore                                         |   2 +
>  README                                             |   3 +-
>  conf/machine/include/rpi-base.inc                  |   4 +-
>  recipes-bsp/bootfiles/rpi-config_git.bb            |   6 +
>  .../rpi/xorg.conf.d/98-pitft.conf                  |   5 +
>  .../rpi/xorg.conf.d/99-calibration.conf            |   6 +
>  .../rpi/xorg.conf.d/99-pitft.conf                  |   5 -
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |   6 +-
>  .../0001-ASoC-Add-BCM2708-fixes.patch              | 263 ---------------=
------
>  ...ng-lock-from-atomic-context-in-i2c-driver.patch | 235 ---------------=
---
>  recipes-kernel/linux/linux-raspberrypi.inc         |   2 +
>  recipes-kernel/linux/linux-raspberrypi_3.14.bb     |  11 -
>  12 files changed, 30 insertions(+), 518 deletions(-)
>  create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi=
/xorg.conf.d/98-pitft.conf
>  create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi=
/xorg.conf.d/99-calibration.conf
>  delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi=
/xorg.conf.d/99-pitft.conf
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-3.14/0001-ASoC=
-Add-BCM2708-fixes.patch
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-3.14/0002-Fix-=
grabbing-lock-from-atomic-context-in-i2c-driver.patch
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.14.bb
>
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks Petter.

--
Andrei Gherzan

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXDavsAAoJEHO76Gt+erfPPlAQALwMpgFMzVhjW/LrLG0/EK7v
foF2SXKTdcoy+UCtTegt7sxJk5WhPPpvS4yaQMuFe4607lA71SEuDrX/e7dsqkfh
1HeQmjMK10nzhPBrACoYkQ90T0dZLJGEgH9jnVGMET3/LOyHv9rsBZFhbqEmftb5
IL5YQ7KmKaIHy7wR0B1YIEoS3Efy+CckzYQt85QGAJcHOlxoDFchYBzRd3F5j5KU
Fnf1ab+r2ii8cd2NRhdq+k+/8Wexz+Ufvls/PWToe5PtyHAeMhsQZaVDWs5l/i8N
d4I3576a6mFvZDKZw7CqWKgkaIkxAAZlCpNr6DjzqtyXDRbX6xjdEM5E07VqA0kh
MsJCSb20oLw7gFAeOLIx2m6h4ZERFnH8UgV3onSpAvCeeY/iP0P2rwp/tKruGWV0
65A/YKzJZez4zOHUPdQKqEUXhacWYNiJQR/jqmmu3WaWzaYNXFUdPz2R2wyo1f4D
y0i/DxeLYcJz+POkJr2SoVuTe1RIq0v3gFgVxzjbg0MrXpACwJIdeV0zkV0pukbF
b6urkCAyg/6Qpc7pObYv38Pc70Wi5V3ABvTzfpD0LDehXb9WLNqWAXT+6Yo7QRzD
f+vrMxGXpdH3do6Uc7nX4fOwY2KdT+B3iMzDULhd9CHuZKIVdHVcvS/VC2vq/7Ue
sJWXaF3a27MZFNYsjJXy
=W9rE
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--
