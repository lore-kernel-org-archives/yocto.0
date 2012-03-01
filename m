Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA16BE013A3
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:45 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113647312"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 16:00:45 -0800
From: Darren Hart <darren@dvhart.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:50 -0800
Message-Id: <cover.1330644090.git.darren@dvhart.com>
X-Mailer: git-send-email 1.7.6.5
Subject: [PATCH 0/6][linux-yocto-3.2] Meta update for sys940x, bootlive, and FRI2
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:46 -0000

Pull in the sys940x from the 3.0 tree.
Pull in the boot-live cfg cleanup from the 3.0 tree.
Add FRI2 serial port support.
Move the SMP and EFI features into the scc files rather than specifying them in
the recipes.
Finally, breakout the non-hardware features from the fri2 scc file and move them
into the fri2-KTYPE scc files.

The following changes since commit 4c648bbbc7d2204d1b24f444aebb10f91c4ecae3:

  meta: create pvr feature description (2012-02-27 15:54:53 -0500)

are available in the git repository at:
  git://git.infradead.org/users/dvhart/linux-yocto-3.2.git dvhart/meta/fri2
  http://git.infradead.org/users/dvhart/linux-yocto-3.2.git/shortlog/refs/heads/dvhart/meta/fri2

Darren Hart (6):
  meta: sys940x BSP meta data
  Remove boot-live cfg duplication from BSPs
  fri2: Drop 8250 from the fri2 scc
  eg20t: Enable serial console for the pch_uart
  fri2: Add SMP and EFI support
  fri2: Move non-hardware optional features out of fri2.scc

 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   10 ----
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |   10 ----
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |   10 ----
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   10 ----
 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    7 +++
 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    7 +++
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg            |   10 ----
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |   11 +----
 .../bsp/sys940x/sys940x-preempt-rt.scc             |    7 +++
 .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |    6 +++
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |   44 ++++++++++++++++++++
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc      |   17 ++++++++
 meta/cfg/kernel-cache/cfg/boot-live.cfg            |    3 +
 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg     |    1 +
 14 files changed, 95 insertions(+), 58 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc

-- 
1.7.6.5


