Return-Path: <yogesh.tyagi@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBC40E7C6FA
	for <webhook@archiver.kernel.org>; Mon,  2 Feb 2026 07:30:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.47862.1770017442857991587
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Feb 2026 23:30:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=Ip+zl4OL;
 spf=pass (domain: intel.com, ip: 198.175.65.18, mailfrom: yogesh.tyagi@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770017442; x=1801553442;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=CNuxQSH0WGs2Mdio6sKF8zRQQhQYXAw9vxRPb/POlOI=;
  b=Ip+zl4OL5DFbBO3WibiRdnJUazQenbj/sDZ7q4ilww5zQw+E2325ARHd
   BRavHFddKVRjwOhA4KxNfFdfXLFUtlxS3abPwjELEgjR5kuqMxMLvm8x0
   QyFSK3GeZT6tznurhDPoNWj2QGgIp2wNdOBNZAbNtIqRumDGrjonZts/L
   l4mb1TzD32/GxLuV/3MBtzO/D/tZXgIfcXVgOe3SkK6E6PXtX0UK1VggM
   Rf8fYTYqNP691jC+0t6KeUmK7IbxhYud8tECXLlO0vnoTxZ5IZPWLfNMW
   VfRXMmTs/BfX1UuAmcQvLtLYNQC7v+NSCJRjxXchhv7OKUhLU5AF1mzMp
   w==;
X-CSE-ConnectionGUID: ldYnWRY0QVy6hLUWULElqw==
X-CSE-MsgGUID: C40Q6/kfRC+gakiCZM1bHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71208811"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; 
   d="scan'208";a="71208811"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Feb 2026 23:30:42 -0800
X-CSE-ConnectionGUID: JE+pbnDSS1yUDAzi69gd8A==
X-CSE-MsgGUID: Pz2P/POxQ2SCFhYVhp1Izg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; 
   d="scan'208";a="213912343"
Received: from malaysia-workstation.png.intel.com ([10.107.249.125])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Feb 2026 23:30:41 -0800
From: Yogesh Tyagi <yogesh.tyagi@intel.com>
To: yocto@lists.yoctoproject.org
Cc: bruce.ashfield@gmail.com
Subject: [yocto-kernel-cache][PATCH] media-radio: Remove obsolete CONFIG_RADIO_WL1273
Date: Mon,  2 Feb 2026 15:35:12 +0800
Message-Id: <20260202073512.2538738-1-yogesh.tyagi@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Feb 2026 07:30:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66207

The WL1273 FM radio driver was removed from the Linux kernel in
commit 103b0cfc9ab6 ("media: radio-wl1273: Remove") during the
6.18 development cycle, as it was on the unused driver list.

Remove this obsolete config option to eliminate kernel config warnings:
  [INFO]: the following symbols were not found in the active configuration:
    - CONFIG_RADIO_WL1273

Signed-off-by: Yogesh Tyagi <yogesh.tyagi@intel.com>
---
 features/media/media-radio.cfg | 1 -
 1 file changed, 1 deletion(-)

diff --git a/features/media/media-radio.cfg b/features/media/media-radio.cfg
index ca695abf..3154f7c5 100644
--- a/features/media/media-radio.cfg
+++ b/features/media/media-radio.cfg
@@ -18,4 +18,3 @@ CONFIG_USB_KEENE=m
 CONFIG_RADIO_TEA5764=m
 CONFIG_RADIO_SAA7706H=m
 CONFIG_RADIO_TEF6862=m
-CONFIG_RADIO_WL1273=m
-- 
2.34.1


