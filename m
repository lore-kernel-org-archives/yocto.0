Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49640E01432
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 08:51:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 May 2012 08:51:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="153671117"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2012 08:51:22 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed, 16 May 2012 10:50:32 -0500
Message-Id: <4c8135e837f7f2ffe6f690c38e14d4d888669a62.1337182769.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1337182769.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337182769.git.tom.zanussi@intel.com>
References: <cover.1337182769.git.tom.zanussi@intel.com>
Subject: [PATCH 12/22][KERNEL] meta: add scsi disk feature
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
X-List-Received-Date: Wed, 16 May 2012 15:51:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a feature to enable SCSI disk support.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/scsi/disk.cfg |    1 +
 meta/cfg/kernel-cache/features/scsi/disk.scc |    6 ++++++
 2 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/scsi/disk.cfg
 create mode 100644 meta/cfg/kernel-cache/features/scsi/disk.scc

diff --git a/meta/cfg/kernel-cache/features/scsi/disk.cfg b/meta/cfg/kernel-cache/features/scsi/disk.cfg
new file mode 100644
index 0000000..e71b9a4
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/scsi/disk.cfg
@@ -0,0 +1 @@
+CONFIG_BLK_DEV_SD=y
diff --git a/meta/cfg/kernel-cache/features/scsi/disk.scc b/meta/cfg/kernel-cache/features/scsi/disk.scc
new file mode 100644
index 0000000..fdda548
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/scsi/disk.scc
@@ -0,0 +1,6 @@
+define KFEATURE_DESCRIPTION "Enable options for SCSI disk support"
+define KFEATURE_COMPATIBILITY board
+
+include scsi.scc
+
+kconf hardware disk.cfg
-- 
1.7.0.4


