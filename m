Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web10.3691.1621560814121571066
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 18:33:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: +8wBcx4hg3B5HGTuwkh0unbKZAORsNne8MuosdhpKDSZCwwp9TNWNsjdZruSWJPIWB4L+cQiSB
 iy8RFU/rKXTA==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="262600057"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="262600057"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 18:33:33 -0700
IronPort-SDR: uPvZN/cE2NdKHISnxHWK74bAHgV11TCxH/f6gaEsaVKU0yAw5VvqNGITAZLSUS8PU5sHdPCKzf
 WjvUfUjM/PqQ==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="395911861"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 18:33:32 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] qemu-x86: set new -machine value for QEMU
Date: Fri, 21 May 2021 09:46:23 +0800
Message-Id: <20210521014623.5293-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

-machine type=pc-1.3 is deprecated with QEMU 5.1.0

Error:
machine runqemu - ERROR - Failed
to run qemu: qemu-system-i386: unsupported machine type

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/qemu-x86.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/qemu-x86.conf b/conf/machine/qemu-x86.conf
index ce79b5b..85b3f0d 100644
--- a/conf/machine/qemu-x86.conf
+++ b/conf/machine/qemu-x86.conf
@@ -9,7 +9,7 @@ ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 
 # For runqemu
 QB_SYSTEM_NAME = "qemu-system-i386"
-QB_MACHINE = "-machine type=pc-1.3"
+QB_MACHINE = "-machine type=pc-q35-2.10"
 QB_OPT_APPEND = "-nographic -no-acpi"
 QB_CPU_x86 = "-cpu qemu32,+nx,+pae"
 QB_CPU_KVM_x86 = "-cpu kvm32"
-- 
2.17.1

