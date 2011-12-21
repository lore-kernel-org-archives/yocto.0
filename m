Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEC8DE0072A
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 02:09:23 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wibhq4 with SMTP id hq4so2589486wib.35
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 02:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=tggwiwR7P051RpmCqHPq4tTGag5mOlvTH8tpjNbRaAE=;
	b=PxEHFPNE4yScpkZWxCf9G4h+v7gW52+r0wWA+jcDBb+YgmH2CNwj43FSANOwhZnGw4
	UQY5FExZHCjV0Eb+DtYewn8n8i6vk6TzeG439ab8kbSuOiPqIjvrnma/J5FEpFzGuZSm
	LGdYBvz1vPkkbobq0Nw7LnX3A5wbKDtV8o2vI=
Received: by 10.180.107.134 with SMTP id hc6mr10235324wib.21.1324462162750;
	Wed, 21 Dec 2011 02:09:22 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id en10sm1385213wbb.11.2011.12.21.02.09.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 21 Dec 2011 02:09:21 -0800 (PST)
Date: Wed, 21 Dec 2011 11:09:09 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20111221100909.GD12791@jama.jama.net>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<2ad76233b10f9e4a61a6ecb5490f92fecdc1f1e1.1324456294.git.dvhart@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <2ad76233b10f9e4a61a6ecb5490f92fecdc1f1e1.1324456294.git.dvhart@linux.intel.com>
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
X-List-Received-Date: Wed, 21 Dec 2011 10:09:24 -0000
X-Groupsio-MsgNum: 3923
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Xm/fll+QQv+hsKip"
Content-Disposition: inline

--Xm/fll+QQv+hsKip
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 21, 2011 at 01:02:51AM -0800, Darren Hart wrote:
> NOTE: I'm looking for a better way to do this.
>=20
> keymaps pulls in gettext, which can't build without wide character suppor=
t.
>=20
> Rather than have to add a -tiny variant of every MACHINE to drop "keyboar=
d" from
> the MACHINE_FEATURES, just enable the DISTRO to define what gets added to
> RDEPENDS_task-core-boot when MACHINE_FEATURES includes keyboard. By defau=
lt,
> keep "keymaps", but use DISTRO_KEYMAPS if it is set (to "" for example).
>=20
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  meta/recipes-core/tasks/task-core-boot.bb |    7 ++++++-
>  1 files changed, 6 insertions(+), 1 deletions(-)
>=20
> diff --git a/meta/recipes-core/tasks/task-core-boot.bb b/meta/recipes-cor=
e/tasks/task-core-boot.bb
> index 05c280d..e097836 100644
> --- a/meta/recipes-core/tasks/task-core-boot.bb
> +++ b/meta/recipes-core/tasks/task-core-boot.bb
> @@ -17,6 +17,11 @@ PR =3D "r9"
>  MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?=3D ""
>  MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?=3D ""
> =20
> +#
> +# Set by the distro configuration to empty if not supported
> +#
> +DISTRO_KEYMAPS ?=3D "keymaps"

Why not VIRTUAL-RUNTIME_keymaps like everywhere else?

Cheers,

> +
>  # Distro can override dev_manager provider
>  VIRTUAL-RUNTIME_dev_manager ?=3D "udev"
>  # Distro can override login_manager provider
> @@ -37,7 +42,7 @@ RDEPENDS_task-core-boot =3D "\
>      base-passwd \
>      busybox \
>      ${VIRTUAL-RUNTIME_initscripts} \
> -    ${@base_contains("MACHINE_FEATURES", "keyboard", "keymaps", "", d)} \
> +    ${@base_contains("MACHINE_FEATURES", "keyboard", "${DISTRO_KEYMAPS}"=
, "", d)} \
>      modutils-initscripts \
>      netbase \
>      ${VIRTUAL-RUNTIME_login_manager} \
> --=20
> 1.7.6.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Xm/fll+QQv+hsKip
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk7xsEUACgkQN1Ujt2V2gBzyeACcCrPkHQJJCEdlrg4I6JJATNKp
ji0An0mX1kCaiaNFW0EPvdZID0EkjCS+
=fL+I
-----END PGP SIGNATURE-----

--Xm/fll+QQv+hsKip--
