Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB0414C80AAA
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 17:07:33 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Jun 2011 15:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; 
   d="scan'208";a="8085090"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by orsmga001.jf.intel.com with ESMTP; 01 Jun 2011 15:07:32 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dongxiao.xu@intel.com, yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 17:05:20 -0500
Message-Id: <d1eb7fd2496c24ad7c4694881c32e3216efa11b1.1306964823.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306964823.git.tom.zanussi@intel.com>
References: <cover.1306964823.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2][KERNEL] meta: add ericsson-3g f5521gw feature
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
X-List-Received-Date: Wed, 01 Jun 2011 22:07:34 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

For use initially by the fishriver bsp.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/features/ericsson-3g/f5521gw.cfg  |    3 +++
 .../kernel-cache/features/ericsson-3g/f5521gw.scc  |    3 +++
 2 files changed, 6 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.cfg
 create mode 100644 meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.scc

diff --git a/meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.cfg b/meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.cfg
new file mode 100644
index 0000000..141435e
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.cfg
@@ -0,0 +1,3 @@
+CONFIG_USB_ACM=m
+CONFIG_USB_WDM=m
+CONFIG_USB_CDC_NCM=m
diff --git a/meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.scc b/meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.scc
new file mode 100644
index 0000000..f98d479
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.scc
@@ -0,0 +1,3 @@
+kconf hardware f5521gw.cfg
+
+include features/usb-net/usb-net.scc
-- 
1.7.0.4


