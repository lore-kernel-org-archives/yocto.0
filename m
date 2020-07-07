Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.12248.1594110630944825989
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 01:30:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 0678USTR013939
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 7 Jul 2020 01:30:29 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 7 Jul
 2020 01:30:28 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <joe@deserted.net>
Subject: [meta-selinux][PATCH 4/4] sysklogd: set correct security context for /var/log in initscript
Date: Tue, 7 Jul 2020 16:29:14 +0800
Message-ID: <20200707082914.30094-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200707082914.30094-1-yi.zhao@windriver.com>
References: <20200707082914.30094-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

We don't need to set security context for /dev/log after syslogd daemon
startup because it is already set by udev. We just need to set the
correct security context for symbolic link /var/log before syslogd
startup.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-extended/sysklogd/files/sysklogd | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/sysklogd/files/sysklogd b/recipes-extended/sysklogd/files/sysklogd
index e49c2da..7943b1d 100644
--- a/recipes-extended/sysklogd/files/sysklogd
+++ b/recipes-extended/sysklogd/files/sysklogd
@@ -108,8 +108,8 @@ case "$1" in
   start)
     log_begin_msg "Starting system log daemon..."
     create_xconsole
+    test ! -x /sbin/restorecon || /sbin/restorecon -F /var/log
     start-stop-daemon --start --quiet --pidfile $pidfile_syslogd --name syslogd --startas $binpath_syslogd -- $SYSLOGD
-    test ! -x /sbin/restorecon || /sbin/restorecon -RF /dev/log /var/log/
     log_end_msg $?
     ;;
   stop)
-- 
2.17.1

