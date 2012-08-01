Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CBEAE01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 12:15:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Aug 2012 12:15:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="180396585"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.174])
	by orsmga002.jf.intel.com with ESMTP; 01 Aug 2012 12:15:23 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed,  1 Aug 2012 12:15:08 -0700
Message-Id: <cover.1343847920.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
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
X-List-Received-Date: Wed, 01 Aug 2012 19:15:24 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This patch set is for creating initial checkin for the
new machine Crystal Forest.

This machine is based on standard/default/common-pc-64.

Please create a new branch called standard/default/common-pc-64/crystalforest
for linux-yocto-3.4 kernel and push this new meta branch.

Thanks
Kishore.

The following changes since commit 459165c1dd61c4e843c36e6a1abeb30949a20ba7:

  kconf: add 8250 Kconfig to hardware listing audit (2012-07-26 16:23:26 -0400)

are available in the git repository at:

  git://git.pokylinux.org/linux-yocto-2.6.37-contrib meta-crystalforest
  http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=meta-crystalforest

Kishore Bodke (1):
  meta: Crystal Forest Machine Created.

 .../bsp/crystalforest/crystalforest-preempt-rt.scc |   15 +++++
 .../bsp/crystalforest/crystalforest-standard.scc   |   10 ++++
 .../bsp/crystalforest/crystalforest.cfg            |   63 ++++++++++++++++++++
 .../bsp/crystalforest/crystalforest.scc            |   14 +++++
 4 files changed, 102 insertions(+)
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc

-- 
1.7.9.5


