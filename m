Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.5419.1579572050177252811
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 18:00:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 00L20mOe028203
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 20 Jan 2020 18:00:48 -0800 (PST)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 20 Jan
 2020 18:00:47 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <mark.hatle@kernel.crashing.org>
Subject: [meta-openssl102-fips][PATCH 3/3] fipscheck: only enable if OPENSSL_FIPS_ENABLED is set
Date: Tue, 21 Jan 2020 10:00:11 +0800
Message-ID: <20200121020011.29224-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121020011.29224-1-yi.zhao@windriver.com>
References: <20200121020011.29224-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

We encountered the following error when building fipscheck without
setting OPENSSL_FIPS_ENABLED:

ERROR: Nothing PROVIDES 'openssl-fips' (but /buildarea/poky/meta-openssl102-fips/recipes-support/fipscheck/fipscheck_1.5.0.bb DEPENDS on or otherwise requires it)
openssl-fips was skipped: To enable the openssl-fips recipe set OPENSSL_FIPS_ENABLED = '1'.
ERROR: Required build target 'fipscheck' has no buildable providers.
Missing or unbuildable dependency chain was: ['fipscheck', 'openssl-fips']

Add a check function as openssl-fips recipe does. Build fipscheck only
if OPENSSL_FIPS_ENABLED is set.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-support/fipscheck/fipscheck_1.5.0.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-support/fipscheck/fipscheck_1.5.0.bb b/recipes-support/fipscheck/fipscheck_1.5.0.bb
index 9faed9c..970640d 100644
--- a/recipes-support/fipscheck/fipscheck_1.5.0.bb
+++ b/recipes-support/fipscheck/fipscheck_1.5.0.bb
@@ -49,4 +49,9 @@ pkg_postinst_${PN} () {
     fi
 }
 
+python __anonymous() {
+    if d.getVar("OPENSSL_FIPS_ENABLED", True) != "1":
+        raise bb.parse.SkipPackage("To enable the fipscheck recipe set OPENSSL_FIPS_ENABLED = '1'.")
+}
+
 FILES_${PN} += "${libdir}/fipscheck"
-- 
2.17.1

