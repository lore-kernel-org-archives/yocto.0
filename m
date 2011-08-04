Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A210E004B2
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 09:15:12 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Aug 2011 09:15:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,317,1309762800"; d="scan'208";a="35411754"
Received: from unknown (HELO localhost) ([10.255.14.150])
	by orsmga001.jf.intel.com with ESMTP; 04 Aug 2011 09:15:20 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  4 Aug 2011 11:15:02 -0500
Message-Id: <da93dc24fd73079b4dbb6811b83e44a2036d54ef.1312474236.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <727ef8a467d43f417e83c6662880615735cd6605.1312474236.git.tom.zanussi@intel.com>
References: <727ef8a467d43f417e83c6662880615735cd6605.1312474236.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1312474236.git.tom.zanussi@intel.com>
References: <cover.1312474236.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-jasperforest: add live fstype
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
X-List-Received-Date: Thu, 04 Aug 2011 16:15:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Most of the time, we want a -live image, so add it to the
IMAGE_FSTYPES by default.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/conf/machine/jasperforest.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 6be9502..89626da 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -30,7 +30,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
-IMAGE_FSTYPES ?= "ext3 cpio.gz"
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
-- 
1.7.0.4


