Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web11.55164.1583757923738909330
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Mar 2020 05:45:23 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 029CjJOg022043
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Mon, 9 Mar 2020 05:45:19 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Mon, 9 Mar
 2020 05:45:18 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] openscap-daemon: add missing runtime dependencies
Date: Mon, 9 Mar 2020 20:45:16 +0800
Message-ID: <20200309124516.25548-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Add missing runtime dependencies otherwise /usr/bin/oscapd can not
startup.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../openscap-daemon/openscap-daemon_0.1.10.bb                | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
index ca6e030..a775021 100644
--- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
+++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
@@ -17,4 +17,7 @@ inherit setuptools3
 
 S = "${WORKDIR}/git"
 
-RDEPENDS_${PN} = "python"
+RDEPENDS_${PN} = "openscap scap-security-guide \
+                  python3-core python3-dbus \
+                  python3-pygobject \
+                 "
-- 
2.17.1

