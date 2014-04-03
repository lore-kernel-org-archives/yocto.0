Return-Path: <joe@deserted.net>
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2014E00B74
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 11:53:14 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id z60so2277484qgd.0
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 11:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=4Sn8uXpuu/mP3GTfyx57TPf17auhxsY0wPtIx+yoJfw=;
	b=At0U5lC8ELu7C/gRRTxGJAKHQoPNv0jT+ulCZmw83B2+pjkpCfjO6UCH5nx61OBGtd
	DASGFbrtb2W916sK0tuGvL/WrO9ed/4a6ItqAsNPfQZhhSpA+EVWUUBMwvw7uECPgm4I
	yDm0oRigU3CufvEL0rOaH2NnI3xmrn7MWQKOO3tziYVl8U/R3CHyxgWtdX/7rNEMk9gQ
	NTdU9LHoUuIc9WVRTfotm+r4E57x2lb7rs94B4LFRkIyyb/HTJjQAJzxMLBLNPPe43RZ
	eioTtZa2sl1ThjenUW5npnlY4SV7xs6QYzMz7nDqfbAc1o6a6OPqAQBKE0FiH8mfvQlk
	hJqw==
X-Gm-Message-State: ALoCoQkuKoFGCZhnycTJFHP8SyTXSndOeWdjtHsI6Leh7bqLuIDu1eGkMGWoTFBGAY/l5hgKmnC/
X-Received: by 10.140.98.233 with SMTP id o96mr8797505qge.86.1396551193995;
	Thu, 03 Apr 2014 11:53:13 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id c61sm3954421qgf.15.2014.04.03.11.53.12
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 03 Apr 2014 11:53:13 -0700 (PDT)
Date: Thu, 3 Apr 2014 14:53:10 -0400
From: Joe MacDonald <joe@deserted.net>
To: Peter Seebach <peter.seebach@windriver.com>
Message-ID: <20140403185309.GF4075@deserted.net>
References: <20140326194546.2d88d3e1@e6410-2>
MIME-Version: 1.0
In-Reply-To: <20140326194546.2d88d3e1@e6410-2>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: meta-selinux/policycoreutils [PATCH 1/1] Add missing dependencies to semanage
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
X-List-Received-Date: Thu, 03 Apr 2014 18:53:17 -0000
X-Groupsio-MsgNum: 18836
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GLp9dJVi+aaipsRk"
Content-Disposition: inline

--GLp9dJVi+aaipsRk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] meta-selinux/policycoreutils [PATCH 1/1] Add missing dependencies =
to semanage] On 14.03.26 (Wed 19:45) Peter Seebach wrote:

> The semanage utility is missing two dependencies, so if your system
> hasn't happened to pick them up, it will install but not be able to
> execute. Add the missing dependencies. (Tested locally using a bbappend
> file.)
>=20
> Note that gzip.py requires python-io. That's already in BPN-python, which=
 is already in RDEPENDS, so I'm not adding it specifically to semanage.
>=20
> The following changes since commit a6079a43719e79e12a57e609923a0cccdba069=
16:
>=20
>   refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)
>=20
> are available in the git repository at:
>=20
>   git://git.yoctoproject.org/poky-contrib seebs/semanage-python-depends
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dseebs/semana=
ge-python-depends
>=20
> Peter Seebach (1):
>   policycoreutils.inc: Add missing dependencies for semanage
>=20
>  recipes-security/selinux/policycoreutils.inc | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> And here's the actual patch:
>=20
> policycoreutils.inc: Add missing dependencies for
>  semanage
>=20
> The semanage utility requires python-compression (for "import gzip")
> and python-xml (for "import xml.etree.ElementTree").
>=20
> Signed-off-by: Peter Seebach <peter.seebach@windriver.com>
> ---
>  recipes-security/selinux/policycoreutils.inc | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-secur=
ity/selinux/policycoreutils.inc
> index 56470e9..521e70b 100644
> --- a/recipes-security/selinux/policycoreutils.inc
> +++ b/recipes-security/selinux/policycoreutils.inc
> @@ -75,6 +75,8 @@ RDEPENDS_${BPN}-secon +=3D "libselinux"
>  RDEPENDS_${BPN}-semanage =3D "\
>  	python-core \
>  	python-ipy \
> +	python-compression \
> +	python-xml \
>  	${BPN}-python \
>  	libselinux-python \
>  "
> --=20
> 1.8.3.4
>=20
>=20
> --=20
> Listen, get this.  Nobody with a good compiler needs to be justified.
--=20
-Joe MacDonald.
:wq

--GLp9dJVi+aaipsRk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9rhUACgkQwFvcllog0XwQ2QCeLz5sw66EVgpmxG8APiB3jq4d
6H0An2TGg+ETy+mcWnSJnLjox9olPBzn
=U81H
-----END PGP SIGNATURE-----

--GLp9dJVi+aaipsRk--
