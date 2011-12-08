Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44F5DE0030C
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:29:00 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2011 16:29:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83419412"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2011 16:28:59 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 16:29:04 -0800
Message-Id: <2b7d28a882b6565e20eee3234ef0d053810b4e39.1323303722.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323303722.git.dvhart@linux.intel.com>
References: <cover.1323303722.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323303722.git.dvhart@linux.intel.com>
References: <cover.1323303722.git.dvhart@linux.intel.com>
Subject: [PATCH 1/4] fri2: use ttyS0, 115200 for serial console and syslinux
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
X-List-Received-Date: Thu, 08 Dec 2011 00:29:00 -0000

The FRI2 has an optional serial expansion board. Enable the use of this
as a console for both syslinux and the OS.

Note: while the settings all appear to be correct, the serial port is
      not working on my test device in syslinux or the getty. The
      kernel messages do make their way to the serial port after PCI
      initialization.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf |    2 ++
 meta-fri2/conf/machine/fri2.conf        |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index a871529..8137912 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -26,7 +26,9 @@ XSERVER ?= "xserver-xf86-dri-lite \
            xf86-input-synaptics \
            xf86-video-vesa"
 
+SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 4b81fab..941d9f0 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -29,7 +29,9 @@ XSERVER ?= "xserver-xf86-dri-lite \
 PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
+SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
-- 
1.7.6.4


