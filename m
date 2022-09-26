Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D61C32771
	for <webhook@archiver.kernel.org>; Mon, 26 Sep 2022 19:03:28 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.2012.1664219002817977286
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 12:03:23 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 564591063
	for <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 12:03:28 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 979503F66F
	for <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 12:03:21 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] ci: add entry for nrf52840-mdk-usb-dongle
Date: Mon, 26 Sep 2022 10:40:42 -0400
Message-Id: <20220926144042.29168-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 19:03:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58169

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml                 | 3 +++
 ci/nrf52840-mdk-usb-dongle.yml | 6 ++++++
 2 files changed, 9 insertions(+)
 create mode 100644 ci/nrf52840-mdk-usb-dongle.yml

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 082cd44..c185477 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -74,6 +74,9 @@ arduino-nano-33-ble:
 intel-x86-64:
   extends: .build
 
+nrf52840-mdk-usb-dongle:
+  extends: .build
+
 nrf52840dk-nrf52840:
   extends: .build
 
diff --git a/ci/nrf52840-mdk-usb-dongle.yml b/ci/nrf52840-mdk-usb-dongle.yml
new file mode 100644
index 0000000..0dc3433
--- /dev/null
+++ b/ci/nrf52840-mdk-usb-dongle.yml
@@ -0,0 +1,6 @@
+header:
+  version: 11
+  includes:
+    - ci/base.yml
+
+machine: nrf52840-mdk-usb-dongle
-- 
2.17.1


