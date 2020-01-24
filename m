Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web09.15015.1579883154628996780
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2020 08:25:54 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mark.asselstine@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 00OGOu1I010798
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 24 Jan 2020 08:25:06 -0800
Received: from yow-masselst-lx1.localnet (128.224.60.80) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
 14.3.468.0; Fri, 24 Jan 2020 08:24:45 -0800
From: "Mark Asselstine" <mark.asselstine@windriver.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        Khem Raj
	<raj.khem@gmail.com>,
        Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] generate initramfs for raspberry pi
Date: Fri, 24 Jan 2020 11:24:44 -0500
Message-ID: <2977608.IAVaRli8pb@yow-masselst-lx1>
Organization: Wind River
In-Reply-To: <96d5c83f321046a5b158c8e7a4322abd@sakuraus.com>
References: <61f1edc4d6184022a55eb1feeff1263a@sakuraus.com> <15EC9C2A5A8A010E.12201@lists.yoctoproject.org> <96d5c83f321046a5b158c8e7a4322abd@sakuraus.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Thursday, January 23, 2020 5:29:14 P.M. EST Greg Wilson-Lindberg wrote:
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Greg Wilson-Lindberg
> > Sent: Thursday, January 23, 2020 11:54 AM
> > To: Mark Asselstine <mark.asselstine@windriver.com>;
> > yocto@lists.yoctoproject.org
> > Cc: Khem Raj <raj.khem@gmail.com>; Yocto list discussion
> > <yocto@yoctoproject.org>
> > Subject: Re: [yocto] generate initramfs for raspberry pi
> >=20
> > Hi Mark, and also Khem (sorry for the miss-spelling of your name),
> >=20
> > > -----Original Message-----
> > > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > > Behalf Of Mark Asselstine
> > > Sent: Thursday, January 23, 2020 11:37 AM
> > > To: yocto@lists.yoctoproject.org; Greg Wilson-Lindberg
> > > <GWilson@sakuraus.com>
> > > Cc: Khem Raj <raj.khem@gmail.com>; Yocto list discussion
> > > <yocto@yoctoproject.org>
> > > Subject: Re: [yocto] generate initramfs for raspberry pi
> > >=20
> > > On Thursday, January 23, 2020 2:24:27 P.M. EST Khem Raj wrote:
> > > > On Thu, Jan 23, 2020 at 11:16 AM Greg Wilson-Lindberg
> > > >=20
> > > > <GWilson@sakuraus.com> wrote:
> > > > > Hi Kem,
> > > > > I had figured out your suggestions, my problem is how do I
> > > > > generate the "<your-image>" image in:
> > > > >=20
> > > > > INITRAMFS_IMAGE_rpi =3D "<your-image>"
> > > > >=20
> > > > > I need a recipe for the image and a way to get Yocto to build it
> > > > > when I build the rest of my image. Maybe specifying the name will
> > > > > build it, but I still need a recipe for the image.
> > > >=20
> > > > Depends what your needs are, its not clear what you want from this
> > > > initramfs image.
> > > > is it something you want to do some preboot stuff and pivot into
> > > > final image during boot or do you want your full userspace to be
> > > > running in it for second case Just use your image if you want that
> > > > to be bundled in and build bitbake virtual/kernel it will get you
> > > > single kernel image with everything in it.
> > > >=20
> > > > for first case. define a new image perhaps a derivative of
> > > > core-image-minimal and use that
> > >=20
> > > There are two useful starting points,
> > > openembedded-core/meta/recipes-core/images/core-image-minimal-
> > > initramfs.bb
> > > openembedded-core/meta/recipes-core/images/core-image-tiny-
> > > initramfs.bb
> > >=20
> > > Both do not have
> > > COMPATIBLE_HOST =3D "(i.86|x86_64).*-linux"
> > >=20
> > > In the end you will most likely want to customize your image as Khem
> > > says, so just start by copying one of these and start making
> > > adjustments.
> > > Alternatively you can do something like the following in your
> > > local.conf to overcome this:
> > > COMPATIBLE_HOST_pn-core-image-tiny-initramfs =3D "aarch64-poky-linux"
>=20
> The core-image-tiny-initramfs.bb does have the COMPATIBLE_HOST =3D
> "(i.86|x86_64).*-linux" line in it, this requires a x86 architecture. I
> ended up copying the file and deleting the COMPATIBLE_HOST line.
>=20
> When I do that I get the following error:
>  * Problem 1/1:
>  *   - nothing provides busybox-mdev needed by
> initramfs-live-boot-tiny-1.0-r12.raspberrypi4
>=20
> What do I need to do to get busybox-mdev built for this image? Can I just
> add an IMAGE_INSTALL +=3D "busybox-mdev" for it?
>=20

This is being pulled in via initramfs-live-boot-tiny which core-image-tiny-
initramfs.bb pulls in using

PACKAGE_INSTALL =3D "initramfs-live-boot-tiny..."

Looking at initramfs-live-boot-tiny_1.0.bb you will see, RDEPENDS_${PN} =3D=
=20
"busybox-mdev"

You also end up with VIRTUAL-RUNTIME_dev_manager=3D"busybox-mdev"

So you have two options. If you already have your own image and you aren't=
=20
using core-image-tiny-initramfs you can drop the use of initramfs-live-boot-
tiny and use your own 'init' script.

Or you can configure busybox to include mdev. Create a busybox_%.bbappend a=
nd=20
do=20
SRC_URI +=3D "file://mdev-fragment.cfg"
=46ILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

and then create the mdev-fragment.cfg which has
CONFIG_MDEV =3D y

MarkA




> Regards,
> Greg
>=20
> > I just need something to boot into on the way to the full image. I am
> > doing
> > this as a step to bringing up OStree. So maybe setting the
> > 'COMPATIBLE_HOST' and using core-image-tiny-initramfs will work.
> >=20
> > Thanks for the suggestions. I had thought that there must be an initram=
fs
> > for the Raspberry Pi with all of the threads about using an initramfs on
> > the Pi, but I guess that there isn't a separate one.
> >=20
> > Best Regards,
> > Greg
> >=20
> > > You will want to determine if this initramfs is going to pivot to the
> > > 'init' found in the main rootfs, or if you want to simply boot into t=
he
> > > 'init' in the initramfs and remain there.
> > >=20
> > > Lastly you can either keep the initramfs standalone or have the kernel
> > > bundle the initramfs. The latter is useful if you want/need to include
> > > software in the initramfs that is needed to get the disks up and
> > > running to then get access to the rootfs.
> > >=20
> > > Take a look at
> > > https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-=
> > > INITRAMFS_FSTYPES
> > > https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-=
> > > INITRAMFS_IMAGE
> > > https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-=
> > > INITRAMFS_IMAGE_BUNDLE
> > >=20
> > > MarkA
> > >=20
> > > > > Regards,
> > > > > Greg
> > > > >=20
> > > > > -----Original Message-----
> > > > > From: Khem Raj <raj.khem@gmail.com>
> > > > > Sent: Thursday, January 23, 2020 10:56 AM
> > > > > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > > > > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > > > > Subject: Re: [yocto] generate initramfs for raspberry pi
> > > > >=20
> > > > > On Thu, Jan 23, 2020 at 10:44 AM Greg Wilson-Lindberg
> > >=20
> > > <gwilson@sakuraus.com> wrote:
> > > > > > Hello List,
> > > > > >=20
> > > > > > I have not been able to figure out how to generate an initramfs
> > > > > > image for a raspberry pi build of yocto. I=E2=80=99ve searched =
it web
> > > > > > and have not found anything that mentions generating the actual
> > > > > > image, lots of hits on how to configure using the initramfs, but
> > > > > > not on generating it. Is there a standard recipe for a raspberry
> > > > > > pi initramfs and how would I enable its generation, or maybe I=
=E2=80=99m
> > > > > > just
> > >=20
> > > being clueless.
> > >=20
> > > > > > I=E2=80=99m running on a boot2qt build of yocto based on Qt v5.=
14.0 that
> > > > > > uses warrior and I=E2=80=99m targeting an RPi 4 using u-boot.
> > > > > >=20
> > > > > >=20
> > > > > >=20
> > > > > > Any help would be greatly appreciated.
> > > > >=20
> > > > > try something like below in local.conf
> > > > >=20
> > > > > INITRAMFS_IMAGE_BUNDLE_rpi =3D "1"
> > > > > INITRAMFS_IMAGE_rpi =3D "<your-image>"
> > > > > # Enlarge boot partition to 1GiB
> > > > > BOOT_SPACE =3D "1073741"
> > > > > INITRAMFS_MAXSIZE =3D "315400"
> > > > > IMAGE_FSTYPES_pn-${INITRAMFS_IMAGE} =3D "${INITRAMFS_FSTYPES}"
> > > > >=20
> > > > > > Best regards,
> > > > > >=20
> > > > > > Greg Wilson-Lindberg




