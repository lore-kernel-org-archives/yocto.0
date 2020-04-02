Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.2542.1585818770569717048
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Apr 2020 02:12:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 0329ClRC028221
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 2 Apr 2020 02:12:47 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 2 Apr
 2020 02:12:47 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH] selinux.bbclass: remove True option in getVar()
Date: Thu, 2 Apr 2020 17:12:44 +0800
Message-ID: <20200402091244.10662-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

The getVar() defaults to expanding by default, thus remove the True
option from all getVar() calls.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 classes/selinux.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/selinux.bbclass b/classes/selinux.bbclass
index fb0df27..13256d5 100644
--- a/classes/selinux.bbclass
+++ b/classes/selinux.bbclass
@@ -2,8 +2,8 @@ def target_selinux(d, truevar = 'selinux', falsevar = ''):
     if not bb.utils.contains("DISTRO_FEATURES", "selinux", True, False, d):
         return falsevar
 
-    pn = d.getVar("PN", True) 
-    type = pn.replace(d.getVar("BPN", True), "") 
+    pn = d.getVar("PN")
+    type = pn.replace(d.getVar("BPN"), "")
     if type in ("-native", "nativesdk-", "-cross", "-crosssdk"):
         return falsevar
 
-- 
2.17.1

