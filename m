Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D2B2C433FE
	for <webhook@archiver.kernel.org>; Mon, 14 Nov 2022 03:45:37 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.1914.1668397527964998035
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Nov 2022 19:45:28 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5DB1623A
	for <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 19:45:33 -0800 (PST)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 067973F534
	for <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 19:45:26 -0800 (PST)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] CI/qemu-cortex-m0: remove zephyr-philosophers test
Date: Sun, 13 Nov 2022 22:45:21 -0500
Message-Id: <20221114034521.31116-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Nov 2022 03:45:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58552

zephyr-philosophers no longer fits within the defined SRAM space, and
fails to compile based on a check for this during building.  Currently,
qemu-cortex-m0.yml inherits the targets from base.yml.  So, we must
redefine the targets in qemu-cortex-m0.yml to be able to remove this.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 ci/qemu-cortex-m0.yml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/ci/qemu-cortex-m0.yml b/ci/qemu-cortex-m0.yml
index 759253d..a3da2ae 100644
--- a/ci/qemu-cortex-m0.yml
+++ b/ci/qemu-cortex-m0.yml
@@ -4,3 +4,8 @@ header:
     - ci/base.yml
 
 machine: qemu-cortex-m0
+
+target:
+  - zephyr-helloworld
+  - zephyr-kernel-test-all
+  - zephyr-synchronization
-- 
2.17.1


