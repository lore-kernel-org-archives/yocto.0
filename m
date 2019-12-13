Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.8597.1576226096876951214
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 00:34:57 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: hongxu.jia@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60447E010FD; Fri, 13 Dec 2019 00:34:56 -0800 (PST)
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
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63218E0083D
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2019 00:34:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBD8YpdS003288
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 13 Dec 2019 00:34:51 -0800
Received: from ala-lpggp7.wrs.com (147.11.105.171) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.40) with Microsoft SMTP Server id 14.3.468.0; Fri, 13 Dec 2019
 00:34:51 -0800
From: "hongxu" <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <joe_macdonald@mentor.com>
Subject: [meta-selinux][PATCH] sysvinit: sync bbappend to 2.96
Date: Fri, 13 Dec 2019 00:34:51 -0800
Message-ID: <20191213083451.63150-1-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Since oe-core upgrades sysvinit to 2.96, wildcard its bbappend and
drop the backported patch

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../sysvinit-fix-is_selinux_enabled.patch     | 71 -------------------
 ....88dsf.bbappend =3D> sysvinit_2.9%.bbappend} |  2 +-
 ...88dsf_selinux.inc =3D> sysvinit_selinux.inc} |  2 -
 3 files changed, 1 insertion(+), 74 deletions(-)
 delete mode 100644 recipes-core/sysvinit/files/sysvinit-fix-is_selinux_e=
nabled.patch
 rename recipes-core/sysvinit/{sysvinit_2.88dsf.bbappend =3D> sysvinit_2.=
9%.bbappend} (64%)
 rename recipes-core/sysvinit/{sysvinit-2.88dsf_selinux.inc =3D> sysvinit=
_selinux.inc} (74%)

diff --git a/recipes-core/sysvinit/files/sysvinit-fix-is_selinux_enabled.=
patch b/recipes-core/sysvinit/files/sysvinit-fix-is_selinux_enabled.patch
deleted file mode 100644
index 62703b1..0000000
--- a/recipes-core/sysvinit/files/sysvinit-fix-is_selinux_enabled.patch
+++ /dev/null
@@ -1,71 +0,0 @@
-From 0db0276202094c8d902fc93a18eca453b6211f8a Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 12 Apr 2012 10:48:04 +0800
-Subject: [PATCH] sysvinit: Fix is_selinux_enabled() for libselinux
-
-is_selinux_enabled()!=3D1 means SELinux is disabled by kernel
-or SELinux is enabled but policy is not loaded.
-Only at this time, /sbin/init program should call
-selinux_init_load_policy() to detect whether SELinux is enabled
-and to load SELinux policy.
-
-This is fixed already in the upstream sysvinit,
-http://svn.savannah.nongnu.org/viewvc/sysvinit/trunk/src/init.c?root=3Ds=
ysvinit&r1=3D72&r2=3D90
----
- src/init.c |   33 +++++++++++++--------------------
- 1 files changed, 13 insertions(+), 20 deletions(-)
-
-diff --git a/src/init.c b/src/init.c
-index 27532ad..75ccf25 100644
---- a/src/init.c
-+++ b/src/init.c
-@@ -54,10 +54,6 @@
-=20
- #ifdef WITH_SELINUX
- #  include <selinux/selinux.h>
--#  include <sys/mount.h>
--#  ifndef MNT_DETACH /* present in glibc 2.10, missing in 2.7 */
--#    define MNT_DETACH 2
--#  endif
- #endif
-=20
- #ifdef __i386__
-@@ -2869,22 +2865,19 @@ int main(int argc, char **argv)
-=20
- #ifdef WITH_SELINUX
- 	if (getenv("SELINUX_INIT") =3D=3D NULL) {
--	  const int rc =3D mount("proc", "/proc", "proc", 0, 0);
--	  if (is_selinux_enabled() > 0) {
--	    putenv("SELINUX_INIT=3DYES");
--	    if (rc =3D=3D 0) umount2("/proc", MNT_DETACH);
--	    if (selinux_init_load_policy(&enforce) =3D=3D 0) {
--	      execv(myname, argv);
--	    } else {
--	      if (enforce > 0) {
--		/* SELinux in enforcing mode but load_policy failed */
--		/* At this point, we probably can't open /dev/console, so log() won't=
 work */
--		fprintf(stderr,"Unable to load SELinux Policy. Machine is in enforcin=
g mode. Halting now.\n");
--		exit(1);
--	      }
--	    }
--	  }
--	  if (rc =3D=3D 0) umount2("/proc", MNT_DETACH);
-+		if (is_selinux_enabled() !=3D 1) {
-+			if (selinux_init_load_policy(&enforce) =3D=3D 0) {
-+				putenv("SELINUX_INIT=3DYES");
-+				execv(myname, argv);
-+			} else {
-+				if (enforce > 0) {
-+					/* SELinux in enforcing mode but load_policy failed */
-+					/* At this point, we probably can't open /dev/console, so log() wo=
n't work */
-+					fprintf(stderr,"Unable to load SELinux Policy. Machine is in enfor=
cing mode. Halting now.\n");
-+					exit(1);
-+				}
-+			}
-+		}
- 	}
- #endif =20
- 	/* Start booting. */
---=20
-1.7.5.4
-
diff --git a/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend b/recipes-co=
re/sysvinit/sysvinit_2.9%.bbappend
similarity index 64%
rename from recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
rename to recipes-core/sysvinit/sysvinit_2.9%.bbappend
index 9df30b6..4ec2267 100644
--- a/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
+++ b/recipes-core/sysvinit/sysvinit_2.9%.bbappend
@@ -1 +1 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'sysvinit-2.8=
8dsf_selinux.inc', '', d)}
+require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'sysvinit_sel=
inux.inc', '', d)}
diff --git a/recipes-core/sysvinit/sysvinit-2.88dsf_selinux.inc b/recipes=
-core/sysvinit/sysvinit_selinux.inc
similarity index 74%
rename from recipes-core/sysvinit/sysvinit-2.88dsf_selinux.inc
rename to recipes-core/sysvinit/sysvinit_selinux.inc
index fcfbdb7..2e54330 100644
--- a/recipes-core/sysvinit/sysvinit-2.88dsf_selinux.inc
+++ b/recipes-core/sysvinit/sysvinit_selinux.inc
@@ -2,8 +2,6 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
=20
 B =3D "${S}"
=20
-SRC_URI +=3D "file://sysvinit-fix-is_selinux_enabled.patch"
-
 inherit selinux
=20
 DEPENDS +=3D "${LIBSELINUX}"
--=20
2.21.0

