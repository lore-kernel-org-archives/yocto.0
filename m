Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A72DE013FE
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 00:11:36 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 15 Aug 2012 00:11:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,772,1336374000"; d="scan'208";a="134462776"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Aug 2012 00:11:36 -0700
From: nitin.a.kamble@intel.com
To: darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Tue, 14 Aug 2012 00:07:37 -0700
Message-Id: <d441d277d3f4aaa5a4ec8de76cfcf5bb4aed3058.1344927805.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1344927805.git.nitin.a.kamble@intel.com>
References: <cover.1344927805.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] sys940x: fix libva dependency issues
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
X-List-Received-Date: Wed, 15 Aug 2012 07:11:36 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This fixes bug:
[YOCTO #2946]

Avoids these errors:
| error: Failed dependencies:
| libva.so.1 is needed by libegl1-1.10-r0.core2
| libva-tpi.so.1 is needed by libegl1-1.10-r0.core2
| libva-x11.so.1 is needed by libegl1-1.10-r0.core2
NOTE: package core-image-sato-sdk-1.0-r0: task do_rootfs: Failed

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-sys940x/conf/machine/sys940x.conf |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index 58e2ba1..18f769d 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -8,7 +8,7 @@ require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
 # Add "pcbios" if you have a non-efi version of the firmware
-MACHINE_FEATURES += "efi pcbios"
+MACHINE_FEATURES += "efi pcbios gst-va-mixvideo"
 
 PREFERRED_VERSION_linux-yocto ?= "3.2%"
 
@@ -23,3 +23,7 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
+
+VA_FEATURES ?= "gst-va-intel va-intel"
+
+MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
-- 
1.7.3.4


