Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web10.6784.1586850158316315032
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:42:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 03E7gZGk007408
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:42:35 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:42:34 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 02/16] selinux: upgrade inc files to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:44 +0800
Message-ID: <20200414074158.32058-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{selinux_20190315.inc => selinux_20191204.inc}      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/selinux/{selinux_20190315.inc => selinux_20191204.inc} (90%)

diff --git a/recipes-security/selinux/selinux_20190315.inc b/recipes-security/selinux/selinux_20191204.inc
similarity index 90%
rename from recipes-security/selinux/selinux_20190315.inc
rename to recipes-security/selinux/selinux_20191204.inc
index e79dd54..113fc30 100644
--- a/recipes-security/selinux/selinux_20190315.inc
+++ b/recipes-security/selinux/selinux_20191204.inc
@@ -1,4 +1,4 @@
-SELINUX_RELEASE = "20190315"
+SELINUX_RELEASE = "20191204"
 
 SRC_URI = "https://github.com/SELinuxProject/selinux/releases/download/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
 
-- 
2.17.1

