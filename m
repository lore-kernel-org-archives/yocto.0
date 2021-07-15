Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com [217.140.106.51])
 by mx.groups.io with SMTP id smtpd.web12.6675.1626349338699286602
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jul 2021 04:42:19 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.106.51, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 16FBgEQo012693;
	Thu, 15 Jul 2021 12:42:15 +0100
From: "Anton Antonov" <anton.antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-security][PATCH] Do not use clang toolchain in Parsec recipes
Date: Thu, 15 Jul 2021 12:42:05 +0100
Message-Id: <20210715114205.1801367-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 .../recipes-parsec/parsec-service/parsec-service_0.7.0.bb      | 3 +--
 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb    | 2 --
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
index 0e14955..d57a43a 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
@@ -10,8 +10,7 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
             file://parsec-tmpfiles.conf \
 "
 
-DEPENDS = "tpm2-tss"
-TOOLCHAIN = "clang"
+DEPENDS = "tpm2-tss clang-native"
 
 CARGO_BUILD_FLAGS += " --features all-providers,cryptoki/generate-bindings,tss-esapi/generate-bindings"
 
diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
index 35c65c0..881f8d8 100644
--- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
@@ -7,8 +7,6 @@ inherit cargo
 SRC_URI += "crate://crates.io/parsec-tool/${PV} \
 "
 
-TOOLCHAIN = "clang"
-
 do_install() {
   install -d ${D}/${bindir}
   install -m 755 "${B}/target/${TARGET_SYS}/release/parsec-tool" "${D}${bindir}/parsec-tool"
-- 
2.25.1

