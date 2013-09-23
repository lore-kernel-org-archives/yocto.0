Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06A62E0161C
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:07:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 23 Sep 2013 06:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,962,1371106800"; d="scan'208";a="399711493"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.20])
	by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2013 06:07:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Sep 2013 14:07:00 +0100
Message-Id: <99495ff764f4dce27fdaec0478f84ef8143f529e.1379941403.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1379941403.git.paul.eggleton@linux.intel.com>
References: <cover.1379941403.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1379941403.git.paul.eggleton@linux.intel.com>
References: <cover.1379941403.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 1/4] linux-yocto: remove version 3.2 bbappend
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
X-List-Received-Date: Mon, 23 Sep 2013 13:07:23 -0000

This is no longer available in master.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-kernel/linux/linux-yocto_3.2.bbappend | 3 ---
 1 file changed, 3 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_3.2.bbappend b/recipes-kernel/linux/linux-yocto_3.2.bbappend
deleted file mode 100644
index 70bed3b..0000000
--- a/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://nfs.cfg"
-- 
1.8.1.2


