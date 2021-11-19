Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918DDC433EF
	for <webhook@archiver.kernel.org>; Fri, 19 Nov 2021 07:06:17 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web08.5429.1637305576988540972
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 23:06:17 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=fail (domain: windriver.com, ip: 147.11.3.146, mailfrom: kai.kang@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 1AJ76Fco021727
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 18 Nov 2021 23:06:16 -0800
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 1AJ76FBF003508
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 18 Nov 2021 23:06:15 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 18 Nov 2021 23:06:14 -0800
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Thu, 18 Nov 2021 23:06:14 -0800
From: <kai.kang@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] apparmor: fix warning of remove operator
 combined with +=
Date: Fri, 19 Nov 2021 15:06:12 +0800
Message-ID: <20211119070612.28233-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 07:06:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55369

From: Kai Kang <kai.kang@windriver.com>

Fix warning for apparmor:

| WARNING: /path/to/meta-security/recipes-mac/AppArmor/apparmor_3.0.1.bb:
|  RDEPENDS:${PN}:remove += is not a recommended operator combination,
|  please replace it.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-mac/AppArmor/apparmor_3.0.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_3.0.1.bb b/recipes-mac/AppArmor/apparmor_3.0.1.bb
index 389e72a..818be15 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.1.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.1.bb
@@ -168,7 +168,7 @@ RDEPENDS:${PN}:libc-glibc +=  "glibc-utils"
 
 # Add coreutils and findutils only if sysvinit scripts are in use
 RDEPENDS:${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
-RDEPENDS:${PN}:remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
+RDEPENDS:${PN}:remove = "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS:${PN}-ptest += "perl coreutils dbus-lib bash"
 
 INSANE_SKIP:${PN} = "ldflags"
-- 
2.17.1


