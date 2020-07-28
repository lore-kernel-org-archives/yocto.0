Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.8089.1595924948604408951
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 01:29:08 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 06S8SD7F002672
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 28 Jul 2020 01:28:39 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 28 Jul
 2020 01:28:02 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <joe@deserted.net>
Subject: [meta-selinux][PATCH 1/2] selinux-*.bb: fix typos
Date: Tue, 28 Jul 2020 16:27:57 +0800
Message-ID: <20200728082758.9609-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Fixes:
${PN}_RDEPENDS -> RDEPENDS_${PN}

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-autorelabel_0.1.bb | 2 +-
 recipes-security/selinux/selinux-init_0.1.bb        | 2 +-
 recipes-security/selinux/selinux-labeldev_0.1.bb    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/selinux/selinux-autorelabel_0.1.bb b/recipes-security/selinux/selinux-autorelabel_0.1.bb
index b898c3b..85b0db9 100644
--- a/recipes-security/selinux/selinux-autorelabel_0.1.bb
+++ b/recipes-security/selinux/selinux-autorelabel_0.1.bb
@@ -7,7 +7,7 @@ file is present.\
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-${PN}_RDEPENDS = " \
+RDEPENDS_${PN} = " \
     policycoreutils-setfiles \
 "
 
diff --git a/recipes-security/selinux/selinux-init_0.1.bb b/recipes-security/selinux/selinux-init_0.1.bb
index 78f571c..ebe7399 100644
--- a/recipes-security/selinux/selinux-init_0.1.bb
+++ b/recipes-security/selinux/selinux-init_0.1.bb
@@ -7,7 +7,7 @@ boot time. \
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-${PN}_RDEPENDS = " \
+RDEPENDS_${PN} = " \
     coreutils \
     libselinux-bin \
     policycoreutils-secon \
diff --git a/recipes-security/selinux/selinux-labeldev_0.1.bb b/recipes-security/selinux/selinux-labeldev_0.1.bb
index 8eb5db4..2a0bca9 100644
--- a/recipes-security/selinux/selinux-labeldev_0.1.bb
+++ b/recipes-security/selinux/selinux-labeldev_0.1.bb
@@ -4,7 +4,7 @@ DESCRIPTION = "Set SELinux labels for /dev."
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-${PN}_RDEPENDS = " \
+RDEPENDS_${PN} = " \
     coreutils \
     libselinux-bin \
     policycoreutils-setfiles \
-- 
2.17.1

