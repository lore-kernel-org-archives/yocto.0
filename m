Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 690A2E00A9B; Fri, 15 Sep 2017 02:18:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECDD9E008D2
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 02:18:18 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8F9IHC6019372
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 02:18:18 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Fri, 15 Sep 2017 02:18:17 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Sep 2017 17:17:20 +0800
Message-ID: <20170915091720.16948-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH] packagegroups: fix invalid license file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Sep 2017 09:18:19 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Use '${COMMON_LICENSE_DIR}/MIT' for MIT License to fix the warning:

| WARNING: packagegroup-core-security do_populate_lic:
  ${COREBASE}/LICENSE is not a valid license file, please use
  '${COMMON_LICENSE_DIR}/MIT' for a MIT License file in LIC_FILES_CHKSUM.
  This will become an error in the future

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb | 2 +-
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb     | 2 +-
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb    | 2 +-
 meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb    | 2 +-
 recipes-security/packagegroup/packagegroup-core-security.bb         | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
index 2d93aca..3b9d271 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
@@ -1,6 +1,6 @@
 DESCRIPTION = "Security packagegroup for TPM i2c support"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 inherit packagegroup
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
index 2db8521..25126ef 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
@@ -1,6 +1,6 @@
 DESCRIPTION = "Security packagegroup for Poky"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 inherit packagegroup
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 57b0722..13b505f 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -1,6 +1,6 @@
 DESCRIPTION = "Security packagegroup for Poky"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 inherit packagegroup
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
index f7eee7c..2e9394f 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
@@ -1,6 +1,6 @@
 DESCRIPTION = "Security packagegroup for Poky"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 inherit packagegroup
diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index cfd7918..6682d29 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -1,6 +1,6 @@
 DESCRIPTION = "Security packagegroup for Poky"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 inherit packagegroup
-- 
2.11.0


