Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web11.6902.1586850329707190285
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:45:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 03E7jSMd026010
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:45:29 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:45:28 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 16/16] semodule-utils: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:58 +0800
Message-ID: <20200414074158.32058-16-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/semodule-utils_2.9.bb | 7 -------
 recipes-security/selinux/semodule-utils_3.0.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/semodule-utils_2.9.bb
 create mode 100644 recipes-security/selinux/semodule-utils_3.0.bb

diff --git a/recipes-security/selinux/semodule-utils_2.9.bb b/recipes-security/selinux/semodule-utils_2.9.bb
deleted file mode 100644
index a9c0fbd..0000000
--- a/recipes-security/selinux/semodule-utils_2.9.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20190315.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "9e7e6afe33459cae2de5360e97f1e702"
-SRC_URI[sha256sum] = "8083679ee634570f6e9a18632f2c2862b9134fa308b689b2e1952a369ae5d907"
diff --git a/recipes-security/selinux/semodule-utils_3.0.bb b/recipes-security/selinux/semodule-utils_3.0.bb
new file mode 100644
index 0000000..bccc707
--- /dev/null
+++ b/recipes-security/selinux/semodule-utils_3.0.bb
@@ -0,0 +1,7 @@
+require selinux_20191204.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "58b0e4b85695dad6aff70c69f7a417fd"
+SRC_URI[sha256sum] = "14ee2db21f36766ffbbb65770f8e7236d21675db9f0f5d40f50974711da598cf"
-- 
2.17.1

