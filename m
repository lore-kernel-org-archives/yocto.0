Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DEF6E0071A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 12:56:01 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Sep 2011 12:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,341,1312182000"; d="scan'208";a="46097234"
Received: from nbuild2.sc.intel.com ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 06 Sep 2011 12:56:00 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Tue,  6 Sep 2011 12:55:56 -0700
Message-Id: <cover.1315338837.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.4.4
Subject: [PATCH 0/1] add a btrfs feature in linux-yocto-3.0
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
X-List-Received-Date: Tue, 06 Sep 2011 19:56:01 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The following changes since commit 3c9ebeed2598b74798a0c9247ef7c385e0cd96a7:

  meta: re-enable utrace feature for linux-yocto (2011-09-05 15:40:08 -0400)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib nitin/linux-yocto-3.0/meta
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=nitin/linux-yocto-3.0/meta

Nitin A Kamble (1):
  btrfs: Add a new kernel feature to enable the btrfs support

 meta/cfg/kernel-cache/features/btrfs/btrfs.cfg |    1 +
 meta/cfg/kernel-cache/features/btrfs/btrfs.scc |    1 +
 2 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
 create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.scc

-- 
1.7.4.4


