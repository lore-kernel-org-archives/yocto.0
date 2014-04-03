Return-Path: <joe@deserted.net>
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC1DEE00B74
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 11:54:29 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id i50so1532362qgf.21
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 11:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=ZZBUA8qCCvs2m6fghWih/08wmaTB2LMee7hamgiHvUE=;
	b=eunBPxU3Hs9NlK8I1JZUYj0WMbH5rK+Zjpq/DaG4QCfznYGIz1AXgNdWV1eU/LEwJH
	xBxg9mOz/nmF0vwAoeR29t32VSQMbF5EIoYXNrzWeRQwSr9RBHKQwzRckpA5bFePzeFo
	CoqMctlLxjRVToOkdWZX0GvS7T0SLvvOvO2EauluSpjCF9uVdrB0GXjnXU/GVU9cGm9M
	YykiVjtjWDaoCPhtX1KvKluudNK0SN+YVdthlw+F2mj5XGoI/gNqyR6x0fyxsyoPFNT6
	wPMeFd0WnEETj2OJJvsnM9QUJjZ9lvh45rUi/QDBY8BxxDYd+nb2vfj5qK3Ag9Awneqi
	80pg==
X-Gm-Message-State: ALoCoQn8oKS+byeE/Om0dp4vOxdgxpULqBUp67+kFEPCBJAVUXuWJJ0TBkiowSjYCuGxwgvmB+WP
X-Received: by 10.224.70.19 with SMTP id b19mr6531799qaj.61.1396551269111;
	Thu, 03 Apr 2014 11:54:29 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id e67sm7916068qge.13.2014.04.03.11.54.27
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 03 Apr 2014 11:54:28 -0700 (PDT)
Date: Thu, 3 Apr 2014 14:54:25 -0400
From: Joe MacDonald <joe@deserted.net>
To: Joe Slater <jslater@windriver.com>
Message-ID: <20140403185423.GG4075@deserted.net>
References: <1394744899-23794-1-git-send-email-jslater@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1394744899-23794-1-git-send-email-jslater@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org, joe.slater@windriver.com
Subject: Re: [meta-selinux PATCH 0/1] policycoreutils (semanage)
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
X-List-Received-Date: Thu, 03 Apr 2014 18:54:30 -0000
X-Groupsio-MsgNum: 18837
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GUPx2O/K0ibUojHx"
Content-Disposition: inline

--GUPx2O/K0ibUojHx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux PATCH 0/1] policycoreutils (semanage)] On 14.03.13 (=
Thu 14:08) Joe Slater wrote:

> Fix a failure to modify records if we want to change the seuser
> for a login user.  Just a log issue.
>=20
> I incremented PR.  I think we should either do that are get rid of it.
>=20
> Joe Slater (1):
>   policycoreutils: semanage
>=20
>  .../policycoreutils-semanage-edit-user.patch       |   21 ++++++++++++++=
++++++
>  recipes-security/selinux/policycoreutils_2.2.5.bb  |    3 +-
>  2 files changed, 23 insertions(+), 1 deletions(-)
>  create mode 100644 recipes-security/selinux/policycoreutils/policycoreut=
ils-semanage-edit-user.patch
>=20
> --=20
> 1.7.3.4
>=20
--=20
-Joe MacDonald.
:wq

--GUPx2O/K0ibUojHx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9rl8ACgkQwFvcllog0XzmRQCbBNbd2tburxaZtYO6OSJgHeOs
AMkAn033M2F/cNYU5NXPIzz/a0J2NJ9b
=5JTo
-----END PGP SIGNATURE-----

--GUPx2O/K0ibUojHx--
