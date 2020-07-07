Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.12120.1594110627797023328
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 01:30:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 0678UOlP023026
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 7 Jul 2020 01:30:25 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 7 Jul
 2020 01:30:24 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <joe@deserted.net>
Subject: [meta-selinux][PATCH 3/4] audit: set correct security context for /var/log/audit
Date: Tue, 7 Jul 2020 16:29:13 +0800
Message-ID: <20200707082914.30094-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200707082914.30094-1-yi.zhao@windriver.com>
References: <20200707082914.30094-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

By default /var/log is a symbolic link of /var/volatile/log. But
restorecon does not follow symbolic links then we will encounter the
following error when set /var/log/audit directory:

$ /sbin/restorecon -F /var/log/audit
/sbin/restorecon: SELinux: Could not get canonical path for /var/log/audit restorecon: Permission denied.

Use readlink to find the real path before set security context.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/audit/audit/auditd | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 mode change 100755 => 100644 recipes-security/audit/audit/auditd

diff --git a/recipes-security/audit/audit/auditd b/recipes-security/audit/audit/auditd
old mode 100755
new mode 100644
index cda2e43..6aa7f94
--- a/recipes-security/audit/audit/auditd
+++ b/recipes-security/audit/audit/auditd
@@ -86,7 +86,7 @@ do_reload() {
 
 if [ ! -e /var/log/audit ]; then
 	mkdir -p /var/log/audit
-	[ -x /sbin/restorecon ] && /sbin/restorecon -F /var/log/audit
+	[ -x /sbin/restorecon ] && /sbin/restorecon -F $(readlink -f /var/log/audit)
 fi
 
 case "$1" in
-- 
2.17.1

