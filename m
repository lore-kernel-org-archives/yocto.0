Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9BBFE013B0
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2011 11:23:20 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Nov 2011 11:23:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,478,1315206000"; d="scan'208";a="71956957"
Received: from rp614v4.sc.intel.com (HELO localhost) ([143.183.188.157])
	by azsmga001.ch.intel.com with ESMTP; 08 Nov 2011 11:23:14 -0800
From: kishore.k.bodke@intel.com
To: bruce.ashfield@windriver.com, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Tue,  8 Nov 2011 11:22:54 -0800
Message-Id: <cover.1320777520.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1] [KERNEL] Add rt support to meta branch for romley.
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
X-List-Received-Date: Tue, 08 Nov 2011 19:23:21 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi All,

This is the patch to support rt in the kernel meta branch for romley.

Please pull into linux-yocto-3.0/meta and linux-yocto-dev/meta.


Thanks
Kishore.

The following changes since commit 4095bb597a7bcd647856aa35b5fb8637ed7ff975:

  meta/common-pc-64: remove igb (2011-11-02 16:23:13 -0400)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib kishore/meta-romley
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/meta-romley

Kishore Bodke (1):
  meta/romley: Add rt support     
  Add rt support to the meta branch for romley.

 .../kernel-cache/bsp/romley/romley-preempt-rt.scc  |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/romley/romley-preempt-rt.scc

-- 
1.7.5.4


