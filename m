Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F0D4C433F5
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 08:59:25 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web11.7029.1634201964413952212
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 01:59:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=fail (domain: windriver.com, ip: 147.11.3.146, mailfrom: kai.kang@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 19E8xMTe018291
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Thu, 14 Oct 2021 01:59:22 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 19E8xHwJ008853
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 Oct 2021 01:59:22 -0700 (PDT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 01:59:19 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Thu, 14 Oct 2021 01:59:19 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Thu, 14 Oct 2021 01:59:18 -0700
From: <kai.kang@windriver.com>
To: <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: [PATCH v2 1/1] sssd: re-package to fix QA issues
Date: Thu, 14 Oct 2021 16:59:11 +0800
Message-ID: <20211014085911.32587-2-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211014085911.32587-1-kai.kang@windriver.com>
References: <20211014085911.32587-1-kai.kang@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 08:59:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55069

From: Kai Kang <kai.kang@windriver.com>

It packages all file in ${libdir} to package sssd, including the .so
symlink files. Then it causes QA issues:

| ERROR: QA Issue: sssd rdepends on dbus-dev [dev-deps]
| ERROR: QA Issue: sssd rdepends on ding-libs-dev [dev-deps]

So re-package sssd then the .so symlink files and .pc files are packaged
to sssd-dev which should be.

File ${libdir}/libsss_sudo.so is not a symlink file but packaged to
sssd-dev too. Then causes another QA issue:

| ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue:
    -dev package sssd-dev contains non-symlink .so '/usr/lib/libsss_sudo.so' [dev-elf]

So create a new sub-package libsss-sudo to package file libsss_sudo.so
and make sssd rdepends on it.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-security/sssd/sssd_2.5.2.bb | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
index 76d6e03..ed8af5e 100644
--- a/recipes-security/sssd/sssd_2.5.2.bb
+++ b/recipes-security/sssd/sssd_2.5.2.bb
@@ -125,10 +125,14 @@ SYSTEMD_SERVICE:${PN} = " \
 "
 SYSTEMD_AUTO_ENABLE = "disable"
 
-FILES:${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss*.so"
-FILES:${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
+PACKAGES =+ "libsss-sudo"
+ALLOW_EMPTY:libsss-sudo = "1"
 
-# The package contains symlinks that trip up insane
-INSANE_SKIP:${PN} = "dev-so"
+FILES:${PN} += "${base_libdir}/security/pam_sss*.so  \
+                ${datadir}/dbus-1/system-services/*.service \
+                ${libdir}/krb5/* \
+                ${libdir}/ldb/* \
+                "
+FILES:libsss-sudo = "${libdir}/libsss_sudo.so"
 
-RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam"
+RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam libsss-sudo"
-- 
2.17.1


