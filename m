Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE1FBE00294
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2012 15:30:47 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Nov 2012 15:30:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,747,1344236400"; d="scan'208";a="244819616"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by fmsmga001.fm.intel.com with ESMTP; 09 Nov 2012 15:30:47 -0800
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org
Date: Fri,  9 Nov 2012 15:17:07 -0800
Message-Id: <2a4653a2945e87efd22667eb53964d159f15f0d0.1352502494.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1352502494.git.rahul.saxena@intel.com>
References: <cover.1352502494.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1352502494.git.rahul.saxena@intel.com>
References: <cover.1352502494.git.rahul.saxena@intel.com>
Subject: [PATCH 2/2] cedartrail: Add PREFERRED_VERSION for linux-yocto for cedartrail-nopvr machine Added PREFERRED_VERSION for linux-yocto for cedartrail-nopvr machine to avoid build warnings.
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
X-List-Received-Date: Fri, 09 Nov 2012 23:30:48 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Signed-off-by: Rahul Saxena  <rahul.saxena@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail-nopvr.conf b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
index 7ccc6e1..d01b3d8 100644
--- a/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
+++ b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
@@ -13,7 +13,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
            ${XSERVER_IA32_VESA} \
            "
-
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
 SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
-- 
1.7.4.1


