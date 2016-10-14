Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2120BE00E53; Fri, 14 Oct 2016 00:56:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAB5EE00CCA
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 00:55:58 -0700 (PDT)
Received: by mail-lf0-f67.google.com with SMTP id l131so13883357lfl.0
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 00:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=4MzC+Z7znZWprWovkwBwxoTcthgjaWywpLZorPOfeDQ=;
	b=AP8uoKm3gp3E42T3QSFew1sydK934bDKOlGv6SC896qLnZIAwHcjidnbfpAg5I1OVY
	8TI3ZaVuhzkVmyToU5dLQ3ziM5qgWxZxHDWniRpxblYXPIAqNxoSCHiO72kZcE/kQHAS
	SOCWfZtYAdE9ufeSZTt3f7q6yDLzsuQZ1m1Acu6TU/9jKeh+zLK5faIJG00MV9bE9ICF
	oHR8tEpYyFDv3r76yD8YOZdjUnDBwJzu8i8pMX7W4UwTIB3yxoIgvCt2/ncljuXsY8cy
	WcVExd6vCLs/GZR9ZxIyrpZ5y3FbZXu/qiNi6fKEtgKNGDNrnlux8iDWzRnpMUrJZDVP
	mTNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=4MzC+Z7znZWprWovkwBwxoTcthgjaWywpLZorPOfeDQ=;
	b=CtscSSBYjsEsgA0tfg0VeHFDa6pxyt92DGEKUp20j98FJuBwiLszdZBpr+gQ6SqZKd
	LpzINbi7IUIrfLWJhZcP3QJXwQeKchEnXootdLrH5ckWUydUbgudPCwGbP84ZyCe8aKt
	eNt4rFkEUJCsatBMdQ3whD8rYSPgOaJRmkMyqWzBWNSjyrEaKWJqKBxYvo+4q+Vte2Q4
	W4ZEKzpPQa8llyK83QZE8m7E55ylZcyXG2X9mcd2RLChvP+wlficz/LODGk1xQfKJVgJ
	zG3Nqiu8Ld87yRfnzajUnVlJkd/DeGjrMQvyEowF9ibmGOuZtEcLxhwbfOSRGHgJF6wo
	GAOQ==
X-Gm-Message-State: AA6/9Rllt22wqC6Y2mgM0NydYGxZtkGv5/V66UYEsCU69pM3vdioM7uHGvcN7pHK9cUPIw==
X-Received: by 10.28.47.214 with SMTP id v205mr722441wmv.76.1476431757139;
	Fri, 14 Oct 2016 00:55:57 -0700 (PDT)
Received: from resin ([88.128.80.31]) by smtp.gmail.com with ESMTPSA id
	y2sm29654689wjx.20.2016.10.14.00.55.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Oct 2016 00:55:56 -0700 (PDT)
Date: Fri, 14 Oct 2016 08:55:53 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20161014075553.GC28288@resin>
References: <20161006122041.5048-1-net147@gmail.com>
	<CALbNGRRLJNtQXoQWqL-WmYZ7_QCsRw4yBXkJL3LK-jmMACkfkA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRRLJNtQXoQWqL-WmYZ7_QCsRw4yBXkJL3LK-jmMACkfkA@mail.gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
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
X-List-Received-Date: Fri, 14 Oct 2016 07:56:03 -0000
X-Groupsio-MsgNum: 32394
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lCAWRPmW1mITcIfM"
Content-Disposition: inline

--lCAWRPmW1mITcIfM
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 06, 2016 at 05:55:05PM +0200, Andreas M=FCller wrote:
> On Thu, Oct 6, 2016 at 2:20 PM, Jonathan Liu <net147@gmail.com> wrote:
> > The value of the RPI_KERNEL_VERSION can change between None and the
> > kernel version which can result in taskhash mismatch errors while
> > building images.
> >
> > The taskhash mismatch errors can be reproduced using:
> > bitbake -c cleansstate virtual/kernel core-image-minimal && bitbake cor=
e-image-minimal
> >
> > The get_dts() and split_overlays() functions are modified so that the
> > kernel version argument is optional. If the version is not supplied to
> > these functions, they will fallback to the Python equivalent of the
> > expression used for RPI_KERNEL_VERSION.
> >
> > Signed-off-by: Jonathan Liu <net147@gmail.com>
> > ---
> >  classes/linux-raspberrypi-base.bbclass | 4 ++--
> >  classes/sdcard_image-rpi.bbclass       | 8 +++-----
> >  2 files changed, 5 insertions(+), 7 deletions(-)
> >
> > diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-ras=
pberrypi-base.bbclass
> > index 930fc44..3a6e33d 100644
> > --- a/classes/linux-raspberrypi-base.bbclass
> > +++ b/classes/linux-raspberrypi-base.bbclass
> > @@ -1,6 +1,6 @@
> >  inherit linux-kernel-base
> >
> > -def get_dts(d, ver):
> > +def get_dts(d, ver=3DNone):
> >      import re
> >
> >      staging_dir =3D d.getVar("STAGING_KERNEL_BUILDDIR", True)
> > @@ -32,7 +32,7 @@ def get_dts(d, ver):
> >      return dts
> >
> >
> > -def split_overlays(d, ver, out):
> > +def split_overlays(d, out, ver=3DNone):
> >      dts =3D get_dts(d, ver)
> >      if out:
> >          overlays =3D oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts=
, d)
> > diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rp=
i.bbclass
> > index 2f0daee..0487ef1 100644
> > --- a/classes/sdcard_image-rpi.bbclass
> > +++ b/classes/sdcard_image-rpi.bbclass
> > @@ -71,8 +71,6 @@ SDIMG =3D "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-s=
dimg"
> >  # Additional files and/or directories to be copied into the vfat parti=
tion from the IMAGE_ROOTFS.
> >  FATPAYLOAD ?=3D ""
> >
> > -RPI_KERNEL_VERSION :=3D "${@get_kernelversion_file('${STAGING_KERNEL_B=
UILDDIR}')}"
> > -
> >  IMAGE_CMD_rpi-sdimg () {
> >
> >         # Align partitions
> > @@ -83,7 +81,7 @@ IMAGE_CMD_rpi-sdimg () {
> >         echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIG=
NED} KiB and RootFS $ROOTFS_SIZE KiB"
> >
> >         # Check if we are building with device tree support
> > -       DTS=3D"${@get_dts(d, '${RPI_KERNEL_VERSION}')}"
> > +       DTS=3D"${@get_dts(d)}"
> >
> >         # Initialize sdcard image file
> >         dd if=3D/dev/zero of=3D${SDIMG} bs=3D1024 count=3D0 seek=3D${SD=
IMG_SIZE}
> > @@ -104,8 +102,8 @@ IMAGE_CMD_rpi-sdimg () {
> >         mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-boo=
tfiles/* ::/
> >         if test -n "${DTS}"; then
> >                 # Device Tree Overlays are assumed to be suffixed by '-=
overlay.dtb' (4.1.x) or by '.dtbo' (4.4.9+) string and will be put in a ded=
icated folder
> > -               DT_OVERLAYS=3D"${@split_overlays(d, '${RPI_KERNEL_VERSI=
ON}', 0)}"
> > -               DT_ROOT=3D"${@split_overlays(d, '${RPI_KERNEL_VERSION}'=
, 1)}"
> > +               DT_OVERLAYS=3D"${@split_overlays(d, 0)}"
> > +               DT_ROOT=3D"${@split_overlays(d, 1)}"
> >
> >                 # Copy board device trees to root folder
> >                 for DTB in ${DT_ROOT}; do
> > --
> > 2.10.0
> >
> Yes this makes sense - thanks.
>
> Andreas

Good stuff. This explains a lot. Was merged in master. We should
backport this in krogoth branch too.

--
Andrei Gherzan

--lCAWRPmW1mITcIfM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYAI+JAAoJEHO76Gt+erfPJOIP/itqDoKjGXCwD3KkiOYzj7cq
DJYw3oiikNZbw5A5Ve6nvgT3KLvh+PlSBYxv+kYS4GkYpwHOO5uMpsTnqPjOnX/f
ciOev04xbT1PcqYZkfxWzHSMg3isNWe55uftKcVf1kgBUPIhJW4sZMu4zPzomddn
kA8zu5nF+Gfshh0bfxy8sZ2mreMr3yUOE4WSSn8en/ksybim9Ryh6miHv5IbG7bi
A2R/mFyQ3Ikv+OwhmCPLFO57zLg5A2PwCUuw736aIlIumMnhk0ECdaBs8lBJH7Nf
aWzS7HkdDd4E/U7CnflmaGPrIgdaiBTacAKgxhkcRtZbsx15+zZsiFKASZqxRiE4
VQru6YlvurPFHj+LHq/XuTzlPekQ6N7YjueHQb5In4DvYsqheiVEFhPJCQhfaP67
bCTYzzsOodEUje+Nlkxlf/Kzxs1/rBSfNGXSM8YDX8LAkKuj2rH1zo0VeQQxRNZ2
1Y6GnwK8JKaXyLCU3yMxKsoF/l78G3Z89FU6oxn+wB0kTXqSgwgF2jPZwMoI5N+d
5SvuanmdXhfp+TAKPgE8fh71ZCnOV1SFjGnD29/oeF/wjt9+0D2ixEDWKj6i6BpG
dcV3fNi7yfeN9DOrllQKVs5hZ+Dong5UAzLvUHdTloPrS9mYXFz/sv6eD4HUR4aZ
ecwTakXzc+v2wqzY9s9Y
=axVP
-----END PGP SIGNATURE-----

--lCAWRPmW1mITcIfM--
