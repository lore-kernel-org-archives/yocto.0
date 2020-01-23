Received: from 23pmail.ess.barracuda.com (23pmail.ess.barracuda.com [209.222.82.86])
 by mx.groups.io with SMTP id smtpd.web09.4144.1579818561012921323
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 14:29:22 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: sakuraus.com, ip: 209.222.82.86, mailfrom: gwilson@sakuraus.com)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx5.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256 bits=256 verify=NO); Thu, 23 Jan 2020 22:29:16 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Thu, 23
 Jan 2020 14:29:14 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Thu, 23 Jan 2020 14:29:14 -0800
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>, Mark Asselstine
	<mark.asselstine@windriver.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: Khem Raj <raj.khem@gmail.com>, Yocto list discussion
	<yocto@yoctoproject.org>
Subject: Re: [yocto] generate initramfs for raspberry pi
Thread-Topic: [yocto] generate initramfs for raspberry pi
Thread-Index: AdXSGhPvXo6b8fM0Tbq1um18IL8inQAR704AABA378D//4YugIAAA2aAgACCsOCAANqO8A==
Date: Thu, 23 Jan 2020 22:29:14 +0000
Message-ID: <96d5c83f321046a5b158c8e7a4322abd@sakuraus.com>
References: <61f1edc4d6184022a55eb1feeff1263a@sakuraus.com>
 <9158a978900f45dd8c3f7b14e0e56544@sakuraus.com>
 <CAMKF1sr-QJFwyZPAHd=MMes1D7kMLrhsazzkt+N4VoW0SN2DfQ@mail.gmail.com>
 <2320945.ZELG96XCOn@yow-masselst-lx1>
 <15EC9C2A5A8A010E.12201@lists.yoctoproject.org>
In-Reply-To: <15EC9C2A5A8A010E.12201@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.155]
MIME-Version: 1.0
X-BESS-ID: 1579818556-893009-16683-2177-1
X-BESS-VER: 2019.1_20200123.2110
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.221859 [from 
	cloudscan21-22.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable


> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Greg Wilson-Lindberg
> Sent: Thursday, January 23, 2020 11:54 AM
> To: Mark Asselstine <mark.asselstine@windriver.com>;
> yocto@lists.yoctoproject.org
> Cc: Khem Raj <raj.khem@gmail.com>; Yocto list discussion
> <yocto@yoctoproject.org>
> Subject: Re: [yocto] generate initramfs for raspberry pi
>=20
> Hi Mark, and also Khem (sorry for the miss-spelling of your name),
>=20
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Mark Asselstine
> > Sent: Thursday, January 23, 2020 11:37 AM
> > To: yocto@lists.yoctoproject.org; Greg Wilson-Lindberg
> > <GWilson@sakuraus.com>
> > Cc: Khem Raj <raj.khem@gmail.com>; Yocto list discussion
> > <yocto@yoctoproject.org>
> > Subject: Re: [yocto] generate initramfs for raspberry pi
> >
> > On Thursday, January 23, 2020 2:24:27 P.M. EST Khem Raj wrote:
> > > On Thu, Jan 23, 2020 at 11:16 AM Greg Wilson-Lindberg
> > >
> > > <GWilson@sakuraus.com> wrote:
> > > > Hi Kem,
> > > > I had figured out your suggestions, my problem is how do I
> > > > generate the "<your-image>" image in:
> > > >
> > > > INITRAMFS_IMAGE_rpi =3D "<your-image>"
> > > >
> > > > I need a recipe for the image and a way to get Yocto to build it
> > > > when I build the rest of my image. Maybe specifying the name will
> > > > build it, but I still need a recipe for the image.
> > > Depends what your needs are, its not clear what you want from this
> > > initramfs image.
> > > is it something you want to do some preboot stuff and pivot into
> > > final image during boot or do you want your full userspace to be
> > > running in it for second case Just use your image if you want that
> > > to be bundled in and build bitbake virtual/kernel it will get you
> > > single kernel image with everything in it.
> > >
> > > for first case. define a new image perhaps a derivative of
> > > core-image-minimal and use that
> >
> > There are two useful starting points,
> > openembedded-core/meta/recipes-core/images/core-image-minimal-
> > initramfs.bb
> > openembedded-core/meta/recipes-core/images/core-image-tiny-
> > initramfs.bb
> >
> > Both do not have
> > COMPATIBLE_HOST =3D "(i.86|x86_64).*-linux"
> >
> > In the end you will most likely want to customize your image as Khem
> > says, so just start by copying one of these and start making adjustment=
s.
> > Alternatively you can do something like the following in your
> > local.conf to overcome this:
> > COMPATIBLE_HOST_pn-core-image-tiny-initramfs =3D "aarch64-poky-linux"

The core-image-tiny-initramfs.bb does have the COMPATIBLE_HOST =3D "(i.86|x=
86_64).*-linux" line in it, this requires a x86 architecture. I ended up co=
pying the file and deleting the COMPATIBLE_HOST line.

When I do that I get the following error:
 * Problem 1/1:
 *   - nothing provides busybox-mdev needed by initramfs-live-boot-tiny-1.0=
-r12.raspberrypi4

What do I need to do to get busybox-mdev built for this image? Can I just a=
dd an IMAGE_INSTALL +=3D "busybox-mdev" for it?

Regards,
Greg

>=20
> I just need something to boot into on the way to the full image. I am doi=
ng
> this as a step to bringing up OStree. So maybe setting the
> 'COMPATIBLE_HOST' and using core-image-tiny-initramfs will work.
>=20
> Thanks for the suggestions. I had thought that there must be an initramfs=
 for
> the Raspberry Pi with all of the threads about using an initramfs on the =
Pi, but
> I guess that there isn't a separate one.
>=20
> Best Regards,
> Greg
>=20
> >
> > You will want to determine if this initramfs is going to pivot to the '=
init'
> > found in the main rootfs, or if you want to simply boot into the
> > 'init' in the initramfs and remain there.
> >
> > Lastly you can either keep the initramfs standalone or have the kernel
> > bundle the initramfs. The latter is useful if you want/need to include
> > software in the initramfs that is needed to get the disks up and
> > running to then get access to the rootfs.
> >
> > Take a look at
> > https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-
> > INITRAMFS_FSTYPES
> > https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-
> > INITRAMFS_IMAGE
> > https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-
> > INITRAMFS_IMAGE_BUNDLE
> >
> > MarkA
> >
> >
> > >
> > > > Regards,
> > > > Greg
> > > >
> > > > -----Original Message-----
> > > > From: Khem Raj <raj.khem@gmail.com>
> > > > Sent: Thursday, January 23, 2020 10:56 AM
> > > > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > > > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > > > Subject: Re: [yocto] generate initramfs for raspberry pi
> > > >
> > > > On Thu, Jan 23, 2020 at 10:44 AM Greg Wilson-Lindberg
> > <gwilson@sakuraus.com> wrote:
> > > > > Hello List,
> > > > >
> > > > > I have not been able to figure out how to generate an initramfs
> > > > > image for a raspberry pi build of yocto. I=92ve searched it web
> > > > > and have not found anything that mentions generating the actual
> > > > > image, lots of hits on how to configure using the initramfs, but
> > > > > not on generating it. Is there a standard recipe for a raspberry
> > > > > pi initramfs and how would I enable its generation, or maybe I=92=
m
> > > > > just
> > being clueless.
> > > > >
> > > > >
> > > > >
> > > > > I=92m running on a boot2qt build of yocto based on Qt v5.14.0 tha=
t
> > > > > uses warrior and I=92m targeting an RPi 4 using u-boot.
> > > > >
> > > > >
> > > > >
> > > > > Any help would be greatly appreciated.
> > > >
> > > > try something like below in local.conf
> > > >
> > > > INITRAMFS_IMAGE_BUNDLE_rpi =3D "1"
> > > > INITRAMFS_IMAGE_rpi =3D "<your-image>"
> > > > # Enlarge boot partition to 1GiB
> > > > BOOT_SPACE =3D "1073741"
> > > > INITRAMFS_MAXSIZE =3D "315400"
> > > > IMAGE_FSTYPES_pn-${INITRAMFS_IMAGE} =3D "${INITRAMFS_FSTYPES}"
> > > >
> > > > > Best regards,
> > > > >
> > > > > Greg Wilson-Lindberg
> >
> >
> >

