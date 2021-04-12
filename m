Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com [217.140.106.55])
 by mx.groups.io with SMTP id smtpd.web08.20669.1618241432439633898
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Apr 2021 08:30:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.106.55, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 13CFUTqb019706;
	Mon, 12 Apr 2021 16:30:29 +0100
From: "Anton Antonov" <anton.antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-security][PATCH] Clearly define clang toolchain in Parsec recipes
Date: Mon, 12 Apr 2021 16:30:26 +0100
Message-Id: <20210412153026.9413-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 .../recipes-parsec/parsec-service/parsec-service_0.7.0.bb     | 4 ++--
 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb   | 3 +--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
index b3f7b21..0e14955 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
@@ -10,8 +10,8 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
             file://parsec-tmpfiles.conf \
 "
 
-DEPENDS = "clang-native tpm2-tss"
-INSANE_SKIP_${PN} += "dev-deps"
+DEPENDS = "tpm2-tss"
+TOOLCHAIN = "clang"
 
 CARGO_BUILD_FLAGS += " --features all-providers,cryptoki/generate-bindings,tss-esapi/generate-bindings"
 
diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
index 939e771..35c65c0 100644
--- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
@@ -7,8 +7,7 @@ inherit cargo
 SRC_URI += "crate://crates.io/parsec-tool/${PV} \
 "
 
-DEPENDS = "clang-native"
-INSANE_SKIP_${PN} += "dev-deps"
+TOOLCHAIN = "clang"
 
 do_install() {
   install -d ${D}/${bindir}
-- 
2.20.1

