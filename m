Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.9760.1601198798652272702
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 02:26:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DFC1338C087C
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 02:26:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 08R9Qaap023974
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 02:26:37 -0700 (PDT)
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Sun, 27 Sep 2020 02:26:36 -0700
From: "kai" <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-cgl][ 1/3] kernel: Remove non-existing kernel option
Date: Sun, 27 Sep 2020 17:26:18 +0800
Message-ID: <20200927092620.27754-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: He Zhe <zhe.he@windriver.com>

CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE has been removed from mainline kernel
by commit be6ec88f41ba ("selinux: Remove SECURITY_SELINUX_BOOTPARAM_VALUE").

Ref:
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=be6ec88

Signed-off-by: He Zhe <zhe.he@windriver.com>
Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
index 1efd63e..b10b839 100644
--- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
@@ -19,7 +19,6 @@ CONFIG_REISERFS_FS_SECURITY=y
 CONFIG_JFFS2_FS_SECURITY=y
 CONFIG_SECURITYFS=y
 CONFIG_SECURITY_SELINUX_BOOTPARAM=y
-CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=1
 CONFIG_SECURITY_SELINUX_DISABLE=y
 CONFIG_SECURITY_SELINUX_DEVELOP=y
 CONFIG_SECURITY_SELINUX_AVC_STATS=y
-- 
2.17.1

