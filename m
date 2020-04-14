Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.6922.1586850163496805045
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:42:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 03E7gdfs025977
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:42:39 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:42:38 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 03/16] libsepol: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:45 +0800
Message-ID: <20200414074158.32058-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libsepol_2.9.bb | 7 -------
 recipes-security/selinux/libsepol_3.0.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/libsepol_2.9.bb
 create mode 100644 recipes-security/selinux/libsepol_3.0.bb

diff --git a/recipes-security/selinux/libsepol_2.9.bb b/recipes-security/selinux/libsepol_2.9.bb
deleted file mode 100644
index cd55be6..0000000
--- a/recipes-security/selinux/libsepol_2.9.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20190315.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI[md5sum] = "2fdefe870a61424d8f2d5d37551c6259"
-SRC_URI[sha256sum] = "a34b12b038d121e3e459b1cbaca3c9202e983137819c16baf63658390e3f1d5d"
diff --git a/recipes-security/selinux/libsepol_3.0.bb b/recipes-security/selinux/libsepol_3.0.bb
new file mode 100644
index 0000000..6c85256
--- /dev/null
+++ b/recipes-security/selinux/libsepol_3.0.bb
@@ -0,0 +1,7 @@
+require selinux_20191204.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+SRC_URI[md5sum] = "22ddb9994910cb9cfff5cb9663cb7ae7"
+SRC_URI[sha256sum] = "5b7ae1881909f1048b06f7a0c364c5c8a86ec12e0ec76e740fe9595a6033eb79"
-- 
2.17.1

