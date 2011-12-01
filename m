Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11876E00730
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 18:01:26 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Nov 2011 18:01:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,275,1320652800"; d="scan'208";a="97249399"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2011 18:01:25 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Wed, 30 Nov 2011 20:01:22 -0600
Message-Id: <8d3bd6bef76c275e664142f78e618621d217c68f.1322704583.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <8ae139fe7a08de13a8b0fd572c3a6efabf3afba2.1322704583.git.tom.zanussi@intel.com>
References: <8ae139fe7a08de13a8b0fd572c3a6efabf3afba2.1322704583.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322704583.git.tom.zanussi@intel.com>
References: <cover.1322704583.git.tom.zanussi@intel.com>
Subject: [PATCH 3/6] meta-emenlow: remove 2.6.34 .bbappend
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
X-List-Received-Date: Thu, 01 Dec 2011 02:01:26 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The linux-2.6.34 recipe was removed, so the .append needs to be
removed as well.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto_2.6.34.bbappend              |    6 ------
 1 files changed, 0 insertions(+), 6 deletions(-)
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend

diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
deleted file mode 100644
index 160b3aa..0000000
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
+++ /dev/null
@@ -1,6 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_emenlow = "emenlow"
-KMACHINE_emenlow  = "emenlow"
-
-SRCREV_machine_pn-linux-yocto_emenlow = "a29743c0a1398798fbc02c0799c8605d91514e14"
-SRCREV_meta_pn-linux-yocto_emenlow ?= "ec26387cb168e9e0976999b528b5a9dd62e3157a"
-- 
1.7.0.4


