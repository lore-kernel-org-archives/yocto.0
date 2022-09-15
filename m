Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC09ECAAD3
	for <webhook@archiver.kernel.org>; Thu, 15 Sep 2022 07:00:50 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web12.7010.1663225229963335351
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Sep 2022 00:00:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=AeN9NmxC;
 spf=pass (domain: intel.com, ip: 192.55.52.93,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663225230; x=1694761230;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=vpY+4nAWitJ6E8ouJPEQhDHCVEyYqcd6bBrqqyQM9Y8=;
  b=AeN9NmxC6/tpJMZm+Bbr0EF5aJkr7cSN/3c/yeaPzi0Pdw/eB5CKVCyC
   0jXTR0b4RT7RjW3oS+ZZzFinj64O5nsY/oqpGxQE6c+C2EuGW9lr27bFH
   O3IibhFex4w5aNOcfmJTLTsxOaTG0J8rBWgZHesbj3McmghAct7k4FfWo
   v6EOHcxP4JZ+vLxQHFmLBIXrz5+gDyFFlv3kU9AlXVi8VRip1Z+1jGPPY
   OPobYxj9Tivmq18C1/efJPRw5xTsErHjhVkW+g3UFcpT9yTxsjkuMAQYA
   CSEUmOBJSWRyy97zqKsQcvwLYTM/iM7trgIvK1VTzlcdXcHKHHQXdw79U
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="296221561"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200";
   d="scan'208";a="296221561"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:00:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200";
   d="scan'208";a="685607570"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:00:28 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel/2.7: update to zephyr v2.7.3
Date: Thu, 15 Sep 2022 15:20:42 +0800
Message-Id: <20220915072042.891301-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Sep 2022 07:00:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58046

003de78ce0 release: Zephyr 2.7.3
9502d500b6 release: security: Notes for 2.7.3
2a88e08296 release: update v2.7.3 release notes
e1ee34e55c drivers: sensor: sm351lt: Fix global thread triggering bug
2ad1ef651b Bluetooth: host: Fix L2CAP reconfigure response with invalid CID
089675af45 Bluetooth: host: Fix L2CAP reconfigure response with invalid MTU
03ff0d471e net: route: Fix pkt leak if net_send_data() fails
cd96136bcb boards: nucleo_wb55rg: Fix documentation about BLE binary compatibility
567fda57df tests: drivers: can: api: add test for RTR filter matching
b14f356c96 drivers: can: loopback: check frame ID type and RTR bit in filters
874d77bc75 drivers: can: mcux: flexcan: fix handling of RTR frames
ec0befb938 drivers: can: mcan: acknowledge all received frames
273e90a86f scripts: release: list_backports: use older python dict merge method
59dc65a7b4 ci: backports: check if a backport PR has a valid issue
8ff8cafc18 scripts: release: list_backports.py
ba07347b60 scripts: release: use GITHUB_TOKEN and start_date in scripts
e423902617 tests: posix: pthread: test for pthread descriptor leaks
018f836c4d posix: pthread: consider PTHREAD_EXITED state in pthread_create
f4466c4760 tests: cpp: cxx: Add qemu_cortex_a53 as integration platform
9a5cbe3568 tests: cpp: cxx: Test with various types of libc
5b7b15fb2d tests: cpp: cxx: Add dynamic memory availability test for static init
e5a92a1fab tests: cpp: cxx: Add static global constructor invocation test
74f0b6443a lib: libc: newlib: Initialise libc heap during POST_KERNEL phase
6c16b3492b lib: libc: minimal: Initialise libc heap during POST_KERNEL phase
1831431bab lib: posix: semaphore: use consistent timebase in sem_timedwait
765f63c6b9 cmake: remove xtensa workaround in Zephyr toolchain code.
062306fc0b cmake: zephyr toolchain code cleanup
8fcf7f1d78 Revert "cmake: Zephyr sdk backward compatibility with 0.11.1 and 0.11.2"
f06b3d922c Bluetooth: Controller: Fix PHY update for unsupported PHY
b75c012c55 drivers: spi: stm32 spi with dma must enable cs after periph
1efe6de3fe drivers: i2c: Fix infinite recursion in driver unregister function
39270ed4a0 Bluetooth: Mesh: Fix segmentation when sending proxy message
81ffa550ee Bluetooth: Mesh: Check SegN when receiving Transaction Start PDU
8c2965e017 Bluetooth: Mesh: add check for rx buffer overflow in pb adv
7aa38b4ac8 drivers: can: m_can: fix alignmed issues
6dd320f791 release: update v2.7.2 release notes
ecac165d36 logging: shell: fix shell stats null pointer dereference
132d90d1bc tests/bluetooth/tester: Refactor Read UUID callback
58356313ac coredump: adjust mem_region find in gdbstub
99cfd3e4d7 Bluetooth: Controller: Fix per adv scheduling issue
780588bd33 edac: ibecc: Add support for EHL SKU13, SKU14, SKU15

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...ephyr-kernel-src-2.7.2.inc => zephyr-kernel-src-2.7.3.inc} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-zephyr-core/recipes-kernel/zephyr-kernel/{zephyr-kernel-src-2.7.2.inc => zephyr-kernel-src-2.7.3.inc} (97%)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.2.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.3.inc
similarity index 97%
rename from meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.2.inc
rename to meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.3.inc
index cbe761f..1c53748 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.2.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.3.inc
@@ -14,7 +14,7 @@ SRC_URI += " \
 #      echo SRCREV_$x = \"$rev\"'
 #
 
-SRCREV_default = "6dd320f791c4da49190b30f9134f776d85bc5836"
+SRCREV_default = "003de78ce0dd213a1c7b3d159b967fb19a12aa45"
 SRCREV_canopennode = "f167efe85c8c7de886f1bc47f9173cfb8a346bb5"
 SRCREV_civetweb = "094aeb41bb93e9199d24d665ee43e9e05d6d7b1c"
 SRCREV_cmsis = "b0612c97c1401feeb4160add6462c3627fe90fc7"
@@ -60,7 +60,7 @@ SRCREV_TraceRecorder = "36c577727642457b0db7274298a4b96558374832"
 SRCREV_tfm = "c74be3890c9d975976fde1b1a3b2f5742bec34c0"
 
 ZEPHYR_BRANCH = "v2.7-branch"
-PV = "2.7.2+git${SRCPV}"
+PV = "2.7.3+git${SRCPV}"
 
 SRC_URI:append = " \
     file://dtc.patch;patchdir=zephyr \
-- 
2.25.1


