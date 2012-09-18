Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61FE8E0027F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 22:59:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Sep 2012 22:59:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,441,1344236400"; d="scan'208";a="223405599"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 17 Sep 2012 22:59:51 -0700
Received: from qa.intel.com (qa.rb.intel.com [10.237.100.11])
	by linux.intel.com (Postfix) with ESMTP id DA4912C8001;
	Mon, 17 Sep 2012 22:59:51 -0700 (PDT)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: <yocto@yoctoproject.org>
Date: Tue, 18 Sep 2012 08:59:50 +0300
Message-Id: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
X-Mailer: git-send-email 1.7.8.6
Subject: [PATCH 0/1] [linux-yocto-3.0] boot-live.cfg: enable BLK_DEV_INITRD in kernel
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
X-List-Received-Date: Tue, 18 Sep 2012 05:59:54 -0000

Please pull into linux-yocto-3.0, meta.

Added BLK_DEV_INITRD in boot-live.cfg for linux-yocto-3.0, meta branch.
Cedartrail (at least) cannot boot live from ISO image due to
BLK_DEV_INITRD missing:
"VFS: Cannot open root device "ram0" or unkown-block(0,0)"
Should fix #3050

[YOCTO #3050]

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---

The following changes since commit bf5ee4945ee6d748e6abe16356f2357f76b5e2f0:

  meta: rename virto.scc to virtio.scc (2012-08-18 22:09:35 -0400)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib mihai/linux-yocto-3.0/meta

Mihai Lindner (1):
      boot-live.cfg: enable BLK_DEV_INITRD in kernel

 meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

Mihai Lindner (1):
  boot-live.cfg: enable BLK_DEV_INITRD in kernel

 meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

-- 
1.7.8.6


