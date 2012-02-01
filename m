Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6E48E004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 10:46:01 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2012 10:46:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102067697"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 10:46:00 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Yocto Project <yocto@yoctoproject.org>
Date: Wed,  1 Feb 2012 10:45:22 -0800
Message-Id: <cover.1328121321.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/2][linux-yocto-3.0] sys940x BSP and boot-live consolidation
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
X-List-Received-Date: Wed, 01 Feb 2012 18:46:02 -0000

The following changes since commit 59314a3523e360796419d76d78c6f7d8c5ef2593:

  meta/beagleboard: Using CONFIG_PANEL_GENERIC_DPI=y (2012-01-30 00:50:09 -0500)

are available in the git repository at:
  git://git.infradead.org/users/dvhart/linux-yocto-3.0.git meta-sys940x
  http://git.infradead.org/users/dvhart/linux-yocto-3.0.git/shortlog/refs/heads/meta-sys940x

Darren Hart (2):
  meta: sys940x BSP meta data
  Remove boot-live cfg duplication from BSPs

 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   10 ----
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |   10 ----
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |   10 ----
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   10 ----
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg            |   10 ----
 .../bsp/sys940x/sys940x-preempt-rt.scc             |    7 +++
 .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |    6 +++
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |   44 ++++++++++++++++++++
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc      |   17 ++++++++
 meta/cfg/kernel-cache/cfg/boot-live.cfg            |    3 +
 10 files changed, 77 insertions(+), 50 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc

-- 
1.7.6.5


