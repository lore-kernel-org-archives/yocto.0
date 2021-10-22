Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E29C433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Oct 2021 12:45:04 +0000 (UTC)
Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com
 [217.140.106.49])
 by mx.groups.io with SMTP id smtpd.web12.7726.1634906702635172869
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Oct 2021 05:45:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.106.49, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com
 (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 19MCjYrd009525;
	Fri, 22 Oct 2021 13:45:34 +0100
From: Anton Antonov <Anton.Antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-security][PATCH] Parsec service. Update PACKAGECONFIG
 definitions and README.md
Date: Fri, 22 Oct 2021 13:44:55 +0100
Message-Id: <20211022124455.1879936-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Oct 2021 12:45:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55120

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 meta-parsec/README.md                         | 23 +++++++++++++++----
 .../parsec-service/parsec-service_0.8.1.bb    | 10 ++++----
 2 files changed, 23 insertions(+), 10 deletions(-)

diff --git a/meta-parsec/README.md b/meta-parsec/README.md
index aeb48a6..c5635d3 100644
--- a/meta-parsec/README.md
+++ b/meta-parsec/README.md
@@ -1,8 +1,7 @@
 meta-parsec layer
 ==============
 
-This layer contains recipes for the Parsec service with Mbed-Crypto,
-Pkcs11 and TPM providers and parsec tools.
+This layer contains recipes for the Parsec service and parsec tools.
 
 Dependencies
 ============
@@ -43,9 +42,16 @@ local.conf:
 
     IMAGE_INSTALL:append = " parsec-service"
 
-  The Parsec service will be deployed into the image built with all the supported
-providers and with the default config file from the Parsec repository:
+  By default the Parsec service will be deployed into the image with
+TPM, PKCS11, MBED-CRYPTO and CRYPTOAUTHLIB providers build in
+and with the default config file from the Parsec repository:
 https://github.com/parallaxsecond/parsec/blob/main/config.toml
+
+  You can use PACKAGECONFIG for Parsec servic recipe to define
+what providers should be built in. For example,
+
+    PACKAGECONFIG:pn-parsec-service = "TPM"
+
   The default Parsec service config file contains the MbedCrypto provider
 enabled. The config file needs to be updated to use the Parsec service
 with other providers like TPM or PKCS11. The required procedures are
@@ -80,12 +86,19 @@ manual testing of the Parsec service:
 to test the Parsec service base functionality:
 https://www.youtube.com/watch?v=ido0CyUdMHM&list=PLKjl7IFAwc4S7WQqqphCsyy6DPDxJ2Skg&index=4
 
+  The parsec-tool recipe also includes `parsec-cli-tests.sh` script
+which runs e2e tests against all providers enabled and configured
+in Parsec service.
+
   You can use runqemu to start a VM with a built image file and run
 manual tests with parsec-tool.
 
+Enabling Parsec providers for manual testing
+============================================
+
 1. MbedCrypto provider
   The default Parsec service config file contains the MbedCrypto provider
-enabled. No changes required for manual testing.
+enabled. No changes required.
 
 2. PKCS11 provider
   The Software HSM can be used for manual testing of the provider by
diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
index b8bfa98..9161872 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.8.1.bb
@@ -13,15 +13,15 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
 DEPENDS = "clang-native"
 
 PACKAGECONFIG ??= "TPM PKCS11 MBED-CRYPTO CRYPTOAUTHLIB"
-PACKAGECONFIG[ALL] = "all-providers,,tpm2-tss libts,libts"
-PACKAGECONFIG[TPM] = "tpm-provider,,tpm2-tss"
-PACKAGECONFIG[PKCS11] = "pkcs11-provider,"
+PACKAGECONFIG[ALL] = "all-providers cryptoki/generate-bindings tss-esapi/generate-bindings,,tpm2-tss libts,libts"
+PACKAGECONFIG[TPM] = "tpm-provider tss-esapi/generate-bindings,,tpm2-tss"
+PACKAGECONFIG[PKCS11] = "pkcs11-provider cryptoki/generate-bindings,"
 PACKAGECONFIG[MBED-CRYPTO] = "mbed-crypto-provider,"
 PACKAGECONFIG[CRYPTOAUTHLIB] = "cryptoauthlib-provider,"
 PACKAGECONFIG[TS] = "trusted-service-provider,,libts,libts"
 
-PARSEC_PROVIDERS = "${@d.getVar('PACKAGECONFIG_CONFARGS',True).replace(' ', ',')}"
-CARGO_BUILD_FLAGS += " --features ${PARSEC_PROVIDERS},cryptoki/generate-bindings,tss-esapi/generate-bindings"
+PARSEC_FEATURES = "${@d.getVar('PACKAGECONFIG_CONFARGS',True).strip().replace(' ', ',')}"
+CARGO_BUILD_FLAGS += " --features ${PARSEC_FEATURES}"
 
 inherit systemd
 SYSTEMD_SERVICE:${PN} = "parsec.service"
-- 
2.25.1


