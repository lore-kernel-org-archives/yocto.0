Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f177.google.com (mail-ea0-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04DC7E015F6
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 15:17:10 -0800 (PST)
Received: by mail-ea0-f177.google.com with SMTP id f15so1559477eak.36
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 15:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=rfQ28/2Az+tQVg+QeorARhYKRGUzoA4ahFtSs7aGgvw=;
	b=tn6xUA45R6rFRnE29w9UHMz4hKHiS6kXtwH6vr3OUgdyq0e6rtnAScNfWC6Mw+fd3S
	SmfxkjQRmdexsg6egPkDiDF9p60RnsuhR26KS1qAvCQw6vu72EtcAik3CKXXbkAYjRY2
	feTK9ryFSBu77COR3pr43uT//Ah/PVd+lMzOiLKmyqziOVz7VsQyIPl7yU4YhBUBRPRp
	tAAwKuWjQKzYFZ0nwDlFcxfSdjovzVRYsfYF7kG2jGjIulH6/v1NDmrhwkSoc6nZ8xdc
	34OR05F7At5aGGT1ow48UPHIhaanoplscCe8Ryb0wZ9GxffGHgO0QAbmsl12FVREMfYg
	t8Eg==
X-Received: by 10.14.216.68 with SMTP id f44mr5368287eep.6.1384557429586;
	Fri, 15 Nov 2013 15:17:09 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id h8sm10769376eew.16.2013.11.15.15.17.08
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Nov 2013 15:17:08 -0800 (PST)
Date: Sat, 16 Nov 2013 00:17:34 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Leo Schwab <lschwab@sensity.com>
Message-ID: <20131115231734.GG31430@jama>
References: <CALb2249ae4iDYnv3RG9aQJdVEJCMWP5AH4vOR4jgg_TxuF+BJg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALb2249ae4iDYnv3RG9aQJdVEJCMWP5AH4vOR4jgg_TxuF+BJg@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: FILESPATH Search Order Changed?
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
X-List-Received-Date: Fri, 15 Nov 2013 23:17:16 -0000
X-Groupsio-MsgNum: 17190
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MP5ln1Rcf9Bvi+ZW"
Content-Disposition: inline

--MP5ln1Rcf9Bvi+ZW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 15, 2013 at 02:52:27PM -0800, Leo Schwab wrote:
> I'm working on transitioning from 'dylan' to the 'dora' branch for our
> Freescale-based project, and suddenly my kernel is building with the
> wrong config.  I've isolated it to a change in (what I presume is) the
> FILESPATH search order, and shows up very plainly when looking at the
> log.do_unpack file.

Yes it was changed just before dora release
http://git.openembedded.org/openembedded-core/commit/?h=3Ddora&id=3D92cbf7e=
eea553bfa24c7081473fa8bc4ebc1f552

You're not alone fighting with it..

>=20
> My defconfig is located in
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/defconfig.
> Under 'dylan', it does this, and gets picked up correctly:
>=20
> ----
> DEBUG: Searching for defconfig in paths:
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/arm
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/armv7a
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/mx6
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/mx6dl
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/medianode
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/poky
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/arm
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/armv7a
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/mx6
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/mx6dl
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/medianode
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/poky
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/arm
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/arm=
v7a
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6=
dl
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/med=
ianode
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/poky
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/arm
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/armv7a
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/mx6
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/mx6dl
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/medianode
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/poky
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/arm
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/armv7a
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/mx6
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/mx6dl
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/medianode
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/poky
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/
> NOTE: Unpacking
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/defconfig to
> /..paths../build/tmp/work/medianode-poky-linux-gnueabi/linux-imx/3.0.35-r=
39.14/
> ----
>=20
> But under 'dora', it does this:
>=20
> ----
> DEBUG: Searching for defconfig in paths:
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/poky
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/poky
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/poky
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/poky
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/poky
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/medianode
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/medianode
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/med=
ianode
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/medianode
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/medianode
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/mx6dl
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/mx6dl
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6=
dl
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/mx6dl
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/mx6dl
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/mx6
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/mx6
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/mx6
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/mx6
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/armv7a
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/armv7a
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/arm=
v7a
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/armv7a
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/armv7a
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/arm
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/arm
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/arm
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/arm
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/arm
> /..paths../sources/meta-belis3/recipes-kernel/linux/files/
> /..paths../sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-imx-3.0.=
35/
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx/
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/files/
> NOTE: Unpacking
> /..paths../sources/meta-fsl-arm/recipes-kernel/linux/linux-imx-3.0.35/mx6=
dl/defconfig
> to /..paths../build/tmp/work/medianode-poky-linux-gnueabi/linux-imx/3.0.3=
5-r39.14/
> ----
>=20
> As a consequence, it picks up a default Freescale-supplied 'defconfig'
> rather than mine.
>=20
> The "obvious" solution is to move my 'defconfig' under a directory
> named 'medianode' or 'poky'.  What's less clear is what I should have
> been doing in the first place and why, so that I can avoid getting
> bitten by this kind of thing again.
>=20
> Schwab
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--MP5ln1Rcf9Bvi+ZW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlKGq44ACgkQN1Ujt2V2gBx4ogCglpqTcWcIdQIghN3KpDLmGJGF
xOQAoIkhmJW3frdjTr0qzDxAJXtSLhwE
=IbmY
-----END PGP SIGNATURE-----

--MP5ln1Rcf9Bvi+ZW--
