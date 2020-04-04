Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web11.10201.1586012329391376978
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Apr 2020 07:58:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 034Ewmub026967
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Sat, 4 Apr 2020 07:58:48 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Sat, 4 Apr
 2020 07:58:47 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 3/3] bind: install volatiles file with correct name
Date: Sat, 4 Apr 2020 22:58:08 +0800
Message-ID: <20200404145808.8373-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200404145808.8373-1-yi.zhao@windriver.com>
References: <20200404145808.8373-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Install volatiles file as 04_bind rather than volatiles.04_bind.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-connectivity/bind/bind_selinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-connectivity/bind/bind_selinux.inc b/recipes-connectivity/bind/bind_selinux.inc
index 1dfef8a..1be9260 100644
--- a/recipes-connectivity/bind/bind_selinux.inc
+++ b/recipes-connectivity/bind/bind_selinux.inc
@@ -4,7 +4,7 @@ SRC_URI += "file://volatiles.04_bind"
 
 do_install_append() {
 	install -d ${D}${sysconfdir}/default/volatiles
-	install -m 0644 ${WORKDIR}/volatiles.04_bind ${D}${sysconfdir}/default/volatiles/volatiles.04_bind
+	install -m 0644 ${WORKDIR}/volatiles.04_bind ${D}${sysconfdir}/default/volatiles/04_bind
 
 	sed -i '/^\s*\/usr\/sbin\/rndc-confgen/a\
 	    [ -x /sbin/restorecon ] && /sbin/restorecon -F /etc/bind/rndc.key' ${D}${sysconfdir}/init.d/bind
-- 
2.17.1

