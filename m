Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B8CC4332F
	for <webhook@archiver.kernel.org>; Tue, 20 Dec 2022 07:42:51 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web11.45401.1671522167442228727
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Dec 2022 23:42:48 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=YOHfL0fm;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1671522167; x=1703058167;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=MnVow3/saSOU4+zhcUHCW99lcjIEL11y1stvIQQSDRQ=;
  b=YOHfL0fmv7o/T5xxZQ3/uQFlzEKcl6qZp41M9kcV4iEXw3bbUYRIv4uz
   aXL9onW9ObE88S/vuTVMsjtQati20UtTJF5kN8am/MrnG897A/zAZpufp
   TtuS1JCXkihEJFFCr1oSL0Ic9WoJHATHXRVXIGbKCUeu8hBfobKj6Y3Bn
   SxY86Us3GsVt+L2diEoQUjqkaXf+jyGP+vQT2q/CDoICWx19c77lyf+L1
   tA6qluhNkYmnMBb6MSzIauG3ZeZY1J+17oYCZIGMrlc6fbNe7GXyx5kYz
   pekLjTfL6nkHs/+d1QtGg+rhKmjCe2kpFHP/ob6xv1wjmasU1HB3gT+uU
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="346652990"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; 
   d="scan'208";a="346652990"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2022 23:42:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="644332887"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; 
   d="scan'208";a="644332887"
Received: from saininav-desk1.png.intel.com ([172.30.130.9])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2022 23:42:45 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][master][langdale][PATCH] zephyr-kernel/3.1: update to latest commit
Date: Tue, 20 Dec 2022 16:04:15 +0800
Message-Id: <20221220080415.2433642-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Dec 2022 07:42:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58839

Recent commits have CVE-2022-2741 fixed.

Also backported CVE-2022-2993 fix.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...ix-SMP-local-keys-check-when-startin.patch | 51 +++++++++++++++++++
 .../zephyr-kernel/zephyr-kernel-src-3.1.0.inc |  3 +-
 2 files changed, 53 insertions(+), 1 deletion(-)
 create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch
new file mode 100644
index 0000000..68650c3
--- /dev/null
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch
@@ -0,0 +1,51 @@
+From 74d26b70f080a5dc60c6a1aa2bfec38043ee30d4 Mon Sep 17 00:00:00 2001
+From: Joakim Andersson <joakim.andersson@nordicsemi.no>
+Date: Fri, 5 Aug 2022 10:50:47 +0200
+Subject: [PATCH] Bluetooth: host: Fix SMP local keys check when starting
+ encryption
+
+Fix SMP check of existing local keys when attempting to start security
+with required security mode 1 level 4. The logic for checking the
+conditions was wrong, leading to a situation where encryption would be
+attempted to be started by the central instead of initiating a new
+pairing procedure. This would fail when the connection was encrypted and
+the connection would be disconnected.
+
+Upstream-Status: Backport [https://github.com/zephyrproject-rtos/zephyr/commit/83d5402fe830973f943bde085d80f0d3643e811a]
+https://github.com/zephyrproject-rtos/zephyr/pull/52947/files
+CVE: CVE-2022-2993
+
+Signed-off-by: Joakim Andersson <joakim.andersson@nordicsemi.no>
+Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
+---
+ subsys/bluetooth/host/smp.c | 10 +++++-----
+ 1 file changed, 5 insertions(+), 5 deletions(-)
+
+diff --git a/subsys/bluetooth/host/smp.c b/subsys/bluetooth/host/smp.c
+index 02a847f97d..555f09fefd 100644
+--- a/subsys/bluetooth/host/smp.c
++++ b/subsys/bluetooth/host/smp.c
+@@ -357,15 +357,15 @@ static bool smp_keys_check(struct bt_conn *conn)
+ 		return false;
+ 	}
+ 
+-	if (conn->required_sec_level > BT_SECURITY_L2 &&
++	if (conn->required_sec_level >= BT_SECURITY_L3 &&
+ 	    !(conn->le.keys->flags & BT_KEYS_AUTHENTICATED)) {
+ 		return false;
+ 	}
+ 
+-	if (conn->required_sec_level > BT_SECURITY_L3 &&
+-	    !(conn->le.keys->flags & BT_KEYS_AUTHENTICATED) &&
+-	    !(conn->le.keys->keys & BT_KEYS_LTK_P256) &&
+-	    !(conn->le.keys->enc_size == BT_SMP_MAX_ENC_KEY_SIZE)) {
++	if (conn->required_sec_level >= BT_SECURITY_L4 &&
++	    !((conn->le.keys->flags & BT_KEYS_AUTHENTICATED) &&
++	      (conn->le.keys->keys & BT_KEYS_LTK_P256) &&
++	      (conn->le.keys->enc_size == BT_SMP_MAX_ENC_KEY_SIZE))) {
+ 		return false;
+ 	}
+ 
+-- 
+2.25.1
+
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1.0.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1.0.inc
index 68016e4..b3feb6a 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1.0.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-3.1.0.inc
@@ -2,7 +2,7 @@
 
 SRCREV_FORMAT = "default"
 
-SRCREV_default = "2ddd73feafd3316af2c547c34d6969bea637d5c6"
+SRCREV_default = "a7d946331f4f9361d1531984524dd8f151ae20b0"
 SRCREV_canopennode = "53d3415c14d60f8f4bfca54bfbc5d5a667d7e724"
 SRCREV_chre = "0edfe2c2ec656afb910cfab8ed59a5ffd59b87c8"
 SRCREV_civetweb = "094aeb41bb93e9199d24d665ee43e9e05d6d7b1c"
@@ -109,6 +109,7 @@ SRC_URI_ZSCILIB ?= "git://github.com/zephyrproject-rtos/zscilib;protocol=https"
 SRC_URI_PATCHES ?= "\
     file://0001-3.1-cmake-add-yocto-toolchain.patch;patchdir=zephyr \
     file://0001-3.1-x86-fix-efi-binary-generation-issue-in-cross-compila.patch;patchdir=zephyr \
+    file://0001-3.1-Bluetooth-host-Fix-SMP-local-keys-check-when-startin.patch;patchdir=zephyr \
 "
 
 SRC_URI = "\
-- 
2.25.1


