Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53FCBE01350
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2011 20:44:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Oct 2011 20:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="60974311"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by orsmga001.jf.intel.com with ESMTP; 09 Oct 2011 20:44:42 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun,  9 Oct 2011 22:44:28 -0500
Message-Id: <84e6271034134e454da8573e775ac3d13ca9e32d.1318217996.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <fd61f69633cb1b37679a491b1f76ce32b49d4b79.1318217996.git.tom.zanussi@intel.com>
References: <fd61f69633cb1b37679a491b1f76ce32b49d4b79.1318217996.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318217996.git.tom.zanussi@intel.com>
References: <cover.1318217996.git.tom.zanussi@intel.com>
Subject: [PATCH 3/8] emenlow: set boot vga mode
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
X-List-Received-Date: Mon, 10 Oct 2011 03:44:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Set boot params to get a vesafb 1024x768 graphics mode and can see the
splash screen.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 9745531..fa1ea6e 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -30,6 +30,8 @@ XSERVER ?= "xserver-psb \
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
+APPEND += "video=vesafb vga=0x318"
+
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
-- 
1.7.0.4


