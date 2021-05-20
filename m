Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.8018.1621516154306129332
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 06:09:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: bWMoJvY4fgvoC21IshZrv6y6SS+LEuGLE6XLGRQXlCVrT9Juz/hEr7co2HaCBNoicKxXqt0pCo
 YOoxqdVcpU6g==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="201263908"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="201263908"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 06:09:13 -0700
IronPort-SDR: YUU+uc5HSfw35bxNjJBlBJzsNu68XFJGux9OuTXUmJYh5oS7H8NxLAuMTTubANKmBfhnn5DaBU
 RSnGFUoFUTQA==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="467908721"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 06:09:13 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH v2 4/4] acrn.conf: drop acrn machine configuration
Date: Thu, 20 May 2021 21:20:30 +0800
Message-Id: <20210520132030.22991-5-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210520132030.22991-1-naveen.kumar.saini@intel.com>
References: <20210520132030.22991-1-naveen.kumar.saini@intel.com>

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

