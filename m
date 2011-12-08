Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1A52E0074A
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:29:01 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2011 16:29:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84103458"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2011 16:29:01 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 16:29:07 -0800
Message-Id: <4530ca9d18dc417decc7e651e24bb024c9b8e9b5.1323303722.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323303722.git.dvhart@linux.intel.com>
References: <cover.1323303722.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323303722.git.dvhart@linux.intel.com>
References: <cover.1323303722.git.dvhart@linux.intel.com>
Subject: [PATCH 4/4] fri2: include linux-firmware for iwlwifi in images
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
X-List-Received-Date: Thu, 08 Dec 2011 00:29:02 -0000

Include the firmware package for the iwlwifi card for task-base based images
using the MACHINE_EXTRA_RRECOMMENDS variable. This will exclude the firmware
from being installed in core-image-minimal, but it doesn't have the tooling
required to connect over wifi anyway.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf |    3 ++-
 meta-fri2/conf/machine/fri2.conf        |    3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index 8137912..292c925 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -30,7 +30,8 @@ SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts \
+                             linux-firmware-iwlwifi-6000g2a-5"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 941d9f0..1d84c30 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -33,7 +33,8 @@ SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts \
+                             linux-firmware-iwlwifi-6000g2a-5"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
-- 
1.7.6.4


