Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B71E00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 12:28:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Sep 2012 12:28:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,411,1344236400"; d="scan'208";a="221197873"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by fmsmga002.fm.intel.com with ESMTP; 12 Sep 2012 12:28:51 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org
Date: Wed, 12 Sep 2012 12:18:30 -0700
Message-Id: <ff20af9a58834522a9791349a346833f5d574e6a.1347477251.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1347477251.git.rahul.saxena@intel.com>
References: <cover.1347477251.git.rahul.saxena@intel.com>
Subject: [PATCH 1/2] meta-cedartrail: Add video acceleration
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
X-List-Received-Date: Wed, 12 Sep 2012 19:28:52 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

This adds gstreamer and vaapi video acceleration components
to enable acceleration with pvr driver

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index d6e7a57..cd9acd7 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -21,3 +21,7 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
+
+VA_FEATURES ?= "gst-va-intel va-intel"
+
+MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
-- 
1.7.4.1


