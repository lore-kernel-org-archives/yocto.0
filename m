Return-Path: <joe@deserted.net>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0CAAE00746
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 19:26:34 -0800 (PST)
Received: by mail-ie0-f172.google.com with SMTP id rd18so787788iec.3
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 19:26:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=XjTPqt5ye1wdv8pFXpD2VCI4MSSgFpHXaVn/MzmZsf0=;
	b=ZPHkDb3c1Hu4ayAI0KVuNBaWYnXb8u31k6stJy0Qw7N5ZcLj7ClF4hS9tikpyUm0Qc
	HXRPXVU3Ehb5VgXgINDipicjqDyredVe1zbWek7+FvVPETEFNGu3LqChHeZEBDyrguQ0
	dopvAiW4kO7dUtNT8A3fApYNrxF1SG7xmusTWd3CbkljMEIwN06ZrojCfyNmaSGxglZU
	X5uSxjLXsTRqFuo4lRr6Q4zvK7gln5HE6stK43JkHmmayz5tERYMS+Wxp8GOpN7M/ciC
	Y+Tx93porqRuMUYDwhu2D78OpSURAMIJuGw34xM3anJqz2k6jiHvMCFKnbvFX/d0yEgq
	lTQA==
X-Gm-Message-State: ALoCoQmCuaV9L6iDLWsnjw/KFRAPYQl+TPVPqH5Ry4Pd4NYwUF1Ol0WoAKBXyN+57Hu/0lqVftOC
X-Received: by 10.50.47.79 with SMTP id b15mr472404ign.12.1392348393517;
	Thu, 13 Feb 2014 19:26:33 -0800 (PST)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id bf7sm558001igb.9.2014.02.13.19.26.32
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 13 Feb 2014 19:26:32 -0800 (PST)
Date: Thu, 13 Feb 2014 22:26:30 -0500
From: Joe MacDonald <joe@deserted.net>
To: wenzong.fan@windriver.com
Message-ID: <20140214032627.GK23405@deserted.net>
References: <cover.1392278548.git.wenzong.fan@windriver.com>
	<fff8c6f836d66296e4e78ab30c05de1e89f96c6f.1392278548.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
In-Reply-To: <fff8c6f836d66296e4e78ab30c05de1e89f96c6f.1392278548.git.wenzong.fan@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 1/1] refpolicy: fix real path for su.shadow
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
X-List-Received-Date: Fri, 14 Feb 2014 03:26:39 -0000
X-Groupsio-MsgNum: 18110
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gwtGiOGliFx8mAnm"
Content-Disposition: inline

--gwtGiOGliFx8mAnm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux][PATCH 1/1] refpolicy: fix real path for su.shadow] =
On 14.02.13 (Thu 03:09) wenzong.fan@windriver.com wrote:

> From: Wenzong Fan <wenzong.fan@windriver.com>
>=20
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>  .../poky-fc-fix-real-path_su.patch                 |   25 ++++++++++++++=
++++++
>  .../refpolicy/refpolicy_2.20130424.inc             |    1 +
>  2 files changed, 26 insertions(+)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-=
fc-fix-real-path_su.patch
>=20
> diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-=
real-path_su.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-f=
c-fix-real-path_su.patch
> new file mode 100644
> index 0000000..b0392ce
> --- /dev/null
> +++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-real-pa=
th_su.patch
> @@ -0,0 +1,25 @@
> +From 4affa5e9797f5d51597c9b8e0f2503883c766699 Mon Sep 17 00:00:00 2001
> +From: Wenzong Fan <wenzong.fan@windriver.com>
> +Date: Thu, 13 Feb 2014 00:33:07 -0500
> +Subject: [PATCH] fix real path for su.shadow command
> +
> +Upstream-Status: Inappropriate [only for Poky]
> +
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> +---
> + policy/modules/admin/su.fc |    2 ++
> + 1 file changed, 2 insertions(+)
> +
> +diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
> +index a563687..0f43827 100644
> +--- a/policy/modules/admin/su.fc
> ++++ b/policy/modules/admin/su.fc
> +@@ -4,3 +4,5 @@
> +=20
> + /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
> + /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
> ++
> ++/bin/su.shadow		--	gen_context(system_u:object_r:su_exec_t,s0)
> +--=20
> +1.7.9.5
> +
> diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipe=
s-security/refpolicy/refpolicy_2.20130424.inc
> index 23339e3..9e5e426 100644
> --- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
> +++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
> @@ -30,6 +30,7 @@ SRC_URI +=3D "file://poky-fc-subs_dist.patch \
>              file://poky-fc-udevd.patch \
>              file://poky-fc-rpm.patch \
>              file://poky-fc-ftpwho-dir.patch \
> +            file://poky-fc-fix-real-path_su.patch \
>             "
> =20
>  # Specific policy for Poky
--=20
-Joe MacDonald.
:wq

--gwtGiOGliFx8mAnm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlL9jOMACgkQwFvcllog0Xx3bACglnFSiaOa2P1foipSYfEgGyfx
ieUAn25R9MvI45aPmvAR+rOkv5Nhc5OI
=hIk0
-----END PGP SIGNATURE-----

--gwtGiOGliFx8mAnm--
