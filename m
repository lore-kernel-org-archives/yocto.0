Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.8366.1586860182587076811
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 03:29:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 03EATALY005047
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Tue, 14 Apr 2020 03:29:31 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 03:29:04 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] samhain-server: add volatile file for systemd
Date: Tue, 14 Apr 2020 18:29:01 +0800
Message-ID: <20200414102901.5213-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Add volatile file to create /var/log/yule when using systemd. Also
remove unused /var/log directory in do_install.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../samhain/files/samhain-server-volatiles.conf  |  1 +
 recipes-ids/samhain/samhain-server.bb            | 16 ++++++++++++----
 recipes-ids/samhain/samhain.inc                  |  2 ++
 3 files changed, 15 insertions(+), 4 deletions(-)
 create mode 100644 recipes-ids/samhain/files/samhain-server-volatiles.conf

diff --git a/recipes-ids/samhain/files/samhain-server-volatiles.conf b/recipes-ids/samhain/files/samhain-server-volatiles.conf
new file mode 100644
index 0000000..f2ea390
--- /dev/null
+++ b/recipes-ids/samhain/files/samhain-server-volatiles.conf
@@ -0,0 +1 @@
+d /var/log/yule 0775 daemon daemon -
diff --git a/recipes-ids/samhain/samhain-server.bb b/recipes-ids/samhain/samhain-server.bb
index d304912..e7a3aa6 100644
--- a/recipes-ids/samhain/samhain-server.bb
+++ b/recipes-ids/samhain/samhain-server.bb
@@ -4,14 +4,22 @@ require samhain.inc
 
 DEPENDS = "gmp"
 
-SRC_URI += "file://samhain-server-volatiles"
+SRC_URI += "file://samhain-server-volatiles \
+            file://samhain-server-volatiles.conf \
+           "
 
 TARGET_CC_ARCH += "${LDFLAGS}"
 
 do_install_append() {
-    install -d ${D}${sysconfdir}/default/volatiles
-    install -m 0644 ${WORKDIR}/samhain-server-volatiles \
-        ${D}${sysconfdir}/default/volatiles/samhain-server
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -d ${D}${sysconfdir}/tmpfiles.d
+        install -m 0644 ${WORKDIR}/samhain-server-volatiles.conf \
+            ${D}${sysconfdir}/tmpfiles.d/samhain-server.conf
+    else
+        install -d ${D}${sysconfdir}/default/volatiles
+        install -m 0644 ${WORKDIR}/samhain-server-volatiles \
+            ${D}${sysconfdir}/default/volatiles/samhain-server
+    fi
 
     install -m 700 samhain-install.sh init/samhain.startLinux \
         init/samhain.startLSB ${D}/var/lib/samhain
diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 91eb697..0a5e432 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -159,6 +159,8 @@ do_install_append () {
 	if [ -d ${D}${localstatedir}/run ]; then
 		rmdir ${D}${localstatedir}/run
 	fi
+
+	rm -rf ${D}${localstatedir}/log
 }
 
 FILES_${PN} += "${systemd_system_unitdir}"
-- 
2.17.1

