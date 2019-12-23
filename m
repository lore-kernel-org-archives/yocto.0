Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.893.1577089390977542644
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2019 00:23:11 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3F6BE0122A; Mon, 23 Dec 2019 00:23:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B19A6E01227
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2019 00:23:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBN8MBTD004697
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 23 Dec 2019 00:22:37 -0800
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 23 Dec
 2019 00:22:34 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Subject: [meta-selinux][PATCH 4/6] selinux-initsh.inc: install selinux-init.sh and selinux-labeldev.sh when using systemd
Date: Mon, 23 Dec 2019 16:21:50 +0800
Message-ID: <20191223082152.7706-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191223082152.7706-1-yi.zhao@windriver.com>
References: <20191223082152.7706-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

The commit 5fd3c5b71edb99659aeb5cb5903088d84517382e introduced an issue
that selinux-init.sh and selinux-labeldev.sh are not installed when
using systemd which will cause the selinux-ini.service and
selinux-labeldev.service fail to startup. Move the do_install codes from
selinux-autorelabel to selinux-initsh.inc to make sure install these
scripts when using systemd.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-autorelabel_0.1.bb | 3 ---
 recipes-security/selinux/selinux-initsh.inc         | 9 +++++++--
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/recipes-security/selinux/selinux-autorelabel_0.1.bb b/recipes-security/selinux/selinux-autorelabel_0.1.bb
index 7e7d08c..b898c3b 100644
--- a/recipes-security/selinux/selinux-autorelabel_0.1.bb
+++ b/recipes-security/selinux/selinux-autorelabel_0.1.bb
@@ -21,9 +21,6 @@ require selinux-initsh.inc
 
 do_install_append() {
 	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
-		install -d ${D}${bindir}
-		install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${bindir}
-		sed -i -e '/.*HERE$/d' ${D}${bindir}/${SELINUX_SCRIPT_SRC}.sh
 		echo "# first boot relabelling" > ${D}/.autorelabel
 	fi
 }
diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-security/selinux/selinux-initsh.inc
index 6084762..0a6cf4b 100644
--- a/recipes-security/selinux/selinux-initsh.inc
+++ b/recipes-security/selinux/selinux-initsh.inc
@@ -27,8 +27,13 @@ do_install () {
 	       -e '/.*HERE$/d' -e '/.*Contents.*sysvinit/d' \
 	       ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
 
-	install -d ${D}${systemd_unitdir}/system
-	install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service ${D}${systemd_unitdir}/system
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -d ${D}${systemd_unitdir}/system
+        install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service ${D}${systemd_unitdir}/system
+        install -d ${D}${bindir}
+        install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${bindir}
+        sed -i -e '/.*HERE$/d' ${D}${bindir}/${SELINUX_SCRIPT_SRC}.sh
+    fi
 }
 
 sysroot_stage_all_append () {
-- 
2.17.1

