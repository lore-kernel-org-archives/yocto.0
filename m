Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:05:01 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:05:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723520"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:05:00 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 08/13] qemu-x86.conf: drop deprecated qemu flags
Date: Mon,  2 Dec 2019 19:08:44 +0800
Message-Id: <20191202110849.31494-8-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/qemu-x86.conf | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/conf/machine/qemu-x86.conf b/conf/machine/qemu-x86.conf
index ac6fb8f..d85c222 100644
--- a/conf/machine/qemu-x86.conf
+++ b/conf/machine/qemu-x86.conf
@@ -9,10 +9,8 @@ ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 
 # For runqemu
 QB_SYSTEM_NAME = "qemu-system-i386"
-QB_MACHINE = "-machine pc-0.14"
-#QB_OPT_APPEND = "-nographic -display none -clock dynticks -no-acpi -balloon none"
-QB_OPT_APPEND = "-nographic -display none -no-acpi"
-QB_CPU_x86 = "-cpu qemu32"
+QB_OPT_APPEND = "-nographic -no-acpi"
+QB_CPU_x86 = "-cpu qemu32,+nx,+pae"
 QB_CPU_KVM_x86 = "-cpu kvm32"
 
 ARCH_qemu-x86 = "x86"
-- 
2.17.1

