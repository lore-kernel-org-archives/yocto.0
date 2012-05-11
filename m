Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D35CE0140C
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 18:00:12 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2012 18:00:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="139312046"
Received: from unknown (HELO localhost) ([10.255.12.70])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2012 18:00:11 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	dvhart@linux.intel.com
Date: Thu, 10 May 2012 19:59:58 -0500
Message-Id: <4b87723a74ddeb8a322878d1eab1d519d4d065ae.1336697506.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336697506.git.tom.zanussi@intel.com>
References: <cover.1336697506.git.tom.zanussi@intel.com>
Subject: [PATCH 02/10] meta/common-pc: use usb features
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
X-List-Received-Date: Fri, 11 May 2012 01:00:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Use the available ehci and uhci usb features and remove the associated
config settings from the top-level common-pc feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg |    5 -----
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc |    2 ++
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
index d3dac93..db6ffb1 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
@@ -73,12 +73,7 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_VT=y
 CONFIG_VGA_CONSOLE=y
 
-CONFIG_USB_SUPPORT=y
-CONFIG_USB=y
 CONFIG_USB_DEVICEFS=y
-CONFIG_USB_EHCI_HCD=y
-CONFIG_USB_EHCI_ROOT_HUB_TT=y
-CONFIG_USB_UHCI_HCD=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_HID=y
 CONFIG_USB_HIDDEV=y
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
index bab45e6..2338ea6 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
@@ -2,6 +2,8 @@ kconf hardware common-pc.cfg
 kconf hardware common-pc-gfx.cfg
 
 include cfg/boot-live.scc
+include features/usb/ehci-hcd.scc
+include features/usb/uhci-hcd.scc
 include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/latencytop/latencytop.scc
-- 
1.7.0.4


