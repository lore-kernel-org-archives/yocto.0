Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E310E0146B
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 10:44:33 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Sep 2012 10:44:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,398,1344236400"; d="scan'208";a="143423018"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Sep 2012 10:44:33 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 10 Sep 2012 10:34:17 -0700
Message-Id: <5af82ee0616867220a0e7a4ff27905bf3a22b4b8.1347297888.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1347297888.git.rahul.saxena@intel.com>
References: <cover.1347297888.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1347297888.git.rahul.saxena@intel.com>
References: <cover.1347297888.git.rahul.saxena@intel.com>
Subject: [PATCH 1/1] meta-cedartrail: Add video acceleration
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
X-List-Received-Date: Mon, 10 Sep 2012 17:44:34 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

This adds gstreamer and vaapi video acceleration components to enable video
acceleration with pvr driver

Signed-off-by: Rahul Saxena  <rahul.saxena@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index dbd7d95..3889760 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -20,3 +20,7 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
+
+VA_FEATURES ?= "gst-va-intel va-intel"
+
+MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
-- 
1.7.4.1


