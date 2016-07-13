Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1314E00D9C; Wed, 13 Jul 2016 04:52:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C94E1E00D81
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:52:39 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id x83so5586132wma.3
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=hJzgkoHAIvEVloI5gcjEfztsUUv63NvGB1BlM8wiCgQ=;
	b=iSrqm8KUqV00DyhmJANXv1T0d1dXjkTuK7GTkD0DVsTC4OBObE8v4YT5jMZ6Bf4UzP
	Q4HXTgEWN/7+N3K6AD9pvzTyaMB4JIk8bj5Z1YLEVychc1lCsIoG2zvEjwGFpnL0N1aJ
	lrUb9rjqg+yismyqp5UsvMOLdOJXZgOxY1ZJlfZokfaODc0LnfCousOlS4phsU5W8GSy
	6XnRW8tsPSo+QhEJlO5sYtusDOUhKYGcioaz4UbMIo4hDXHMbb3Ngj18Pi60SI4q0xNY
	edUL8OfGA2fbnAqPfdazPBjNeeOHWhRtLLhLuGfcZYJG4a5xzxnc3VcRqrc0BH/LEAaC
	Yqkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=hJzgkoHAIvEVloI5gcjEfztsUUv63NvGB1BlM8wiCgQ=;
	b=h3B53TlvxDNvKrFjvXPyXCGapsIMvy7QdUVEd9Jsqyl+uqI2b7kulZTSbgffpzhVVQ
	ME47xo5JxSliEUIFGi9I2ADChFZSfCdfQEmz6H043Ip6cDRriJzlBV/7UJ7cUA9F2XOy
	pPoTYJnhrfh5dobtVTOjAaR5W/8pczugrh7XQXKnF0GQLx2VXPMMhrbVlHntm2zTQ4Cz
	+x6rm7Wj1AY9S5Z46KEU/DFXHj4x2lx9KrhBfcYQisMPMIx0DtCdJobEixz5jzzqQQex
	Fhymjfn++L8gj+yhDol/A+OhwChW/PSw3FbfNdsdOb0AQ9AigQ494dU2sqUgf4Aaej5v
	Rpxw==
X-Gm-Message-State: ALyK8tKX/nOU+qK1S99jiWYkL72XLxeuOLFJ+Y2i1FQHF17ctTXYybr7S4fiPs9Ix1Ne+A==
X-Received: by 10.195.13.166 with SMTP id ez6mr534406wjd.16.1468410758080;
	Wed, 13 Jul 2016 04:52:38 -0700 (PDT)
Received: from resin.home (host109-152-128-245.range109-152.btcentralplus.com.
	[109.152.128.245]) by smtp.gmail.com with ESMTPSA id
	b203sm1421172wmh.20.2016.07.13.04.52.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Jul 2016 04:52:37 -0700 (PDT)
Date: Wed, 13 Jul 2016 12:52:35 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20160713115235.GD21822@resin.home>
References: <1468192676-22030-1-git-send-email-paul@paulbarker.me.uk>
	<1468192676-22030-3-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <1468192676-22030-3-git-send-email-paul@paulbarker.me.uk>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/3] u-boot-scr: Add recipe to create u-boot boot script
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
X-List-Received-Date: Wed, 13 Jul 2016 11:52:41 -0000
X-Groupsio-MsgNum: 31026
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="g7w8+K/95kPelPD2"
Content-Disposition: inline

--g7w8+K/95kPelPD2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Paul,

On Mon, Jul 11, 2016 at 12:17:55AM +0100, Paul Barker wrote:
> Upstream u-boot searches the boot partition for a script named 'boot.scr'. If
> this file exists it is executed as a sequence of u-boot commands in order to
> boot the system. This script must be compiled using the mkimage command to
> ensure that it is understood by u-boot.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd  |  6 ++++++
>  recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd |  6 ++++++
>  recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd |  6 ++++++
>  recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd |  6 ++++++
>  recipes-bsp/u-boot-scr/u-boot-scr.bb               | 20 ++++++++++++++++++++
>  5 files changed, 44 insertions(+)
>  create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd
>  create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd
>  create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd
>  create mode 100644 recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd
>  create mode 100644 recipes-bsp/u-boot-scr/u-boot-scr.bb
>
> diff --git a/recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd b/recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd
> new file mode 100644
> index 0000000..c86c758
> --- /dev/null
> +++ b/recipes-bsp/u-boot-scr/files/raspberrypi/boot.cmd
> @@ -0,0 +1,6 @@
> +setenv fdtfile bcm2708-rpi-b.dtb
> +setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
> +mmc dev 0
> +fatload mmc 0:1 ${kernel_addr_r} uImage
> +fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
> +bootm ${kernel_addr_r} - ${fdt_addr_r}
> diff --git a/recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd b/recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd
> new file mode 100644
> index 0000000..c86c758
> --- /dev/null
> +++ b/recipes-bsp/u-boot-scr/files/raspberrypi0/boot.cmd
> @@ -0,0 +1,6 @@
> +setenv fdtfile bcm2708-rpi-b.dtb
> +setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
> +mmc dev 0
> +fatload mmc 0:1 ${kernel_addr_r} uImage
> +fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
> +bootm ${kernel_addr_r} - ${fdt_addr_r}
> diff --git a/recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd b/recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd
> new file mode 100644
> index 0000000..aa4ea64
> --- /dev/null
> +++ b/recipes-bsp/u-boot-scr/files/raspberrypi2/boot.cmd
> @@ -0,0 +1,6 @@
> +setenv fdtfile bcm2709-rpi-2-b.dtb
> +setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
> +mmc dev 0
> +fatload mmc 0:1 ${kernel_addr_r} uImage
> +fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
> +bootm ${kernel_addr_r} - ${fdt_addr_r}
> diff --git a/recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd b/recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd
> new file mode 100644
> index 0000000..2950856
> --- /dev/null
> +++ b/recipes-bsp/u-boot-scr/files/raspberrypi3/boot.cmd
> @@ -0,0 +1,6 @@
> +setenv fdtfile bcm2710-rpi-3-b.dtb
> +setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd'
> +mmc dev 0
> +fatload mmc 0:1 ${kernel_addr_r} uImage
> +fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
> +bootm ${kernel_addr_r} - ${fdt_addr_r}
> diff --git a/recipes-bsp/u-boot-scr/u-boot-scr.bb b/recipes-bsp/u-boot-scr/u-boot-scr.bb

I think we should brand this recipe to be rpi specific. Something like
rpi-u-boot-scr.bb to avoid clash with other layers. I think I saw this
exactly recipe name in the past.

> new file mode 100644
> index 0000000..310bf3d
> --- /dev/null
> +++ b/recipes-bsp/u-boot-scr/u-boot-scr.bb
> @@ -0,0 +1,20 @@
> +SUMMARY = "U-boot boot scripts for Raspberry Pi"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +
> +DEPENDS = "u-boot-mkimage-native"
> +
> +SRC_URI = "file://boot.cmd"
> +
> +do_compile() {
> +    mkimage -A arm -T script -C none -n "Boot script" -d "${WORKDIR}/boot.cmd" boot.scr
> +}
> +
> +inherit deploy
> +
> +do_deploy() {
> +    install -d ${DEPLOYDIR}
> +    install -m 0644 boot.scr ${DEPLOYDIR}
> +}
> +
> +addtask do_deploy after do_compile before do_build
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I would expect uboot to RDEPEND on this recipe too. As without it the
board doesn't autoboot.

--
Andrei Gherzan

--g7w8+K/95kPelPD2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXhiuDAAoJEHO76Gt+erfPjGsQAIDVrxay0zLaU2WklS3wWR4O
H1MVqjTuVd5rJXi2ayqBsApD8zSV8ugRgpig4+NYrdQ4AppQc7IQ9zAxj+4r400D
NwzQQ7xOsjSYUKZLWlDJkme3MQ6EnILGm+fdBjZSDIwLJvxlqH15h1X0Rx4FEJTv
cPjF+h167NAOKsg6oR/ix9LMzKBdQvEB/68zDxnxhk5VL2SfkpWhp7fLkoD4n5NP
Q44KQhB1agWiQtDEcYSQ31v+w0qSlpifYXcE5BHscataIPC2Y643RmH88DLqAuEZ
p+eYLnblSzu4AeEUn9cSvppim/DxdKdpqmWIq1uemqxGjixHsdpNEbzIhXIBxHKD
gk4xdqaxZoAk1uQ1oDVVKsyNtTPAcPQigc2bfYtETTLr8KyBYaSWY7A7oLmvdVu2
Ozety+O9daeY10FG70vTS67qB0Yh6tE/JSPZPXXigmP3kQzsfvZxPxgCz66a9+l2
ZlMhfWk46agH/XDx9+7AUcmlfvvpKljmLJvM51qRjIaFcTlSC9OrnGFcjVlcbFsx
g2mrfo3J0QcJBwF7RrCZAx+bWfViNQcxnDMkrlYGYvgcPLQ02yZsieN6bkZ65Iu+
FWZyp5y+z70rXjtAiPkdhRe8+3objuTQCRjjSqKUGJLdsEq9xutyrqN016vdGYJ3
BzYhP27BXQz4IcKnYV//
=Co/L
-----END PGP SIGNATURE-----

--g7w8+K/95kPelPD2--
