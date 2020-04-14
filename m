Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.6826.1586850289218694214
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:44:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 03E7imTG025986
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:44:48 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:44:47 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 13/16] selinux-dbus: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:55 +0800
Message-ID: <20200414074158.32058-13-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-dbus_2.9.bb | 7 -------
 recipes-security/selinux/selinux-dbus_3.0.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-dbus_2.9.bb
 create mode 100644 recipes-security/selinux/selinux-dbus_3.0.bb

diff --git a/recipes-security/selinux/selinux-dbus_2.9.bb b/recipes-security/selinux/selinux-dbus_2.9.bb
deleted file mode 100644
index ab00ffc..0000000
--- a/recipes-security/selinux/selinux-dbus_2.9.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20190315.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "e403f9745fad67aae5903909572ca5b8"
-SRC_URI[sha256sum] = "ac54cecdea6a88b4a818981ac82654d054a3c5232b1b282ebf7418c3e350cc7a"
diff --git a/recipes-security/selinux/selinux-dbus_3.0.bb b/recipes-security/selinux/selinux-dbus_3.0.bb
new file mode 100644
index 0000000..afae77b
--- /dev/null
+++ b/recipes-security/selinux/selinux-dbus_3.0.bb
@@ -0,0 +1,7 @@
+require selinux_20191204.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "775f058ea19f424d99ce3bd13297234c"
+SRC_URI[sha256sum] = "95d75603444c3eeaebf25da3de6febb6e1567d5f5d93cde5a4b73c88ef6c4f28"
-- 
2.17.1

