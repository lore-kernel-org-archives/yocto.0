Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web11.6880.1586850243742421735
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:44:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 03E7i26D008108
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:44:02 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:44:02 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 09/16] policycoreutils: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:51 +0800
Message-ID: <20200414074158.32058-9-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/policycoreutils_2.9.bb | 8 --------
 recipes-security/selinux/policycoreutils_3.0.bb | 7 +++++++
 2 files changed, 7 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/policycoreutils_2.9.bb
 create mode 100644 recipes-security/selinux/policycoreutils_3.0.bb

diff --git a/recipes-security/selinux/policycoreutils_2.9.bb b/recipes-security/selinux/policycoreutils_2.9.bb
deleted file mode 100644
index 08ba54a..0000000
--- a/recipes-security/selinux/policycoreutils_2.9.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require selinux_20190315.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "0fbebdb4761353726cc739d5528f21d8"
-SRC_URI[sha256sum] = "c53c344f28007b3c0742bd958751e9b5d2385898adeb8aec6281ae57342f0f7b"
-
diff --git a/recipes-security/selinux/policycoreutils_3.0.bb b/recipes-security/selinux/policycoreutils_3.0.bb
new file mode 100644
index 0000000..a4e0287
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils_3.0.bb
@@ -0,0 +1,7 @@
+require selinux_20191204.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "7e95941f1ac00b25b69c7157d49a375f"
+SRC_URI[sha256sum] = "3379c9bd722e36be9bf8856c6fa373bfa9b33305ac9da5fc807cfe7fa605f489"
-- 
2.17.1

