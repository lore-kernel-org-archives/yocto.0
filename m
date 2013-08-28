Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B80F1E01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 00:19:16 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c41so2758937eek.11
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 00:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=zs28/Ucu3SGVhf7lYlTDxIGcWv7dBVMhkujgEYTT9fA=;
	b=S9fXtf7zI+J1eXOao0lZGrDIbCTkzehGuNtQc7UPPU2RioRt5xZ1GI+ud3FS9rZf0m
	BO0t24YVImT0cQ5G3QJF3uXvq9MTPHRYi1X/Y4lUSAf7/ZOycyTJHwo1/AzcOq7zoR20
	K56MVf7Uu5hDXTZpmmyDhB3iwcBPn5OGvOg9vd1FD+gtvS1Y/SJiJ8YMYxNiqDnPgMc/
	17clZGbeaqLayJYBKCXVPWCfxD2JxioINsdXNYWXd5zxWeA/56YcWUaksPaiH8CE1PFX
	1oRMuEz2YNBxK8fL65n4W6bhpOxTiMbKRWjtoJA+uzxuo60ifMGHZJi4i65gvCXMpeAU
	hYQQ==
X-Received: by 10.14.107.137 with SMTP id o9mr124658eeg.86.1377674354820;
	Wed, 28 Aug 2013 00:19:14 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	n48sm34817918eeg.17.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 28 Aug 2013 00:19:14 -0700 (PDT)
Date: Wed, 28 Aug 2013 09:20:25 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <20130828072025.GC3544@jama>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
	<521D354E.1020909@mlbassoc.com>
	<8EB78E64DFE9436EAFB462E357C464EC@PAULD>
MIME-Version: 1.0
In-Reply-To: <8EB78E64DFE9436EAFB462E357C464EC@PAULD>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Wed, 28 Aug 2013 07:19:19 -0000
X-Groupsio-MsgNum: 15710
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="iluUylAmeNVF81ZM"
Content-Disposition: inline

--iluUylAmeNVF81ZM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2013 at 05:10:42PM -0700, Paul D. DeRocco wrote:
> > From: Gary Thomas
> >=20
> > As far as I understand, the 'do_rootfs' step in building an=20
> > image is basically
> > equivalent to running "${PKG_MGR} install=20
> > <all_required_packages>", where PKG_MGR
> > is your package management method of choice - ipk or rpm. =20
> > This seems to me to
> > be a very single-threaded process.
>=20
> If there's a way to command the package manager to install a package
> without enforcing dependencies (Is that what opkg --nodeps does?), then
> couldn't the package manager be invoked on one package at a time in n
> threads, just like the other tasks are now run? I don't really have any
> sense of how long it takes to install the packages, as opposed to building
> the final tarball or hddimage and applying the permissions from the pseudo
> database, which would certainly be single-threaded.
>=20
> > Perhaps you should think more about how you are using this. =20
> > If you don't need
> > to rebuild the whole image every time, maybe you can use the=20
> > package management
> > tools instead?  For example, I routinely build images as well=20
> > but I also try to
> > use 'opkg' as much as possible to manage package updates,=20
> > etc.   This is a huge
> > time saver, especially when making small or incremental=20
> > changes.  I only rely
> > on the full image builds when I want to "checkpoint" the=20
> > state of the system.
>=20
> I'd like to try that, but I'm not sure how. If I've tweaked one recipe,
> how do I get it to build it and package it, and then stop? Do I use
> "bitbake -c package"? And then do I use "opkg -d" to manually install it
> directly onto my SD card? If my rootfs is a loop mounted hddimage in a
> FAT16 file (as it is on my Atom project), do I loop mount it on my build
> system and install into that?
>=20
> Installing directly to the card would be nice because copying the whole
> damn rootfs to the card takes an annoying amount of time, too.

Are you sure that you're not building some unnecessary IMAGE_FSTYPES?
Last time someone asked my why it takes so long I've added some debug
output to do_rootfs and found out that only half of the time was opkg
installing packages and the rest was various IMAGE_FSTYPES.

e.g. tar.bz2 takes very long without pbzip2 or lbzip2

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--iluUylAmeNVF81ZM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.21 (GNU/Linux)

iEYEARECAAYFAlIdpLkACgkQN1Ujt2V2gBwk0wCeOsiwATRk4+XTHudHLKMiSBkR
fksAnRz96R+4xNRXVocW0HM5t3NSeAJu
=QSt3
-----END PGP SIGNATURE-----

--iluUylAmeNVF81ZM--
