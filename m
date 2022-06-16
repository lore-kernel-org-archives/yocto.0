Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83A23C43334
	for <webhook@archiver.kernel.org>; Thu, 16 Jun 2022 02:26:20 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web11.13167.1655346370520110431
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jun 2022 19:26:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=lnflcVa8;
 spf=pass (domain: intel.com, ip: 134.134.136.65,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655346370; x=1686882370;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=MuF42w5gafAJydigA3DXj2wJTvjDBMgh0ViDNpWmvaU=;
  b=lnflcVa8aUjS+GgfgXy39brzekHSHLWWGh4eQApSc92WDiNeQmkJGurS
   xiKGT1ReoeAmhmIi2oBc6evf/lu9AqB0MJowjqdoQpy8qO00VHVshl3B+
   l/GKXyJvtlGhZjTFIqIobDYuHAStkQg9wS81EQMmdG7rzR6YKsOjQWVU4
   N7lvgLK4xipA5ZbvKjh5z97E8XtoXVK6eYVzNWszPh8hPojimPdQFTJZd
   KvLD+6hH+SUwhWBo2IT4iYpoarcxmwiKwQcITLGiePr2LKnonUQTVF8/d
   qRhVAWukmAARGvMfw0uLZb2qUT4udy/6k+rZKFFaLsAF+oOsxADZ1xeoh
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="280181342"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600";
   d="scan'208";a="280181342"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 19:26:08 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600";
   d="scan'208";a="583463358"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 19:26:07 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][kirkstone][PATCH 1/2] zephyr-kernel/2.7: update to
 release tag Zephyr v2.7.2
Date: Thu, 16 Jun 2022 10:44:46 +0800
Message-Id: <20220616024447.1156346-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Jun 2022 02:26:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57339

6dd320f791 release: update v2.7.2 release notes
ecac165d36 logging: shell: fix shell stats null pointer dereference
132d90d1bc tests/bluetooth/tester: Refactor Read UUID callback
58356313ac coredump: adjust mem_region find in gdbstub
99cfd3e4d7 Bluetooth: Controller: Fix per adv scheduling issue
780588bd33 edac: ibecc: Add support for EHL SKU13, SKU14, SKU15
38de9b0156 release: Zephyr 2.7.2
3a21dff459 doc: release: Update release notes with CVE
b98ec9e0db x86: Initialise FPU regs during thread creation for eager FPU sharing
8f2d164674 release: Bump release to 2.7.2-rc1
6b61b219ea doc: Add link to J-Link virtual MSD disable for SMP
8822f85ef9 board: arm64: fvp_baser_aemv8r_smp: Increase CONFIG_MAX_THREAD_BYTES
0bc81c82ab board: arm64: fvp_baser_aemv8r: Update the version requirement
32c49d04b0 cmake: armfvp: Add FVP min version check
02c32316fc arm64: Fix booting issue with FVP V8R >= 11.16.16
9bf571808d net/tcp: Use highest priority for TCP internal work queue
4eec9d95ef test/net: Make sure the tls server socket is accepting before connect
32a593396d tests/net: Put the context down and not only the tcp part in tcp2 test
066dcd6119 tests/net: Switch k_msleep to k_yield for tcp packet scheduling
ffcc1d3c92 tests/net: TLS test requires more RX PKT and buffers
2d49a4c8b9 net/context: Close TCP connection properly
9d229e0bb5 net/tcp: Stop TCP state machine breaking when sending locally
74c00d0b4e boards: bl654_usb: Fix non-mcuboot builds not limiting size
2a09d5e53f drivers: virt_ivshmem: Allow multiple instances of ivShMem devices.
ad4e9934de samples: subsys: mgmt: smp_svr: Fix dupicate fs mgmt registration
f133449cf5 boards: arm: stm32l562e_dk and nucleo_l552ze_q add openocd support
33318bfb45 doc: css: update code documentation directives style
3497031e3e doc: update requirements
57a1be33ff boards: nucleo_wb55rg: Add stm32cubeprogrammer runner
652eb37b4d scripts/pylib/twister: Add sn option to stm32cubeprogrgammer runner
9e4edaec21 tests/bluetooth/tester: Add support for auto connection establishment
9b18f4a730 net: gptp: Fix type mismatch calculation error in gptp_mi
3f958347c2 test: pm: device: Fix build options
041653662b pm: Remove unused fields in pm_device
6da71d7c2f ARC: nSIM: fix missing core numbers for mdb-hw runner args
52a68bec73 net: tcp: Verify accept callback before use
6324e997e1 net: sockets: Fix userspace accept() verification
e9eed0015f subsys/mgmt/hawkbit: update http response handling
a3e7047ad5 wifi: esp_at: claim net_context in rx
50a24d6782 net: sockets: Retry net_context_sendmsg if EAGAIN is reported
9c3be1212f tests/bluetooth/tester: Enable security validation for GATT subsciption
e2c96814ce Bluetooth: Host: Validate security on GATT subscription
3c64ed4e77 drivers: spi_nrfx_spi: Fix compilation error
e78a6ab2cd spi: nrfx_spi*: only run uninit if configured
6bbf1e7e7a Bluetooth: controller: Add missing NULL assign to df_cfg in ll_adv_set
063dbecb23 arch/x86: Fix MSI MAP destination
a807fff085 arch/x86: Add a CPUID function to get initial APIC ID
b4b474cb4b arch/x86: Have a dedicated place for CPUID related functions
175ae83c78 tests/bluetooth/tester: Allocate L2CAP channel only when needed
22ab715ad8 test/bluetooth/tester: Don't clear auth requirements on L2CAP server
.....

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 ...ephyr-kernel-src-2.7.1.inc => zephyr-kernel-src-2.7.2.inc} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-zephyr-core/recipes-kernel/zephyr-kernel/{zephyr-kernel-src-2.7.1.inc => zephyr-kernel-src-2.7.2.inc} (97%)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.1.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.2.inc
similarity index 97%
rename from meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.1.inc
rename to meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.2.inc
index a2c100c..7a4da21 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.1.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.7.2.inc
@@ -14,7 +14,7 @@ SRC_URI += " \
 #      echo SRCREV_$x = \"$rev\"'
 #
 
-SRCREV_default = "e4da3e528088a34a9989f5a50e7ed3149d57de92"
+SRCREV_default = "6dd320f791c4da49190b30f9134f776d85bc5836"
 SRCREV_canopennode = "f167efe85c8c7de886f1bc47f9173cfb8a346bb5"
 SRCREV_civetweb = "094aeb41bb93e9199d24d665ee43e9e05d6d7b1c"
 SRCREV_cmsis = "b0612c97c1401feeb4160add6462c3627fe90fc7"
@@ -60,6 +60,6 @@ SRCREV_TraceRecorder = "36c577727642457b0db7274298a4b96558374832"
 SRCREV_tfm = "c74be3890c9d975976fde1b1a3b2f5742bec34c0"
 
 ZEPHYR_BRANCH = "v2.7-branch"
-PV = "2.7.1+git${SRCPV}"
+PV = "2.7.2+git${SRCPV}"
 
 SRC_URI:append = " file://dtc.patch"
-- 
2.25.1


