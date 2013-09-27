Return-Path: <joe@deserted.net>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7819DE01536
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 11:08:18 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id ex4so1230680wid.8
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 11:08:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=FYy054QYIQUHLQ6Ms1ubvvtNUAr7BTVuiPcsFTqLggA=;
	b=czB12HPoQLCPobOM35So+guxVgwmFBNkNOUDu0u7228MfsGAc1txilkoR52+xwuIQk
	nxgx2lYBNmCStCYjWPQSSvvcV83unPxf3gPZoY4okz6lOQl50KC4ldpO+HWagii5m4Wj
	wCREUrF5hGMcOyt9FJLxVlTzWxWhSmM5OQneg9e6xcoXP3xsnRH+0q7keUtNBKNU1jWr
	95yw2B1J0H3gp7kP58pLGF7gd0+dx3XFO2h3E7wYREaJkn6JycfunajwYABFw8IyGgrj
	xK7dRebT5ym9WOLCP4zURc2ImZYdmts28g8YfVpLPMUfgHPDQjU7N65zbhhZBSIdpFyP
	PaeA==
X-Gm-Message-State: ALoCoQmu7RnzwRj4ATzwoRzuJ+p3PPTlSnB/0sHfb6kqRBpTQghxqjF0U+qzzRqtrf403u7Mn5fB
X-Received: by 10.180.185.10 with SMTP id ey10mr3665620wic.29.1380305297403;
	Fri, 27 Sep 2013 11:08:17 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id b11sm40820359wik.1.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 27 Sep 2013 11:08:16 -0700 (PDT)
Date: Fri, 27 Sep 2013 14:08:12 -0400
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20130927180811.GF7238@deserted.net>
References: <20130927014017.GA11590@longhaul.twobit.us>
MIME-Version: 1.0
In-Reply-To: <20130927014017.GA11590@longhaul.twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] Add ${bindir}/sepolgen to system-config-selinux package.
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
X-List-Received-Date: Fri, 27 Sep 2013 18:08:19 -0000
X-Groupsio-MsgNum: 16275
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oPmsXEqKQNHCSXW7"
Content-Disposition: inline

--oPmsXEqKQNHCSXW7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

And this one merged too.  Thanks.

-J.

[[yocto] [meta-selinux] Add ${bindir}/sepolgen to system-config-selinux pac=
kage.] On 13.09.27 (Fri 01:40) Philip Tricca wrote:

> Currently the policycoreutils package has a broken link from
> ${bindir}/sepolgen to ${datadir}/system-config-selinux/polgen.py.
> All of the other polgen stuff is in system-config-selinux so
> adding sepolgen to same package seems like the right thing to do.
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-security/selinux/policycoreutils.inc |    5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-secur=
ity/selinux/policycoreutils.inc
> index 08b14eb..7939095 100644
> --- a/recipes-security/selinux/policycoreutils.inc
> +++ b/recipes-security/selinux/policycoreutils.inc
> @@ -48,7 +48,10 @@ FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEV=
ERSION}/site-packages/*"
>  FILES_${PN}-sandbox =3D "${datadir}/sandbox/*"
>  FILES_${PN}-sandbox +=3D "${bindir}/sandbox"
>  FILES_${PN}-sandbox +=3D "${sbindir}/seunshare"
> -FILES_system-config-selinux =3D "${datadir}/system-config-selinux/*"
> +FILES_system-config-selinux =3D " \
> +    ${bindir}/sepolgen \
> +    ${datadir}/system-config-selinux/* \
> +"
> =20
>  inherit pythonnative
> =20
--=20
-Joe MacDonald.
:wq

--oPmsXEqKQNHCSXW7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJFyYsACgkQwFvcllog0Xzc/QCeNFd8MM5ZQP+micXB8q2wcOzC
cJsAniaA6XDuBbrhbhNt3pkwYmS8F3cY
=XOZU
-----END PGP SIGNATURE-----

--oPmsXEqKQNHCSXW7--
