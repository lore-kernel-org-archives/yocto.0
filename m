Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF96EE00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:14:08 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 May 2012 15:14:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="95224388"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by AZSMGA002.ch.intel.com with ESMTP; 01 May 2012 15:14:06 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:13:24 -0700
Message-Id: <cover.1335908926.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH 0/7][linux-yocto-3.2] fri2 and sys940x meta updates
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
X-List-Received-Date: Tue, 01 May 2012 22:14:09 -0000

Please apply to linux-yocto-3.2 meta branch.

The following changes since commit b14a08f5c7b469a5077c10942f4e1aec171faa9d:

  meta: Clean up BSPs kernel config (2012-04-17 16:04:15 -0400)

are available in the git repository at:
  git://git.infradead.org/users/dvhart/linux-yocto-3.2.git dvhart/meta/dev
  http://git.infradead.org/users/dvhart/linux-yocto-3.2.git/shortlog/refs/heads/dvhart/meta/dev

Darren Hart (7):
  fri2: Use emgd-1.10 feature and branch
  fri2: Cleanup fri2-$KTYPE.scc files re efi-ext.scc
  sys940x: Move emgd-1.10 data to the standard scc file
  sys940x: Add efi-ext to standard and preempt-rt configs
  sys940x: Add common standard and preempt-rt features
  sys940x: Use PHYSICAL_START of 0x200000 to boot
  sys940x: Cleanup sys940x.scc

 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    2 +-
 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    6 +++---
 .../bsp/sys940x/sys940x-preempt-rt.scc             |    8 ++++++++
 .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |   12 ++++++++++++
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |    4 ++++
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc      |   10 ++--------
 6 files changed, 30 insertions(+), 12 deletions(-)

-- 
1.7.7.6


