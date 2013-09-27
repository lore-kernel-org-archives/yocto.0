Return-Path: <joe@deserted.net>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E151AE01536
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 11:07:10 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id cb5so1230038wib.4
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 11:07:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=3JxHQ5KqBzW7fSYfnrgygsDMlefP0hGfga40dRtZkbo=;
	b=mFVGROvqPCXViuTc0n7+P0mF8yskMB5JX47XMuz1LxJmjBieFmQtxhUDCPHRazI2Px
	HtC40oJ6dFI/oTmzk05gdnlGt0eK6zaTo8d45O8AHgtojZhmFnqeDx+7wvKaPx9Bo1fU
	ikMUi1vFeGXJMbkrLuxgfrOZoQHD5dEq90vtsJDO5fguD3zLpUXvK/Tiab9wqnitObgP
	zH8dK4E/N+0HalD0e7i//KRcjAMlw/nfwl2DiPLEgLwKuM1nE4EANt6UlrpiAO2Rwhb9
	XfGrA/gRYI0s67l2IbUw3T8VLhjgMoovuld974kKtTb/uFnLmPC3wT9Lp3V2euUiQvFW
	Ab1g==
X-Gm-Message-State: ALoCoQlTTxm7xPkqhXNSGA0hVwgLZq6mSwLtEb7wBxRm01LJkOAoGsAo4g7xHQN5wya0HlDdO/A0
X-Received: by 10.180.103.103 with SMTP id fv7mr3651667wib.38.1380305229996;
	Fri, 27 Sep 2013 11:07:09 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id ey2sm16211380wib.5.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 27 Sep 2013 11:07:09 -0700 (PDT)
Date: Fri, 27 Sep 2013 14:07:05 -0400
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20130927180703.GE7238@deserted.net>
References: <20130926211041.GA2431@longhaul.twobit.us>
MIME-Version: 1.0
In-Reply-To: <20130926211041.GA2431@longhaul.twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] Resend: Install policy headers and include them in the refpolicy dev package.
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
X-List-Received-Date: Fri, 27 Sep 2013 18:07:12 -0000
X-Groupsio-MsgNum: 16274
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EXKGNeO8l0xGFBjy"
Content-Disposition: inline

--EXKGNeO8l0xGFBjy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Also merged, thanks.
-J.

[[yocto] [meta-selinux] Resend: Install policy headers and include them in =
the refpolicy dev package.] On 13.09.26 (Thu 21:10) Philip Tricca wrote:

> To do this we call the 'install-headers' make target at the end of
> do_install. We then add the interface 'include' directory to the
> dev package leaving only the policy modules in the main policy
> package. This allows projects that ship their own SELinux policy
> (not in the refpolicy) to build the refpolicy headers / interface
> files by using the Makefile supplied by refpolicy.
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-security/refpolicy/refpolicy_common.inc |    6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-se=
curity/refpolicy/refpolicy_common.inc
> index 2c8891a..0f9f83b 100644
> --- a/recipes-security/refpolicy/refpolicy_common.inc
> +++ b/recipes-security/refpolicy/refpolicy_common.inc
> @@ -12,7 +12,8 @@ SRC_URI +=3D "file://customizable_types \
>  S =3D "${WORKDIR}/refpolicy"
> =20
>  FILES_${PN} =3D "${sysconfdir}/selinux/${POLICY_NAME}/ \
> -	${datadir}/selinux/${POLICY_NAME}/"
> +	${datadir}/selinux/${POLICY_NAME}/*.pp"
> +FILES_${PN}-dev =3D+ "${datadir}/selinux/${POLICY_NAME}/include/"
> =20
>  DEPENDS +=3D "checkpolicy-native policycoreutils-native m4-native"
>  RDEPENDS_${PN} +=3D "policycoreutils selinux-config"
> @@ -75,4 +76,7 @@ EOF
> =20
>  	cat ${WORKDIR}/customizable_types >> \
>  		${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/customizable_types
> +
> +	# install policy headers
> +	oe_runmake install-headers DESTDIR=3D${D}
>  }
--=20
-Joe MacDonald.
:wq

--EXKGNeO8l0xGFBjy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJFyUcACgkQwFvcllog0XyjwwCfYNW5y0d3RfjmUxkmL38Jwop6
ByQAni3faSuczjTWbu6xOLolpdvzF8fV
=W36v
-----END PGP SIGNATURE-----

--EXKGNeO8l0xGFBjy--
