Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.6814.1586850248068535408
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:44:08 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 03E7i747025983
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:44:07 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:44:06 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 10/16] mcstrans: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:52 +0800
Message-ID: <20200414074158.32058-10-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/mcstrans_2.9.bb | 7 -------
 recipes-security/selinux/mcstrans_3.0.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/mcstrans_2.9.bb
 create mode 100644 recipes-security/selinux/mcstrans_3.0.bb

diff --git a/recipes-security/selinux/mcstrans_2.9.bb b/recipes-security/selinux/mcstrans_2.9.bb
deleted file mode 100644
index 34aab03..0000000
--- a/recipes-security/selinux/mcstrans_2.9.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20190315.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
-
-SRC_URI[md5sum] = "0f70a1eb6565a9f61a017cc408ea4c7a"
-SRC_URI[sha256sum] = "7eddce6ffefc9a26340f2720ba9afd7d041a31569844842d0199bfe27c5efb19"
diff --git a/recipes-security/selinux/mcstrans_3.0.bb b/recipes-security/selinux/mcstrans_3.0.bb
new file mode 100644
index 0000000..27ddfce
--- /dev/null
+++ b/recipes-security/selinux/mcstrans_3.0.bb
@@ -0,0 +1,7 @@
+require selinux_20191204.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
+SRC_URI[md5sum] = "0edc58a4d65425ffa5d58d32bf412352"
+SRC_URI[sha256sum] = "0992b8e7c4de1ba5f98a82547b02418370be5a5f588fc6d5f1cd2c7824bda87e"
-- 
2.17.1

