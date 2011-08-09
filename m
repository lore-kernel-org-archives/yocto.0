Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEAA9E011F5
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2011 07:38:05 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Aug 2011 07:38:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,343,1309762800"; d="scan'208";a="36691093"
Received: from unknown (HELO localhost) ([10.255.14.185])
	by azsmga001.ch.intel.com with ESMTP; 09 Aug 2011 07:38:14 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  9 Aug 2011 09:37:21 -0500
Message-Id: <2d2056620f7aaf825834bfce09b762aed8951b89.1312900412.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <45da8fa294f29787ba25d5fde50130068860864b.1312900412.git.tom.zanussi@intel.com>
References: <45da8fa294f29787ba25d5fde50130068860864b.1312900412.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1312900412.git.tom.zanussi@intel.com>
References: <cover.1312900412.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3] meta-fishriver: add live fstype
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
X-List-Received-Date: Tue, 09 Aug 2011 14:38:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Most of the time, we want a -live image, so add it to the
IMAGE_FSTYPES by default.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fishriver/conf/machine/fishriver.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index 6f90776..c59e81d 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -28,7 +28,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
-IMAGE_FSTYPES ?= "ext3 cpio.gz"
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
-- 
1.7.0.4


