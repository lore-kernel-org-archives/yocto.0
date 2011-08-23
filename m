Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 763A7E01231
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313390"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:36 +0100
Message-Id: <84529f7c20d721cdb790bcc2313dc0ee4ab9a81d.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 03/14] README.hardware: typo/capitalisation fixes
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:03 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/README.hardware b/README.hardware
index d4f7b47..4a0105d 100644
--- a/README.hardware
+++ b/README.hardware
@@ -81,7 +81,7 @@ Depending on the device, it can boot from a traditional hard-disk, a USB device,
 or over the network. Writing poky generated images to physical media is
 straightforward with a caveat for USB devices. The following examples assume the
 target boot device is /dev/sdb, be sure to verify this and use the correct
-device as the following commands are run as root and are not reversable.
+device as the following commands are run as root and are not reversible.
 
 Hard Disk:
   1. Build a directdisk image format. This will generate proper partition tables
@@ -155,7 +155,7 @@ the NAND flash. The beagleboard MACHINE is tested on the following platforms:
 The Beagleboard C4 has NAND, while the xM does not. For the sake of simplicity,
 these instructions assume you have erased the NAND on the C4 so its boot
 behavior matches that of the xM. To do this, issue the following commands from
-the u-boot prompt (note that the unlock may be unecessary depending on the
+the u-boot prompt (note that the unlock may be unnecessary depending on the
 version of u-boot installed on your board and only one of the erase commands
 will succeed):
 
@@ -168,7 +168,7 @@ documentation at http://www.beagleboard.org.
 
 From a Linux system with access to the image files perform the following steps
 as root, replacing mmcblk0* with the SD card device on your machine (such as sdc
-if used via a usb card reader):
+if used via a USB card reader):
 
   1. Partition and format an SD card:
      # fdisk -lu /dev/mmcblk0
-- 
1.7.4.1


