Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.6552.1623747049709063293
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 01:50:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail1.wrs.com (mail1.windriver.com [147.11.146.13])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E829038C082D
	for <yocto@yoctoproject.org>; Tue, 15 Jun 2021 08:50:45 +0000 (UTC)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 15F8odIm015461
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 15 Jun 2021 01:50:39 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 15F8odm9007370
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 15 Jun 2021 01:50:39 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 15 Jun 2021 01:50:38 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Tue, 15 Jun 2021 01:50:37 -0700
From: "kai" <kai.kang@windriver.com>
To: <akuster808@gmail.com>
CC: <yocto@yoctoproject.org>
Subject: [meta-security][PATCH] sssd: set pid path with /run
Date: Tue, 15 Jun 2021 16:50:30 +0800
Message-ID: <20210615085030.11155-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

/var/run is deprecated and set pid path with /run to store pid files for
the SSSD.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-security/sssd/sssd_2.5.0.bb | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-security/sssd/sssd_2.5.0.bb b/recipes-security/sssd/sssd_2.5.0.bb
index 4c92519..c699527 100644
--- a/recipes-security/sssd/sssd_2.5.0.bb
+++ b/recipes-security/sssd/sssd_2.5.0.bb
@@ -63,6 +63,7 @@ EXTRA_OECONF += " \
     --without-python2-bindings \
     --without-secrets \
     --with-xml-catalog-path=${STAGING_ETCDIR_NATIVE}/xml/catalog \
+    --with-pid-path=/run \
 "
 
 do_configure_prepend() {
@@ -88,8 +89,8 @@ do_install () {
         echo "d /var/log/sssd 0750 - - - -" > ${D}${sysconfdir}/tmpfiles.d/sss.conf
     fi
 
-    # Remove /var/run as it is created on startup
-    rm -rf ${D}${localstatedir}/run
+    # Remove /run as it is created on startup
+    rm -rf ${D}/run
 
     rm -f ${D}${systemd_system_unitdir}/sssd-secrets.*
 }
-- 
2.17.1

