Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C486DE00C4B; Sat, 19 Nov 2016 10:19:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F13CE006E9
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 10:19:16 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id y68so15588409pfb.1
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 10:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=bUHeVZX2apnHGefRCtsNLWwjqte5UVL6Uyspdk48Cvw=;
	b=wR+u/tgavFdoRjh0Dii7kTaXmhJmJKDbShoCIkwQIFXRAKBmD1pwL8mT5kS+45cq6p
	qbzVz6x7E8fbSJD2Y1FdKC1eBT6uRnFN+prNBxn9rLN/YFes2K3Z0tzLID2kyaBJ24r4
	I8ZJfceSp9ds4Xj/UENCTGeBctoMPIvba9N0iBHfSnSvz0LSTRX6HGPlZWVMdtnQiWW3
	Gduavxha9oTAyeClzUku3T1mbFL68194lEF8wlH3ift6NaxCagoLXye8M4cfx2ylmRCX
	vUt8eNZRcJCMvBlp6HXNQ8D6+UDWPkjL4F//NAo7LmBE7bFvIbba4WHwXbQJwikY81BP
	fS8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=bUHeVZX2apnHGefRCtsNLWwjqte5UVL6Uyspdk48Cvw=;
	b=TQxlVM1Lkz09Tfe9R6f0hWX316/rdLEgKeMNCWhgGF5k52eS5H0sWaN6NZ4o4N53a9
	hwpXT20XwcQEnDTbR5CpvrLkWFaF3+IqfxvxmXIt0/sfB5EjKXX/ZgogyLcJWPKywXSv
	RgQuOukJpa1rYkZcG/wfBzuhifiY77pSQI738c+eFf2E3GpOQZohOSTKiDSkZG2TK5vv
	oavR6bEJZKj0fYNfHQZV6kTh9XZxT+B+y9yVPF/cXKD8Cc+GG37GvAm6EzUHGxxF8XrL
	cM7v0WOCAyQBfYw4pMOub03Z3HgL2p24jU8CPrlRGxsOEWjjjxP3ktaIogEWqZPiudyp
	2wAg==
X-Gm-Message-State: AKaTC01abJGY5TpFAPYr1RNe9yPYOkxwo6xPsWlIB0+g5R1aHG9w0BBoC46y8OWid6TDeQ==
X-Received: by 10.99.176.78 with SMTP id z14mr13303204pgo.3.1479579555904;
	Sat, 19 Nov 2016 10:19:15 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:fcc8:7002:d018:cbee])
	by smtp.gmail.com with ESMTPSA id
	q9sm26502358pfg.47.2016.11.19.10.19.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 19 Nov 2016 10:19:15 -0800 (PST)
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
	<1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <f7d407c8-aa02-4c75-fef0-3d6afeaf4a95@gmail.com>
Date: Sat, 19 Nov 2016 10:19:10 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
Subject: Re: [meta-raspberrypi][PATCH 1/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Sat, 19 Nov 2016 18:19:17 -0000
X-Groupsio-MsgNum: 33040
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="EqIemxbIxVFNLOM9XLkSq5VRvBMJDDFA8"

--EqIemxbIxVFNLOM9XLkSq5VRvBMJDDFA8
Content-Type: multipart/mixed; boundary="bNUrsov3OOcJpNxX0ovXTpGK5Jx3h73lf";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
Message-ID: <f7d407c8-aa02-4c75-fef0-3d6afeaf4a95@gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] Modify raspberrypi3.conf
 and add raspberrypi3-64.conf
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
 <1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
In-Reply-To: <1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>

--bNUrsov3OOcJpNxX0ovXTpGK5Jx3h73lf
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Nevermind, I managed to apply it, there are some CR changes I guess which=
 was
freaking git

On 11/19/16 5:03 AM, Herve Jourdain wrote:
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  conf/machine/raspberrypi3-64.conf | 19 +++++++++++++++++++
>  conf/machine/raspberrypi3.conf    |  8 ++++++--
>  2 files changed, 25 insertions(+), 2 deletions(-)
>  create mode 100644 conf/machine/raspberrypi3-64.conf
>=20
> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberry=
pi3-64.conf
> new file mode 100644
> index 0000000..a5ceddb
> --- /dev/null
> +++ b/conf/machine/raspberrypi3-64.conf
> @@ -0,0 +1,19 @@
> +#@TYPE: Machine
> +#@NAME: RaspberryPi 3 Development Board
> +#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits =
mode
> +
> +DEFAULTTUNE ?=3D "cortexa53-64"
> +
> +MACHINEOVERRIDES =3D "raspberrypi3:raspberrypi:${MACHINE}"
> +
> +MACHINE_EXTRA_RRECOMMENDS +=3D "linux-firmware-bcm43430"
> +
> +PREFERRED_VERSION_linux-raspberrypi_raspberrypi3-64 ?=3D "4.7.%"
> +
> +require conf/machine/include/tune-cortexa53.inc
> +include conf/machine/include/rpi-base.inc
> +
> +SERIAL_CONSOLE =3D "115200 ttyS0"
> +VC4_CMA_SIZE ?=3D "cma-256"
> +
> +UBOOT_MACHINE =3D "rpi_3_config"
> diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3=
=2Econf
> index 9820209..f142323 100644
> --- a/conf/machine/raspberrypi3.conf
> +++ b/conf/machine/raspberrypi3.conf
> @@ -2,12 +2,16 @@
>  #@NAME: RaspberryPi 3 Development Board
>  #@DESCRIPTION: Machine configuration for the RaspberryPi 3
> =20
> -MACHINEOVERRIDES =3D "raspberrypi2:${MACHINE}"
> +DEFAULTTUNE ?=3D "cortexa53-32"
> +
> +MACHINEOVERRIDES =3D "raspberrypi2:raspberrypi:${MACHINE}"
> =20
>  MACHINE_EXTRA_RRECOMMENDS +=3D "linux-firmware-bcm43430"
> =20
> -include conf/machine/raspberrypi2.conf
> +require conf/machine/include/tune-cortexa53.inc
> +include conf/machine/include/rpi-base.inc
> =20
>  SERIAL_CONSOLE =3D "115200 ttyS0"
>  VC4_CMA_SIZE ?=3D "cma-256"
> =20
> +UBOOT_MACHINE =3D "rpi_3_config"
>=20


--bNUrsov3OOcJpNxX0ovXTpGK5Jx3h73lf--

--EqIemxbIxVFNLOM9XLkSq5VRvBMJDDFA8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgwl6IACgkQuwUzVZGdMxSEDgCfWb3E25ZiBkOrS2IeJwQ3jQNa
WrAAoIkOr1AhP9EYNFFw4Sf0PHKgtpep
=wns9
-----END PGP SIGNATURE-----

--EqIemxbIxVFNLOM9XLkSq5VRvBMJDDFA8--
