Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23B3EE0145D
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 05:39:48 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Jul 2012 05:39:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119509611"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Jul 2012 05:39:47 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Fri,  6 Jul 2012 05:38:44 -0700
Message-Id: <05018e6f2ada4b7b6924028c55f7ba8ce45e29e3.1341578164.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <561b7f1cb73c2c11a1fff56ff415b91bae0f0bd3.1341578164.git.nitin.a.kamble@intel.com>
References: <561b7f1cb73c2c11a1fff56ff415b91bae0f0bd3.1341578164.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1341578164.git.nitin.a.kamble@intel.com>
References: <cover.1341578164.git.nitin.a.kamble@intel.com>
Subject: [PATCH 6/7] sugarbay: set v3.4 as the default kernel recipe version
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jul 2012 12:39:48 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index adb1fa7..a80c938 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -4,7 +4,7 @@
 #@DESCRIPTION: Machine configuration for Sugar Bay systems
 # i.e. Sandy Bridge + Cougar Point
 
-PREFERRED_VERSION_linux-yocto ?= "3.2%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
-- 
1.7.3.4


