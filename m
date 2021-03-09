Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.10719.1615303938115919479
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 07:32:18 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 198.145.29.25, mailfrom: joe@deserted.net)
Received: from esa3.mentor.iphmx.com (esa3.mentor.iphmx.com [68.232.137.180])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D507438C052B
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 15:32:16 +0000 (UTC)
IronPort-SDR: nCcagGrqa/7IC0s+kn63FL4mpLkMvNtLvOCNkCeSRbQE1YK1S4S0kil2VpqjPrPrAXT79mihGE
 zNIefC6qBqHInuhVoD9kN6WaFqam5j0VvRPCL/Fxc+62bu3p4UxmQ258rliocYrUN8/6aEER9R
 Wfvq6zu2doD11ghQu1pYfet9P20+yxQ6r2gXDA3aDaYpzcBwjoTdBN1sUJu63dhzCCn9G7+VZH
 u9+8bYe+OG8OgA8mGbB7Dftubedrmqhxc7r2E0LtPtk3GsIkdyvKHKanMGVP0jbpN9l4gf0KGU
 ztY=
X-IronPort-AV: E=Sophos;i="5.81,234,1610438400"; 
   d="asc'?scan'208";a="58901788"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa3.mentor.iphmx.com with ESMTP; 09 Mar 2021 07:32:13 -0800
IronPort-SDR: 1ma8XYupR4tpvqWD0Z+8KoTs03XwxdXzPTWZLPTSkHNidjP6xMf+o1pJlTGT2m+lT7NWd6vg9C
 lbdsgO8t1MmKODL0mLKT3Omb/ywGqxHXPH3ZLwcM1HoftUU+Cm4sl8yhZjJUpKyHhqQ6fDDEUf
 cOjmF91WnWEUavmJ5YC+HzkGbLNJ+5QKt0kLBMb7mvQcdDRBe8F6Dqko88htvfEVqX3NnIwuEQ
 eefCzvyh4CqW5GahohCfY+LvppyPAKVLZoWV0eOpCyWe++eJcjSY0lqTdAjH4ZPIMUbqgVUifl
 O5o=
Date: Tue, 9 Mar 2021 10:32:09 -0500
From: "Joe MacDonald" <joe@deserted.net>
To: Anatol Belski <anbelski@linux.microsoft.com>
CC: <yocto@yoctoproject.org>, <yi.zhao@windriver.com>
Subject: Re: [yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux-python: Fix build error due to missing target config
Message-ID: <20210309153208.GB9162@deserted.net>
References: <20210309115511.7522-1-anbelski@linux.microsoft.com>
 <20210309130043.GA9162@deserted.net>
 <02b457c2-5719-ab43-8f23-e414aadff4d1@linux.microsoft.com>
MIME-Version: 1.0
In-Reply-To: <02b457c2-5719-ab43-8f23-e414aadff4d1@linux.microsoft.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Groupsio-MsgNum: 52628
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WYTEVAkct0FjGQmd"
Content-Disposition: inline

--WYTEVAkct0FjGQmd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux-=
python: Fix build error due to missing target config] On 21.03.09 (Tue 14:5=
3) Anatol Belski wrote:

> Hi Joe,
>=20
> thanks for the quick check. The patch applies fine to dunfell and
> gatesgarth, master has the changed recipe version in the bb name. I was
> about to rebase to master but pulling shows already did it. I was too sl=
ow
> :) thanks for the quick fix.

No problem!  I assumed you were working on a just-slightly-out-of-date
master branch and my work tree already had your patch half applied when
the 'git am' failed, so I just finished that part up.

I'll get to the other branches in a bit.

-Joe.

>=20
> Regards
>=20
> Anatol
>=20
> On 3/9/2021 2:00 PM, Joe MacDonald wrote:
> > Hi Anatol,
> >=20
> > I will confirm this against the other branches (dunfell and gatesgarth=
)
> > but your patch doesn't appear to be against the current master branch =
(and
> > it's unlikely one patch will apply to all branches).  Can you send out
> > specific patches against the head of tree for each branch you care abo=
ut,
> > please?  Then I can get them merged for you.
> >=20
> > Thanks,
> > -Joe.
> >=20
> > [[yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux=
-python: Fix build error due to missing target config] On 21.03.09 (Tue 11:=
55) Anatol Belski wrote:
> >=20
> > > This fixes the error below:
> > >=20
> > > gcc: error: unrecognized command line option
> > > =E2=80=98-fmacro-prefix-map=3D/path/to/build/libselinux-python/3.0-r=
0=3D/usr/src/debug/libselinux-python/3.0-r0=E2=80=99
> > >=20
> > > Without inheriting the config, supposedly a wrong compiler is used.
> > >=20
> > > Signed-off-by: Anatol Belski <anbelski@linux.microsoft.com>
> > > ---
> > >   recipes-security/selinux/libselinux-python_3.0.bb | 2 ++
> > >   1 file changed, 2 insertions(+)
> > >=20
> > > diff --git a/recipes-security/selinux/libselinux-python_3.0.bb b/rec=
ipes-security/selinux/libselinux-python_3.0.bb
> > > index 2b5438d..3c03df1 100644
> > > --- a/recipes-security/selinux/libselinux-python_3.0.bb
> > > +++ b/recipes-security/selinux/libselinux-python_3.0.bb
> > > @@ -4,6 +4,8 @@ SRC_URI =3D "https://github.com/SELinuxProject/selin=
ux/releases/download/${SELINUX
> > >   require ${BPN}.inc
> > > +inherit python3targetconfig
> > > +
> > >   LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e77=
5a270d0d0"
> > >   SRC_URI[md5sum] =3D "b387a66f087b6d97713570e85ec89d89"
> > > --=20
> > > 2.17.1
> > >=20
> > >=20
> > >=20
> >=20

--=20
-Joe MacDonald.
:wq

--WYTEVAkct0FjGQmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCYEeU+AAKCRDAW9yWWiDR
fBfKAJ9IiBhbDkEf4aLkPHuAJzs/qyjWcQCeOybueYcVgZQWUIINq34hlbDkH4g=
=QflE
-----END PGP SIGNATURE-----

--WYTEVAkct0FjGQmd--
