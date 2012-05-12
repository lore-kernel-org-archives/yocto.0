Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED3EDE01423
	for <yocto@yoctoproject.org>; Sat, 12 May 2012 12:42:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 May 2012 12:42:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="142287515"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2012 12:42:32 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Sat, 12 May 2012 14:41:56 -0500
Message-Id: <991789c30cbc85521bf8c76bcea45df1184cb0ab.1336851382.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336851382.git.tom.zanussi@intel.com>
References: <cover.1336851382.git.tom.zanussi@intel.com>
Subject: [PATCH 11/22] meta: add scsi feature
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
X-List-Received-Date: Sat, 12 May 2012 19:42:34 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a feature to enable SCSI support.  This also creates a scsi/
directory to contain further SCSI options.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/scsi/scsi.cfg |    1 +
 meta/cfg/kernel-cache/features/scsi/scsi.scc |    4 ++++
 2 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.cfg
 create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.scc

diff --git a/meta/cfg/kernel-cache/features/scsi/scsi.cfg b/meta/cfg/kernel-cache/features/scsi/scsi.cfg
new file mode 100644
index 0000000..2e9142f
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/scsi/scsi.cfg
@@ -0,0 +1 @@
+CONFIG_SCSI=y
diff --git a/meta/cfg/kernel-cache/features/scsi/scsi.scc b/meta/cfg/kernel-cache/features/scsi/scsi.scc
new file mode 100644
index 0000000..bd739e8
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/scsi/scsi.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Enable options for SCSI support"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware scsi.cfg
-- 
1.7.0.4


