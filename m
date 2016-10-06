Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 358DCE00955; Thu,  6 Oct 2016 10:00:08 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0FA9E008FB
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 10:00:06 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id 190so1416334pfv.1
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 10:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=5RpZUtSPXroqP+RekAKto4zCXvHgXuDaIQsl0qI3srU=;
	b=rhFMUqTOzQ1DvGTbJrugJZ61w8+o9nyYDD9dVBfIVslpAns0MEadmqfrOnqa7+pxkf
	i3hDFhgSimZ24kYkV5GK7q0ZKqrD6FxUA/QEBeso0V0i+L1NDpp5hOMlrCmhTSphBPHx
	cLXmxtsyMGsRXdlztUD3herNRovehxb9FUHHB3Zgu/mFR/ncpSUiyZOCaMvWR4RcYoeH
	uGTX3QoCK5waHRHIxbkJWHJE9GHFldOikEakSNGwgAi9FQqwLUK6rBQlVFBAUd1DaOR0
	SkN7AzIervnobd9cFlefRYua58nkccsn6OixwQHR4vofYLQCuBQOiwJAcAnYDQZmZZqt
	x5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=5RpZUtSPXroqP+RekAKto4zCXvHgXuDaIQsl0qI3srU=;
	b=FeJbAq+DwVCrBZi7TdDYe8p1bioQpawKuCbw8G3WPSiy2uKXwojUKGTFLjttl2mHJL
	L5uZYmGIJLW37OG1Z9bGoHPIRIF0yqFHC9UnDEePeLu1+CJGkCGOFX4JMiqx9A/CdUx1
	2yuO5nIWj4SFrBVfDO+h/bNe3eKAWEv6oRzAXz1ubcpmcn9756s0K5YTKExjokY0iMoX
	Z3H+yWe7sX6Fusl9CKbwpij1qQORPut7ScU9cweLhXHMX7ZGyWpLWMDnPYkQ5e1soKgC
	hZtMDS43jM/JGNbiifJtgOYEH5OBi5T83q/UnX9EjE5bNcPk1ONQIfUHqXxl2j986uLe
	lglQ==
X-Gm-Message-State: AA6/9Rn5asP3OHkVMdOEZnn+lTPv/MJW8PHO73AeXWDlIElGJRZIA94phUe2THPfhnTKpQ==
X-Received: by 10.98.204.144 with SMTP id j16mr6187162pfk.95.1475773206019;
	Thu, 06 Oct 2016 10:00:06 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:d4a2:778a:22df:ef?
	([2601:646:8882:b8c:d4a2:778a:22df:ef])
	by smtp.gmail.com with ESMTPSA id
	fi6sm24159825pac.20.2016.10.06.10.00.04
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 06 Oct 2016 10:00:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161006122041.5048-1-net147@gmail.com>
Date: Thu, 6 Oct 2016 09:59:59 -0700
Message-Id: <C8232F92-1192-4181-BB76-DB398CCEEFAC@gmail.com>
References: <20161006122041.5048-1-net147@gmail.com>
To: Jonathan Liu <net147@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Remove redundant RPI_KERNEL_VERSION
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
X-List-Received-Date: Thu, 06 Oct 2016 17:00:08 -0000
X-Groupsio-MsgNum: 32247
Content-Type: multipart/signed;
	boundary="Apple-Mail=_608275E1-852F-4DD7-A407-17285248C618";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_608275E1-852F-4DD7-A407-17285248C618
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 6, 2016, at 5:20 AM, Jonathan Liu <net147@gmail.com> wrote:
>=20
> The value of the RPI_KERNEL_VERSION can change between None and the
> kernel version which can result in taskhash mismatch errors while
> building images.
>=20
> The taskhash mismatch errors can be reproduced using:
> bitbake -c cleansstate virtual/kernel core-image-minimal && bitbake =
core-image-minimal
>=20
> The get_dts() and split_overlays() functions are modified so that the
> kernel version argument is optional. If the version is not supplied to
> these functions, they will fallback to the Python equivalent of the
> expression used for RPI_KERNEL_VERSION.

I was able to see this error and was reaching same conclusions. I have =
staged this patch on
kraj/master and will test it out

>=20
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
> classes/linux-raspberrypi-base.bbclass | 4 ++--
> classes/sdcard_image-rpi.bbclass       | 8 +++-----
> 2 files changed, 5 insertions(+), 7 deletions(-)
>=20
> diff --git a/classes/linux-raspberrypi-base.bbclass =
b/classes/linux-raspberrypi-base.bbclass
> index 930fc44..3a6e33d 100644
> --- a/classes/linux-raspberrypi-base.bbclass
> +++ b/classes/linux-raspberrypi-base.bbclass
> @@ -1,6 +1,6 @@
> inherit linux-kernel-base
>=20
> -def get_dts(d, ver):
> +def get_dts(d, ver=3DNone):
>     import re
>=20
>     staging_dir =3D d.getVar("STAGING_KERNEL_BUILDDIR", True)
> @@ -32,7 +32,7 @@ def get_dts(d, ver):
>     return dts
>=20
>=20
> -def split_overlays(d, ver, out):
> +def split_overlays(d, out, ver=3DNone):
>     dts =3D get_dts(d, ver)
>     if out:
>         overlays =3D oe.utils.str_filter_out('\S+\-overlay\.dtb$', =
dts, d)
> diff --git a/classes/sdcard_image-rpi.bbclass =
b/classes/sdcard_image-rpi.bbclass
> index 2f0daee..0487ef1 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -71,8 +71,6 @@ SDIMG =3D =
"${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
> # Additional files and/or directories to be copied into the vfat =
partition from the IMAGE_ROOTFS.
> FATPAYLOAD ?=3D ""
>=20
> -RPI_KERNEL_VERSION :=3D =
"${@get_kernelversion_file('${STAGING_KERNEL_BUILDDIR}')}"
> -
> IMAGE_CMD_rpi-sdimg () {
>=20
> 	# Align partitions
> @@ -83,7 +81,7 @@ IMAGE_CMD_rpi-sdimg () {
> 	echo "Creating filesystem with Boot partition =
${BOOT_SPACE_ALIGNED} KiB and RootFS $ROOTFS_SIZE KiB"
>=20
> 	# Check if we are building with device tree support
> -	DTS=3D"${@get_dts(d, '${RPI_KERNEL_VERSION}')}"
> +	DTS=3D"${@get_dts(d)}"
>=20
> 	# Initialize sdcard image file
> 	dd if=3D/dev/zero of=3D${SDIMG} bs=3D1024 count=3D0 =
seek=3D${SDIMG_SIZE}
> @@ -104,8 +102,8 @@ IMAGE_CMD_rpi-sdimg () {
> 	mcopy -i ${WORKDIR}/boot.img -s =
${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
> 	if test -n "${DTS}"; then
> 		# Device Tree Overlays are assumed to be suffixed by =
'-overlay.dtb' (4.1.x) or by '.dtbo' (4.4.9+) string and will be put in =
a dedicated folder
> -		DT_OVERLAYS=3D"${@split_overlays(d, =
'${RPI_KERNEL_VERSION}', 0)}"
> -		DT_ROOT=3D"${@split_overlays(d, '${RPI_KERNEL_VERSION}', =
1)}"
> +		DT_OVERLAYS=3D"${@split_overlays(d, 0)}"
> +		DT_ROOT=3D"${@split_overlays(d, 1)}"
>=20
> 		# Copy board device trees to root folder
> 		for DTB in ${DT_ROOT}; do
> --
> 2.10.0
>=20


--Apple-Mail=_608275E1-852F-4DD7-A407-17285248C618
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlf2gxMACgkQuwUzVZGdMxTXTwCfRzQQ1kV2XHR+MveDSujD9csk
5XMAoIaow89Yc2QiMKpmYmgxieyRDqlI
=+BAS
-----END PGP SIGNATURE-----

--Apple-Mail=_608275E1-852F-4DD7-A407-17285248C618--
