Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65A3BE0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:31 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113646996"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 16:00:07 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:14 -0800
Message-Id: <cover.1330643786.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
Subject: [PATCH 0/3][linux-yocto-3.0] Meta updates for fri2
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:31 -0000

Update the meta data for FRI2 to support the new serial console support and
add the SMP and EFI features to the scc directly.

The following changes since commit d7b46785d6781e2c23d754f35f09bebd3b74b5bb:

  meta: create pvr feature description (2012-02-27 15:54:24 -0500)

are available in the git repository at:
  git://git.infradead.org/users/dvhart/linux-yocto-3.0.git dvhart/meta/fri2
  http://git.infradead.org/users/dvhart/linux-yocto-3.0.git/shortlog/refs/heads/dvhart/meta/fri2

Darren Hart (3):
  fri2: Drop 8250 from the fri2 scc
  eg20t: Enable serial console for the pch_uart
  fri2: Add SMP and EFI support

 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    1 +
 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    1 +
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    3 ++-
 meta/cfg/kernel-cache/features/eg20t/eg20t.cfg     |    1 +
 4 files changed, 5 insertions(+), 1 deletions(-)

-- 
1.7.6.5


