Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.12221.1577975364404211567
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jan 2020 06:29:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 140.211.169.56, mailfrom: joe@deserted.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBE4BE0122C; Thu,  2 Jan 2020 06:29:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [68.232.141.98 listed in list.dnswl.org]
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A991E01228
	for <yocto@yoctoproject.org>; Thu,  2 Jan 2020 06:29:20 -0800 (PST)
IronPort-SDR: tX1HL0t+dsonQqt2iES7Hocer+Xdk6I8nDp46yQpvZSRWUwg8llxhExFz+OJgtNbUe3cT1v9O7
 6Z7KH8soXvh30QS3liP0V8/keCf38JDPxun3JBEkjuxPK9KIZjNuqVgsaR55Iu/Sq3PriE06vr
 OGbbNbS1b+gw8ZL4Faryh7Hy4Hb0Kt7kMvs+9URiMvnXxcDdtROdFcYhIPKVHxBfDexHVS0dp5
 qDRmA1ujmRzR8PwG5FMlxXrNRB4jpPi7dn9+8PgXVV2U1mnr+CnpMH+6lNufeqzWvE/NWQlJ8c
 5OY=
X-IronPort-AV: E=Sophos;i="5.69,387,1571731200"; 
   d="asc'?scan'208";a="44463087"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa2.mentor.iphmx.com with ESMTP; 02 Jan 2020 06:29:18 -0800
IronPort-SDR: vKSAnTPdTe1OU517b/5B7Ns+QA56xavK7O40ulkmpUDCTzrxCO0YnFH8Qgoy9Odp4fumocwyY5
 xecrG5IUTcnByvA8rIm0mBBl0mkXCAkKU6b5lE6ENo1mEbPxL+/cp6L+PAXtw0iKH48Oe5LQg3
 z76HceZl7oZGhm5xONmweoQPRuSuv3SJelCbuKFP2Mwxy4oJ/FJp/G6wTftWJK45t+5Hk+HIS1
 2gVQGw0hhVEfZTqdTygKGIUaMbYq2sO5WpW+m7HFwP0bX97LYWgNmvGJ/x/biSfv91Msr2ZHT3
 sDE=
Date: Thu, 2 Jan 2020 09:29:14 -0500
From: "Joe MacDonald" <joe@deserted.net>
To: Yi Zhao <yi.zhao@windriver.com>
CC: <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] audit: fix host contamination for swig
Message-ID: <20200102142912.GC39081@deserted.net>
References: <20191227024327.19833-1-yi.zhao@windriver.com>
 <20191231042439.GB39081@deserted.net>
 <56e99bdd-8d6f-0da4-9f58-8468d7d8d715@windriver.com>
MIME-Version: 1.0
In-Reply-To: <56e99bdd-8d6f-0da4-9f58-8468d7d8d715@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Groupsio-MsgNum: 47842
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qtZFehHsKgwS5rPz"
Content-Disposition: inline

--qtZFehHsKgwS5rPz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [meta-selinux][PATCH] audit: fix host contamination for swig] On 19.12=
=2E31 (Tue 14:20) Yi Zhao wrote:

>=20
> On 12/31/19 12:24 PM, Joe MacDonald wrote:
> > Hi Yi,
> >=20
> > So, just to confirm, this is needed in your experience (I don't have any
> > builders that are that old, so I haven't verified).  I just ask because
> > we only just dropped this patch to begin with:
> >=20
> > commit 6edbe15c3dba7da0cffc1c11099867553e9d5570
> > Author: Yi Zhao <yi.zhao@windriver.com>
> > Date:   Thu Nov 14 09:49:01 2019 +0800
> >=20
> >      audit: switch to python3
> >      * Switch to python3
> >      * Drop patches:
> >        audit-python-configure.patch
> >        audit-python.patch
> >        fix-swig-host-contamination.patch
> >      Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> >      Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> >=20
> > If we need to bring it back, though, obviously no concerns about it sin=
ce the
> > last time I did and update I carried it along.  :-)
>=20
>=20
> When I dropped it in my previous patch I just tested it on some modern Li=
nux
> distributions (e.g. Ubuntu 16.04/18.04 Fedora 31). There is no such error
> because the audit.h on the host is matched to our audit recipe. Then we
> found the build failure on some old distros (e.g. CentOS 7) because of the
> old version autdit.h on host. The CentOS7 is still on Yocto support distr=
os
> list. See: meta-poky/conf/distro/poky.conf. I'm afraid we should bring it
> back.

Heh, telling that 16.04 is a modern Ubuntu in this context.  :-)

Anyway, yeah, I don't even have a 16.xx builder anymore, so I'm not
surprised this only shows up on really old systems.  I'd be inclined to
just drop it entirely since on the CentOS download page now the main
(only?) way to get to any CentOS 7.x release is with the link here:

	Legacy versions of CentOS are no longer supported. For
	historical purposes, CentOS keeps an archive of older versions.
	If you=E2=80=99re absolutely sure you need an older version then click
	here =C2=BB

But Yocto still supports 7 as a build distro and CentOS did do a 7.x
update in September past, so I guess we'll carry it for one more
release.

Thanks for the follow-up.
-J.

>=20
>=20
> Thanks,
>=20
> Yi
>=20
>=20
> >=20
> > -J.
> >=20
> > [[meta-selinux][PATCH] audit: fix host contamination for swig] On 19.12=
=2E27 (Fri 10:43) Yi Zhao wrote:
> >=20
> > > The audit build uses swig to generate a python wrapper. But there is a
> > > hardcoded include directory in auditswig.i, which causes header files=
 on
> > > the host to be used when building. This will cause build error on some
> > > old systems. e.g. on CentOS7 with buildtools:
> > >    audit_wrap.c: In function '_wrap_audit_rule_flags_set':
> > >    audit_wrap.c:5018:19: error: dereferencing pointer to incomplete t=
ype 'struct audit_rule'
> > >    5018  if (arg1) (arg1)->flags =3D arg2;
> > >          ^~
> > >=20
> > > Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> > > ---
> > >   .../Fixed-swig-host-contamination-issue.patch | 57 ++++++++++++++++=
+++
> > >   recipes-security/audit/audit_2.8.5.bb         |  1 +
> > >   2 files changed, 58 insertions(+)
> > >   create mode 100644 recipes-security/audit/audit/Fixed-swig-host-con=
tamination-issue.patch
> > >=20
> > > diff --git a/recipes-security/audit/audit/Fixed-swig-host-contaminati=
on-issue.patch b/recipes-security/audit/audit/Fixed-swig-host-contamination=
-issue.patch
> > > new file mode 100644
> > > index 0000000..7c26995
> > > --- /dev/null
> > > +++ b/recipes-security/audit/audit/Fixed-swig-host-contamination-issu=
e.patch
> > > @@ -0,0 +1,57 @@
> > > +From a07271f1cce82122610b622bcea4a8a37528f321 Mon Sep 17 00:00:00 20=
01
> > > +From: Li xin <lixin.fnst@cn.fujitsu.com>
> > > +Date: Sun, 19 Jul 2015 02:42:58 +0900
> > > +Subject: [PATCH] audit: Fixed swig host contamination issue
> > > +
> > > +The audit build uses swig to generate a python wrapper.
> > > +Unfortunately, the swig info file references host include
> > > +directories.  Some of these were previously noticed and
> > > +eliminated, but the one fixed here was not.
> > > +
> > > +Upstream-Status: Inappropriate [embedded specific]
> > > +
> > > +Signed-off-by: Anders Hedlund <anders.hedlund@windriver.com>
> > > +Signed-off-by: Joe Slater <jslater@windriver.com>
> > > +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> > > +---
> > > + bindings/swig/python3/Makefile.am | 3 ++-
> > > + bindings/swig/src/auditswig.i     | 2 +-
> > > + 2 files changed, 3 insertions(+), 2 deletions(-)
> > > +
> > > +diff --git a/bindings/swig/python3/Makefile.am b/bindings/swig/pytho=
n3/Makefile.am
> > > +index 9938418..fa46aac 100644
> > > +--- a/bindings/swig/python3/Makefile.am
> > > ++++ b/bindings/swig/python3/Makefile.am
> > > +@@ -22,6 +22,7 @@
> > > + CONFIG_CLEAN_FILES =3D *.loT *.rej *.orig
> > > + AM_CFLAGS =3D -fPIC -DPIC -fno-strict-aliasing $(PYTHON3_CFLAGS)
> > > + AM_CPPFLAGS =3D -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHON3=
_INCLUDES)
> > > ++STDINC ?=3D /usr/include
> > > + LIBS =3D $(top_builddir)/lib/libaudit.la
> > > + SWIG_FLAGS =3D -python -py3 -modern
> > > + SWIG_INCLUDES =3D -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHO=
N3_INCLUDES)
> > > +@@ -37,7 +38,7 @@ _audit_la_DEPENDENCIES =3D${top_srcdir}/lib/libaud=
it.h ${top_builddir}/lib/libaudi
> > > + _audit_la_LIBADD =3D ${top_builddir}/lib/libaudit.la
> > > + nodist__audit_la_SOURCES  =3D audit_wrap.c
> > > + audit.py audit_wrap.c: ${srcdir}/../src/auditswig.i
> > > +-	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} ${srcdir}/../s=
rc/auditswig.i
> > > ++	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} -I$(STDINC) ${=
srcdir}/../src/auditswig.i
> > > +
> > > + CLEANFILES =3D audit.py* audit_wrap.c *~
> > > +
> > > +diff --git a/bindings/swig/src/auditswig.i b/bindings/swig/src/audit=
swig.i
> > > +index 7ebb373..424fb68 100644
> > > +--- a/bindings/swig/src/auditswig.i
> > > ++++ b/bindings/swig/src/auditswig.i
> > > +@@ -39,7 +39,7 @@ signed
> > > + #define __attribute(X) /*nothing*/
> > > + typedef unsigned __u32;
> > > + typedef unsigned uid_t;
> > > +-%include "/usr/include/linux/audit.h"
> > > ++%include "linux/audit.h"
> > > + #define __extension__ /*nothing*/
> > > + #include <stdint.h>
> > > + %include "../lib/libaudit.h"
> > > +--
> > > +2.7.4
> > > +
> > > diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security=
/audit/audit_2.8.5.bb
> > > index 1e76d5f..ee3b3b5 100644
> > > --- a/recipes-security/audit/audit_2.8.5.bb
> > > +++ b/recipes-security/audit/audit_2.8.5.bb
> > > @@ -9,6 +9,7 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a=
9ba36caa9b7df079bae19f"
> > >   SRC_URI =3D "git://github.com/linux-audit/${BPN}-userspace.git;bran=
ch=3D2.8_maintenance \
> > >              file://Add-substitue-functions-for-strndupa-rawmemchr.pa=
tch \
> > > +           file://Fixed-swig-host-contamination-issue.patch \
> > >              file://auditd \
> > >              file://auditd.service \
> > >              file://audit-volatile.conf \
> > > --=20
> > > 2.17.1
> > >=20

--=20
-Joe MacDonald.
:wq

--qtZFehHsKgwS5rPz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXg3+LQAKCRDAW9yWWiDR
fCmXAKCjnv9DfuzI9F/TBDStgcSI+NG1wwCeLcT7CNsjJvixT2wzaL+cb7lgqWQ=
=7wK9
-----END PGP SIGNATURE-----

--qtZFehHsKgwS5rPz--
