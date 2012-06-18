Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B35A9E0070B
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 10:34:55 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Jun 2012 10:34:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="159101407"
Received: from jstreic1-mobl.amr.corp.intel.com (HELO localhost)
	([10.7.199.154])
	by orsmga002.jf.intel.com with ESMTP; 18 Jun 2012 10:34:55 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Mon, 18 Jun 2012 10:33:32 -0700
Message-Id: <04d35150edf5cb3197a90224fa0b19b3730a9063.1340040795.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.10.2
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH][meta-intel] linux-firmware: Fix FILESEXTRAPATHS typo
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
X-List-Received-Date: Mon, 18 Jun 2012 17:34:55 -0000

Add a missing } in the FILESEXTRAPATHS assignment.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
index 97e64a5..23bb87f 100644
--- a/common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
+++ b/common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR/${PN}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 # This exists in Yocto 1.1, but include it here for completeness
 LIC_FILES_CHKSUM += "file://LICENCE.iwlwifi_firmware;md5=311cc823df5b1be4f00fbf0f17d96a6b"
-- 
1.7.10.2


