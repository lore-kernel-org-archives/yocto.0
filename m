Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web08.8073.1603264390171040389
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2020 00:13:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: gjkx+jcJQRUo0CJtx3bf+5X9KHZDcxxEy5IGfOet/EDJBXlrZkSIb3+Pi4IxiDTBP91UzOcO/0
 D7Mg5VDvDGzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="166550052"
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; 
   d="scan'208";a="166550052"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2020 00:13:09 -0700
IronPort-SDR: LbsYuKqDqQa21phWLgTSBWCeuAOOsMxPyfbreer6BdMqEGbhAomSQ8tVwqCV5TT1uzZoTcq4pW
 wl+OhpLWpFPQ==
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; 
   d="scan'208";a="522654065"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2020 00:13:08 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] qemu-cortex-m3.conf: Disable RNG passthrough
Date: Wed, 21 Oct 2020 15:21:26 +0800
Message-Id: <20201021072126.8790-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Qemu system does not passthroth RNG on x86 host.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/qemu-cortex-m3.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/qemu-cortex-m3.conf b/conf/machine/qemu-cortex-m3.conf
index dd1ce56..3a50796 100644
--- a/conf/machine/qemu-cortex-m3.conf
+++ b/conf/machine/qemu-cortex-m3.conf
@@ -12,5 +12,6 @@ QB_SYSTEM_NAME = "qemu-system-arm"
 QB_MACHINE = "-machine lm3s6965evb"
 QB_OPT_APPEND = "-nographic -vga none"
 QB_CPU = "-cpu cortex-m3"
+QB_RNG = ""
 
 ARCH_qemu-cortex-m3 = "arm"
-- 
2.17.1

