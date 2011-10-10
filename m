Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCAD2E0134E
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2011 20:34:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Oct 2011 20:34:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="61566873"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by orsmga002.jf.intel.com with ESMTP; 09 Oct 2011 20:34:56 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
Date: Sun,  9 Oct 2011 22:34:42 -0500
Message-Id: <ad2d621ebff1f8bb9070d898969164817deab62c.1318217109.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <913facfef4ffff121bbbad386a4f30e69541455b.1318217109.git.tom.zanussi@intel.com>
References: <913facfef4ffff121bbbad386a4f30e69541455b.1318217109.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318217109.git.tom.zanussi@intel.com>
References: <cover.1318217109.git.tom.zanussi@intel.com>
Subject: [PATCH 2/8][KERNEL] meta: add vesafb feature
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
X-List-Received-Date: Mon, 10 Oct 2011 03:34:56 -0000

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


