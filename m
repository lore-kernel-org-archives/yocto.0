Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com [217.140.106.50])
 by mx.groups.io with SMTP id smtpd.web08.10875.1618396535682045239
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 03:35:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.106.50, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 13EAZWQ1027453;
	Wed, 14 Apr 2021 11:35:32 +0100
From: "Anton Antonov" <anton.antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com
Subject: [meta-security][PATCH] gitlab-ci: Move all parsec builds into a separate job
Date: Wed, 14 Apr 2021 11:35:27 +0100
Message-Id: <20210414103527.19479-1-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 .gitlab-ci.yml | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index f673ef6..f155ba0 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -27,7 +27,6 @@ qemux86:
   extends: .build
   script:
   - kas build --target security-build-image kas/$CI_JOB_NAME.yml
-  - kas build --target security-build-image kas/$CI_JOB_NAME-parsec.yml
   - kas build --target security-build-image kas/$CI_JOB_NAME-comp.yml
   - kas build --target harden-image-minimal kas/$CI_JOB_NAME-harden.yml
   - kas build --target integrity-image-minimal kas/$CI_JOB_NAME-ima.yml
@@ -36,7 +35,6 @@ qemux86-64:
   extends: .build
   script:
   - kas build --target security-build-image kas/$CI_JOB_NAME.yml
-  - kas build --target security-build-image kas/$CI_JOB_NAME-parsec.yml
   - kas build --target dm-verity-image-initramfs kas/$CI_JOB_NAME-dm-verify.yml
   - kas build --target integrity-image-minimal kas/$CI_JOB_NAME-ima.yml
 
@@ -44,20 +42,17 @@ qemuarm:
   extends: .build
   script:
   - kas build --target security-build-image kas/$CI_JOB_NAME.yml
-  - kas build --target security-build-image kas/$CI_JOB_NAME-parsec.yml
 
 qemuarm64:
   extends: .build
   script:
   - kas build --target security-build-image kas/$CI_JOB_NAME.yml
-  - kas build --target security-build-image kas/$CI_JOB_NAME-parsec.yml
   - kas build --target integrity-image-minimal kas/$CI_JOB_NAME-ima.yml
 
 qemuppc:
   extends: .build
   script:
   - kas build --target security-build-image kas/$CI_JOB_NAME.yml
-  - kas build --target security-build-image kas/$CI_JOB_NAME-parsec.yml
 
 qemumips64:
   extends: .build
@@ -127,3 +122,12 @@ qemux86-test:
   - kas build --target security-test-image kas/$CI_JOB_NAME.yml
   - kas build -c testimage --target security-test-image kas/$CI_JOB_NAME.yml
 
+
+parsec:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/qemuarm-$CI_JOB_NAME.yml
+  - kas build --target security-build-image kas/qemuarm64-$CI_JOB_NAME.yml
+  - kas build --target security-build-image kas/qemux86-$CI_JOB_NAME.yml
+  - kas build --target security-build-image kas/qemux86-64-$CI_JOB_NAME.yml
+  - kas build --target security-build-image kas/qemuppc-$CI_JOB_NAME.yml
-- 
2.20.1

