Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F12EE002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 10:56:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Aug 2012 10:56:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="183252616"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.174])
	by orsmga002.jf.intel.com with ESMTP; 08 Aug 2012 10:56:58 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Wed,  8 Aug 2012 10:56:55 -0700
Message-Id: <cover.1344448245.git.kishore.k.bodke@intel.com>
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
X-List-Received-Date: Wed, 08 Aug 2012 17:56:59 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Hi,

This is a revised patch set is for creating the new Crystal Forest Machine.
Crystal Forest Machine is Sandybridge CPU with Cave Creek Chipset.

This machine is based on standard/default/common-pc-64.

Please create a new branch called standard/default/common-pc-64/crystalforest
for linux-yocto-3.4 kernel and pull this new meta branch.

Thanks
Kishore.

The following changes since commit 459165c1dd61c4e843c36e6a1abeb30949a20ba7:

  kconf: add 8250 Kconfig to hardware listing audit (2012-07-26 16:23:26 -0400)

are available in the git repository at:

  git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-crystalforest
  http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/meta-crystalforest

Kishore Bodke (1):
  meta: Crystal Forest Machine Created.

 .../bsp/crystalforest/crystalforest-preempt-rt.scc |    9 ++++++
 .../bsp/crystalforest/crystalforest-standard.scc   |    8 +++++
 .../bsp/crystalforest/crystalforest.cfg            |   32 ++++++++++++++++++++
 .../bsp/crystalforest/crystalforest.scc            |   21 +++++++++++++
 4 files changed, 70 insertions(+)
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc

-- 
1.7.9.5


