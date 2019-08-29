Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB3BAE00C9C; Thu, 29 Aug 2019 10:44:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [68.232.137.252 listed in list.dnswl.org]
Received: from esa4.mentor.iphmx.com (esa4.mentor.iphmx.com [68.232.137.252])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 380DFE0097C
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 10:44:23 -0700 (PDT)
IronPort-SDR: a2SaoiGc4kB+yyHxvODWUfhU+zAXf50mTzCcRwXRUAbX7MlzYDEQd3YqYIVQ/j8grKR7jVLuEH
	qAyDk6Kle6MuoK3p6fcoVcBqPASKmFE5REoJAeNqJGJ6FmeDL8fFOkuj6ptRPH7pQWqlwKnI8c
	u5f5gtCe5GO8teQ+21gpPHwLXK4NgrMRmHXvN/QGSFl2NaymCUKih0Z/BcX877juecyr38mYSf
	CBfnyZ1LhTHPiLs18IGWxlglJ6mqS7Vk1HrNy2Tb5wmyJaDLb1QUZ0LvQD4KO0c2FbzVLZSOMV
	k9k=
X-IronPort-AV: E=Sophos;i="5.64,444,1559548800"; 
	d="asc'?scan'208";a="40893068"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
	by esa4.mentor.iphmx.com with ESMTP; 29 Aug 2019 09:44:22 -0800
IronPort-SDR: BV+D5wb6mSX3RZAhinhqTjYGle0/fzj6jqCQPvGCb3y8cBzWgNm9RwbJr7/lBFq7/gyEj3j9TW
	qqH4sVFr6BGXDTMqlY2bDV57m9qMZyfGOpnWEYUX+eYz8Eqiw11s0XQsHq2Z8K87/UaaO7zK88
	iJX93O6ltJvtPgL2UQdfCU3M/xMGtCzMk7ekpTad+57sN+lfaEWs55au8BxFj+Usuk7qKLxroZ
	drixK707CBebr295l88v1NnrivsvgUxi/xQKVcaTGsqwkti46E1Q2U0WXz9Chd8nhensFOFB7Y
	zWo=
Date: Thu, 29 Aug 2019 13:44:18 -0400
From: Joe MacDonald <joe@deserted.net>
To: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <20190829174416.GB34991@deserted.net>
References: <1558327299-10731-1-git-send-email-yi.zhao@windriver.com>
	<1558327299-10731-3-git-send-email-yi.zhao@windriver.com>
	<d71334f8-dd32-d5df-68e4-aae6f55b2962@windriver.com>
MIME-Version: 1.0
In-Reply-To: <d71334f8-dd32-d5df-68e4-aae6f55b2962@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 3/3] util-linux: drop obsolete patch
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
X-List-Received-Date: Thu, 29 Aug 2019 17:44:23 -0000
X-Groupsio-MsgNum: 46447
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oC1+HKm2/end4ao3"
Content-Disposition: inline

--oC1+HKm2/end4ao3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH 3/3] util-linux: drop obsolete patch] On =
19.08.29 (Thu 16:00) Yi Zhao wrote:

> Hi Joe,
>=20
>=20
> Seems you were missing this patch. Would you please merge it? Thanks.

Oh, yeah, sure.  It got classified as spam.  Since it was the end of a
queue I just assumed they were mis-numbered when I only found 1/3 and
2/3.

Thanks for pinging me on it.

-J.

>=20
>=20
> //Yi
>=20
>=20
> On 5/20/19 12:41 PM, Yi Zhao wrote:
> > Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> > ---
> >   .../util-linux/fix-libmount_la_DEPENDENCIES.patch  | 28 -------------=
---------
> >   1 file changed, 28 deletions(-)
> >   delete mode 100644 recipes-core/util-linux/util-linux/fix-libmount_la=
_DEPENDENCIES.patch
> >=20
> > diff --git a/recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDE=
NCIES.patch b/recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDENCI=
ES.patch
> > deleted file mode 100644
> > index ab54818..0000000
> > --- a/recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDENCIES.p=
atch
> > +++ /dev/null
> > @@ -1,28 +0,0 @@
> > -Subject: [PATCH] util-linux: fix libmount_la_DEPENDENCIES.
> > -
> > -Upstream-Status: Pending
> > -
> > -libmount_la_LIBADD contains "-lselinux", this is not a object that
> > -could consider as a dependency target. So fix this.
> > -
> > -Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
> > ----
> > - libmount/src/Makemodule.am |    2 +-
> > - 1 files changed, 1 insertions(+), 1 deletions(-)
> > -
> > -diff --git a/libmount/src/Makemodule.am b/libmount/src/Makemodule.am
> > -index 494e02a..bf494a4 100644
> > ---- a/libmount/src/Makemodule.am
> > -+++ b/libmount/src/Makemodule.am
> > -@@ -38,7 +38,7 @@ libmount_la_CFLAGS =3D \
> > - 	-I$(top_srcdir)/libmount/src
> > -
> > - libmount_la_DEPENDENCIES =3D \
> > --	$(libmount_la_LIBADD) \
> > -+	libcommon.la libblkid.la \
> > - 	libmount/src/libmount.sym \
> > - 	libmount/src/libmount.h.in
> > -
> > ---
> > -1.7.5.4
> > -

--=20
-Joe MacDonald.
Linux Architect | Mentor=AE A Siemens Business
:wq

--oC1+HKm2/end4ao3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXWgOyQAKCRDAW9yWWiDR
fHXDAJ42w65v87gwxr7gDpiXv44PtdZU4gCcDFOBcloho8ZgI0ecS42GS5rB5Pg=
=lZOR
-----END PGP SIGNATURE-----

--oC1+HKm2/end4ao3--
