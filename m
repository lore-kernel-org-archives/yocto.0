Received: from mga01.intel.com (mga01.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.5950.1622193234908438245
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 02:13:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: YDY1WALJvjo9qjkSq+OhPq5K/lJ13ye1wdmShabmg8xLvDeV4gWp3aP7uomfRztWsK9UuJLhX6
 2mWlID2hF8JQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="224154421"
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; 
   d="scan'208";a="224154421"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2021 02:13:54 -0700
IronPort-SDR: IszUAPLfznCymcKQ9Lc3D1VaOAqsPSOZylhWDknkfSeKCt9Hl6kZg5vqsnojCvpdzkM+MS8GLh
 X44tArkCRogg==
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; 
   d="scan'208";a="445556183"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2021 02:13:54 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][hardknott][PATCH 4/4] acrn.conf: drop acrn machine configuration
Date: Fri, 28 May 2021 17:26:47 +0800
Message-Id: <20210528092647.12652-4-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210528092647.12652-1-naveen.kumar.saini@intel.com>
References: <20210528092647.12652-1-naveen.kumar.saini@intel.com>

zephyr can be build for 'acrn' with following configuration:

MACHINE = "intel-x86-64"
ZEPHYR_BOARD = "acrn"

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 conf/machine/acrn.conf | 9 ---------
 1 file changed, 9 deletions(-)
 delete mode 100644 conf/machine/acrn.conf

diff --git a/conf/machine/acrn.conf b/conf/machine/acrn.conf
deleted file mode 100644
index c044933..0000000
--- a/conf/machine/acrn.conf
+++ /dev/null
@@ -1,9 +0,0 @@
-#@TYPE: Machine
-#@NAME: acrn
-#@DESCRIPTION: Machine for Zephyr BOARD acrn
-
-require conf/machine/include/qemu.inc
-require conf/machine/include/tune-corei7-common.inc
-ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
-
-ARCH_acrn = "x86"
-- 
2.17.1

