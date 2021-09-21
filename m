Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web10.4918.1632212851706483410
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 01:27:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="210389075"
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; 
   d="scan'208";a="210389075"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 01:27:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; 
   d="scan'208";a="435805774"
Received: from marsalan-mobl1.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.215.238.172])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 01:27:32 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 3/4] meta-yocto-bsp: Bump to the v5.10.55
Date: Tue, 21 Sep 2021 16:27:12 +0800
Message-Id: <20210921082713.40965-3-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210921082713.40965-1-anuj.mittal@intel.com>
References: <20210921082713.40965-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Kevin Hao <kexin.hao@windriver.com>

Build and boot test for all the boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 8b5c126510dbf265dc494ff7c8decbae63f5b597)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index f8362b6..0e5e3b1 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
-SRCREV_machine_genericx86-64 ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
-SRCREV_machine_edgerouter ?= "274d63799465eebfd201b3e8251f16d29e93a978"
-SRCREV_machine_beaglebone-yocto ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
+SRCREV_machine_genericx86 ?= "c274623910704eefcc98380a17649889ac7e9408"
+SRCREV_machine_genericx86-64 ?= "c274623910704eefcc98380a17649889ac7e9408"
+SRCREV_machine_edgerouter ?= "ac089d661362ba857e235c5630242039b150ae26"
+SRCREV_machine_beaglebone-yocto ?= "a6df693a45f5787d4254e0998f52b4465b2a5efe"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.10.43"
-LINUX_VERSION_genericx86-64 = "5.10.43"
-LINUX_VERSION_edgerouter = "5.10.43"
-LINUX_VERSION_beaglebone-yocto = "5.10.43"
+LINUX_VERSION_genericx86 = "5.10.55"
+LINUX_VERSION_genericx86-64 = "5.10.55"
+LINUX_VERSION_edgerouter = "5.10.55"
+LINUX_VERSION_beaglebone-yocto = "5.10.55"
-- 
2.31.1

