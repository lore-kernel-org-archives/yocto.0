Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C855E009FC
	for <yocto@yoctoproject.org>; Fri,  7 Mar 2014 03:59:02 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Mar 2014 03:59:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,607,1389772800"; d="scan'208";a="487874079"
Received: from lbhoopat-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.98])
	by fmsmga001.fm.intel.com with ESMTP; 07 Mar 2014 03:59:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Mar 2014 11:58:55 +0000
Message-Id: <1394193535-22411-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [meta-qt3][PATCH] core-image-lsb-qt3: fix for rename of packagegroup-core-basic
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Mar 2014 11:59:03 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/images/core-image-lsb-qt3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-qt3/images/core-image-lsb-qt3.bb b/recipes-qt3/images/core-image-lsb-qt3.bb
index 8aab5ae..b56b1c6 100644
--- a/recipes-qt3/images/core-image-lsb-qt3.bb
+++ b/recipes-qt3/images/core-image-lsb-qt3.bb
@@ -2,7 +2,7 @@ IMAGE_FEATURES += "splash ssh-server-openssh"
 
 IMAGE_INSTALL = "\
     ${CORE_IMAGE_BASE_INSTALL} \
-    packagegroup-core-basic \
+    packagegroup-core-full-cmdline \
     packagegroup-core-lsb \
     packagegroup-core-qt3-libs \
     "
-- 
1.8.5.3


