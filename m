Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D040CE01414
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 14:38:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 May 2012 14:38:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="150716944"
Received: from unknown (HELO localhost) ([10.255.12.248])
	by fmsmga001.fm.intel.com with ESMTP; 08 May 2012 14:38:04 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue,  8 May 2012 16:37:58 -0500
Message-Id: <80253c522d7a2b28b90dd3695da989bf39e45bba.1336510044.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
References: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336510043.git.tom.zanussi@intel.com>
References: <cover.1336510043.git.tom.zanussi@intel.com>
Subject: [PATCH 6/9][KERNEL] meta/sugarbay: remove boot-live options
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
X-List-Received-Date: Tue, 08 May 2012 21:38:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The boot-live options are already included via common-pc-64 so remove
the associated config settings from the top-level feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg |    7 -------
 1 files changed, 0 insertions(+), 7 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
index be5d3dd..1b370ba 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
@@ -33,10 +33,3 @@ CONFIG_AGP=y
 CONFIG_PM=y
 CONFIG_ACPI=y
 CONFIG_INPUT=y
-
-# Needed for booting (and using) USB memory sticks
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-
-CONFIG_RD_GZIP=y
-- 
1.7.0.4


