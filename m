Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65607E00D35; Thu, 29 Aug 2019 07:27:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [68.232.137.180 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 29 Aug 2019 07:27:08 PDT
Received: from esa3.mentor.iphmx.com (esa3.mentor.iphmx.com [68.232.137.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56BFDE0097C
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 07:27:08 -0700 (PDT)
IronPort-SDR: 0u2KrvqrfuOoTfNXY/4RF2n+Ypk2lnzexdECxqZttO0Qx1kLVE8wbQkEGRm55QMi0T4uLGtTzX
	TYZbxS3wClI8ADDqvqWYSOE1WeKTw2E7qp189OB+GeYov9zY6Kx1QxmM2SF/ZlV3hdRCTf0ax2
	fz+byO8ZjsuBos1jS0rCfFH0bK7Acx/+VeR8sP/VoX/+Hs3RHVmJBoPxHH8Q2aH9GUJs6xq/SO
	I1itzkhzh3xrhsAirTErk3ppzNmwpOeFN6kifRqMdiZJjnj6u02Bh9bwSafln5m4zvYi9c0QkQ
	OhE=
X-IronPort-AV: E=Sophos;i="5.64,443,1559548800"; 
	d="asc'?scan'208";a="40873507"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
	by esa3.mentor.iphmx.com with ESMTP; 29 Aug 2019 06:25:57 -0800
IronPort-SDR: yaDcSbTChXS2b3BsyzRcKuU9sQqkZP/UxBUMt+qdUJku6eRZTRy7/SlzmSXzEMT/Yw9u2o7ZlO
	65EMm1JUrZc7HYeQwBMCcx68vhdRMaSKGcByrWHgm9C/xY7bcZrQKsH+aImPFIQCNieuZg8xUn
	xafxnyJ4wdIbFD/Ddycz5NVJ7m7kloxD5DkHXPDPHGqDQv0NwF5p+CDv/F86pw45d34KtO50Xw
	urk9J+9NzDX175Dy3EtOhG9U3DfTqaS0Gm7HjUO3niuvCN/3gZVA+Xq5+/RuTR4LnackA2jvS8
	2RQ=
Date: Thu, 29 Aug 2019 10:25:53 -0400
From: Joe MacDonald <joe@deserted.net>
To: akuster808 <akuster808@gmail.com>
Message-ID: <20190829142551.GA34991@deserted.net>
References: <20190829054108.12642-1-yuanc.fnst@cn.fujitsu.com>
	<754c1003-89ef-cf33-2508-d58c55947b99@gmail.com>
MIME-Version: 1.0
In-Reply-To: <754c1003-89ef-cf33-2508-d58c55947b99@gmail.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] [PATCH] python-scapy: upgrade 2.4.2 -> 2.4.3
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
X-List-Received-Date: Thu, 29 Aug 2019 14:27:09 -0000
X-Groupsio-MsgNum: 46442
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline

--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux] [PATCH] python-scapy: upgrade 2.4.2 -> 2.4.3] O=
n 19.08.29 (Thu 07:14) akuster808 wrote:

>=20
>=20
> On 8/28/19 10:41 PM, Yuan Chao wrote:
> > License file changed from bin/scapy to LICENSE
> Is this the correct layer?

There's no scapy in meta-selinux, AFAIK.  So proably this was destined
for meta-security instead.

-J.

>=20
> -armin
> >
> > Signed-off-by: Yuan Chao <yuanc.fnst@cn.fujitsu.com>
> > ---
> >  recipes-security/scapy/python-scapy.inc                       | 4 ++--
> >  .../scapy/{python-scapy_2.4.2.bb =3D> python-scapy_2.4.3.bb}    | 0
> >  .../scapy/{python3-scapy_2.4.2.bb =3D> python3-scapy_2.4.3.bb}  | 0
> >  3 files changed, 2 insertions(+), 2 deletions(-)
> >  rename recipes-security/scapy/{python-scapy_2.4.2.bb =3D> python-scapy=
_2.4.3.bb} (100%)
> >  rename recipes-security/scapy/{python3-scapy_2.4.2.bb =3D> python3-sca=
py_2.4.3.bb} (100%)
> >
> > diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security=
/scapy/python-scapy.inc
> > index baa69b2..28e13f2 100644
> > --- a/recipes-security/scapy/python-scapy.inc
> > +++ b/recipes-security/scapy/python-scapy.inc
> > @@ -3,11 +3,11 @@ DESCRIPTION =3D "Scapy is a powerful interactive pack=
et manipulation program. It i
> >  SECTION =3D "security"
> >  LICENSE =3D "GPLv2"
> > =20
> > -LIC_FILES_CHKSUM =3D "file://bin/scapy;beginline=3D9;endline=3D13;md5=
=3D1d5249872cc54cd4ca3d3879262d0c69"
> > +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Db234ee4d69f5fce4486a80fdaf4=
a4263"
> > =20
> >  S =3D "${WORKDIR}/git"
> > =20
> > -SRCREV =3D "bad14cb1a5aee29f8107fbe8ad008d4645f14da7"
> > +SRCREV =3D "3047580162a9407ef05fe981983cacfa698f1159"
> >  SRC_URI =3D "git://github.com/secdev/scapy.git"
> > =20
> >  inherit ptest
> > diff --git a/recipes-security/scapy/python-scapy_2.4.2.bb b/recipes-sec=
urity/scapy/python-scapy_2.4.3.bb
> > similarity index 100%
> > rename from recipes-security/scapy/python-scapy_2.4.2.bb
> > rename to recipes-security/scapy/python-scapy_2.4.3.bb
> > diff --git a/recipes-security/scapy/python3-scapy_2.4.2.bb b/recipes-se=
curity/scapy/python3-scapy_2.4.3.bb
> > similarity index 100%
> > rename from recipes-security/scapy/python3-scapy_2.4.2.bb
> > rename to recipes-security/scapy/python3-scapy_2.4.3.bb
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
-Joe MacDonald.
Linux Architect | Mentor=AE A Siemens Business
:wq

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXWfgbwAKCRDAW9yWWiDR
fMjEAKCvnU/f2LQs2fFTSiuE6y8NdvXF8QCgoukpASXa8rF61Bg1KITYr+1yfyY=
=TIXL
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--
