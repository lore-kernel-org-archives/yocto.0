Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C11A1E00B8E; Tue,  8 May 2018 09:38:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9119AE0084D
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 09:38:11 -0700 (PDT)
Received: from svr-orw-mbx-07.mgc.mentorg.com ([147.34.90.207])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1fG5cx-00023n-DR from Joe_MacDonald@mentor.com ;
	Tue, 08 May 2018 09:38:11 -0700
Received: from SVR-ORW-MBX-09.mgc.mentorg.com (147.34.90.209) by
	SVR-ORW-MBX-07.mgc.mentorg.com (147.34.90.207) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Tue, 8 May 2018 09:38:09 -0700
Received: from burninator.cal.mentorg.com (147.34.91.1) by
	SVR-ORW-MBX-09.mgc.mentorg.com (147.34.90.209) with Microsoft SMTP
	Server id
	15.0.1320.4 via Frontend Transport; Tue, 8 May 2018 09:38:08 -0700
Received: by burninator.cal.mentorg.com (Postfix, from userid 1000)
	id 68097583962; Tue,  8 May 2018 12:38:08 -0400 (EDT)
Date: Tue, 8 May 2018 12:38:08 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: akuster808 <akuster808@gmail.com>
Message-ID: <20180508163808.m3dovwwvrapmqtcs@mentor.com>
References: <1523758104-25257-1-git-send-email-akuster@mvista.com>
	<43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-800 http://www.vim.org
User-Agent: NeoMutt/20170113 (1.7.2)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] libselinux: python-importlib is now part of python*-core
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
X-List-Received-Date: Tue, 08 May 2018 16:38:13 -0000
X-Groupsio-MsgNum: 41038
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kvd5w4qlwcpa6qdk"
Content-Disposition: inline

--kvd5w4qlwcpa6qdk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH] libselinux: python-importlib is now part=
 of python*-core] On 18.05.07 (Mon 10:20) akuster808 wrote:

>=20
>=20
> On 04/14/2018 07:08 PM, Armin Kuster wrote:
> > Missing or unbuildable dependency chain was: ['meta-world-pkgdata', 're=
storecond', 'libselinux', 'python-importlib']
> >
> > Signed-off-by: Armin Kuster <akuster@mvista.com>
> ping

Hey all,

I'm working through selinux issues now.

-J.

> > ---
> >  recipes-security/selinux/libselinux.inc | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security=
/selinux/libselinux.inc
> > index bd5ce8d..51d0875 100644
> > --- a/recipes-security/selinux/libselinux.inc
> > +++ b/recipes-security/selinux/libselinux.inc
> > @@ -8,7 +8,7 @@ LICENSE =3D "PD"
> >  inherit lib_package pythonnative
> > =20
> >  DEPENDS +=3D "libsepol python libpcre swig-native"
> > -RDEPENDS_${PN}-python +=3D "python-importlib"
> > +RDEPENDS_${PN}-python +=3D "python-core"
> > =20
> >  PACKAGES +=3D "${PN}-python"
> >  FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}/site-pac=
kages/*"
>=20
--=20
-Joe MacDonald.
:wq

--kvd5w4qlwcpa6qdk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEkMd/b97HINT8/zEqSfx99yw59pYFAlrx0nAACgkQSfx99yw5
9pb6ggf/TsQX+Mpc81S40zF1lc0kZp8lLlFIUjXoppNRYKOKedYIVXsFoM6YDEwH
/LwdZll7AlMtoCgtC1r2bS4jJrSKwXSLCUEKhZ34Ivb/6SyJeSAhgTaniae/Ax44
mYp5kR4cls8n0ho5Neg/7Why3y8IP0Mxu/psiMXXxRX3M9JDWeyvXj1I2K8RmEoA
03X3eN3zOl462Q4rjgO6qr7h2T9KtF7IJdvB4HNg40rKXFf/tWGsWyvKqAG52yJI
BAO8aHPeTmEDeXJL40CSp6rQg1HxXARz0oAp2/QPPA8uWFNG2COfOLfMo2/nLHWA
93YvxKfiMioPxbAL4bQ7tHalatz8GQ==
=xFbH
-----END PGP SIGNATURE-----

--kvd5w4qlwcpa6qdk--
