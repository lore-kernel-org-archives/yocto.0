Return-Path: <Joe.MacDonald@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4913FE00B6D
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 07:28:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s33ERv7o006222
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Apr 2014 07:27:57 -0700 (PDT)
Received: from burninator (128.224.56.80) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 3 Apr 2014 07:27:57 -0700
Received: by burninator (Postfix, from userid 1000)	id C8B404041B; Thu,  3 Apr
	2014 10:27:56 -0400 (EDT)
Date: Thu, 3 Apr 2014 10:27:56 -0400
From: Joe MacDonald <Joe.MacDonald@windriver.com>
To: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
Message-ID: <20140403142756.GI3940@windriver.com>
References: <1396531024-12780-1-git-send-email-joe@deserted.net>
	<1396533882.11779.YahooMailNeo@web122503.mail.ne1.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <1396533882.11779.YahooMailNeo@web122503.mail.ne1.yahoo.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] refpolicy: add versioned directory to	FILESEXTRAPATHS
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
X-List-Received-Date: Thu, 03 Apr 2014 14:28:02 -0000
X-Groupsio-MsgNum: 18830
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GBuTPvBEOL0MYPgd"
Content-Disposition: inline

--GBuTPvBEOL0MYPgd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH] refpolicy: add versioned directory to FI=
LESEXTRAPATHS] On 14.04.03 (Thu 07:04) Vaduva alexandru wrote:

> I also did a similar patch sometime ago, but it is waiting for a merge to
> upstream.

Sorry Vaduva, I didn't see it in the queue.  I'll have another look for
it.

-J.

>=20
> On Thursday, April 3, 2014 4:18 PM, Joe MacDonald <joe@deserted.net> wrot=
e:
> ${PV} is no longer calculated for non-bb/bbappend files, resulting in a
> failure to find any patches in refpolicy-2.20130424/.  Explicitly set the
> path name rather than relying on the ${PV} expansion.
>=20
> Signed-off-by: Joe MacDonald <joe@deserted.net>
> ---
> recipes-security/refpolicy/refpolicy_2.20130424.inc |    2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/
> recipes-security/refpolicy/refpolicy_2.20130424.inc
> index 9e5e426..4ea61fc 100644
> --- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
> +++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
> @@ -4,7 +4,7 @@ SRC_URI =3D "http://oss.tresys.com/files/refpolicy/refpol=
icy-$
> {PV}.tar.bz2;"
> SRC_URI[md5sum] =3D "6a5c975258cc8eb92c122f11b11a5085"
> SRC_URI[sha256sum] =3D
> "6039ba854f244a39dc727cc7db25632f7b933bb271c803772d754d4354f5aef4"
>=20
> -FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpolicy-${PV}:"
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpolicy-2.20130424:"
>=20
> # Fix file contexts for Poky
> SRC_URI +=3D "file://poky-fc-subs_dist.patch \
> --
> 1.7.10.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20

--=20
-Joe MacDonald.
:wq

--GBuTPvBEOL0MYPgd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9b+wACgkQPN8S4W6ZZnfWUgCeMTY+8GiTcbxH+6KwKrWZxXsK
QlUAnRP92YiGEwH90BAxL9nLIJNw1Y1p
=KJEX
-----END PGP SIGNATURE-----

--GBuTPvBEOL0MYPgd--
