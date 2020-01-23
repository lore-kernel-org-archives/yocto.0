Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web12.1795.1579808266694686384
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 11:37:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mark.asselstine@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 00NJamxM011038
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 23 Jan 2020 11:36:59 -0800
Received: from yow-masselst-lx1.localnet (128.224.22.60) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
 14.3.468.0; Thu, 23 Jan 2020 11:36:38 -0800
From: "Mark Asselstine" <mark.asselstine@windriver.com>
To: <yocto@lists.yoctoproject.org>,
        Greg Wilson-Lindberg
	<GWilson@sakuraus.com>
CC: Khem Raj <raj.khem@gmail.com>,
        Yocto list discussion
	<yocto@yoctoproject.org>
Subject: Re: [yocto] generate initramfs for raspberry pi
Date: Thu, 23 Jan 2020 14:36:37 -0500
Message-ID: <2320945.ZELG96XCOn@yow-masselst-lx1>
Organization: Wind River
In-Reply-To: <CAMKF1sr-QJFwyZPAHd=MMes1D7kMLrhsazzkt+N4VoW0SN2DfQ@mail.gmail.com>
References: <61f1edc4d6184022a55eb1feeff1263a@sakuraus.com> <9158a978900f45dd8c3f7b14e0e56544@sakuraus.com> <CAMKF1sr-QJFwyZPAHd=MMes1D7kMLrhsazzkt+N4VoW0SN2DfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Thursday, January 23, 2020 2:24:27 P.M. EST Khem Raj wrote:
> On Thu, Jan 23, 2020 at 11:16 AM Greg Wilson-Lindberg
>=20
> <GWilson@sakuraus.com> wrote:
> > Hi Kem,
> > I had figured out your suggestions, my problem is how do I generate the
> > "<your-image>" image in:
> >=20
> > INITRAMFS_IMAGE_rpi =3D "<your-image>"
> >=20
> > I need a recipe for the image and a way to get Yocto to build it when I
> > build the rest of my image. Maybe specifying the name will build it, but
> > I still need a recipe for the image.
> Depends what your needs are, its not clear what you want from this
> initramfs image.
> is it something you want to do some preboot stuff and pivot into final
> image during boot
> or do you want your full userspace to be running in it
> for second case Just use your image if you want that to be bundled in
> and build bitbake virtual/kernel
> it will get you single kernel image with everything in it.
>=20
> for first case. define a new image perhaps a derivative of
> core-image-minimal and use that

There are two useful starting points,
openembedded-core/meta/recipes-core/images/core-image-minimal-initramfs.bb
openembedded-core/meta/recipes-core/images/core-image-tiny-initramfs.bb

Both do not have
COMPATIBLE_HOST =3D "(i.86|x86_64).*-linux"

In the end you will most likely want to customize your image as Khem says, =
so=20
just start by copying one of these and start making adjustments. Alternativ=
ely=20
you can do something like the following in your local.conf to overcome this:
COMPATIBLE_HOST_pn-core-image-tiny-initramfs =3D "aarch64-poky-linux"

You will want to determine if this initramfs is going to pivot to the 'init=
'=20
found in the main rootfs, or if you want to simply boot into the 'init' in =
the=20
initramfs and remain there.

Lastly you can either keep the initramfs standalone or have the kernel bund=
le=20
the initramfs. The latter is useful if you want/need to include software in=
=20
the initramfs that is needed to get the disks up and running to then get=20
access to the rootfs.

Take a look at
https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-INITRA=
MFS_FSTYPES
https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-INITRA=
MFS_IMAGE
https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-INITRA=
MFS_IMAGE_BUNDLE

MarkA


>=20
> > Regards,
> > Greg
> >=20
> > -----Original Message-----
> > From: Khem Raj <raj.khem@gmail.com>
> > Sent: Thursday, January 23, 2020 10:56 AM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > Subject: Re: [yocto] generate initramfs for raspberry pi
> >=20
> > On Thu, Jan 23, 2020 at 10:44 AM Greg Wilson-Lindberg=20
<gwilson@sakuraus.com> wrote:
> > > Hello List,
> > >=20
> > > I have not been able to figure out how to generate an initramfs image
> > > for a raspberry pi build of yocto. I=E2=80=99ve searched it web and h=
ave not
> > > found anything that mentions generating the actual image, lots of hits
> > > on how to configure using the initramfs, but not on generating it. Is
> > > there a standard recipe for a raspberry pi initramfs and how would I
> > > enable its generation, or maybe I=E2=80=99m just being clueless.
> > >=20
> > >=20
> > >=20
> > > I=E2=80=99m running on a boot2qt build of yocto based on Qt v5.14.0 t=
hat uses
> > > warrior and I=E2=80=99m targeting an RPi 4 using u-boot.
> > >=20
> > >=20
> > >=20
> > > Any help would be greatly appreciated.
> >=20
> > try something like below in local.conf
> >=20
> > INITRAMFS_IMAGE_BUNDLE_rpi =3D "1"
> > INITRAMFS_IMAGE_rpi =3D "<your-image>"
> > # Enlarge boot partition to 1GiB
> > BOOT_SPACE =3D "1073741"
> > INITRAMFS_MAXSIZE =3D "315400"
> > IMAGE_FSTYPES_pn-${INITRAMFS_IMAGE} =3D "${INITRAMFS_FSTYPES}"
> >=20
> > > Best regards,
> > >=20
> > > Greg Wilson-Lindberg




