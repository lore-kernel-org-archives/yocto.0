Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 264D3E0133B
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2011 06:14:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Oct 2011 06:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="60134016"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by orsmga001.jf.intel.com with ESMTP; 07 Oct 2011 06:14:31 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Fri,  7 Oct 2011 08:15:36 -0500
Message-Id: <ad2d621ebff1f8bb9070d898969164817deab62c.1317993031.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <913facfef4ffff121bbbad386a4f30e69541455b.1317993031.git.tom.zanussi@intel.com>
References: <913facfef4ffff121bbbad386a4f30e69541455b.1317993031.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317993031.git.tom.zanussi@intel.com>
References: <cover.1317993031.git.tom.zanussi@intel.com>
Subject: [PATCH 2/5][KERNEL] meta: add vesafb feature
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
X-List-Received-Date: Fri, 07 Oct 2011 13:14:32 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a 'vesafb feature' that adds basic vesa framebuffer support.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/features/framebuffer/vesafb.cfg   |    8 ++++++++
 .../kernel-cache/features/framebuffer/vesafb.scc   |    1 +
 2 files changed, 9 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg
 create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.scc

diff --git a/meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg b/meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg
new file mode 100644
index 0000000..9c7f35d
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg
@@ -0,0 +1,8 @@
+CONFIG_FB=y
+CONFIG_FB_VESA=y
+CONFIG_FB_BOOT_VESA_SUPPORT=y
+CONFIG_FB_MODE_HELPERS=y
+CONFIG_FB_CFB_COPYAREA=y
+CONFIG_FB_CFB_IMAGEBLIT=y
+CONFIG_FB_CFB_FILLRECT=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
diff --git a/meta/cfg/kernel-cache/features/framebuffer/vesafb.scc b/meta/cfg/kernel-cache/features/framebuffer/vesafb.scc
new file mode 100644
index 0000000..c113097
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/framebuffer/vesafb.scc
@@ -0,0 +1 @@
+kconf non-hardware vesafb.cfg
-- 
1.7.0.4


