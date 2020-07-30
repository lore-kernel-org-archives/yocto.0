Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.3106.1596091896177812235
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 23:51:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 06U6orEe030772
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 29 Jul 2020 23:51:09 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 29 Jul
 2020 23:50:43 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <joe@deserted.net>
Subject: [meta-selinux][PATCH] selinux-*.service: install to sysinit.target
Date: Thu, 30 Jul 2020 14:50:36 +0800
Message-ID: <20200730065036.29004-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

The selinux-init/autorelabel/labeldev services have a constraint of
Before=sysinit.arget. So it is better to install them to sysinit.target
rather than multi-user.target.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/selinux-autorelabel/selinux-autorelabel.service     | 2 +-
 recipes-security/selinux/selinux-init/selinux-init.service      | 2 +-
 .../selinux/selinux-labeldev/selinux-labeldev.service           | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service
index 9520f6e..3c2a576 100644
--- a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service
+++ b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service
@@ -8,4 +8,4 @@ Type=oneshot
 ExecStart=/usr/bin/selinux-autorelabel.sh
 
 [Install]
-WantedBy=multi-user.target
+WantedBy=sysinit.target
diff --git a/recipes-security/selinux/selinux-init/selinux-init.service b/recipes-security/selinux/selinux-init/selinux-init.service
index 49c6d98..91b3e72 100644
--- a/recipes-security/selinux/selinux-init/selinux-init.service
+++ b/recipes-security/selinux/selinux-init/selinux-init.service
@@ -9,4 +9,4 @@ Type=oneshot
 ExecStart=/usr/bin/selinux-init.sh
 
 [Install]
-WantedBy=multi-user.target
+WantedBy=sysinit.target
diff --git a/recipes-security/selinux/selinux-labeldev/selinux-labeldev.service b/recipes-security/selinux/selinux-labeldev/selinux-labeldev.service
index d45ecbc..96142a3 100644
--- a/recipes-security/selinux/selinux-labeldev/selinux-labeldev.service
+++ b/recipes-security/selinux/selinux-labeldev/selinux-labeldev.service
@@ -8,4 +8,4 @@ Type=oneshot
 ExecStart=/usr/bin/selinux-labeldev.sh
 
 [Install]
-WantedBy=multi-user.target
+WantedBy=sysinit.target
-- 
2.17.1

