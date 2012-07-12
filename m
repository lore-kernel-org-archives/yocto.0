Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C7D7E00349
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 17:22:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jul 2012 17:22:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="176246657"
Received: from unknown (HELO localhost) ([10.255.12.200])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2012 17:22:03 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 11 Jul 2012 19:22:03 -0500
Message-Id: <ae18053df8d2b176b4f714bc5a826276f3fcbfad.1342052377.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1342052377.git.tom.zanussi@intel.com>
References: <cover.1342052377.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] linux-firmware: update md5sum for LICENCE.iwlwifi_firmware
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
X-List-Received-Date: Thu, 12 Jul 2012 00:22:04 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update the LIC_FILES_CHKSUM, since the license changed slightly.
According to the git log:

    "Just an extension of the copyright dates."

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux-firmware/linux-firmware_git.bbappend     |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
index 23bb87f..488393f 100644
--- a/common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
+++ b/common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
@@ -1,7 +1,7 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 # This exists in Yocto 1.1, but include it here for completeness
-LIC_FILES_CHKSUM += "file://LICENCE.iwlwifi_firmware;md5=311cc823df5b1be4f00fbf0f17d96a6b"
+LIC_FILES_CHKSUM += "file://LICENCE.iwlwifi_firmware;md5=11545778abf78c43d7644d4f171ea1c7"
 
 FWPATH = "/lib/firmware"
 
-- 
1.7.0.4


