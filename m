Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.324.1582784773579989284
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 22:26:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: mingli.yu@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 01R6QCJu024290
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2020 22:26:12 -0800 (PST)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.468.0; Wed, 26 Feb 2020 22:26:11 -0800
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] linux-yocto: update the bbappend to 5.x
Date: Thu, 27 Feb 2020 14:26:10 +0800
Message-ID: <1582784770-249823-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

As linux-yocto upgraded to 5.x in oe-core, update
the bbappend to 5.x to remove the warning:

WARNING: No recipes available for:
  /buildarea/layers/meta-security/recipes-kernel/linux/linux-yocto_4.%.bbappend

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 recipes-kernel/linux/linux-yocto_4.%.bbappend | 2 --
 recipes-kernel/linux/linux-yocto_5.%.bbappend | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto_4.%.bbappend
 create mode 100644 recipes-kernel/linux/linux-yocto_5.%.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_4.%.bbappend b/recipes-kernel/linux/linux-yocto_4.%.bbappend
deleted file mode 100644
index 39d4e6f..0000000
--- a/recipes-kernel/linux/linux-yocto_4.%.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
diff --git a/recipes-kernel/linux/linux-yocto_5.%.bbappend b/recipes-kernel/linux/linux-yocto_5.%.bbappend
new file mode 100644
index 0000000..39d4e6f
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_5.%.bbappend
@@ -0,0 +1,2 @@
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-- 
2.7.4

