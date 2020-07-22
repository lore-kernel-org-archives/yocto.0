Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.11398.1595388352251270582
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 20:25:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 06M3PU2D004953
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2020 20:25:41 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 21 Jul
 2020 20:25:20 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] ibmswtpm2: upgrade 1563 -> 1628
Date: Wed, 22 Jul 2020 11:24:47 +0800
Message-ID: <20200722032447.2798-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb  | 27 -------------------
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb  | 26 ++++++++++++++++++
 2 files changed, 26 insertions(+), 27 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
deleted file mode 100644
index 8054226..0000000
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
+++ /dev/null
@@ -1,27 +0,0 @@
-SUMMARY = "IBM's Software TPM 2.0"
-LICENSE = "BSD"
-SECTION = "securty/tpm"
-LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
-
-DEPENDS = "openssl"
-
-SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
-           file://remove_optimization.patch \
-           "
-SRC_URI[md5sum] = "13013612b3a13dc935fefe1a5684179c"
-SRC_URI[sha256sum] = "fc3a17f8315c1f47670764f2384943afc0d3ba1e9a0422dacb08d455733bd1e9"
-SRC_URI[sha1sum] = "a2a5335024a2edc1739f08b99e716fa355be627d"
-SRC_URI[sha384sum] = "b1f278acabe2198aa79c0fe8aa0182733fe701336cbf54a88058be0b574cab768f59f9315882d0e689e634678d05b79f"
-SRC_URI[sha512sum] = "ff0b9e5f0d0070eb572b23641f7a0e70a8bc65cbf4b59dca1778be3bb014124011221a492147d4c492584e87af23e2f842ca6307641b3919f67a3f27f09312c0"
-
-S = "${WORKDIR}/src"
-
-do_compile () {
-   make CC='${CC}'
-}
-
-do_install () {
-   install -d ${D}/${bindir}
-   install -m 0755 tpm_server  ${D}/${bindir}
-}
-
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
new file mode 100644
index 0000000..3373a30
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
@@ -0,0 +1,26 @@
+SUMMARY = "IBM's Software TPM 2.0"
+LICENSE = "BSD"
+SECTION = "securty/tpm"
+LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
+
+DEPENDS = "openssl"
+
+SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
+           file://remove_optimization.patch \
+           "
+SRC_URI[md5sum] = "bfd3eca2411915f24de628b9ec36f259"
+SRC_URI[sha256sum] = "a8e874e7a1ae13a1290d7679d846281f72d0eb6a5e4cfbafca5297dbf4e29ea3"
+SRC_URI[sha1sum] = "7c8241a4e97a801eace9f0eea8cdda7c58114f7f"
+SRC_URI[sha384sum] = "eec25cc8ba0e3cb27d41ba4fa4c71d8158699953ccb61bb6d440236dcbd8f52b6954eaae9d640a713186e0b99311fd91"
+SRC_URI[sha512sum] = "ab47caa4406ba57c0afc6fadae304fc9ef5e3e125be0f2fb1955a419cf93cd5e9176e103f0b566825abc16cca00b795f98d2b407f0a2bf7b141ef4b025d907d0"
+
+S = "${WORKDIR}/src"
+
+do_compile () {
+   make CC='${CC}'
+}
+
+do_install () {
+   install -d ${D}/${bindir}
+   install -m 0755 tpm_server  ${D}/${bindir}
+}
-- 
2.17.1

