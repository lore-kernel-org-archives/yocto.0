Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B80B0E01280
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 15:52:38 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 29 Sep 2011 15:52:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,464,1312182000"; d="scan'208";a="21974267"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Sep 2011 15:52:37 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 29 Sep 2011 17:52:33 -0500
Message-Id: <bc68a625f88630ccefce88d55c6a6a714979102a.1317336374.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <97a3c8c6a268ba27a64acc447111a250a2f6f562.1317336374.git.tom.zanussi@intel.com>
References: <97a3c8c6a268ba27a64acc447111a250a2f6f562.1317336374.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317336374.git.tom.zanussi@intel.com>
References: <cover.1317336374.git.tom.zanussi@intel.com>
Subject: [PATCH 2/4] crownbay: set boot vga mode
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
X-List-Received-Date: Thu, 29 Sep 2011 22:52:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Set boot params to get a vesafb 1024x768 graphics mode and can see the
splash screen.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 457bdfc..c60c8e1 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -32,6 +32,8 @@ PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
+APPEND += "video=vesafb vga=0x318"
+
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
-- 
1.7.0.4


