Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D14B1E00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:29:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2012 15:29:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138900722"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2012 15:15:10 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:14:37 -0700
Message-Id: <cover.1335908646.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH 0/1][linux-yocto-3.2] pch_gbe: Do not abort probe on bad MAC
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
X-List-Received-Date: Tue, 01 May 2012 22:29:12 -0000

This somehow missed the 3.0 to 3.2 update. It is required for networking
on the sys940x BSP. Please apply to standard/base and derived branches.

The following changes since commit 900717638fab9d2b25be35f3612ccfd95ceb31d1:

  Merge branch 'yocto/standard/base' into standard/base (2012-03-16 10:43:42 -0400)

are available in the git repository at:

  git://git.infradead.org/users/dvhart/linux-yocto-3.2.git dvhart/standard/pch_gbe
  http://git.infradead.org/users/dvhart/linux-yocto-3.2.git/shortlog/refs/heads/dvhart/standard/pch_gbe

Darren Hart (1):
  pch_gbe: Do not abort probe on bad MAC

 .../net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c   |   17 ++++++++++++++---
 1 files changed, 14 insertions(+), 3 deletions(-)

-- 
1.7.7.6


