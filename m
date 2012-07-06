Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F8EEE01459
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 05:39:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Jul 2012 05:39:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119509605"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Jul 2012 05:39:46 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Fri,  6 Jul 2012 05:38:40 -0700
Message-Id: <4b7bc7bcfab7fd7a7ea7a438b2a155321001d5eb.1341578164.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <561b7f1cb73c2c11a1fff56ff415b91bae0f0bd3.1341578164.git.nitin.a.kamble@intel.com>
References: <561b7f1cb73c2c11a1fff56ff415b91bae0f0bd3.1341578164.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1341578164.git.nitin.a.kamble@intel.com>
References: <cover.1341578164.git.nitin.a.kamble@intel.com>
Subject: [PATCH 2/7] FishRiver: set v3.4 as the default kernel recipe version
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
X-List-Received-Date: Fri, 06 Jul 2012 12:39:47 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-fishriver/conf/machine/fishriver.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index 289e41d..ec2e87f 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -4,7 +4,7 @@
 #@DESCRIPTION: Machine configuration for Fish River Island systems
 # i.e. Z530/E660 + EG20T
 
-PREFERRED_VERSION_linux-yocto ?= "3.2%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
-- 
1.7.3.4


