Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8433CE01402
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:14:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 May 2012 15:14:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148222399"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by fmsmga001.fm.intel.com with ESMTP; 01 May 2012 15:14:12 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:13:30 -0700
Message-Id: <e9384e3440509c01bb72d6957d32fb00a0f68a46.1335908926.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335908926.git.dvhart@linux.intel.com>
References: <cover.1335908926.git.dvhart@linux.intel.com>
Subject: [PATCH 6/7] sys940x: Use PHYSICAL_START of 0x200000 to boot
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
X-List-Received-Date: Tue, 01 May 2012 22:14:12 -0000

Boot fails with a kernel panic in setup_trampoline or shortly
after Freeing kernel memory, when using 0x1000000 for PHYSICAL_START
and PHYSICAL_ALIGN. Use 0x200000 instead.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
index b101419..d4b44b2 100644
--- a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
+++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
@@ -42,3 +42,7 @@ CONFIG_MODULES=y
 CONFIG_SHMEM=y
 CONFIG_TMPFS=y
 CONFIG_PACKET=y
+
+# Boot fails with the default of 0x1000000 (16MB)
+CONFIG_PHYSICAL_START=0x200000
+CONFIG_PHYSICAL_ALIGN=0x200000
-- 
1.7.7.6


