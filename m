Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 601E5E0127A
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 15:52:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Sep 2011 15:52:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,464,1312182000"; d="scan'208";a="68817943"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by fmsmga001.fm.intel.com with ESMTP; 29 Sep 2011 15:52:35 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 29 Sep 2011 17:52:32 -0500
Message-Id: <97a3c8c6a268ba27a64acc447111a250a2f6f562.1317336374.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1317336374.git.tom.zanussi@intel.com>
References: <cover.1317336374.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4] crownbay-noemgd: set boot vga mode
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
X-List-Received-Date: Thu, 29 Sep 2011 22:52:36 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Set boot params to get a vesafb 1024x768 graphics mode and can see the
splash screen.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index c668f4a..9989d0d 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -28,6 +28,8 @@ XSERVER ?= "xserver-xf86-dri-lite \
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
+APPEND += "video=vesafb vga=0x318"
+
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
-- 
1.7.0.4


