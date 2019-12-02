Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:05:03 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:05:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723555"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:05:02 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 10/13] acrn.conf: add new machine
Date: Mon,  2 Dec 2019 19:08:46 +0800
Message-Id: <20191202110849.31494-10-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Add new acrn machine, which actually is $BOARD

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/acrn.conf | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 conf/machine/acrn.conf

diff --git a/conf/machine/acrn.conf b/conf/machine/acrn.conf
new file mode 100644
index 0000000..96a7d66
--- /dev/null
+++ b/conf/machine/acrn.conf
@@ -0,0 +1,10 @@
+#@TYPE: Machine
+#@NAME: acrn
+#@DESCRIPTION: Machine for Zephyr BOARD acrn
+
+require conf/machine/include/qemu.inc
+require conf/machine/include/tune-i586.inc
+
+ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
+
+ARCH_acrn = "x86"
-- 
2.17.1

