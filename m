Return-Path: <joe@deserted.net>
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D72FE00B81
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 12:05:54 -0700 (PDT)
Received: by mail-qc0-f172.google.com with SMTP id i8so2394732qcq.3
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 12:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=XZ9SuKfKYKfVtf/ZUZvHtQSSFuZfZwkjhF1rYTXDRwU=;
	b=KK7OeqgofEbGnEjUXaTMFI+Y7t3TQdC5Ia+abjyrOTg79fomZ1H0J8GdiELQ3x7fQ+
	85+YP5BoWwC8b2EDQo0DJuFLyf8wvGkjIIsBn2J1zyMEKqhoOjvt3fcUhExXnyWHjwfJ
	ZAQS2t4hM8UB3shVGEVe32pgUa+3I8Nh+v3Ft5ktPWFxhI/qcvkYLk3ij7wsQUemNmyB
	vxD6D8zLhLXvTKHG5R8tW/M7gBBIawhzAz3SlJUMUOTYTpJujKeLJM9ASLvl35plgJZG
	fFTvc+pz3icelSulQd0bKZXtmg3PSSm5qVV85BQgbNQ81yCedvpM+yO/1UpsQnpGDyyQ
	Eqyg==
X-Gm-Message-State: ALoCoQkETKEvAvCCUi/f8GrgeEJbWGuMHN1/jPD4t5SC8Vo0WqJAudbegQ64hJThHWV2O0asaxxI
X-Received: by 10.140.26.242 with SMTP id 105mr4306995qgv.92.1396551953865;
	Thu, 03 Apr 2014 12:05:53 -0700 (PDT)
Received: from deserted.net ([128.224.252.2]) by mx.google.com with ESMTPSA id
	z10sm11614720qaf.33.2014.04.03.12.05.52 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 03 Apr 2014 12:05:53 -0700 (PDT)
Date: Thu, 3 Apr 2014 15:05:50 -0400
From: Joe MacDonald <joe@deserted.net>
To: rongqing.li@windriver.com
Message-ID: <20140403190548.GI4075@deserted.net>
References: <cover.1392431823.git.rongqing.li@windriver.com>
MIME-Version: 1.0
In-Reply-To: <cover.1392431823.git.rongqing.li@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/1] refpolicy: allow sysadm to run rpcbind
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
X-List-Received-Date: Thu, 03 Apr 2014 19:05:55 -0000
X-Groupsio-MsgNum: 18839
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zqjkMoGlbUJ91oFe"
Content-Disposition: inline

--zqjkMoGlbUJ91oFe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux][PATCH 0/1] refpolicy: allow sysadm to run rpcbind] =
On 14.02.15 (Sat 10:38) rongqing.li@windriver.com wrote:

> From: Roy Li <rongqing.li@windriver.com>
>=20
> The following changes since commit b032f0898f3e61f34c9f7fde9445ad3ee0d976=
c8:
>=20
>   refpolicy: make proftpd be able to work (2014-02-14 14:04:46 +0800)
>=20
> are available in the git repository at:
>=20
>   git://git.pokylinux.org/poky-contrib roy/rpcbind
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Droy/rpcbind
>=20
> Roy Li (1):
>   refpolicy: allow sysadm to run rpcbind
>=20
>  .../poky-policy-allow-sysadm-to-run-rpcinfo.patch  |   33 ++++++++++++++=
++++++
>  .../refpolicy/refpolicy_2.20130424.inc             |    1 +
>  2 files changed, 34 insertions(+)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-=
policy-allow-sysadm-to-run-rpcinfo.patch
>=20
--=20
-Joe MacDonald.
:wq

--zqjkMoGlbUJ91oFe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9sQwACgkQwFvcllog0Xz7FgCeOk5gxbYmiiJSmWRSUdFk4OJ3
4ZEAn3L99+93L7L0sqR5H5PeXUEkA6O8
=1AwU
-----END PGP SIGNATURE-----

--zqjkMoGlbUJ91oFe--
