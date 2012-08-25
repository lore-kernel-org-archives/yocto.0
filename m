Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DF7CE00283
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 21:37:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Aug 2012 21:37:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,309,1344236400"; d="scan'208";a="191080027"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by orsmga002.jf.intel.com with ESMTP; 24 Aug 2012 21:37:03 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2012 23:36:44 -0500
Message-Id: <a4c4b0f81b4facca97c9183e7df3664030464e92.1345868069.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1345868069.git.tom.zanussi@intel.com>
References: <cover.1345868069.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4] meta-intel.inc: new file
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
X-List-Received-Date: Sat, 25 Aug 2012 04:37:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Move a couple intel-specific variables into a new meta-intel.inc
include file.  meta-intel.inc is meant to contain variables and
definitions that only make sense and are only available if the
meta-intel layer is included in bblayers.conf.

This is in preparation for moving the rest into oe-core.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/machine/include/ia32-base.inc  |  7 -------
 conf/machine/include/meta-intel.inc | 16 ++++++++++++++++
 2 files changed, 16 insertions(+), 7 deletions(-)
 create mode 100644 conf/machine/include/meta-intel.inc

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index f8b7b94..af583ae 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -55,11 +55,4 @@ XSERVER_IA32_I965 = "xf86-video-intel \
            mesa-dri-driver-i965 \
            "
 
-XSERVER_IA32_EMGD = "emgd-driver-bin \
-           "
-
 XSERVER_IA32_VESA = "xf86-video-vesa"
-
-XSERVER_IA32_MATROX_MGA = "xserver-xorg-module-xaa \
-           xf86-video-mga \
-           "
diff --git a/conf/machine/include/meta-intel.inc b/conf/machine/include/meta-intel.inc
new file mode 100644
index 0000000..f0e538d
--- /dev/null
+++ b/conf/machine/include/meta-intel.inc
@@ -0,0 +1,16 @@
+#
+# BSP variables and settings specific to the meta-intel layer.
+# You must include the meta-intel layer in your bblayers.conf
+# to use them.
+#
+
+#
+# XSERVER subcomponents, used to build the XSERVER variable
+#
+XSERVER_IA32_EMGD = "emgd-driver-bin \
+           "
+
+XSERVER_IA32_MATROX_MGA = "xserver-xorg-module-xaa \
+           xf86-video-mga \
+           "
+
-- 
1.7.11.4


