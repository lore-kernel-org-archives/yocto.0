Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f54.google.com (mail-pb0-f54.google.com
	[209.85.160.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57159E016B2
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 20:14:35 -0700 (PDT)
Received: by mail-pb0-f54.google.com with SMTP id ro12so1710056pbb.27
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 20:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=BmMkChsv4Cl+PplK6kj5Jlu4EloilqWTPRe7HPIQ9rk=;
	b=XV7lpho/fklpsX/e/PBFDRJZkFsyGTE5DtJXoyewpcy534Vyvs38/BPhfCXtb2Bh2g
	4jw9nf8BtjI8hhZe2Nuk3hUoUr2GOwHWOLvmEQV07yGNigfXuYH5nB5FrOxLvol3ohBA
	KOM3fB54StldLiylo0akhtfjMS6JVfe8xFo/FBIrv4Asd9Dtsm/LU0pb+OCHE9zlbg8z
	7xiSctXMsHgqBXDwosSeKvemU2+IwRi5r9jvbnrknfoaXFc3dntPPiCwifTwPV9/qAHy
	UicXJxqmkZVPK6OebyJRQeac1IqRtDGw7pQGGqK8skV/16gjg7DsT6P3bZR2hTULuSNk
	pMWg==
X-Received: by 10.68.209.197 with SMTP id mo5mr33821pbc.191.1381979675194;
	Wed, 16 Oct 2013 20:14:35 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	qz9sm94423321pbc.3.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 16 Oct 2013 20:14:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMS2kBFgfdCHF1f3TfDA3PNzL_PGxOpzrmXLOV_GMhkbdTXocA@mail.gmail.com>
Date: Wed, 16 Oct 2013 20:14:35 -0700
Message-Id: <F307A83E-AA68-48CC-BDC3-2E691A8AB632@gmail.com>
References: <CAMS2kBFgfdCHF1f3TfDA3PNzL_PGxOpzrmXLOV_GMhkbdTXocA@mail.gmail.com>
To: Glenn Schmottlach <gschmottlach@gmail.com>
X-Mailer: Apple Mail (2.1510)
Cc: yocto@yoctoproject.org
Subject: Re: OPKG configuration questions
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
X-List-Received-Date: Thu, 17 Oct 2013 03:14:38 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Oct 16, 2013, at 1:17 PM, Glenn Schmottlach <gschmottlach@gmail.com> =
wrote:

> I have several questions regarding configuring the OPKG package =
management support in my target image.
>=20
> 1) I'm having difficulty getting the /var/lib/opkg directory to be =
created and populated with a list of installed packages.
>=20
> 2) I can't figure out (e.g. can find no documentation) that describe =
what the "lists_dir ext /var/lib/opkg" option in the opkg.conf file =
does. Does this point to where the list of installed packages should be =
found?
>=20
> 3) What is the best/preferred approach (e.g. patch, *bbappend, new =
recipe, etc...) to tailor or modify the opkg.conf file (specifically the =
opkg source (src) paths) that are appended to /etc/opkg/opkg.conf file =
by the opkg-collatoral.bb recipe.
>=20
> This is what I have done to prepare my image to include package =
management:
>=20
> 1) My image recipe inherits from core-image
>=20
> 2) I've configured ONLINE_PACKAGE_MANAGEMENT =3D "full" and confirmed =
that is it set correctly via "bitbake-env -r image-nitrogen6x =
ONLINE_PACKAGE_MANAGEMENT"
>=20
> 3) I've confirmed that IMAGE_FEATURES =3D "debug-tweaks =
package-management"
>=20
> 4) PACKAGE_CLASSES =3D "package_ipk" is configured and I see packages =
in my <project>/build/tmp/deploy/ipk directory
>=20
> The target boots fine and I have the appropriate opkg applications =
installed (e.g. opkg, opkg-cl, opkg-key). I also have the default =
/etc/opkg/opkg.conf and /etc/opkg/arch.conf installed.
>=20
> There is *no* /var/lib/opkg directory and thus "opkg-cl =
list-installed" returns with an error because the "opkg" directory is =
missing. If I manually create it the program run successfully but =
doesn't list anything (which is obvious since it is empty).
>=20
> I read this post
> https://lists.yoctoproject.org/pipermail/yocto/2013-June/016324.html
>=20
> and confirmed that my setting are correct for IMAGE_FEATURES and =
ROOT_POSTPROCESS_CMD (=3D "run_intercept_scriptlets; =
license_create_manifest;  ssh_allow_empty_password;  =
rootfs_update_timestamp ;")
>=20
> Can anyone offer any suggestions, recommendations, or answers to my =
questions above?
>=20

something is not adding up.

either you have "remove_packaging_data_files" in =
ROOTFS_POSTPROCESS_COMMAND or 'package-management' is missing in =
IMAGE_FEATURES

Can you paste output of bitbake -e <yourimage>
somewhere ?

> Thanks for you help . . .
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


