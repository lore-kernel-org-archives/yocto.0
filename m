Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EE56E014A7
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 14:00:07 -0700 (PDT)
Received: by wgx1 with SMTP id 1so4299653wgx.11
	for <yocto@yoctoproject.org>; Tue, 04 Sep 2012 14:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=vY+qSTECJlD2XpQbNFOqZgo0iFgD5Qhm7KFEYMkB1vI=;
	b=QJqsEvfuNjIf+5SuPKX4+Fz1MX2yEniMdNtrflVAi+tr1Cf5Cn9GKhZG244XL0uLza
	tayEqYpx2FTJFSaIdDDmmV5kmLGvpSJClw+768PQzqRSu8ch6AONDYo6QPeqhgk6dLxl
	P5OdZDlpiI3a2kXp68s490JF/zOdHpERKkCP/FuNz/9HRqt6+wzPmgSVTAtqkPwMhk1T
	G1jE44z+nzKi0cn6qd6rDGSq4y2FU6NuUHghhD2nk6Kd/wjMskY6qTAxBIovKs8axIL8
	ls1qqa6m+sTV3R+/Y8zex6jHNwig7oU0/TuYr8m3oILQZQ5AUIhQ11VYJivL6hssVy4L
	rQJQ==
Received: by 10.216.54.146 with SMTP id i18mr11854434wec.187.1346792405719;
	Tue, 04 Sep 2012 14:00:05 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id cu1sm25959948wib.6.2012.09.04.14.00.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 04 Sep 2012 14:00:04 -0700 (PDT)
Date: Tue, 4 Sep 2012 23:00:33 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Message-ID: <20120904210033.GH3372@jama.jama.net>
References: <1346792241-23600-1-git-send-email-sgw@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <1346792241-23600-1-git-send-email-sgw@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] linux-yocto: Update linux-yocto for 3.2 and 3.4
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
X-List-Received-Date: Tue, 04 Sep 2012 21:00:07 -0000
X-Groupsio-MsgNum: 9089
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5vjQsMS/9MbKYGLq"
Content-Disposition: inline

--5vjQsMS/9MbKYGLq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 04, 2012 at 01:57:19PM -0700, Saul Wold wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    6 ++++++
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    6 ++++++
>  3 files changed, 14 insertions(+), 0 deletions(-)
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
>=20
> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend b/met=
a-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 58a6541..138cc21 100644
> --- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -2,3 +2,5 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> =20
>  # enable the time limited kernel configuration options
>  SRC_URI +=3D "file://time-limited-kernel.cfg"
> +
> +PR .=3D ".1"

why not
PRINC :=3D "${@int(PRINC) + 1}"
?

> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend b/met=
a-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
> new file mode 100644
> index 0000000..138cc21
> --- /dev/null
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
> @@ -0,0 +1,6 @@
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> +
> +# enable the time limited kernel configuration options
> +SRC_URI +=3D "file://time-limited-kernel.cfg"
> +
> +PR .=3D ".1"
> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend b/met=
a-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
> new file mode 100644
> index 0000000..138cc21
> --- /dev/null
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
> @@ -0,0 +1,6 @@
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> +
> +# enable the time limited kernel configuration options
> +SRC_URI +=3D "file://time-limited-kernel.cfg"
> +
> +PR .=3D ".1"
> --=20
> 1.7.7.6
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--5vjQsMS/9MbKYGLq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlBGa/EACgkQN1Ujt2V2gBxCIwCfUqahkdjvRO+LEhlnQ5kp5mHD
ELYAniOpBGwaxyvAPq4vutIM6HeXaNEg
=c7XJ
-----END PGP SIGNATURE-----

--5vjQsMS/9MbKYGLq--
