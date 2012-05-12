Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCCD9E01433
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2012 12:42:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="165425715"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2012 12:42:39 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:42:00 -0500
Message-Id: <00f044ebdf3865aa6d83d2158b0c3b37ceffb80d.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 15/22] meta: add scsi cdrom feature
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
X-List-Received-Date: Sat, 12 May 2012 19:42:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a feature to enable SCSI CDROM support.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/scsi/cdrom.cfg |    1 +
 meta/cfg/kernel-cache/features/scsi/cdrom.scc |    6 ++++++
 2 files changed, 7 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/scsi/cdrom.cfg
 create mode 100644 meta/cfg/kernel-cache/features/scsi/cdrom.scc

diff --git a/meta/cfg/kernel-cache/features/scsi/cdrom.cfg b/meta/cfg/kernel-cache/features/scsi/cdrom.cfg
new file mode 100644
index 0000000..9c97cec
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/scsi/cdrom.cfg
@@ -0,0 +1 @@
+CONFIG_BLK_DEV_SR=y
diff --git a/meta/cfg/kernel-cache/features/scsi/cdrom.scc b/meta/cfg/kernel-cache/features/scsi/cdrom.scc
new file mode 100644
index 0000000..b638ea1
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/scsi/cdrom.scc
@@ -0,0 +1,6 @@
+define KFEATURE_DESCRIPTION "Enable options for SCSI CDROM support"
+define KFEATURE_COMPATIBILITY board
+
+include scsi.scc
+
+kconf hardware cdrom.cfg
-- 
1.7.0.4


