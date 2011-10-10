Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3386E01353
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2011 20:44:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Oct 2011 20:44:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,515,1312182000"; d="scan'208";a="76425322"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by fmsmga002.fm.intel.com with ESMTP; 09 Oct 2011 20:44:40 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sun,  9 Oct 2011 22:44:27 -0500
Message-Id: <aac3a4f8fb46c283155e9f53c0600edd7cdb7b76.1318217996.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <fd61f69633cb1b37679a491b1f76ce32b49d4b79.1318217996.git.tom.zanussi@intel.com>
References: <fd61f69633cb1b37679a491b1f76ce32b49d4b79.1318217996.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318217996.git.tom.zanussi@intel.com>
References: <cover.1318217996.git.tom.zanussi@intel.com>
Subject: [PATCH 2/8] crownbay: set boot vga mode
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
X-List-Received-Date: Mon, 10 Oct 2011 03:44:41 -0000

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


