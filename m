Received: from mga18.intel.com (mga18.intel.com [])
 by mx.groups.io with SMTP id smtpd.web10.5541.1601606747129063661
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 19:45:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: n7uAvEAO6gNXjRcZm20rdpiFK5sQGP67oPi1GySUcTxStbwz8oFVulttOsgF9oTi+PW19UxSua
 CbpfZXl4/fKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="150693165"
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; 
   d="scan'208";a="150693165"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2020 19:45:48 -0700
IronPort-SDR: Xgkiu/00RlC9FiCrBz8XyXd8HJIhVuYWFUY5Q0+tCCy8JDDAds/PcdMskbazm/IvtSlf0zgPMS
 rHWcedsZiCJg==
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; 
   d="scan'208";a="351410839"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2020 19:45:46 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] linux-%/5.x: Add dm-verity fragment as needed
Date: Fri,  2 Oct 2020 10:53:52 +0800
Message-Id: <20201002025352.18830-3-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201002025352.18830-1-naveen.kumar.saini@intel.com>
References: <20201002025352.18830-1-naveen.kumar.saini@intel.com>

Add checks that include dm-verity specific kernel config fragment
when dm-verity-img.bbclass is used.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/linux/linux-%_5.%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-%_5.%.bbappend b/recipes-kernel/linux/linux-%_5.%.bbappend
index 76b5df5..6bc40cd 100644
--- a/recipes-kernel/linux/linux-%_5.%.bbappend
+++ b/recipes-kernel/linux/linux-%_5.%.bbappend
@@ -1,4 +1,4 @@
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "yama", " features/yama/yama.scc", "" ,d)}"
-
+KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
-- 
2.17.1

