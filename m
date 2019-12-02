Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:04:58 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:04:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723494"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:04:57 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 05/13] qemu-x86.conf: remove invalid options
Date: Mon,  2 Dec 2019 19:08:41 +0800
Message-Id: <20191202110849.31494-5-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Throw below error:

runqemu - ERROR - Failed to run qemu: qemu-system-i386: -clock: invalid option

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/qemu-x86.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/conf/machine/qemu-x86.conf b/conf/machine/qemu-x86.conf
index 8bf1e35..ac6fb8f 100644
--- a/conf/machine/qemu-x86.conf
+++ b/conf/machine/qemu-x86.conf
@@ -10,7 +10,8 @@ ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 # For runqemu
 QB_SYSTEM_NAME = "qemu-system-i386"
 QB_MACHINE = "-machine pc-0.14"
-QB_OPT_APPEND = "-nographic -display none -clock dynticks -no-acpi -balloon none"
+#QB_OPT_APPEND = "-nographic -display none -clock dynticks -no-acpi -balloon none"
+QB_OPT_APPEND = "-nographic -display none -no-acpi"
 QB_CPU_x86 = "-cpu qemu32"
 QB_CPU_KVM_x86 = "-cpu kvm32"
 
-- 
2.17.1

