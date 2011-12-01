Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A88EE0059E
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 18:00:54 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 30 Nov 2011 18:00:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,275,1320652800"; d="scan'208";a="42734150"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Nov 2011 18:00:50 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Wed, 30 Nov 2011 20:00:53 -0600
Message-Id: <1035f02ead7c4c31e4f549ecaa99661d453634ea.1322703767.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1322703767.git.tom.zanussi@intel.com>
References: <cover.1322703767.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-yocto: remove 2.6.34 .bbappend
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
X-List-Received-Date: Thu, 01 Dec 2011 02:00:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The linux-2.6.34 recipe was removed, so the .append needs to be
removed as well.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto_2.6.34.bbappend              |   12 ------------
 1 files changed, 0 insertions(+), 12 deletions(-)
 delete mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
deleted file mode 100644
index ea0287d..0000000
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
+++ /dev/null
@@ -1,12 +0,0 @@
-KMACHINE_atom-pc  = "atom-pc"
-KMACHINE_routerstationpro = "routerstationpro"
-KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
-KMACHINE_beagleboard = "beagleboard"
-
-SRCREV_machine_atom-pc = "72ca49ab08b8eb475cec82a10049503602325791"
-SRCREV_machine_routerstationpro = "49745cd45c92a89e70c6e2334caa80818c134562"
-SRCREV_machine_mpc8315e-rdb = "a1c0ed6bf4060c10874b2a8547d81b3169dcf16a"
-SRCREV_machine_beagleboard = "ef7f944e773950d4016b7643f9ecf052bbe250cd"
-
-COMPATIBLE_MACHINE += "(atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
-
-- 
1.7.0.4


