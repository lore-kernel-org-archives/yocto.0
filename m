Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web11.7520.1582471930028497090
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Feb 2020 07:32:10 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 01NFW646027627
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Sun, 23 Feb 2020 07:32:06 -0800 (PST)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Sun, 23 Feb
 2020 07:32:05 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>, <joe@deserted.net>,
        <Joe_MacDonald@mentor.com>
Subject: [meta-selinux][PATCH] linux-yocto: drop 4.x bbappend
Date: Sun, 23 Feb 2020 23:32:03 +0800
Message-ID: <20200223153203.18708-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

The linux-yocto 4.x recipes have been dropped in oe-core. We can remove
the bbappend.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-kernel/linux/linux-yocto_4.%.bbappend | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto_4.%.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_4.%.bbappend b/recipes-kernel/linux/linux-yocto_4.%.bbappend
deleted file mode 100644
index 7719d3b..0000000
--- a/recipes-kernel/linux/linux-yocto_4.%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
-- 
2.17.1

