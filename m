Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F1EE00717
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 01:22:30 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id fm10so1718567wgb.5
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 01:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=EeqRsLZN2HYaF3X5UQfJm48+e9eFjfNKhSFKZlISBCA=;
	b=DfAQdpq/dngZXT/zVMyVzrhPX6Vz5ksXeyfIQEOrZ+HSfYil4kebx7y9aophVcc/9H
	tunhdrdzMr3ZrKWZEFp0py5WIKMN/kDuz1MVFqPi+RKoNsGUkEXNhGOd/8mzPn2CLA+P
	oiiDXgV4RDD/sNzJNAerRPKftWwBHSTQAmH0b5Gv694cnXGZJQUVed0tbtjjaiY9W6zQ
	5mEUhaKDxSTFJHOk1uSwp2UZIq8WKEMklcKGc/0gfHFXpisTmvzqNJfQq7jEVWq+7HS/
	JeLJf4GUkzUF6BjMujK2FAGlGWHUv/a3K5uhuMD63dIMPt4cnLZQktgvU5xHv0jaC79f
	qRZw==
Received: by 10.216.140.135 with SMTP id e7mr2700585wej.149.1349338949429;
	Thu, 04 Oct 2012 01:22:29 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id k2sm13320800wiz.7.2012.10.04.01.22.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 04 Oct 2012 01:22:28 -0700 (PDT)
Date: Thu, 4 Oct 2012 10:22:30 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20121004082230.GB3005@jama.jama.net>
References: <CA+gsK-oEmJJHQo1BHYfr1CZS3KbjiG8piMV30EodDGOFrEpaLA@mail.gmail.com>
	<506CE7CF.6000500@linux.intel.com>
	<CA+gsK-r9-H853RFWkhSWORCC3i7zW+KT6Q6UquXa6Sph2--0aw@mail.gmail.com>
	<CAK18fxHT3qTTf_qMC7RiynTrPpJHVkkmw76PWV2qDKKFDi=2Qg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK18fxHT3qTTf_qMC7RiynTrPpJHVkkmw76PWV2qDKKFDi=2Qg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Poky] Baking core-image-minimal with Poky from Master fails with libffi dependency
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Oct 2012 08:22:31 -0000
X-Groupsio-MsgNum: 9807
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oC1+HKm2/end4ao3"
Content-Disposition: inline

--oC1+HKm2/end4ao3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 04, 2012 at 09:43:58AM +0300, Andrei Gherzan wrote:
> There were some issues with libffi while updating the package. Maybe some
> bumps were missed. So:

> 1. This is not new build. In this case a pull on master should fix it. I
> think I saw some pr bumps sent as patch.

Yes but I did PR bumps only of packages in my feed
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-September/02975=
9.html

> 2. If 1. won't work, recompile libowl si libclutter as a workaround.

wont fix it on target

Cheers,

>=20
> ag
>  On Oct 4, 2012 4:40 AM, "Rudolf Streif" <rudolf.streif@linux.com> wrote:
>=20
> > No, nothing extra. But you are right about the number of tasks. I check=
ed
> > out master a while ago, built successfully back then, now pulled the la=
test
> > today, and reused the build environment. I will try again with a fresh
> > environment.
> >
> > :rjs
> > On Oct 3, 2012 6:35 PM, "Saul Wold" <sgw@linux.intel.com> wrote:
> >
> >> On 10/03/2012 04:21 PM, Rudolf Streif wrote:
> >>
> >>> I checked out Poky from Master and tried to build core-image-minimal.
> >>> do_rootfs failed on the libffi dependency [1]. Is that known/expected?
> >>>
> >>>  This is interesting, I just tried it also, and it is working, see be=
low.
> >>
> >>
> >>  :rjs
> >>>
> >>> --------
> >>>
> >>> [1]
> >>>
> >>> bitbake core-image-minimal
> >>> Loading cache: 100%
> >>> |#############################**##############################**
> >>> #####################|
> >>> ETA:  00:00:00
> >>> Loaded 1131 entries from dependency cache.
> >>>
> >>> Build Configuration:
> >>> BB_VERSION        =3D "1.16.0"
> >>> TARGET_ARCH       =3D "i586"
> >>> TARGET_OS         =3D "linux"
> >>> MACHINE           =3D "qemux86"
> >>> DISTRO            =3D "poky"
> >>> DISTRO_VERSION    =3D "1.2+snapshot-20121003"
> >>> TUNE_FEATURES     =3D "m32 i586"
> >>> TARGET_FPU        =3D ""
> >>> meta
> >>> meta-yocto
> >>> meta-yocto-bsp    =3D "master:**09aaad16be178bd675750aa6cfe7a3**
> >>> 73d7c9a8a6"
> >>>
> >>> NOTE: Resolving any missing task queue dependencies
> >>> NOTE: Preparing runqueue
> >>> NOTE: Executing SetScene Tasks
> >>> NOTE: Executing RunQueue Tasks
> >>> ERROR: Function failed: do_rootfs (see
> >>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
> >>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
> >>> for further information)
> >>> ERROR: Logfile of failure stored in:
> >>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
> >>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
> >>> Log data follows:
> >>> | DEBUG: Executing shell function do_rootfs
> >>> | Generating solve db for
> >>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/qemux86...
> >>> | Generating solve db for
> >>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/i586...
> >>> | Generating solve db for
> >>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/all...
> >>> | Generating solve db for
> >>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/all...
> >>> | Processing packagegroup-core-tools-**profile...
> >>> | Processing packagegroup-core-boot...
> >>> | Processing packagegroup-core-tools-**testapps...
> >>> | Processing packagegroup-core-tools-debug.**..
> >>> | error: Failed dependencies:
> >>> |       libffi.so.5 is needed by lttng-viewer-0.12.38-r3.i586
> >>> |       libffi.so.5 is needed by
> >>> clutter-box2d-0.12.1+git1+**de5452e56b537a11fd7f9453d048ff**
> >>> 4b4793b5a2-r1.qemux86
> >>> |       libffi.so.5 is needed by
> >>> libowl-av0-0.1+git1+**03030c41ea578cfa74a2ffceb87567**5b248318ae-r3.i=
586
> >>> |       libffi.so.5 is needed by libclutter-glx-1.0-0-1.8.4-r2.**i586
> >>> | ERROR: Function failed: do_rootfs (see
> >>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
> >>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
> >>> for further information)
> >>> ERROR: Task 7
> >>> (/data/Develop/yocto-develop/**poky/meta/recipes-core/images/**
> >>> core-image-minimal.bb <http://core-image-minimal.bb>
> >>> <http://core-image-minimal.bb>**, do_rootfs) failed with exit code '1'
> >>> NOTE: Tasks Summary: Attempted 3891 tasks of which 3890 didn't need to
> >>> be rerun and 1 failed.
> >>> No currently running tasks (3890 of 3892)
> >>>
> >>>  The number of tasks and including lttng-viewer and clutter seems to =
be
> >> lartger than core-image-minimal, do you have anything in the local.con=
f?
> >>
> >> Sau!
> >>
> >>  Summary: 1 task failed:
> >>>
> >>> /data/Develop/yocto-develop/**poky/meta/recipes-core/images/**
> >>> core-image-minimal.bb <http://core-image-minimal.bb>
> >>> <http://core-image-minimal.bb>**, do_rootfs
> >>> Summary: There was 1 ERROR message shown, returning a non-zero exit c=
ode.
> >>>
> >>>
> >>>
> >>> ______________________________**_________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctopr=
oject.org/listinfo/yocto>
> >>>
> >>>
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--oC1+HKm2/end4ao3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlBtR0YACgkQN1Ujt2V2gBwlngCgtCOhSRtJM1s5k5IRQQ+BndiF
Zs0AnRDv2qUrSFks41pb6sIJ6oy6NWdR
=3eYB
-----END PGP SIGNATURE-----

--oC1+HKm2/end4ao3--
