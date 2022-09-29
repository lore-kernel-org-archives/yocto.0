Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A99CC433FE
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 15:30:37 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web08.12187.1664465435888815860
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 08:30:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D711015BF
	for <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 08:30:41 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 10A9E3F792
	for <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 08:30:35 -0700 (PDT)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] ci: add zephyr-openthread-rcp test
Date: Thu, 29 Sep 2022 11:30:30 -0400
Message-Id: <20220929153030.6087-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 15:30:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58218

zephyr-openthread-rcp support was recently added to
nrf52840-mdk-usb-dongle and nrf52840dk-nrf52840.  Add this to the
targets for both machines, which necessitates adding a target entry
for nrf52840-mdk-usb-dongle.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 ci/nrf52840-mdk-usb-dongle.yml | 14 ++++++++++++++
 ci/nrf52840dk-nrf52840.yml     |  1 +
 2 files changed, 15 insertions(+)

diff --git a/ci/nrf52840-mdk-usb-dongle.yml b/ci/nrf52840-mdk-usb-dongle.yml
index 0dc3433..e9a36a0 100644
--- a/ci/nrf52840-mdk-usb-dongle.yml
+++ b/ci/nrf52840-mdk-usb-dongle.yml
@@ -4,3 +4,17 @@ header:
     - ci/base.yml
 
 machine: nrf52840-mdk-usb-dongle
+
+target:
+  - zephyr-blinky
+  - zephyr-coap-client
+  - zephyr-coap-server
+  - zephyr-echo-client
+  - zephyr-helloworld
+  - zephyr-http-client
+  - zephyr-kernel-test-all
+  - zephyr-mqtt-publisher
+  - zephyr-openthread-rcp
+  - zephyr-peripheral-esp
+  - zephyr-peripheral-hr
+  - zephyr-philosophers
diff --git a/ci/nrf52840dk-nrf52840.yml b/ci/nrf52840dk-nrf52840.yml
index a0c1587..1b16af1 100644
--- a/ci/nrf52840dk-nrf52840.yml
+++ b/ci/nrf52840dk-nrf52840.yml
@@ -15,6 +15,7 @@ target:
   - zephyr-kernel-test-all
   - zephyr-lvgl
   - zephyr-mqtt-publisher
+  - zephyr-openthread-rcp
   - zephyr-peripheral-esp
   - zephyr-peripheral-hr
   - zephyr-philosophers
-- 
2.17.1


