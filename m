Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2391DE01452
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:51:41 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 May 2012 08:51:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="153671180"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2012 08:51:40 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:42 -0500
Message-Id: <49f931bc294d5b6be60502bbd448cff5aa766235.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337182769.git.tom.zanussi@intel.com>
References: <cover.1337182769.git.tom.zanussi@intel.com>
Subject: [PATCH 22/22][KERNEL] meta/fishriver: remove redundant features and options
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
X-List-Received-Date: Wed, 16 May 2012 15:51:41 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove the BLK_DEV_SD option already covered by the usb-mass-storage
feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
index d0f6fdd..3ba2fae 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
@@ -15,7 +15,6 @@ CONFIG_PATA_SCH=y
 CONFIG_MMC_SDHCI_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_NET=y
-CONFIG_BLK_DEV_SD=y
 CONFIG_CHR_DEV_SG=y
 CONFIG_SOUND=y
 CONFIG_SND=y
-- 
1.7.0.4


