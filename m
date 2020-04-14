Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.6905.1586850343329338261
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:45:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 03E7j2vx001057
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:45:12 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:44:51 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 14/16] selinux-sandbox: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:56 +0800
Message-ID: <20200414074158.32058-14-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-sandbox_2.9.bb | 7 -------
 recipes-security/selinux/selinux-sandbox_3.0.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-sandbox_2.9.bb
 create mode 100644 recipes-security/selinux/selinux-sandbox_3.0.bb

diff --git a/recipes-security/selinux/selinux-sandbox_2.9.bb b/recipes-security/selinux/selinux-sandbox_2.9.bb
deleted file mode 100644
index b1dd462..0000000
--- a/recipes-security/selinux/selinux-sandbox_2.9.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20190315.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "3482b8fa6648160e97ba48ad26f84e7d"
-SRC_URI[sha256sum] = "01915f57f08642751dea550a87f82a6f2fcec754be48dcfa28266c14bd044262"
diff --git a/recipes-security/selinux/selinux-sandbox_3.0.bb b/recipes-security/selinux/selinux-sandbox_3.0.bb
new file mode 100644
index 0000000..a60f52c
--- /dev/null
+++ b/recipes-security/selinux/selinux-sandbox_3.0.bb
@@ -0,0 +1,7 @@
+require selinux_20191204.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "81447c46bf4cae9a5fa38c5fb8dc923e"
+SRC_URI[sha256sum] = "66fb4ea3a9e3d1e6004f13666b8390be751dd226a8496b995ed0332788758d0a"
-- 
2.17.1

