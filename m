Return-Path: <joe@deserted.net>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FBE2E0173C
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:20:13 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id k15so3722359qaq.6
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:20:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=qoMy3m1v78ELfAH/hhg6kd6wnnacls0t698wad0l8cU=;
	b=AuinIzkNPIDCiGgYrWG1D01g627A4I8hMxepnIKPPrq9/LDowBYI6RokC9KVblnq7s
	mhn0vB79Ywa9fc0jjG+L7Lpaf01jPJMgsyViZJWi+MrjfRcVRpCTCsMdmgEibQ5kbqh7
	+PW1GfDWJi5FdPQL1aEZkrshW6XschqDaKB0uZUqtHBO4YUUokgEeeql0VrBAzvJ+THj
	ATE6JQoyz/6pCbg2F5ptz6twzF7DKlCawNcAa8ank+HHDC0CIy09tv/CgRaZbsEpAW1R
	FLdoHKw+U8tBwOQ3z99zoftwogBl2Srmhxm7nCxC1bZ0HnMK1kiV+VcxGtBpKV1XFHAJ
	UsHQ==
X-Gm-Message-State: ALoCoQn2amjM7SK8hbWiNXIpeHCcG68d3zdKCaUmfBaPq+ICecAEmpemqo0bmEgbgGR6cL+wlDm3
X-Received: by 10.224.114.129 with SMTP id e1mr7455499qaq.21.1383142813240;
	Wed, 30 Oct 2013 07:20:13 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id kz8sm65012579qeb.0.2013.10.30.07.20.11
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 30 Oct 2013 07:20:12 -0700 (PDT)
Date: Wed, 30 Oct 2013 10:20:09 -0400
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20131030142008.GD3716@deserted.net>
References: <1383090262-7512-1-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1383090262-7512-1-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] Add recipe to build the MCS refpolicy.
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
X-List-Received-Date: Wed, 30 Oct 2013 14:20:18 -0000
X-Groupsio-MsgNum: 16810
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VMt1DrMGOVs3KQwf"
Content-Disposition: inline

--VMt1DrMGOVs3KQwf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I like both this and your follow-up changes, I'd been thinking it was
time to do such a cleanup myself the other day.  So thanks.  :-)

I just had two small things.  One here, one over on the common.inc file.

[[yocto] [meta-selinux][PATCH] Add recipe to build the MCS refpolicy.] On 1=
3.10.29 (Tue 23:44) Philip Tricca wrote:

> This is the default policy type used by most (all?) distros that
> support SELinux.
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  .../refpolicy/refpolicy-mcs_2.20130424.bb          |   23 ++++++++++++++=
++++++
>  1 file changed, 23 insertions(+)
>  create mode 100644 recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
>=20
> diff --git a/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb b/rec=
ipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
> new file mode 100644
> index 0000000..38b78f1
> --- /dev/null
> +++ b/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
> @@ -0,0 +1,23 @@
> +SUMMARY =3D "MCS (Multi Category Security) variant of the SELinux policy"
> +DESCRIPTION =3D "\
> +This is the reference policy for SE Linux built with MCS support. \
> +An MCS policy is the same as an MLS policy but with only one sensitivity=
 \
> +level. This is useful on systems where a hierarchical policy (MLS) isn't=
 \
> +needed (pretty much all systems) but the non-hierarchical categories are=
=2E \
> +"
> +
> +PR =3D "r0"

I don't think we need this, even for the sake of clarity.

-J.

> +
> +POLICY_NAME =3D "mcs"
> +POLICY_TYPE =3D "mcs"
> +POLICY_DISTRO =3D "redhat"
> +POLICY_UBAC =3D "n"
> +POLICY_UNK_PERMS =3D "allow"
> +POLICY_DIRECT_INITRC =3D "n"
> +POLICY_MONOLITHIC =3D "n"
> +POLICY_CUSTOM_BUILDOPT =3D ""
> +POLICY_QUIET =3D "y"
> +
> +POLICY_MCS_CATS =3D "1024"
> +
> +include refpolicy_${PV}.inc
--=20
-Joe MacDonald.
:wq

--VMt1DrMGOVs3KQwf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJxFZgACgkQwFvcllog0XzDJACfVGHUmO0r+QRIsKo1c6nlsxQP
Kf4AoI37qrGD7v9yVVyeN+E+Vg5PoDLG
=vh9q
-----END PGP SIGNATURE-----

--VMt1DrMGOVs3KQwf--
