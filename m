Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 281784C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 15:57:24 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Aug 2011 13:57:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,312,1309762800"; d="scan'208";a="35130970"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by orsmga001.jf.intel.com with ESMTP; 03 Aug 2011 13:57:24 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  3 Aug 2011 15:57:11 -0500
Message-Id: <a0c9dbc697c1c50e95db1dcac209c8b7f7fe7fb2.1312404638.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <51b341942aa30c252cb38eb2206b3d17d9dc7f57.1312404638.git.tom.zanussi@intel.com>
References: <51b341942aa30c252cb38eb2206b3d17d9dc7f57.1312404638.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1312404638.git.tom.zanussi@intel.com>
References: <cover.1312404638.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-emenlow: add live fstype
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
X-List-Received-Date: Wed, 03 Aug 2011 20:57:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Most of the time, we want a -live image, so add it to the
IMAGE_FSTYPES by default.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index dfe20cb..21b314f 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -30,7 +30,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
-IMAGE_FSTYPES ?= "ext3 cpio.gz"
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
-- 
1.7.0.4


