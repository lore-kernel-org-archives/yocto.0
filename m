Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.8084.1600847786193063676
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 00:56:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0301D38C08AA
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 00:56:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 08N7uOAo022363
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 00:56:25 -0700 (PDT)
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Wed, 23 Sep 2020 00:56:24 -0700
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-cgl][PATCH] ucarp: fix build error with gcc-10
Date: Wed, 23 Sep 2020 15:56:23 +0800
Message-ID: <20200923075623.23073-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

gcc-10 uses '-fno-common' by default, causing multiple definition
error. Use '-fcommon' to fix this problem.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
index d17baa0..87e5ada 100644
--- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
@@ -37,6 +37,9 @@ SYSTEMD_AUTO_ENABLE = "disable"
 export FETCHCMD_wget = "/usr/bin/env wget --secure-protocol=TLSv1_2 -t 2 -T 30 --passive-ftp --no-check-certificate"
 EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN}"
 
+# Fix build error with gcc-10
+CFLAGS_append = " -fcommon"
+
 # fix the perms for config.rpath
 do_configure_prepend() {
     chmod 755 ${S}/config.rpath
-- 
2.17.1

