Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C88D7E01362
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2011 20:44:51 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Oct 2011 20:44:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,515,1312182000"; d="scan'208";a="24720542"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Oct 2011 20:44:50 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun,  9 Oct 2011 22:44:33 -0500
Message-Id: <c4388f88bfc75e13d93dedccc424e6c655212b0c.1318217996.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <fd61f69633cb1b37679a491b1f76ce32b49d4b79.1318217996.git.tom.zanussi@intel.com>
References: <fd61f69633cb1b37679a491b1f76ce32b49d4b79.1318217996.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318217996.git.tom.zanussi@intel.com>
References: <cover.1318217996.git.tom.zanussi@intel.com>
Subject: [PATCH 8/8] fri2-noemgd: set boot vga mode
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
X-List-Received-Date: Mon, 10 Oct 2011 03:44:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Set boot params to get a vesafb 1024x768 graphics mode and can see the
splash screen.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index b02e037..f8e2f8b 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -28,6 +28,8 @@ XSERVER ?= "xserver-xf86-dri-lite \
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
+APPEND += "video=vesafb vga=0x318"
+
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
-- 
1.7.0.4


