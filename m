Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E485E00C4B; Sat, 19 Nov 2016 10:12:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A95AE006E9
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 10:12:08 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id e9so23518118pgc.1
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 10:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=6rKq5VO/kbjkctIemNQF3Rrl1ncGwjDIXlu1WRtNDYs=;
	b=uWZj3vwXEGdP+Is0oWL3vxtr4kYx+qDMEvTS43CwxhDBc5fje5zL2EhWF1bpRDLVhE
	z9/W3Ot/kmsMoyDSy0eKad90ExkFgFfuksYj3NmG/zuYMgPNqfcA5eD6YN8o0vJQ/lsF
	1xOfxGlhXfb2d5ztDafaNcY4HJBysjYL63H10iz7WWDjKU2Ekgoo64ZWSOOSSjIYlkjL
	R/D9syoGywmrrTYV0OJ2uplw9tsb+ytJ3JE9+k0jk2K6eGYI+9MMLp47vX+75+On/Adm
	5Y7jny7WrbcA/GyoWK/RitSMVJftvxg1ZRZVwtV+bAeRIpja4Rg7jsVRSGpbgCbIHIX0
	G8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=6rKq5VO/kbjkctIemNQF3Rrl1ncGwjDIXlu1WRtNDYs=;
	b=Tmwz/z20+qqc45Q1z4IajlpgKdM5pjkKxyEYNAgZZi2fk1UBl+JR7wMcI8PzSbm+hf
	UddOIm6noLbFOvHtURnuY+WsgMQSEV4WphBsrIhmP9DmfjM9uoQ3uNSoHNtqB6LfGdcp
	rME97PiSYrCnpGkG9x++GGZZRMTeE/KZDFP11Ax2fiwPxiUoLJE43+s3kVUZHVQ79Sv5
	19RYmGiI2a9qYpfODeo0+N7TUEZUTgw9ztKzU3f2sfRxMuFkQu6yb+FZnnrV9K4rsi4d
	OiTg0wRN+zh7Nbn0JuSufgXuT+IvtYYwR2QJjrJDiS3fnQzFVLAKe6+vJRxWgo+jGHTN
	mEEQ==
X-Gm-Message-State: AKaTC02Yhklv0tk0UWL8HeKurCTFHcvDCG++JSMzucKDQrXhpUvo8m1XsjlBFNBg0Uy0tw==
X-Received: by 10.99.125.11 with SMTP id y11mr13020925pgc.145.1479579127461;
	Sat, 19 Nov 2016 10:12:07 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:fcc8:7002:d018:cbee])
	by smtp.gmail.com with ESMTPSA id t25sm8401138pgo.9.2016.11.19.10.12.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 19 Nov 2016 10:12:06 -0800 (PST)
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
	<1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <99e79d91-d1e6-4f4b-5979-6375c162b7c3@gmail.com>
Date: Sat, 19 Nov 2016 10:12:00 -0800
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
X-List-Received-Date: Sat, 19 Nov 2016 18:12:10 -0000
X-Groupsio-MsgNum: 33039
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="qTfeVcHe3rRtDNPd8KFc2L6ULSBnq5CRq"

--qTfeVcHe3rRtDNPd8KFc2L6ULSBnq5CRq
Content-Type: multipart/mixed; boundary="lhA0r3bQdOEpl6rFW17iUfd8qRCTUTtpK";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
Message-ID: <99e79d91-d1e6-4f4b-5979-6375c162b7c3@gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] Modify raspberrypi3.conf
 and add raspberrypi3-64.conf
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
 <1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
In-Reply-To: <1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>

--lhA0r3bQdOEpl6rFW17iUfd8qRCTUTtpK
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

This patch is not applying cleanly. Can you resend git format-patch
with git send-email ?

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


--lhA0r3bQdOEpl6rFW17iUfd8qRCTUTtpK--

--qTfeVcHe3rRtDNPd8KFc2L6ULSBnq5CRq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgwlfUACgkQuwUzVZGdMxRv/ACfcUgESfTCwv1y3YVTcjV/esCx
gNIAnR2ZC/vIAABIPR3GLSqZVOc/H9+j
=8eSe
-----END PGP SIGNATURE-----

--qTfeVcHe3rRtDNPd8KFc2L6ULSBnq5CRq--
