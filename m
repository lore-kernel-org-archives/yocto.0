Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B71DE0140E
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 14:38:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 May 2012 14:38:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="138378358"
Received: from unknown (HELO localhost) ([10.255.12.248])
	by orsmga001.jf.intel.com with ESMTP; 08 May 2012 14:38:02 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  8 May 2012 16:37:57 -0500
Message-Id: <baa4fcbfd70feedeef680b214a6f4186743e3c4b.1336510044.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
References: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336510043.git.tom.zanussi@intel.com>
References: <cover.1336510043.git.tom.zanussi@intel.com>
Subject: [PATCH 5/9][KERNEL] meta/jasperforest: remove boot-live options
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
X-List-Received-Date: Tue, 08 May 2012 21:38:03 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The boot-live options are already included via common-pc-64 so remove
the associated config settings from the top-level feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    7 -------
 1 files changed, 0 insertions(+), 7 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
index 0a81a19..e2310a5 100644
--- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
@@ -34,13 +34,6 @@ CONFIG_PM=y
 CONFIG_ACPI=y
 CONFIG_INPUT=y
 
-# Needed for booting (and using) USB memory sticks
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-
-CONFIG_RD_GZIP=y
-
 # NUMA support
 CONFIG_NUMA=y
 CONFIG_X86_64_ACPI_NUMA=y
-- 
1.7.0.4


