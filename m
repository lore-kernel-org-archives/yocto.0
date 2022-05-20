Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0896C433EF
	for <webhook@archiver.kernel.org>; Fri, 20 May 2022 13:41:52 +0000 (UTC)
Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com
 [217.140.106.49])
 by mx.groups.io with SMTP id smtpd.web10.8920.1653054103842382338
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 May 2022 06:41:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.106.49, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com
 (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 24KDh4jb022581;
	Fri, 20 May 2022 14:43:04 +0100
From: Anton Antonov <Anton.Antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-security][PATCH] Parsec-service: Update installation procedure
Date: Fri, 20 May 2022 14:41:32 +0100
Message-Id: <20220520134132.3950011-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 May 2022 13:41:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57146

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 .../parsec-service/files/parsec-tmpfiles.conf    |  1 +
 .../parsec-service/parsec-service_1.0.0.bb       | 16 +++++++++-------
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf b/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf
index fe576a2..954bfa3 100644
--- a/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf
+++ b/meta-parsec/recipes-parsec/parsec-service/files/parsec-tmpfiles.conf
@@ -1,2 +1,3 @@
 #Type   Path            Mode    User    Group   Age     Argument
 d       /run/parsec     755     parsec  parsec  -       -
+d       /var/lib/parsec 700     parsec  parsec  -       -
diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
index d1d6c07..ad7e560 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
@@ -15,8 +15,8 @@ PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO"
 have_TPM = "${@bb.utils.contains('DISTRO_FEATURES', 'tpm2', 'TPM', '', d)}"
 PACKAGECONFIG:append = " ${@bb.utils.contains('BBFILE_COLLECTIONS', 'tpm-layer', '${have_TPM}', '', d)}"
 
-PACKAGECONFIG[ALL] = "all-providers cryptoki/generate-bindings tss-esapi/generate-bindings,,tpm2-tss libts,libts"
-PACKAGECONFIG[TPM] = "tpm-provider tss-esapi/generate-bindings,,tpm2-tss"
+PACKAGECONFIG[ALL] = "all-providers cryptoki/generate-bindings tss-esapi/generate-bindings,,tpm2-tss libts,tpm2-tss libtss2-tcti-device libts"
+PACKAGECONFIG[TPM] = "tpm-provider tss-esapi/generate-bindings,,tpm2-tss,tpm2-tss libtss2-tcti-device"
 PACKAGECONFIG[PKCS11] = "pkcs11-provider cryptoki/generate-bindings,"
 PACKAGECONFIG[MBED-CRYPTO] = "mbed-crypto-provider,"
 PACKAGECONFIG[CRYPTOAUTHLIB] = "cryptoauthlib-provider,"
@@ -25,6 +25,9 @@ PACKAGECONFIG[TS] = "trusted-service-provider,,libts,libts"
 PARSEC_FEATURES = "${@d.getVar('PACKAGECONFIG_CONFARGS',True).strip().replace(' ', ',')}"
 CARGO_BUILD_FLAGS += " --features ${PARSEC_FEATURES}"
 
+export BINDGEN_EXTRA_CLANG_ARGS
+BINDGEN_EXTRA_CLANG_ARGS = "--sysroot=${WORKDIR}/recipe-sysroot -I${WORKDIR}/recipe-sysroot/usr/include"
+
 inherit systemd
 SYSTEMD_SERVICE:${PN} = "parsec.service"
 
@@ -35,7 +38,7 @@ INITSCRIPT_NAME = "parsec"
 # The file should also be included into SRC_URI then
 PARSEC_CONFIG ?= "${S}/config.toml"
 
-do_install:append () {
+do_install () {
     # Binaries
     install -d -m 700 -o parsec -g parsec "${D}${libexecdir}/parsec"
     install -m 700 -o parsec -g parsec "${WORKDIR}/build/target/${CARGO_TARGET_SUBDIR}/parsec" ${D}${libexecdir}/parsec/parsec
@@ -44,9 +47,6 @@ do_install:append () {
     install -d -m 700 -o parsec -g parsec "${D}${sysconfdir}/parsec"
     install -m 400 -o parsec -g parsec "${PARSEC_CONFIG}" ${D}${sysconfdir}/parsec/config.toml
 
-    # Data dir
-    install -d -m 700 -o parsec -g parsec "${D}${localstatedir}/lib/parsec"
-
     if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
         install -d ${D}${systemd_unitdir}/system
         install -m 644 ${S}/systemd-daemon/parsec.service ${D}${systemd_unitdir}/system
@@ -58,6 +58,8 @@ do_install:append () {
     if ${@bb.utils.contains('DISTRO_FEATURES', 'sysvinit', 'true', 'false', d)}; then
         install -d ${D}${sysconfdir}/init.d
         install -m 755 ${WORKDIR}/parsec_init ${D}${sysconfdir}/init.d/parsec
+        # Data dir
+        install -d -m 700 -o parsec -g parsec "${D}${localstatedir}/lib/parsec"
     fi
 }
 
@@ -65,12 +67,12 @@ inherit useradd
 USERADD_PACKAGES = "${PN}"
 USERADD_PARAM:${PN} = "-r -g parsec -s /bin/false -d ${localstatedir}/lib/parsec parsec"
 GROUPADD_PARAM:${PN} = "-r parsec"
+GROUPMEMS_PARAM:${PN} = "${@bb.utils.contains('PACKAGECONFIG_CONFARGS', 'tpm-provider', '-a parsec -g tss', '', d)}"
 
 FILES:${PN} += " \
     ${sysconfdir}/parsec/config.toml \
     ${libexecdir}/parsec/parsec \
     ${systemd_unitdir}/system/parsec.service \
-    ${localstatedir}/lib/parsec \
     ${libdir}/tmpfiles.d/parsec-tmpfiles.conf \
     ${sysconfdir}/init.d/parsec \
 "
-- 
2.25.1


