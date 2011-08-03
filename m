Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 068AC4C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 12:27:46 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Aug 2011 10:27:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,311,1309762800"; d="scan'208";a="35072697"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by orsmga001.jf.intel.com with ESMTP; 03 Aug 2011 10:27:46 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Aug 2011 12:27:34 -0500
Message-Id: <cee8a1e823715f19c56d8937722b1d2dd2a60873.1312391788.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <2c1fbdd048c0934baf8dc739d68de906fa417544.1312391788.git.tom.zanussi@intel.com>
References: <2c1fbdd048c0934baf8dc739d68de906fa417544.1312391788.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1312391788.git.tom.zanussi@intel.com>
References: <cover.1312391788.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3] meta-crownbay: add live fstype
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
X-List-Received-Date: Wed, 03 Aug 2011 17:27:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Most of the time, we want a -live image, so add it to the
IMAGE_FSTYPES by default.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf |    2 +-
 meta-crownbay/conf/machine/crownbay.conf        |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index 315357d..7b8a7f2 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -28,7 +28,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
-IMAGE_FSTYPES ?= "ext3 cpio.gz"
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index dcdc758..fd53dbb 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -32,7 +32,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
-IMAGE_FSTYPES ?= "ext3 cpio.gz"
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
-- 
1.7.0.4


