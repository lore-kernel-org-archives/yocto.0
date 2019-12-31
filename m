Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4287.1577766287064635381
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Dec 2019 20:24:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 140.211.169.56, mailfrom: joe@deserted.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89611E012AA; Mon, 30 Dec 2019 20:24:46 -0800 (PST)
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
	*      [68.232.129.153 listed in list.dnswl.org]
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 604B5E00D33
	for <yocto@yoctoproject.org>; Mon, 30 Dec 2019 20:24:45 -0800 (PST)
IronPort-SDR: Yu+QwMQYjMAr0AQIZzmQfmG6T63HNwyMxHdyVpGYBQVisXKm2lV9lhI23sfhCrV71bBJ8f0eTQ
 qy658gIjEgjI3+4NlbHCjf/ANQHkeLtgONccOPPC5tyeW7ybcVFdycUXlH6115U/yA0NVspN/V
 Yz1RcPvemnGhcaX4j3WdmGPdnWoLcHvWtAQnaRBD4NC1iMDVvfcg9wV6PvMs48oZTm4VWbCL14
 xWu4a6gyB+H0OBN6Ns5iXIaBea2zOu8nx6KPfJ9+AA4b729Vs0JPIPyryX0KeagkhAZzAhHEpO
 C4U=
X-IronPort-AV: E=Sophos;i="5.69,377,1571731200"; 
   d="asc'?scan'208";a="46393463"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa1.mentor.iphmx.com with ESMTP; 30 Dec 2019 20:24:44 -0800
IronPort-SDR: TxdVIE5L/X/XQD6oX8oQNYPQgnhK1kl4YTJG+A8qVUfH4w0NO2o2+x7JPeo5FmNlgL+I1PqcNg
 7KnkszcrNnLOQbg0CdYQbdqNU8VVcRSUAS4eJMwgSHH9pYRNwVp0InRG6iwT2nr5DgEYzcThh0
 XWuwslap4yua4URbUdkD+y4jSwO2IaS+rEIp26dN8f/W/n0gGeRj7auqD8aNEzap7RN6SMFx6m
 nw6a6Yz/zfnqzQoCjFzblIu0edFd9iF4Xblefz+xhcmjiuhy3Gf+4Vws+wD/Fl6ETsic24YnAr
 Q9I=
Date: Mon, 30 Dec 2019 23:24:41 -0500
From: "Joe MacDonald" <joe@deserted.net>
To: Yi Zhao <yi.zhao@windriver.com>
CC: <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] audit: fix host contamination for swig
Message-ID: <20191231042439.GB39081@deserted.net>
References: <20191227024327.19833-1-yi.zhao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20191227024327.19833-1-yi.zhao@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Groupsio-MsgNum: 47839
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="St7VIuEGZ6dlpu13"
Content-Disposition: inline

--St7VIuEGZ6dlpu13
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Yi,

So, just to confirm, this is needed in your experience (I don't have any
builders that are that old, so I haven't verified).  I just ask because
we only just dropped this patch to begin with:

commit 6edbe15c3dba7da0cffc1c11099867553e9d5570
Author: Yi Zhao <yi.zhao@windriver.com>
Date:   Thu Nov 14 09:49:01 2019 +0800

    audit: switch to python3
   =20
    * Switch to python3
   =20
    * Drop patches:
      audit-python-configure.patch
      audit-python.patch
      fix-swig-host-contamination.patch
   =20
    Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
    Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>

If we need to bring it back, though, obviously no concerns about it since t=
he
last time I did and update I carried it along.  :-)

-J.

[[meta-selinux][PATCH] audit: fix host contamination for swig] On 19.12.27 =
(Fri 10:43) Yi Zhao wrote:

> The audit build uses swig to generate a python wrapper. But there is a
> hardcoded include directory in auditswig.i, which causes header files on
> the host to be used when building. This will cause build error on some
> old systems. e.g. on CentOS7 with buildtools:
>   audit_wrap.c: In function '_wrap_audit_rule_flags_set':
>   audit_wrap.c:5018:19: error: dereferencing pointer to incomplete type '=
struct audit_rule'
>   5018  if (arg1) (arg1)->flags =3D arg2;
>         ^~
>=20
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  .../Fixed-swig-host-contamination-issue.patch | 57 +++++++++++++++++++
>  recipes-security/audit/audit_2.8.5.bb         |  1 +
>  2 files changed, 58 insertions(+)
>  create mode 100644 recipes-security/audit/audit/Fixed-swig-host-contamin=
ation-issue.patch
>=20
> diff --git a/recipes-security/audit/audit/Fixed-swig-host-contamination-i=
ssue.patch b/recipes-security/audit/audit/Fixed-swig-host-contamination-iss=
ue.patch
> new file mode 100644
> index 0000000..7c26995
> --- /dev/null
> +++ b/recipes-security/audit/audit/Fixed-swig-host-contamination-issue.pa=
tch
> @@ -0,0 +1,57 @@
> +From a07271f1cce82122610b622bcea4a8a37528f321 Mon Sep 17 00:00:00 2001
> +From: Li xin <lixin.fnst@cn.fujitsu.com>
> +Date: Sun, 19 Jul 2015 02:42:58 +0900
> +Subject: [PATCH] audit: Fixed swig host contamination issue
> +
> +The audit build uses swig to generate a python wrapper.
> +Unfortunately, the swig info file references host include
> +directories.  Some of these were previously noticed and
> +eliminated, but the one fixed here was not.
> +
> +Upstream-Status: Inappropriate [embedded specific]
> +
> +Signed-off-by: Anders Hedlund <anders.hedlund@windriver.com>
> +Signed-off-by: Joe Slater <jslater@windriver.com>
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> +---
> + bindings/swig/python3/Makefile.am | 3 ++-
> + bindings/swig/src/auditswig.i     | 2 +-
> + 2 files changed, 3 insertions(+), 2 deletions(-)
> +
> +diff --git a/bindings/swig/python3/Makefile.am b/bindings/swig/python3/M=
akefile.am
> +index 9938418..fa46aac 100644
> +--- a/bindings/swig/python3/Makefile.am
> ++++ b/bindings/swig/python3/Makefile.am
> +@@ -22,6 +22,7 @@
> + CONFIG_CLEAN_FILES =3D *.loT *.rej *.orig
> + AM_CFLAGS =3D -fPIC -DPIC -fno-strict-aliasing $(PYTHON3_CFLAGS)
> + AM_CPPFLAGS =3D -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHON3_INC=
LUDES)
> ++STDINC ?=3D /usr/include
> + LIBS =3D $(top_builddir)/lib/libaudit.la
> + SWIG_FLAGS =3D -python -py3 -modern
> + SWIG_INCLUDES =3D -I. -I$(top_builddir) -I${top_srcdir}/lib $(PYTHON3_I=
NCLUDES)
> +@@ -37,7 +38,7 @@ _audit_la_DEPENDENCIES =3D${top_srcdir}/lib/libaudit.h=
 ${top_builddir}/lib/libaudi
> + _audit_la_LIBADD =3D ${top_builddir}/lib/libaudit.la
> + nodist__audit_la_SOURCES  =3D audit_wrap.c
> + audit.py audit_wrap.c: ${srcdir}/../src/auditswig.i=20
> +-	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} ${srcdir}/../src/a=
uditswig.i=20
> ++	swig -o audit_wrap.c ${SWIG_FLAGS} ${SWIG_INCLUDES} -I$(STDINC) ${srcd=
ir}/../src/auditswig.i
> +=20
> + CLEANFILES =3D audit.py* audit_wrap.c *~
> +=20
> +diff --git a/bindings/swig/src/auditswig.i b/bindings/swig/src/auditswig=
=2Ei
> +index 7ebb373..424fb68 100644
> +--- a/bindings/swig/src/auditswig.i
> ++++ b/bindings/swig/src/auditswig.i
> +@@ -39,7 +39,7 @@ signed
> + #define __attribute(X) /*nothing*/
> + typedef unsigned __u32;
> + typedef unsigned uid_t;
> +-%include "/usr/include/linux/audit.h"
> ++%include "linux/audit.h"
> + #define __extension__ /*nothing*/
> + #include <stdint.h>
> + %include "../lib/libaudit.h"
> +--=20
> +2.7.4
> +
> diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security/aud=
it/audit_2.8.5.bb
> index 1e76d5f..ee3b3b5 100644
> --- a/recipes-security/audit/audit_2.8.5.bb
> +++ b/recipes-security/audit/audit_2.8.5.bb
> @@ -9,6 +9,7 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba3=
6caa9b7df079bae19f"
> =20
>  SRC_URI =3D "git://github.com/linux-audit/${BPN}-userspace.git;branch=3D=
2.8_maintenance \
>             file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
> +           file://Fixed-swig-host-contamination-issue.patch \
>             file://auditd \
>             file://auditd.service \
>             file://audit-volatile.conf \
> --=20
> 2.17.1
>=20

--=20
-Joe MacDonald.
:wq

--St7VIuEGZ6dlpu13
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXgrNfQAKCRDAW9yWWiDR
fL7rAJ0ebDrKWU4PmbeY7W88ZpgOnjGEAQCgjF1k/m6lK8nso2n8rGxb7wi6mG4=
=uWAv
-----END PGP SIGNATURE-----

--St7VIuEGZ6dlpu13--
