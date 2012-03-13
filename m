Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9244CE0044D
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 11:13:22 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2012 11:13:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="117341679"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.80])
	by orsmga001.jf.intel.com with ESMTP; 13 Mar 2012 11:13:22 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Tue, 13 Mar 2012 11:12:06 -0700
Message-Id: <cover.1331661801.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [KERNEL][PATCH 0/1] meta: Create scc file for pvr merge
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
X-List-Received-Date: Tue, 13 Mar 2012 18:13:22 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This patch is to create a new scc file for merging the yocto/pvr branch for the targets 
with the appropriate hardware support.

Adding it into the existing cedartrail.scc, the non-pvr build was not booting. So we had to separate it out.

Thanks
Kishore.


The following changes since commit e559129b4a6f39f68b75141096b2d516cf7a7f35:

  fri2: Add SMP and EFI support (2012-03-02 16:02:35 -0500)

are available in the git repository at:
  git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-cedartrail/pvr-merge
  http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/meta-cedartrail/pvr-merge

Kishore Bodke (1):
  meta: Create scc file for pvr merge

 .../bsp/cedartrail/cedartrail-pvr-merge.scc        |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-merge.scc

-- 
1.7.5.4


