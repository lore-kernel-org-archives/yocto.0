Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A706E0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:13:35 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eekd49 with SMTP id d49so8382692eek.35
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 08:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=e+hSMxdFPiXy1476/rXFU2FA3AYTVgMFBRYh/lTGpz8=;
	b=xJzO208aD9IQ9ZRqG6VrCRBzjvTwFc+XvQEZ3hrzP2Zg3CA1Fn3psJEUg4SnwXtnR6
	/LDqYFMR9PagQN9/Bv4ulpRO+wN0KAVo8btNoyd9Y9ZhzybqLa5FTDC7PNefkc57H/Yo
	AFV6Hb15zvP+Spya/lI55plWVSE8BdosZpROc=
Received: by 10.14.16.145 with SMTP id h17mr2792794eeh.62.1324484014046;
	Wed, 21 Dec 2011 08:13:34 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id a60sm21926397eeb.4.2011.12.21.08.13.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 21 Dec 2011 08:13:32 -0800 (PST)
Date: Wed, 21 Dec 2011 17:13:20 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20111221161320.GF12791@jama.jama.net>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<2ad76233b10f9e4a61a6ecb5490f92fecdc1f1e1.1324456294.git.dvhart@linux.intel.com>
	<20111221100909.GD12791@jama.jama.net>
	<4EF202CC.6090708@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4EF202CC.6090708@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 5/9] task-core-boot: Allow DISTRO to disable keymaps
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
X-List-Received-Date: Wed, 21 Dec 2011 16:13:36 -0000
X-Groupsio-MsgNum: 3941
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="KJY2Ze80yH5MUxol"
Content-Disposition: inline

--KJY2Ze80yH5MUxol
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 21, 2011 at 08:01:16AM -0800, Darren Hart wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>=20
>=20
>=20
> On 12/21/2011 02:09 AM, Martin Jansa wrote:
> > On Wed, Dec 21, 2011 at 01:02:51AM -0800, Darren Hart wrote:
> >> NOTE: I'm looking for a better way to do this.
> >>=20
> >> keymaps pulls in gettext, which can't build without wide
> >> character support.
> >>=20
> >> Rather than have to add a -tiny variant of every MACHINE to drop
> >> "keyboard" from the MACHINE_FEATURES, just enable the DISTRO to
> >> define what gets added to RDEPENDS_task-core-boot when
> >> MACHINE_FEATURES includes keyboard. By default, keep "keymaps",
> >> but use DISTRO_KEYMAPS if it is set (to "" for example).
> >>=20
> >> Signed-off-by: Darren Hart <dvhart@linux.intel.com> ---=20
> >> meta/recipes-core/tasks/task-core-boot.bb |    7 ++++++- 1 files
> >> changed, 6 insertions(+), 1 deletions(-)
> >>=20
> >> diff --git a/meta/recipes-core/tasks/task-core-boot.bb
> >> b/meta/recipes-core/tasks/task-core-boot.bb index
> >> 05c280d..e097836 100644 ---
> >> a/meta/recipes-core/tasks/task-core-boot.bb +++
> >> b/meta/recipes-core/tasks/task-core-boot.bb @@ -17,6 +17,11 @@ PR
> >> =3D "r9" MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?=3D ""=20
> >> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?=3D ""
> >>=20
> >> +# +# Set by the distro configuration to empty if not supported=20
> >> +# +DISTRO_KEYMAPS ?=3D "keymaps"
> >=20
> > Why not VIRTUAL-RUNTIME_keymaps like everywhere else?
>=20
> That's an option. The term VIRTUAL-RUNTIME didn't seem to apply as
> well to keymaps for me. Also, I felt that this was really a hack in

See this thread
http://lists.linuxtogo.org/pipermail/openembedded-core/2011-April/001498.ht=
ml

Cheers,

> the wrong place that need a solution involving MACHINE_FEATURES.
> Unfortunately I can't use oe_core_filter_out in the distro config file
> and I'd prefer not to have to create machine config variants for every
> - -tiny supported machine.
>=20
> It could be a new task-core-tiny is the right fix (this is what I did
> in my prototype meta-tiny layer), but I'd rather not have to add
> another task-core* if it can be avoided.
>=20
> - --
> Darren
>=20
> >=20
> > Cheers,
> >=20
> >> + # Distro can override dev_manager provider=20
> >> VIRTUAL-RUNTIME_dev_manager ?=3D "udev" # Distro can override
> >> login_manager provider @@ -37,7 +42,7 @@ RDEPENDS_task-core-boot
> >> =3D "\ base-passwd \ busybox \ ${VIRTUAL-RUNTIME_initscripts} \ -
> >> ${@base_contains("MACHINE_FEATURES", "keyboard", "keymaps", "",
> >> d)} \ +    ${@base_contains("MACHINE_FEATURES", "keyboard",
> >> "${DISTRO_KEYMAPS}", "", d)} \ modutils-initscripts \ netbase \=20
> >> ${VIRTUAL-RUNTIME_login_manager} \ -- 1.7.6.4
> >>=20
> >> _______________________________________________ yocto mailing
> >> list yocto@yoctoproject.org=20
> >> https://lists.yoctoproject.org/listinfo/yocto
> >=20
>=20
> - --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.11 (GNU/Linux)
> Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/
>=20
> iQEcBAEBAgAGBQJO8gLMAAoJEKbMaAwKp3642YkIAJdCxx7ySWjzzpC2+wT3GHEq
> 8CQ2j3C71gPVx/jYs6NxFNxVc/2b1V8WjgVB8y4RNtKwpY3Kn8aw7FGBqPW0fPsT
> 8hB58lCq6ziQlwWqjTQumi0zubRBuWlCt/rs4I/iJwtWQuNdTBAiWy5DdsEdAtv9
> ou2GhGYRyPOKaGeD/2Inw3NQQh/CvcAZDRylU++c29Uo+f8b7jNvdclgS4bdK7It
> RKNpj9l24K892BVVCJNHSqV1NHlq9MZhZwA9Earp6gRmpwz0Ra+CqXuarLenqjrA
> NPppibL4wodNHe0Tx6qCjm7zG7pPiAu7VmjC2OOUAn6ToM+nePP7sS/IHitnsmQ=3D
> =3DfTlx
> -----END PGP SIGNATURE-----

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--KJY2Ze80yH5MUxol
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk7yBaAACgkQN1Ujt2V2gBxBiACfctPtRRBJ+RNOxw5bEoOLGZWP
s8kAn3VxoSYGJf9Lev+WcCJP0a2qophl
=WkyS
-----END PGP SIGNATURE-----

--KJY2Ze80yH5MUxol--
