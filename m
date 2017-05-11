Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4006AE00B53; Thu, 11 May 2017 01:32:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0601AE00B3E
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 01:32:00 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4B8Vp6u000326
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 May 2017 01:31:52 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 11 May 2017 01:31:51 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <flihp@twobit.us>
Date: Thu, 11 May 2017 04:31:49 -0400
Message-ID: <1494491509-155042-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-measured][PATCH] linux-yocto.inc: rename to linux-yocto-measured.inc
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
X-List-Received-Date: Thu, 11 May 2017 08:32:04 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

To avoid conflict with the one from oe-core:
  oe-core/meta/recipes-kernel/linux/linux-yocto.inc

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-kernel/linux/linux-intel_4.%.bbappend    |  2 +-
 recipes-kernel/linux/linux-yocto-measured.inc    | 13 +++++++++++++
 recipes-kernel/linux/linux-yocto-rt_4.%.bbappend |  2 +-
 recipes-kernel/linux/linux-yocto.inc             | 13 -------------
 recipes-kernel/linux/linux-yocto_4.%.bbappend    |  2 +-
 5 files changed, 16 insertions(+), 16 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-yocto-measured.inc
 delete mode 100644 recipes-kernel/linux/linux-yocto.inc

diff --git a/recipes-kernel/linux/linux-intel_4.%.bbappend b/recipes-kernel/linux/linux-intel_4.%.bbappend
index 161f9d3..ab4f961 100644
--- a/recipes-kernel/linux/linux-intel_4.%.bbappend
+++ b/recipes-kernel/linux/linux-intel_4.%.bbappend
@@ -1 +1 @@
-require linux-yocto.inc
+require linux-yocto-measured.inc
diff --git a/recipes-kernel/linux/linux-yocto-measured.inc b/recipes-kernel/linux/linux-yocto-measured.inc
new file mode 100644
index 0000000..f6930d1
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-measured.inc
@@ -0,0 +1,13 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"
+
+# Enable kernel support if the feature is available on the machine.
+SRC_URI += " \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.cfg', '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2','file://tpm2.scc','', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2','file://tpm2.cfg','', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'txt', 'file://txt.scc', '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'txt', 'file://txt.cfg', '', d)} \
+    ${@bb.utils.contains('DISTRO_FEATURES',  'ima', 'file://ima.scc', '', d)} \
+    ${@bb.utils.contains('DISTRO_FEATURES',  'ima', 'file://ima.cfg', '', d)} \
+"
diff --git a/recipes-kernel/linux/linux-yocto-rt_4.%.bbappend b/recipes-kernel/linux/linux-yocto-rt_4.%.bbappend
index 161f9d3..ab4f961 100644
--- a/recipes-kernel/linux/linux-yocto-rt_4.%.bbappend
+++ b/recipes-kernel/linux/linux-yocto-rt_4.%.bbappend
@@ -1 +1 @@
-require linux-yocto.inc
+require linux-yocto-measured.inc
diff --git a/recipes-kernel/linux/linux-yocto.inc b/recipes-kernel/linux/linux-yocto.inc
deleted file mode 100644
index f6930d1..0000000
--- a/recipes-kernel/linux/linux-yocto.inc
+++ /dev/null
@@ -1,13 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"
-
-# Enable kernel support if the feature is available on the machine.
-SRC_URI += " \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.cfg', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2','file://tpm2.scc','', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2','file://tpm2.cfg','', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'txt', 'file://txt.scc', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'txt', 'file://txt.cfg', '', d)} \
-    ${@bb.utils.contains('DISTRO_FEATURES',  'ima', 'file://ima.scc', '', d)} \
-    ${@bb.utils.contains('DISTRO_FEATURES',  'ima', 'file://ima.cfg', '', d)} \
-"
diff --git a/recipes-kernel/linux/linux-yocto_4.%.bbappend b/recipes-kernel/linux/linux-yocto_4.%.bbappend
index 161f9d3..ab4f961 100644
--- a/recipes-kernel/linux/linux-yocto_4.%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.%.bbappend
@@ -1 +1 @@
-require linux-yocto.inc
+require linux-yocto-measured.inc
-- 
2.8.1


