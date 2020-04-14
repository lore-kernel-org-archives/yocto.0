Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.6829.1586850302057514951
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:45:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 03E7iKpH001049
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:44:31 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:44:10 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 11/16] restorecond: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:53 +0800
Message-ID: <20200414074158.32058-11-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Fix typo in patch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../policycoreutils-make-O_CLOEXEC-optional.patch          | 2 +-
 recipes-security/selinux/restorecond_2.9.bb                | 7 -------
 recipes-security/selinux/restorecond_3.0.bb                | 7 +++++++
 3 files changed, 8 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/restorecond_2.9.bb
 create mode 100644 recipes-security/selinux/restorecond_3.0.bb

diff --git a/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch b/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch
index 2928aff..83250eb 100644
--- a/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch
+++ b/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch
@@ -14,7 +14,7 @@ compile-time option and generate a warning when it is not available.
 The actual impact of leaking these file descriptors is minimal, though
 it does produce curious AVC Denied messages.
 
-Uptream-Status: Inappropriate
+Upstream-Status: Inappropriate
 [O_CLOEXEC has been in Linux since 2007 and POSIX since 2008]
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
diff --git a/recipes-security/selinux/restorecond_2.9.bb b/recipes-security/selinux/restorecond_2.9.bb
deleted file mode 100644
index 2ccac18..0000000
--- a/recipes-security/selinux/restorecond_2.9.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20190315.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "1a24cb2a23d8bd01d3f8d9bb2031981f"
-SRC_URI[sha256sum] = "cbf9820583e641ee0462fa7bc89e6024676af281e025703e17b2d019b1a25a4f"
diff --git a/recipes-security/selinux/restorecond_3.0.bb b/recipes-security/selinux/restorecond_3.0.bb
new file mode 100644
index 0000000..8c840c9
--- /dev/null
+++ b/recipes-security/selinux/restorecond_3.0.bb
@@ -0,0 +1,7 @@
+require selinux_20191204.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "f32edbd8a1f724ef1e4fa70bf9e22685"
+SRC_URI[sha256sum] = "32a92c9f4bf48c613f9f467ced58d8c369eec8892239cd44d5d0e139b41926dc"
-- 
2.17.1

