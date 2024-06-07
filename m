Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D687C27C5E
	for <webhook@archiver.kernel.org>; Fri,  7 Jun 2024 03:17:37 +0000 (UTC)
Received: from esa10.hc1455-7.c3s2.iphmx.com (esa10.hc1455-7.c3s2.iphmx.com [139.138.36.225])
 by mx.groups.io with SMTP id smtpd.web11.33324.1717730253138431007
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jun 2024 20:17:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=q6Vfanri;
 spf=pass (domain: fujitsu.com, ip: 139.138.36.225, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1717730253; x=1749266253;
  h=from:to:cc:subject:date:message-id;
  bh=Kb0nBQD3+7dbAxosmlDi+Pki77mI+2Q3EJQc2cso7K0=;
  b=q6VfanriK5/g/7DVbhWZM130hFxdobEfelbXhU/70OrXVagl2EqLcnr0
   POlLF6lDddprCiS0nE6YhKinFZt3sWUbNHETZvkGEA/JnygiNiVI/i5GH
   HmPw+Urq2BQzpuPtF2DA7h3eU85DDMJOZ2RkTRmdx/RQqV30cYTbA5Bnx
   sH6WuQt1ZCX0NDl9AQY89Dti0YbNGFD6YRBBbg2UmtK0OuNaKMaUeEHza
   pz6d0LAKxikF2eTxrrX5IGZrxmBAuVRrcyRFSMgj9+3kTKoD0aABDPC0t
   z0KZbR9jDhnePW73CfG3vV7e/QDNE43m82yrsCozTwyzfnjMMkNC+KB8f
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="149647087"
X-IronPort-AV: E=Sophos;i="6.08,219,1712588400"; 
   d="scan'208";a="149647087"
Received: from unknown (HELO yto-r4.gw.nic.fujitsu.com) ([218.44.52.220])
  by esa10.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2024 12:17:30 +0900
Received: from yto-m2.gw.nic.fujitsu.com (yto-nat-yto-m2.gw.nic.fujitsu.com [192.168.83.65])
	by yto-r4.gw.nic.fujitsu.com (Postfix) with ESMTP id 17112C9443
	for <yocto@lists.yoctoproject.org>; Fri,  7 Jun 2024 12:17:28 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by yto-m2.gw.nic.fujitsu.com (Postfix) with ESMTP id 5A4C5D50BE
	for <yocto@lists.yoctoproject.org>; Fri,  7 Jun 2024 12:17:27 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id D4D42E475F
	for <yocto@lists.yoctoproject.org>; Fri,  7 Jun 2024 12:17:26 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.200])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 5D0ED1A0002;
	Fri,  7 Jun 2024 11:17:26 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-security] [PATCH] recipes: Start WORKDIR -> UNPACKDIR transition
Date: Fri,  7 Jun 2024 11:17:17 +0800
Message-Id: <1717730237-20290-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28436.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28436.004
X-TMASE-Result: 10--4.438500-10.000000
X-TMASE-MatchedRID: AHaZm2SNi6em3gqX2JbPoQPZZctd3P4BRzUPAqhCjtiNJ2ckLRg2UYkw
	FLBp6Bq1c8RafM8kX5W12HagvbwDji/7QU2czuUNgyKXAUOPYkRLGPRv0WdxQojqjGwEhbwShEz
	I3+mkzic2AjvSSs99nRmrh2/8FzyKzCK25xPd0TunpBmVzsFAbj/FEHo4advax1Xsf0CZ5tejxY
	yRBa/qJft6/2HgfIgDVymkLM+r7VTGVuWouVipcqMtBMm2dcEYD6wEkjE9BXpZsrm/FwwfSNift
	cAEK4NFBzCFfKPnM23fboELNpU7OpAX1jOMwHb5EsdVnPAx0ajR/XVEOk2stf6/2/nZkihaOgB/
	fz3EXdcVKT0eFRmfDs4YhafCzgujIdY9jOi4lTI=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Jun 2024 03:17:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63292

From: Wang Mingyu <wangmy@fujitsu.com>

deal with error of un_pack.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 .../recipes-security/bastille/bastille_3.2.1.bb    | 12 ++++++------
 .../fail2ban/python3-fail2ban_1.0.2.bb             |  2 +-
 meta-tpm/recipes-tpm1/trousers/trousers_git.bb     |  6 +++---
 recipes-ids/samhain/samhain-server.bb              |  2 +-
 recipes-ids/samhain/samhain.inc                    | 14 +++++++-------
 .../ecryptfs-utils/ecryptfs-utils_111.bb           |  2 +-
 6 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb b/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
index f2ef335..7074f68 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
@@ -83,11 +83,11 @@ do_install () {
 	install -m 0644 Bastille/AccountSecurity.pm    ${D}${libdir}/Bastille
 	install -m 0644 Bastille/Apache.pm    ${D}${libdir}/Bastille
 	install -m 0644 Bastille/API.pm    ${D}${libdir}/Bastille
-	install -m 0644 ${WORKDIR}/AccountPermission.pm    ${D}${libdir}/Bastille/API
-	install -m 0644 ${WORKDIR}/FileContent.pm    ${D}${libdir}/Bastille/API
-	install -m 0644 ${WORKDIR}/HPSpecific.pm    ${D}${libdir}/Bastille/API
-	install -m 0644 ${WORKDIR}/ServiceAdmin.pm    ${D}${libdir}/Bastille/API
-	install -m 0644 ${WORKDIR}/Miscellaneous.pm    ${D}${libdir}/Bastille/API
+	install -m 0644 ${UNPACKDIR}/AccountPermission.pm    ${D}${libdir}/Bastille/API
+	install -m 0644 ${UNPACKDIR}/FileContent.pm    ${D}${libdir}/Bastille/API
+	install -m 0644 ${UNPACKDIR}/HPSpecific.pm    ${D}${libdir}/Bastille/API
+	install -m 0644 ${UNPACKDIR}/ServiceAdmin.pm    ${D}${libdir}/Bastille/API
+	install -m 0644 ${UNPACKDIR}/Miscellaneous.pm    ${D}${libdir}/Bastille/API
 	install -m 0644 Bastille/BootSecurity.pm    ${D}${libdir}/Bastille
 	install -m 0644 Bastille/ConfigureMiscPAM.pm    ${D}${libdir}/Bastille
 	install -m 0644 Bastille/DisableUserTools.pm    ${D}${libdir}/Bastille
@@ -138,7 +138,7 @@ do_install () {
 	install -m 0644 OSMap/OSX.bastille    ${D}${datadir}/Bastille/OSMap
 	install -m 0644 OSMap/OSX.system    ${D}${datadir}/Bastille/OSMap
 
-	install -m 0644 ${WORKDIR}/config ${D}${sysconfdir}/Bastille/config
+	install -m 0644 ${UNPACKDIR}/config ${D}${sysconfdir}/Bastille/config
 
 	for file in `cat Modules.txt` ; do
 		install -m 0644 Questions/$file.txt ${D}${datadir}/Bastille/Questions
diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
index bf5f87d..757336a 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_1.0.2.bb
@@ -40,7 +40,7 @@ do_install:append () {
     rm  -f ${D}/${bindir}/fail2ban-python
     install -d ${D}/${sysconfdir}/fail2ban
     install -d ${D}/${sysconfdir}/init.d
-    install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
+    install -m 0755 ${UNPACKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
 
     if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
         install -d ${D}${systemd_system_unitdir}
diff --git a/meta-tpm/recipes-tpm1/trousers/trousers_git.bb b/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
index 192c66c..44a4ee6 100644
--- a/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
@@ -32,13 +32,13 @@ do_install () {
 
 do_install:append() {
     install -d ${D}${sysconfdir}/init.d
-    install -m 0755 ${WORKDIR}/trousers.init.sh ${D}${sysconfdir}/init.d/trousers
+    install -m 0755 ${UNPACKDIR}/trousers.init.sh ${D}${sysconfdir}/init.d/trousers
     install -d ${D}${sysconfdir}/udev/rules.d
-    install -m 0644 ${WORKDIR}/trousers-udev.rules ${D}${sysconfdir}/udev/rules.d/45-trousers.rules
+    install -m 0644 ${UNPACKDIR}/trousers-udev.rules ${D}${sysconfdir}/udev/rules.d/45-trousers.rules
 
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         install -d ${D}${systemd_unitdir}/system
-        install -m 0644 ${WORKDIR}/tcsd.service ${D}${systemd_unitdir}/system/
+        install -m 0644 ${UNPACKDIR}/tcsd.service ${D}${systemd_unitdir}/system/
         sed -i -e 's#@SBINDIR@#${sbindir}#g' ${D}${systemd_unitdir}/system/tcsd.service
     fi        
 }
diff --git a/recipes-ids/samhain/samhain-server.bb b/recipes-ids/samhain/samhain-server.bb
index 8bae2d2..e7156dd 100644
--- a/recipes-ids/samhain/samhain-server.bb
+++ b/recipes-ids/samhain/samhain-server.bb
@@ -16,7 +16,7 @@ TARGET_CC_ARCH += "${LDFLAGS}"
 do_install:append() {
     if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
         install -d ${D}${sysconfdir}/tmpfiles.d
-        install -m 0644 ${WORKDIR}/samhain-server-volatiles.conf \
+        install -m 0644 ${UNPACKDIR}/samhain-server-volatiles.conf \
             ${D}${sysconfdir}/tmpfiles.d/samhain-server.conf
     else
         install -d ${D}${sysconfdir}/default/volatiles
diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index f5bea1d..74123e0 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -26,7 +26,7 @@ SRC_URI[sha256sum] = "ae6ee8eff3cb111b7fc14a57bcc258443dd0bcf1bfacfdf229935ed053
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
 
-S = "${WORKDIR}/samhain-${PV}"
+S = "${UNPACKDIR}/samhain-${PV}"
 
 inherit autotools-brokensep update-rc.d pkgconfig systemd
 
@@ -64,7 +64,7 @@ EXTRA_OEMAKE:append:aarch64 = " CPPFLAGS+=-DCONFIG_ARCH_AARCH64=1"
 EXTRA_OEMAKE:append:mips64 = " CPPFLAGS+=-DCONFIG_ARCH_MIPS64=1"
 
 do_unpack_samhain() {
-    cd ${WORKDIR}
+    cd ${UNPACKDIR}
     tar -xzvf samhain-${PV}.tar.gz
 }
 
@@ -129,19 +129,19 @@ do_compile:prepend:libc-musl () {
 do_install:append () {
 	oe_runmake install DESTDIR='${D}' INSTALL=install-boot
 
-	install -D -m 755 ${WORKDIR}/${INITSCRIPT_NAME}.init \
+	install -D -m 755 ${UNPACKDIR}/${INITSCRIPT_NAME}.init \
 		${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
 
-	install -D -m 755 ${WORKDIR}/${INITSCRIPT_NAME}.default \
+	install -D -m 755 ${UNPACKDIR}/${INITSCRIPT_NAME}.default \
 		${D}${sysconfdir}/default/${INITSCRIPT_NAME}
 
 	if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
 		if [ "${SAMHAIN_MODE}" = "no" ]; then
-		    install -D -m 0644 ${WORKDIR}/samhain.service ${D}/${systemd_system_unitdir}/samhain.service
+		    install -D -m 0644 ${UNPACKDIR}/samhain.service ${D}/${systemd_system_unitdir}/samhain.service
 		else
-		    install -D -m 0644 ${WORKDIR}/samhain.service ${D}/${systemd_system_unitdir}/${BPN}.service
+		    install -D -m 0644 ${UNPACKDIR}/samhain.service ${D}/${systemd_system_unitdir}/${BPN}.service
 		fi
-		install -D -m 0755 ${WORKDIR}/${BPN}.init ${D}/${libexecdir}/${BPN}
+		install -D -m 0755 ${UNPACKDIR}/${BPN}.init ${D}/${libexecdir}/${BPN}
 		sed -i -e 's,@LIBDIR@,${libexecdir},' \
 		       -e 's,@SAMHAIN_HELPER@,${BPN},' \
 		       -e 's,@MODE_NAME@,${MODE_NAME},' \
diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
index 00e8997..83d37d6 100644
--- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -62,7 +62,7 @@ do_install:append() {
            -e 's:-L${STAGING_LIBDIR}::' ${D}/${libdir}/pkgconfig/libecryptfs.pc
     sed -i -e "s: ${base_sbindir}/cryptsetup: ${sbindir}/cryptsetup:" ${D}${bindir}/ecryptfs-setup-swap
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
-        install -D -m 0644 ${WORKDIR}/ecryptfs.service ${D}${systemd_system_unitdir}/ecryptfs.service
+        install -D -m 0644 ${UNPACKDIR}/ecryptfs.service ${D}${systemd_system_unitdir}/ecryptfs.service
     fi
 }
 
-- 
2.34.1


