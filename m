Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1EEDE0123F
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:31:33 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2011 16:31:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="45019223"
Received: from unknown (HELO localhost) ([10.255.12.239])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Dec 2011 16:31:33 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Wed,  7 Dec 2011 16:31:35 -0800
Message-Id: <9672eec8175b00723e8d0d684233f61dab709517.1323303673.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323303673.git.dvhart@linux.intel.com>
References: <cover.1323303673.git.dvhart@linux.intel.com>
Subject: [PATCH 7/7] fri2: Comment framebuffer APPEND setting
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
X-List-Received-Date: Thu, 08 Dec 2011 00:31:33 -0000

Note that the vesafb will only be used when booting via legacy PCBIOS.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf |    1 +
 meta-fri2/conf/machine/fri2.conf        |    1 +
 2 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index a8b889f..911a449 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -19,5 +19,6 @@ SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
+# EFI boot will ignore this and use the EFI framebuffer at 800x600
 APPEND += "video=vesafb vga=0x318"
 
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index da4e981..9ae4287 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -23,4 +23,5 @@ SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
+# EFI boot will ignore this and use the EFI framebuffer at 800x600
 APPEND += "video=vesafb vga=0x318"
-- 
1.7.6.4


