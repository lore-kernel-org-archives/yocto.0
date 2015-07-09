Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68025E00A45; Thu,  9 Jul 2015 01:04:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF03FE00998
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 01:04:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t6984D2N022602
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 9 Jul 2015 01:04:14 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.224.2; Thu, 9 Jul 2015 01:04:13 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 9 Jul 2015 15:58:39 +0800
Message-ID: <1436428719-22986-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH 1/1][meta-selinux] audit: correct syscall rule arch usage for arm
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
X-List-Received-Date: Thu, 09 Jul 2015 08:04:18 -0000
Content-Type: text/plain

From: He Zhe <zhe.he@windriver.com>

For all arm arch, kernel uses AUDIT_ARCH_ARM as its arch to filter
syscalls. But userspace audit uses AUDIT_ARCH_ARMEB when creating audit
rules, if arch=b32 is specified for auditctl. This causes kernel not to
record all arm syscalls.

This patch change audit rule arch from AUDIT_ARCH_ARMEB to
AUDIT_ARCH_ARM.

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 .../audit/arm-correct-audit-rule-arch-usage.patch  | 35 ++++++++++++++++++++++
 recipes-security/audit/audit_2.3.2.bb              |  1 +
 2 files changed, 36 insertions(+)
 create mode 100644 recipes-security/audit/audit/arm-correct-audit-rule-arch-usage.patch

diff --git a/recipes-security/audit/audit/arm-correct-audit-rule-arch-usage.patch b/recipes-security/audit/audit/arm-correct-audit-rule-arch-usage.patch
new file mode 100644
index 0000000..a2e058b
--- /dev/null
+++ b/recipes-security/audit/audit/arm-correct-audit-rule-arch-usage.patch
@@ -0,0 +1,35 @@
+From 11b3b7628ba9c33ca7a89ba12cf45d3917441ff0 Mon Sep 17 00:00:00 2001
+From: He Zhe <zhe.he@windriver.com>
+Date: Tue, 10 Mar 2015 16:03:36 +0800
+Subject: [PATCH] arm: Correct arch usage
+
+Upstream Status: Pending
+
+For all arm arch, kernel uses AUDIT_ARCH_ARM as its arch to filter syscalls.
+But userspace audit uses AUDIT_ARCH_ARMEB when creating audit rules, if
+arch=b32 is specified for auditctl. This causes kernel not to record all
+arm syscalls.
+
+This patch change audit rule arch from AUDIT_ARCH_ARMEB to AUDIT_ARCH_ARM.
+
+Signed-off-by: He Zhe <zhe.he@windriver.com>
+---
+ lib/lookup_table.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/lib/lookup_table.c b/lib/lookup_table.c
+index 4f4c0ae..f79c6ee 100644
+--- a/lib/lookup_table.c
++++ b/lib/lookup_table.c
+@@ -77,7 +77,7 @@ static const struct int_transtab elftab[] = {
+     { MACH_ALPHA,   AUDIT_ARCH_ALPHA  },
+ #endif
+ #ifdef WITH_ARMEB
+-    { MACH_ARMEB,   AUDIT_ARCH_ARMEB  },
++    { MACH_ARMEB,   AUDIT_ARCH_ARM    },
+ #endif
+ #ifdef WITH_AARCH64
+     { MACH_AARCH64, AUDIT_ARCH_AARCH64},
+-- 
+1.8.3.1
+
diff --git a/recipes-security/audit/audit_2.3.2.bb b/recipes-security/audit/audit_2.3.2.bb
index 1d7ea0f..2eeb1e0 100644
--- a/recipes-security/audit/audit_2.3.2.bb
+++ b/recipes-security/audit/audit_2.3.2.bb
@@ -17,6 +17,7 @@ SRC_URI = "http://people.redhat.com/sgrubb/audit/audit-${PV}.tar.gz \
 	   file://fix-swig-host-contamination.patch \
 	   file://auditd.service \
 	   file://audit-volatile.conf \
+	   file://arm-correct-audit-rule-arch-usage.patch \
 "
 SRC_URI_append_arm = "file://add-system-call-table-for-ARM.patch"
 
-- 
1.9.1


