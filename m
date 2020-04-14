Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web10.6833.1586850326085920950
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:45:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 03E7jPS4008864
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:45:25 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:45:24 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 15/16] selinux-gui: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:57 +0800
Message-ID: <20200414074158.32058-15-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-gui_2.9.bb | 7 -------
 recipes-security/selinux/selinux-gui_3.0.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-gui_2.9.bb
 create mode 100644 recipes-security/selinux/selinux-gui_3.0.bb

diff --git a/recipes-security/selinux/selinux-gui_2.9.bb b/recipes-security/selinux/selinux-gui_2.9.bb
deleted file mode 100644
index 0bb051c..0000000
--- a/recipes-security/selinux/selinux-gui_2.9.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20190315.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "1bfe5eeb861f8563a7b397ab8530ab52"
-SRC_URI[sha256sum] = "bbd9e1799cc0c22d64c815c3033a54393f6f84947ff2841a4df60ded5eee0510"
diff --git a/recipes-security/selinux/selinux-gui_3.0.bb b/recipes-security/selinux/selinux-gui_3.0.bb
new file mode 100644
index 0000000..e937836
--- /dev/null
+++ b/recipes-security/selinux/selinux-gui_3.0.bb
@@ -0,0 +1,7 @@
+require selinux_20191204.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "988a564eccc01feb8cc6fa49630efc6d"
+SRC_URI[sha256sum] = "e9e9b599950a30857b0954bf10853ea50efb7de68a5ae756a27b8d03ccc44348"
-- 
2.17.1

