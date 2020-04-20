Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
 by mx.groups.io with SMTP id smtpd.web12.1009.1587364060664181534
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Apr 2020 23:27:40 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: mentor.com, ip: 68.232.141.98, mailfrom: haseeb_ashraf@mentor.com)
IronPort-SDR: LBaNrfjg7TwVPvL7RuyGf2gKDqCZwHkJ2VTOxAMurdXzi78tS+ZLzFi8DvoAw3RRDoYZB1ZhXa
 hyL/t0DpeysnwcmsM5jzc9Ggf+lYKP6pS1pyx4TwMV8Z7yEzqV0yb5a6j0zIqO0wzJOmvSwYyM
 yNswyv4WYfa3D5GzWbIpc6NoCnjnKuVs5rfLrENZ0tFIwxdWVRJIXElAgTsdcyMe5MKkmcMZQ/
 wiJb8Okiy9fabV9HOh+q10u0+vz+cO5ZUeFb4DDuGPTcG5stxg1TWg/y80TfB7IvsV9R+xhFsG
 PMk=
X-IronPort-AV: E=Sophos;i="5.72,405,1580803200"; 
   d="scan'208";a="47918416"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa2.mentor.iphmx.com with ESMTP; 19 Apr 2020 22:27:40 -0800
IronPort-SDR: KfWRp2RN0+WI/dX5i2L1HcGbUXPxLXEjQe616xHiajcS2bsD1MAXkHnY9oi/v3cJyvBCj8ckv9
 uU9ig+a0RCZSYjrpuw02ZBhHjkLwfT9cCP577TRoCqpji3/oql4a9bCiM8w4O2ET++UxeTb7Id
 oMl8HjuuucD6JuPcVOMBs1idfh6ndDYrhGLEfVh9ys/UoFy4UycCAJ3/Tu7PTp8uHbtdlWSutZ
 bmFfulNWNaZflJk4tXuri706jZeW6wynPxJ6x1l8nePh8mR1R6sWzJI/+W7BY3aupcwdegfUN4
 vv4=
From: "Haseeb Ashraf" <haseeb_ashraf@mentor.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] samhain: dnmalloc hash fix for aarch64 and mips64
Date: Mon, 20 Apr 2020 11:27:19 +0500
Message-ID: <20200420062719.25771-1-Haseeb_Ashraf@mentor.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Return-Path: Haseeb_Ashraf@mentor.com
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2) To
 svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1)
Content-Type: text/plain

fix runtime error:
samhain[4069]: FATAL: x_dnmalloc.c: 2790: hashval < AMOUNTHASH
Killed

The proper fix is not to disable dnmalloc. This change is in
continuation of samhain-mips64-aarch64-dnmalloc-hash-fix.patch
which requires CONFIG_ARCH_AARCH64 or CONFIG_ARCH_MIPS64 to be
defined for the corresponding architecture

Signed-off-by: Haseeb Ashraf <Haseeb_Ashraf@mentor.com>
---
 recipes-ids/samhain/samhain.inc | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 0a5e432..b867bbc 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -67,6 +67,9 @@ PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
 PACKAGECONFIG[audit] = "ac_cv_header_auparse_h=yes,ac_cv_header_auparse_h=no,audit"
 PACKAGECONFIG[ps] = "--with-ps-path=${base_bindir}/ps,,,procps"
 
+EXTRA_OEMAKE_append_aarch64 = " CPPFLAGS+=-DCONFIG_ARCH_AARCH64=1"
+EXTRA_OEMAKE_append_mips64 = " CPPFLAGS+=-DCONFIG_ARCH_MIPS64=1"
+
 do_unpack_samhain() {
     cd ${WORKDIR}
     tar -xzvf samhain-${PV}.tar.gz
@@ -118,7 +121,6 @@ do_configure () {
 	--enable-network=${SAMHAIN_MODE} \
 	--with-pid-file=${localstatedir}/run/samhain.pid \
 	--with-data-file=${localstatedir}/lib/samhain/samhain_file \
-	--disable-dnmalloc \
 	${EXTRA_OECONF}
 }
 
-- 
2.17.1

