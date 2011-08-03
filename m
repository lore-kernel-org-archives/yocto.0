Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 158594C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 12:27:44 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Aug 2011 10:27:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,311,1309762800"; d="scan'208";a="37538457"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by fmsmga001.fm.intel.com with ESMTP; 03 Aug 2011 10:27:44 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Aug 2011 12:27:33 -0500
Message-Id: <2c1fbdd048c0934baf8dc739d68de906fa417544.1312391788.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1312391788.git.tom.zanussi@intel.com>
References: <cover.1312391788.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3] meta-crownbay: remove tune-related assignments from machine conf
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
X-List-Received-Date: Wed, 03 Aug 2011 17:27:45 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

These are all now handled or obsoleted by tune-atom.inc, so remove
them here.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf |    2 --
 meta-crownbay/conf/machine/crownbay.conf        |    2 --
 2 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index cc0b2eb..315357d 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -4,8 +4,6 @@
 #@DESCRIPTION: Machine configuration for Crown Bay systems, without Intel-proprietary graphics bits
 # i.e. E660 + EG20T
 
-TARGET_ARCH = "i586"
-
 include conf/machine/include/tune-atom.inc
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index c66b859..dcdc758 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -4,8 +4,6 @@
 #@DESCRIPTION: Machine configuration for Crown Bay systems
 # i.e. E660 + EG20T
 
-TARGET_ARCH = "i586"
-
 include conf/machine/include/tune-atom.inc
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-- 
1.7.0.4


