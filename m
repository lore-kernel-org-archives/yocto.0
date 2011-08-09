Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7B04E011F5
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2011 07:38:03 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Aug 2011 07:38:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,343,1309762800"; d="scan'208";a="36014113"
Received: from unknown (HELO localhost) ([10.255.14.185])
	by orsmga002.jf.intel.com with ESMTP; 09 Aug 2011 07:38:12 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  9 Aug 2011 09:37:20 -0500
Message-Id: <45da8fa294f29787ba25d5fde50130068860864b.1312900412.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1312900412.git.tom.zanussi@intel.com>
References: <cover.1312900412.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3] meta-fishriver: remove tune-related assignments from machine conf
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
X-List-Received-Date: Tue, 09 Aug 2011 14:38:03 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

These are all now handled or obsoleted by tune-atom.inc, so remove
them here.
---
 meta-fishriver/conf/machine/fishriver.conf |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index e692cac..6f90776 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -4,8 +4,6 @@
 #@DESCRIPTION: Machine configuration for Fish River Island systems
 # i.e. Z530/E660 + EG20T
 
-TARGET_ARCH = "i586"
-
 include conf/machine/include/tune-atom.inc
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-- 
1.7.0.4


