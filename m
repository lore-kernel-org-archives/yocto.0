Received: from cam-smtp0.cambridge.arm.com (cam-smtp0.cambridge.arm.com [217.140.106.49])
 by mx.groups.io with SMTP id smtpd.web08.7569.1617966889200614706
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Apr 2021 04:14:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.106.49, mailfrom: anton.antonov@arm.com)
Received: from atg-devlab-kelpie.cambridge.arm.com (atg-devlab-kelpie.cambridge.arm.com [10.2.80.92])
	by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 139BEfQM022209;
	Fri, 9 Apr 2021 12:14:46 +0100
From: "Anton Antonov" <anton.antonov@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Anton.Antonov@arm.com, Anton Antonov <anton.antonov@arm.com>
Subject: [meta-security][PATCH 2/2] Define secure images with parsec-service and parsec-tool included and add the images into gitlab CI
Date: Fri,  9 Apr 2021 12:14:08 +0100
Message-Id: <20210409111408.31628-2-Anton.Antonov@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210409111408.31628-1-Anton.Antonov@arm.com>
References: <20210409111408.31628-1-Anton.Antonov@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Anton Antonov <anton.antonov@arm.com>

Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
---
 .gitlab-ci.yml              | 25 +++++++++++++++++++++++++
 kas/kas-security-parsec.yml | 21 +++++++++++++++++++++
 kas/qemuarm-parsec.yml      |  6 ++++++
 kas/qemuarm64-parsec.yml    |  6 ++++++
 kas/qemuppc-parsec.yml      |  6 ++++++
 kas/qemux86-64-parsec.yml   |  6 ++++++
 kas/qemux86-parsec.yml      |  6 ++++++
 7 files changed, 76 insertions(+)
 create mode 100644 kas/kas-security-parsec.yml
 create mode 100644 kas/qemuarm-parsec.yml
 create mode 100644 kas/qemuarm64-parsec.yml
 create mode 100644 kas/qemuppc-parsec.yml
 create mode 100644 kas/qemux86-64-parsec.yml
 create mode 100644 kas/qemux86-parsec.yml

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 1442239..323285a 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -151,3 +151,28 @@ qemux86-test:
   script:
   - kas build --target security-test-image kas/$CI_JOB_NAME.yml 
   - kas build -c testimage --target security-test-image kas/$CI_JOB_NAME.yml 
+
+qemux86-parsec:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemux86-64-parsec:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemuarm-parsec:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemuarm-64-parsec:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
+
+qemuppc-parsec:
+  extends: .build
+  script:
+  - kas build --target security-build-image kas/$CI_JOB_NAME.yml 
diff --git a/kas/kas-security-parsec.yml b/kas/kas-security-parsec.yml
new file mode 100644
index 0000000..6152f0c
--- /dev/null
+++ b/kas/kas-security-parsec.yml
@@ -0,0 +1,21 @@
+header:
+    version: 9
+    includes:
+        - kas-security-base.yml
+
+repos:
+  meta-security:
+    layers:
+      meta-parsec:
+
+  meta-rust:
+    url: https://github.com/meta-rust/meta-rust.git
+    refspec: master
+
+  meta-clang:
+    url: https://github.com/kraj/meta-clang.git
+    refspec: master
+
+local_conf_header:
+  meta-parsec: |
+    IMAGE_INSTALL_append = " parsec-service parsec-tool"
diff --git a/kas/qemuarm-parsec.yml b/kas/qemuarm-parsec.yml
new file mode 100644
index 0000000..cef2818
--- /dev/null
+++ b/kas/qemuarm-parsec.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-parsec.yml
+
+machine: qemuarm
diff --git a/kas/qemuarm64-parsec.yml b/kas/qemuarm64-parsec.yml
new file mode 100644
index 0000000..9b593bc
--- /dev/null
+++ b/kas/qemuarm64-parsec.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-parsec.yml
+
+machine: qemuarm64
diff --git a/kas/qemuppc-parsec.yml b/kas/qemuppc-parsec.yml
new file mode 100644
index 0000000..1176d13
--- /dev/null
+++ b/kas/qemuppc-parsec.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-parsec.yml
+
+machine: qemuppc
diff --git a/kas/qemux86-64-parsec.yml b/kas/qemux86-64-parsec.yml
new file mode 100644
index 0000000..ec39c14
--- /dev/null
+++ b/kas/qemux86-64-parsec.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-parsec.yml
+
+machine: qemux86-64
diff --git a/kas/qemux86-parsec.yml b/kas/qemux86-parsec.yml
new file mode 100644
index 0000000..370947d
--- /dev/null
+++ b/kas/qemux86-parsec.yml
@@ -0,0 +1,6 @@
+header:
+  version: 8
+  includes:
+    - kas-security-parsec.yml
+
+machine: qemux86
-- 
2.20.1

