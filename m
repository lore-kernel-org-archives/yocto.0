Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EC4CE00BE9; Mon, 25 Jan 2016 13:32:32 -0800 (PST)
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
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6A5EE00BB5
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 13:32:27 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id g73so169673687ioe.3
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 13:32:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=drxSXTARfd3eAmPw3o71hV2IjDq+oTg6Im/dN9L5vYg=;
	b=Aeem9Et53Y++nHYQuNkb4kxAOkp+shTyyTlI74wIkXUyplDgD50ID5BDRL/ehIaRQL
	VAh4jSs+VVJNiF/dXsZcZXGtAMXaeV4BDIcV9Kza4g/PIFFBHoTA5kPbwCfc/VnxVuAA
	ryFcWEVEjQTEah2glsOcaY+wD8GiCq1V78G1EWRrzLNb6cuFBHDTISzAJD1KzpgqjE1J
	ah/311jo390tAvlE6Gd8TUHGmayAdotjZ4GeH58VuAYu7a3aln3xU3rCdcCOaXF89DKF
	Tn2z7evU48j+oKy5kPXicKYZ04lrRLYKt2dH2hgTTdwdestOn0r8z3xy6vFtdC8IsxO4
	8wHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=drxSXTARfd3eAmPw3o71hV2IjDq+oTg6Im/dN9L5vYg=;
	b=eTljehRaEBelGKVV7RNch9xb7Y9FQ/p2DAJfBlhjbZHm1icEFGpB8hQ0aWl61SBHQj
	7xJlUlEN5BZBVt/3LUzr1SF6NqBB35Oy3iq6p4d0YSOiUU6jCeP9odoX0g3mkaFezBxK
	P7P/AKZK7qedmmR+DcYNNdDz/YAxPe/WMa6qwrlxBuIsnvmLBepNCbuRd8l3b+WfpKBp
	ONrps7HNOYpOd83EZFUNc2aS/O0z/wQNu4wtqnP2n0IcckUoUiq1WeOY1+CxefCkaBlV
	p9+jJMxiaDIFKh41oYOH9BdWNipzbE1G6Dtpa1QaIxsUqpgUIZUBpFBet2/BYDUCodQy
	gdpQ==
X-Gm-Message-State: AG10YOSOx1TFfGgqmi0wmE0sI2lAeqwBgNeJZREm/RuAgKiPT2XbRytqQcwEFeWqgQrk5w==
X-Received: by 10.107.6.209 with SMTP id f78mr19557519ioi.63.1453757546509;
	Mon, 25 Jan 2016 13:32:26 -0800 (PST)
Received: from [172.19.131.113] ([12.130.117.66])
	by smtp.gmail.com with ESMTPSA id
	v42sm8728352iov.16.2016.01.25.13.32.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 25 Jan 2016 13:32:25 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1453755618-11640-1-git-send-email-srae@broadcom.com>
Date: Mon, 25 Jan 2016 13:32:16 -0800
Message-Id: <789D469E-10A9-4DC2-9232-2955580421CD@gmail.com>
References: <1453755618-11640-1-git-send-email-srae@broadcom.com>
To: Steve Rae <srae@broadcom.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] u-boot-rpi2: use the upstreamed U-Boot
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
X-List-Received-Date: Mon, 25 Jan 2016 21:32:32 -0000
X-Groupsio-MsgNum: 28093
Content-Type: multipart/signed;
	boundary="Apple-Mail=_63FA3EDB-E89E-4561-8263-33888B06D355";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_63FA3EDB-E89E-4561-8263-33888B06D355
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Steve

> On Jan 25, 2016, at 1:00 PM, Steve Rae <srae@broadcom.com> wrote:
>=20
> For Raspberry Pi 2, use the U-Boot from "den".


Can this be done by using/extending OE-Core recipe please ?


>=20
> Signed-off-by: Steve Rae <srae@broadcom.com>
> ---
> conf/machine/raspberrypi2.conf        |  1 +
> recipes-bsp/u-boot/u-boot-rpi2_git.bb | 36 =
+++++++++++++++++++++++++++++++++++
> 2 files changed, 37 insertions(+)
> create mode 100644 recipes-bsp/u-boot/u-boot-rpi2_git.bb
>=20
> diff --git a/conf/machine/raspberrypi2.conf =
b/conf/machine/raspberrypi2.conf
> index 30edae3..50912c9 100644
> --- a/conf/machine/raspberrypi2.conf
> +++ b/conf/machine/raspberrypi2.conf
> @@ -5,4 +5,5 @@
> DEFAULTTUNE ?=3D "cortexa7thf-neon-vfpv4"
>=20
> require conf/machine/include/tune-cortexa7.inc
> +PREFERRED_PROVIDER_u-boot ?=3D "u-boot-rpi2"
> include conf/machine/include/rpi-base.inc
> diff --git a/recipes-bsp/u-boot/u-boot-rpi2_git.bb =
b/recipes-bsp/u-boot/u-boot-rpi2_git.bb
> new file mode 100644
> index 0000000..ce0d1a0
> --- /dev/null
> +++ b/recipes-bsp/u-boot/u-boot-rpi2_git.bb
> @@ -0,0 +1,36 @@
> +DESCRIPTION =3D "U-Boot for Raspberry Pi 2 Model B"
> +
> +require recipes-bsp/u-boot/u-boot.inc
> +
> +DEPENDS +=3D "rpi-mkimage-native"
> +
> +PROVIDES +=3D "u-boot"
> +
> +LICENSE =3D "GPLv2+"
> +LIC_FILES_CHKSUM =3D =
"file://README;md5=3D587d8d939ae351bb11910921b1eafd42"
> +
> +SRCREV =3D "fa85e826c16b9ce1ad302a57e9c4b24db0d8b930"
> +SRC_URI =3D "git://git.denx.de/u-boot.git;branch=3Dmaster"
> +
> +S =3D "${WORKDIR}/git"
> +
> +UBOOT_MACHINE =3D "rpi2_b"
> +UBOOT_MAKE_TARGET =3D "u-boot.bin"
> +UBOOT_SUFFIX =3D "img"
> +
> +PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> +
> +COMPATIBLE_MACHINE =3D "raspberrypi2"
> +
> +do_compile() {
> +    oe_runmake mrproper
> +    oe_runmake rpi_2_defconfig
> +    oe_runmake CROSS_COMPILE=3Darm-poky-linux-gnueabi- \
> +        CC=3D"arm-poky-linux-gnueabi-gcc =
--sysroot=3D${PKG_CONFIG_SYSROOT_DIR}"
> +}
> +
> +do_compile_append() {
> +    # =46rom 'uboot.bin', create 'kernel.img', then rename it to =
'u-boot.img'
> +    =
${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/imagetool-uncompressed.py =
u-boot.bin
> +    mv kernel.img u-boot.img
> +}
> --
> 1.9.1
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_63FA3EDB-E89E-4561-8263-33888B06D355
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlamlGQACgkQuwUzVZGdMxSVsgCgiYutHEqjXbHCDSV28ZuXjoDB
XpgAn1bPrHRmZsE/mRCY93NdAEQU9shq
=phbr
-----END PGP SIGNATURE-----

--Apple-Mail=_63FA3EDB-E89E-4561-8263-33888B06D355--
