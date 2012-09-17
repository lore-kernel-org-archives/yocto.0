Return-Path: <martin.jansa@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80F41E01346
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 07:36:20 -0700 (PDT)
Received: by bkty5 with SMTP id y5so2744969bkt.35
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 07:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=U6+WlF6P5qudhXzevAMIheLkV/aKZJX0TE91B2BfB8o=;
	b=K0otdj061M4ihFafY3DAYEmxnBBTx0DyChFmsLT/VqNX9mE9Lq1q+sEKLkXSUWtWX2
	ToEVFjTapwRlbm61/JISnR1TqhBEm56G7bopa1s9TQdxEuS56sLN4tl2E/qxrvkS5HVL
	qwaz3HdnMHQ9vXl9mqBgftLR197LG2sM4G7Kc0Ndy8cz7hGRT2x2l0aLj1AZdLLniwJM
	B8I6Z7WMo1SA7Pr833N/GOL5cebnH04dq7AEySMKwpuWO8um+U1jVJX+hR6X7Hi7cVfF
	YTF9vC76c2uX9Eyv6c5YOByj3/yLqgGeijH1Hs2rrnSCplnji9u9HWePLeSixfnLCkxY
	NHog==
Received: by 10.204.4.154 with SMTP id 26mr4390175bkr.91.1347892577097;
	Mon, 17 Sep 2012 07:36:17 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id he8sm5700623bkc.3.2012.09.17.07.36.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 17 Sep 2012 07:36:15 -0700 (PDT)
Date: Mon, 17 Sep 2012 16:36:07 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
Message-ID: <20120917143607.GA3498@jama.jama.net>
References: <CANmVirh4JJnAyuJxnxMQbBuOB79dGsi6p_SRnn_HD8AZShsxKg@mail.gmail.com>
	<CADzUK1J_aTDBpAwDiDAXXYom5OnfaK=N6VVevCrOEP-vmfG+Zg@mail.gmail.com>
	<CANmVirg-f6MBzXjFrN+aquFLs+aqm050AcB7URcZH54JrLtx5w@mail.gmail.com>
	<CAJTo0LbPddTir6e8msORdZ8mGAy8LAJ1R=g_c4+sFo-7g944Gw@mail.gmail.com>
	<CANmVirgP7_micpq-8=Gf4hzCfKo3HSXZ9hJGKaokho_2A6oDTQ@mail.gmail.com>
	<CA+chaQcp=Gt=mBuYt24uvitYtn0FjgbWXCRp+6ZEWGKsVuXphg@mail.gmail.com>
	<CANmVirheZY7EJJ7hPurT6VdUM3rBc_Bp-p9ALjmh=39QD7CFow@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANmVirheZY7EJJ7hPurT6VdUM3rBc_Bp-p9ALjmh=39QD7CFow@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Create a .bb for my aplication
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
X-List-Received-Date: Mon, 17 Sep 2012 14:36:21 -0000
X-Groupsio-MsgNum: 9400
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline

--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 17, 2012 at 11:25:05AM -0300, Raul Rosetto Munoz wrote:
> sorry I dont understand what you say.
>=20
> Do you told me to put some like this.
>=20
> FILES_${PN} =3D "${D}/home/prjs/"

yes, but this time without ${D}

>=20
>=20
>=20
> 2012/9/17 Martin Jansa <martin.jansa@gmail.com>
>=20
> > On Mon, Sep 17, 2012 at 4:13 PM, Raul Rosetto Munoz
> > <munoz0raul@gmail.com> wrote:
> > > I did what did you tell me but dont work.
> > >
> > > I saw in the bitbake log some warning:
> > >
> > > raul@phi04:/home/prjs/newcom0001/philinux/philinux-imx28-newcom$ bitb=
ake
> > > core-image-minimal
> > > Loading cache: 100%
> > >
> > |######################################################################=
###########################################|
> > > ETA:  00:00:00
> > > Loaded 1519 entries from dependency cache.
> > > Parsing recipes: 100%
> > >
> > |######################################################################=
#########################################|
> > > Time: 00:00:00
> > > Parsing of 1185 .bb files complete (1184 cached, 1 parsed). 1518
> > targets, 52
> > > skipped, 0 masked, 0 errors.
> > >
> > > OE Build Configuration:
> > > BB_VERSION        =3D "1.15.2"
> > > TARGET_ARCH       =3D "arm"
> > > TARGET_OS         =3D "linux-gnueabi"
> > > MACHINE           =3D "imx28evk"
> > > DISTRO            =3D "poky"
> > > DISTRO_VERSION    =3D "1.2.1"
> > > TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
> > > TARGET_FPU        =3D "soft"
> > > meta
> > > meta-yocto        =3D
> > > "local/origin/denzil:73cdebf60df225ee10f2eb215935be3b61e1b831"
> > > meta-fsl-arm      =3D
> > > "local/origin/denzil:a207ac2953cdc046acef3190f58816df79119f1b"
> > > meta-oe           =3D
> > > "local/origin/denzil:04c61c8ed73cb2c537002f22d1b9656f6cec61af"
> > >
> > > NOTE: Resolving any missing task queue dependencies
> > > NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
> > > NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
> > > NOTE: multiple providers are available for jpeg-native (jpeg-native,
> > > libjpeg-turbo-native)
> > > NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg-nati=
ve
> > > NOTE: Preparing runqueue
> > > NOTE: Executing SetScene Tasks
> > > NOTE: Executing RunQueue Tasks
> > > NOTE: Running task 2110 of 2650 (ID: 238,
> > > /home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/newcom_instal=
l/
> > newcom_0.0.0.bb,
> > > do_install)
> > > NOTE: package newcom-0.0.0-r0: task do_install: Started
> > > NOTE: package newcom-0.0.0-r0: task do_install: Succeeded
> > > NOTE: Running task 2646 of 2650 (ID: 243,
> > > /home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/newcom_instal=
l/
> > newcom_0.0.0.bb,
> > > do_package)
> > > NOTE: package newcom-0.0.0-r0: task do_package: Started
> > > WARNING: For recipe newcom, the following files/directories were
> > installed
> > > but not shipped in any package:
> > > WARNING:   /home
> > > WARNING:   /home/prjs
> > > NOTE: package newcom-0.0.0-r0: task do_package: Succeeded
> > > NOTE: Running task 2647 of 2650 (ID: 245,
> > > /home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/newcom_instal=
l/
> > newcom_0.0.0.bb,
> > > do_package_write_rpm)
> > > NOTE: package newcom-0.0.0-r0: task do_package_write_rpm: Started
> > > NOTE: package newcom-0.0.0-r0: task do_package_write_rpm: Succeeded
> > > NOTE: Running noexec task 2648 of 2650 (ID: 242,
> > > /home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/newcom_instal=
l/
> > newcom_0.0.0.bb,
> > > do_package_write)
> > > NOTE: Running task 2649 of 2650 (ID: 8,
> > > /home/prjs/poky/meta/recipes-core/images/core-image-minimal.bb,
> > do_rootfs)
> > > NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Started
> > > NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Succeeded
> > > NOTE: Running noexec task 2650 of 2650 (ID: 5,
> > > /home/prjs/poky/meta/recipes-core/images/core-image-minimal.bb,
> > do_build)
> > > NOTE: Tasks Summary: Attempted 2650 tasks of which 2644 didn't need t=
o be
> > > rerun and all succeeded.
> > >
> > > Summary: There were 3 WARNING messages shown.
> > >
> > >
> > > And in /tmp/work/armv5te-poky-linux-gnueabi/ folder I did the command:
> > >
> > > raul@phi04
> > :/home/prjs/newcom0001/philinux/philinux-imx28-newcom/tmp/work/armv5te-=
poky-linux-gnueabi$
> > > find . -name "prjs"
> > > ./python-2.7.2-r2.17/Python-2.7.2/build/temp.linux-i686-2.7/home/prjs
> > > ./module-init-tools-cross-3.16-r0/image/home/prjs
> > > ./module-init-tools-cross-3.16-r0/sysroot-destdir/home/prjs
> > > ./gcc-cross-initial-4.6.3+svnr184847-r25/image/home/prjs
> > > ./gcc-cross-initial-4.6.3+svnr184847-r25/sysroot-destdir/home/prjs
> > > ./newcom-0.0.0-r0/prjs
> > > ./newcom-0.0.0-r0/image/home/prjs
> > > ./newcom-0.0.0-r0/package/home/prjs
> > > ./gcc-cross-intermediate-4.6.3+svnr184847-r25/image/home/prjs
> > >
> > ./gcc-cross-intermediate-4.6.3+svnr184847-r25/image/home/prjs/newcom000=
1/philinux/philinux-imx28-newcom/tmp/sysroots/i686-linux/usr/lib/armv5te-po=
ky-linux-gnueabi.gcc-cross-intermediate/gcc/arm-poky-linux-gnueabi/4.6.4/in=
clude-fixed/root/home/prjs
> > >
> > ./gcc-cross-intermediate-4.6.3+svnr184847-r25/gcc-4_6-branch/build.i686=
-linux.arm-poky-linux-gnueabi/gcc/include-fixed/root/home/prjs
> > > ./gcc-cross-intermediate-4.6.3+svnr184847-r25/sysroot-destdir/home/pr=
js
> > >
> > ./gcc-cross-intermediate-4.6.3+svnr184847-r25/sysroot-destdir/home/prjs=
/newcom0001/philinux/philinux-imx28-newcom/tmp/sysroots/i686-linux/usr/lib/=
armv5te-poky-linux-gnueabi.gcc-cross-intermediate/gcc/arm-poky-linux-gnueab=
i/4.6.4/include-fixed/root/home/prjs
> > > ./gcc-cross-4.6.3+svnr184847-r25/image/home/prjs
> > > ./gcc-cross-4.6.3+svnr184847-r25/sysroot-destdir/home/prjs
> > > ./binutils-cross-2.22-r6/image/home/prjs
> > > ./binutils-cross-2.22-r6/sysroot-destdir/home/prjs
> > >
> > > now I don't know why this the prjs folder dont go to my root image in
> > the SD
> > > card!
> >
> > Add that to FILES_${PN} otherwise it's unpackaged as warning says.
> >
> >
> > >
> > > Some suggest?
> > >
> > > Thanks
> > >
> > >
> > >
> > >
> > > 2012/9/17 Burton, Ross <ross.burton@intel.com>
> > >
> > >> On 17 September 2012 14:48, Raul Rosetto Munoz <munoz0raul@gmail.com>
> > >> wrote:
> > >> > I'm just want to mkdir in the /home/ path.
> > >> >
> > >> > Im try some thing like this but don't work!
> > >> > do_install() {
> > >> >     mkdir -p /home/prjs/
> > >> > }
> > >>
> > >> You're creating a directory in the home directory on your build
> > >> machine.  *Not* in the working area for the package.  You'll want to
> > >> mkdir ${D}/home/prjs
> > >>
> > >> Ross
> > >
> > >
> > >
> > >
> > > --
> > > Raul Rosetto Mu=F1oz
> > >
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > >
> >
>=20
>=20
>=20
> --=20
> *Raul Rosetto Mu=F1oz*

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--oyUTqETQ0mS9luUI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlBXNVcACgkQN1Ujt2V2gBxTLQCfandA6U3SJck+QPuFmFwH2IEi
PjEAnA5J2rSMY71rk2kSORhr1SM2naxE
=JWTO
-----END PGP SIGNATURE-----

--oyUTqETQ0mS9luUI--
