Return-Path: <Joe.MacDonald@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45ACCE0044C
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 05:47:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r8QCln94003048
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 05:47:49 -0700 (PDT)
Received: from yow-jmacdona-d1.ottawa.wrs.com (128.224.146.66) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server
	(TLS) id 14.2.347.0; Thu, 26 Sep 2013 05:47:46 -0700
Received: from yow-jmacdona-l1 (yow-jmacdona-d2.wrs.com [128.224.146.166])	by
	yow-jmacdona-d1.ottawa.wrs.com (Postfix) with ESMTP id 4A37F7FE9;
	Thu, 26 Sep 2013 08:47:23 -0400 (EDT)
Received: by yow-jmacdona-l1 (Postfix, from userid 1000)	id 3B6C640499; Thu,
	26 Sep 2013 08:47:46 -0400 (EDT)
Date: Thu, 26 Sep 2013 08:47:46 -0400
From: Joe MacDonald <Joe.MacDonald@windriver.com>
To: Xin Ouyang <Xin.Ouyang@windriver.com>, Mark Hatle
	<mark.hatle@windriver.com>
Message-ID: <20130926124745.GC4151@windriver.com>
References: <20130926045827.GA1541@longhaul.twobit.us>
MIME-Version: 1.0
In-Reply-To: <20130926045827.GA1541@longhaul.twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] Add util-linux-agetty to core-image-selinux IMAGE_INSTALL.
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
X-List-Received-Date: Thu, 26 Sep 2013 12:47:48 -0000
X-Groupsio-MsgNum: 16243
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="KN5l+BnMqAQyZLvT"
Content-Disposition: inline

--KN5l+BnMqAQyZLvT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

All opposed?  If the motion is carried, I'll merge it both into master
and what will soon become master-next.

-J.

[[yocto] [meta-selinux] Add util-linux-agetty to core-image-selinux IMAGE_I=
NSTALL.] On 13.09.26 (Thu 04:58) Philip Tricca wrote:

> Currently logins to core-image-selinux images through a getty (serial)
> fail. This is caused by the use of the busybox getty. SELinux depends
> on executable files and their labels to transition between types.
> The symlink to busybox is not sufficient to cause the getty processes
> to transition to the right SELinux context. Using a getty binary
> like the one provided by util-linux fixes this.
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-security/images/core-image-selinux.bb |    1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/recipes-security/images/core-image-selinux.bb b/recipes-secu=
rity/images/core-image-selinux.bb
> index 0109933..1ec7b08 100644
> --- a/recipes-security/images/core-image-selinux.bb
> +++ b/recipes-security/images/core-image-selinux.bb
> @@ -6,6 +6,7 @@ LICENSE =3D "MIT"
> =20
>  IMAGE_INSTALL =3D "\
>  	${CORE_IMAGE_BASE_INSTALL} \
> +	util-linux-agetty \
>  	packagegroup-core-basic \
>  	packagegroup-core-selinux \
>  "  =20
--=20
-Joe MacDonald.
:wq

--KN5l+BnMqAQyZLvT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJELPEACgkQPN8S4W6ZZndoNACeOhFI1eVIKTy4yr+KrTyX2pqw
34EAn0GpMw6vc4nMxZ7yBQPz+2+Fi1FX
=w5jw
-----END PGP SIGNATURE-----

--KN5l+BnMqAQyZLvT--
