Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A8F2E011C6
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 12:56:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Sep 2011 12:56:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,341,1312182000"; d="scan'208";a="48631100"
Received: from nbuild2.sc.intel.com ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 06 Sep 2011 12:56:01 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Tue,  6 Sep 2011 12:56:00 -0700
Message-Id: <b33495af418b4fe8b8a2c6ba1ff8a67e84dd0a29.1315338837.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <cover.1315338837.git.nitin.a.kamble@intel.com>
References: <cover.1315338837.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] btrfs: Add a new kernel feature to enable the btrfs support
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
X-List-Received-Date: Tue, 06 Sep 2011 19:56:04 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/cfg/kernel-cache/features/btrfs/btrfs.cfg |    1 +
 meta/cfg/kernel-cache/features/btrfs/btrfs.scc |    1 +
 2 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
 create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.scc

diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
new file mode 100644
index 0000000..605c183
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
@@ -0,0 +1 @@
+CONFIG_BTRFS_FS=y
diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.scc b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
new file mode 100644
index 0000000..cf18a2e
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
@@ -0,0 +1 @@
+kconf non-hardware btrfs.cfg
-- 
1.7.4.4


