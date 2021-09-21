Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web10.4918.1632212851706483410
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 01:27:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="210389080"
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; 
   d="scan'208";a="210389080"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 01:27:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; 
   d="scan'208";a="435805783"
Received: from marsalan-mobl1.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.215.238.172])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2021 01:27:34 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 4/4] yocto-bsp/5.10: update to v5.10.63
Date: Tue, 21 Sep 2021 16:27:13 +0800
Message-Id: <20210921082713.40965-4-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210921082713.40965-1-anuj.mittal@intel.com>
References: <20210921082713.40965-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating the reference platforms to match the latest 5.10 -stable in
oe-core.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 77b8e31f706cb29d1efb19305470d9b525fc5a67)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 0e5e3b1..347a411 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "c274623910704eefcc98380a17649889ac7e9408"
-SRCREV_machine_genericx86-64 ?= "c274623910704eefcc98380a17649889ac7e9408"
-SRCREV_machine_edgerouter ?= "ac089d661362ba857e235c5630242039b150ae26"
-SRCREV_machine_beaglebone-yocto ?= "a6df693a45f5787d4254e0998f52b4465b2a5efe"
+SRCREV_machine_genericx86 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
+SRCREV_machine_genericx86-64 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
+SRCREV_machine_edgerouter ?= "4ab94e777d8b41ee1ee4c279259e9733bc8049b1"
+SRCREV_machine_beaglebone-yocto ?= "941cc9c3849f96f7eaf109b1e35e05ba366aca56"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.10.55"
-LINUX_VERSION_genericx86-64 = "5.10.55"
-LINUX_VERSION_edgerouter = "5.10.55"
-LINUX_VERSION_beaglebone-yocto = "5.10.55"
+LINUX_VERSION_genericx86 = "5.10.63"
+LINUX_VERSION_genericx86-64 = "5.10.63"
+LINUX_VERSION_edgerouter = "5.10.63"
+LINUX_VERSION_beaglebone-yocto = "5.10.63"
-- 
2.31.1

