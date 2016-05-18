Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42F8CE00AF4; Wed, 18 May 2016 09:53:46 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEBA1E006D3
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 09:53:44 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id y7so5530119pfb.0
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 09:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=wPe7nNwCDyPnQnBd3uJ9QFHkN8GR5wuBGZuyQaZdt0I=;
	b=Sjnu8eU0MZ1RAFxs4tR4FcSVWT3WN+5WITmkmH8oyHfQHJWGXRV7O3OGq+P8zOu3cI
	lIU2HFSSrOz1fbd2dPjgDO5QBsAm+DOOOB4hpfJHhehrRzmGJ02P/fzRrdHOp+35AAQS
	jm3I9DAHCXhUg4NJNSK9FlkYiqi7eaKtLV/ZWCYrFAjFXmr4H96Y/c23qs2TB0fXOMK/
	ehwIOY0ZvyB28FREkY60L3h6y+VrEIAOkgDu98ALFCiIgNvSFoVUcVfTOJbUa2PEIm6H
	z5KzGxItiR9T8Q//LLq2WypkR8MRSZ+LoG0FPA1IRR4Xeg+CZ4o+HHPpp8i1kgne+Pv/
	aCLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=wPe7nNwCDyPnQnBd3uJ9QFHkN8GR5wuBGZuyQaZdt0I=;
	b=GppC5htejqgbgUiyBFBof/iwQZxGGyW7qC4J9e2M+M5KmipFMoqffdoolYc94NNidS
	NJngLpaWRRnP/dRnP3+kdqqKguqea95TcBrjlcKI4eOBYYEKqLX7QWJpN4H+bvYnJhm6
	YElKBDJN1n6gZag1Gd38KM5Avo55PJifV9zKdN8xmoQR707huqIr+ST/QRRZORDiwcPF
	8gjvnGoVRJRtQxGwtLRwF4kDplHDJQfoi/jiryOHDjG2Zxn9XD1KLnPYky/PtVC9YRW+
	3dqcxu6GizPLQQr/33EexI9RU8j3Mg11JGlFQN0s9YP/Wuo7lG7Oz1Evb6eW81riNkfq
	bCnQ==
X-Gm-Message-State: AOPr4FUkOEGSpTUGIzirg7lFQx4MBsBcK/T+XYTPJLdmiUPyxUc7tsF+vEqgfa+kOtHx2w==
X-Received: by 10.98.48.71 with SMTP id w68mr12412519pfw.18.1463590423900;
	Wed, 18 May 2016 09:53:43 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:7175:401e:6100:ea45?
	([2601:646:8800:5a9a:7175:401e:6100:ea45])
	by smtp.gmail.com with ESMTPSA id
	80sm13534290pfx.68.2016.05.18.09.53.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 18 May 2016 09:53:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1463574082-126198-3-git-send-email-herve.jourdain@neuf.fr>
Date: Wed, 18 May 2016 09:53:39 -0700
Message-Id: <8CECD805-B6E5-4AED-93F4-CC026062A309@gmail.com>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-3-git-send-email-herve.jourdain@neuf.fr>
To: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/8] Support for vc4 graphics driver: add vc4-kms-v3d to the overlays
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
X-List-Received-Date: Wed, 18 May 2016 16:53:46 -0000
X-Groupsio-MsgNum: 30045
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3197A893-8332-43F5-ABF0-7D13943AE834";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_3197A893-8332-43F5-ABF0-7D13943AE834
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 18, 2016, at 5:21 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>=20
> This patch series enables the support for the VC4 graphics driver from =
Eric Anholt.
> Add vc4-kms-v3d overlay if 'vc4graphics' is in MACHINE_FEATURES.
> (This patch has a dependency on the patch that enables the support of =
.dtbo overlay files)
>=20
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
> recipes-bsp/bootfiles/rpi-config_git.bb | 8 ++++++++
> 1 file changed, 8 insertions(+)
>=20
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb =
b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 4bc8eb7..79e436d 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -19,6 +19,8 @@ PITFT=3D"${@bb.utils.contains("MACHINE_FEATURES", =
"pitft", "1", "0", d)}"
> PITFT22=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", =
"0", d)}"
> PITFT28r=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", =
"0", d)}"
>=20
> +VC4GRAPHICS=3D"${@bb.utils.contains("MACHINE_FEATURES", =
"vc4graphics", "1", "0", d)}"
> +
> inherit deploy
>=20
> do_deploy() {
> @@ -102,6 +104,12 @@ do_deploy() {
>         echo "# Enable UART" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>         echo "enable_uart=3D1" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>     fi
> +
> +    # VC4 Graphics support
> +    if [ "${VC4GRAPHICS}" =3D "1" ]; then
> +        echo "# Enable VC4 Graphics" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtoverlay=3Dvc4-kms-v3d,cma-256" =
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi


will this keep appending overtime ?

> }
>=20
> addtask deploy before do_package after do_install
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_3197A893-8332-43F5-ABF0-7D13943AE834
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlc8nhYACgkQuwUzVZGdMxR8nwCffRNCrCixay0MZkWzytSci8WM
mXMAn0uEBBEm/ieU9szpi6uoiqjqj8fx
=JT/i
-----END PGP SIGNATURE-----

--Apple-Mail=_3197A893-8332-43F5-ABF0-7D13943AE834--
