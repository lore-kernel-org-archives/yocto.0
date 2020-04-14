Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.6818.1586850260608670820
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:44:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 03E7hXIB001039
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:43:59 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:43:56 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 08/16] secilc: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:50 +0800
Message-ID: <20200414074158.32058-8-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

License-Update: fix misspellings

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/secilc_2.9.bb | 7 -------
 recipes-security/selinux/secilc_3.0.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/secilc_2.9.bb
 create mode 100644 recipes-security/selinux/secilc_3.0.bb

diff --git a/recipes-security/selinux/secilc_2.9.bb b/recipes-security/selinux/secilc_2.9.bb
deleted file mode 100644
index 8207905..0000000
--- a/recipes-security/selinux/secilc_2.9.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20190315.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=5fb82e8deb357d4e5fd8f3fed01d2f38"
-
-SRC_URI[md5sum] = "489cedf50fa277ce07765053ffcdb4d5"
-SRC_URI[sha256sum] = "73a1806e33a669e23545da2d35d0e5038714721f6bf71974eaa533b3ebde61b2"
diff --git a/recipes-security/selinux/secilc_3.0.bb b/recipes-security/selinux/secilc_3.0.bb
new file mode 100644
index 0000000..71b6cff
--- /dev/null
+++ b/recipes-security/selinux/secilc_3.0.bb
@@ -0,0 +1,7 @@
+require selinux_20191204.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=c7e802b9a3b0c2c852669864c08b9138"
+
+SRC_URI[md5sum] = "be7ec221b874053a843ef90e49daa5cf"
+SRC_URI[sha256sum] = "78fafc4a8a8a212663d3d1e181047f5605430f0a0577ff772a4bb7fecd2b42b0"
-- 
2.17.1

