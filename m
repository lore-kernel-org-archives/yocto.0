Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A8A3E00294
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 18:03:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Oct 2012 18:03:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,650,1344236400"; d="scan'208";a="240364754"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2012 17:33:02 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	nitin.a.kamble@intel.com
Date: Thu, 25 Oct 2012 17:20:14 -0700
Message-Id: <96a198ae3ba15487fb0039307002512ed8bf709b.1351210370.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1351210370.git.rahul.saxena@intel.com>
References: <cover.1351210370.git.rahul.saxena@intel.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] cedartrail: add WEBTITLE & Compliance information
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
X-List-Received-Date: Fri, 26 Oct 2012 01:03:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rahul Saxena <rahul.saxena@intel.com>

The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
And adding the Yocto Project Compliance information for the 1.3 release.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 meta-cedartrail/README                             |   16 +++++++++++++---
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |    8 +++++---
 meta-cedartrail/conf/machine/cedartrail.conf       |    8 +++++---
 3 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index e765e66..0d166b2 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -2,13 +2,23 @@ This README file contains information on building the meta-cedartrail
 BSP layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
-The 'Cedar Trail' platform consists of the Cedarview (Intel® Atom™
-N2600, N2800 and D2550) processor, plus the Tiger Point
-(Intel® NM10 Express) Chipset.
+The 'Cedar Trail' platform consists of the Intel® Atom™
+N2600/N2800/D2550 processor, plus the Intel® NM10 Express Chispset
+(Cedarview + Tiger Point).
 
 It also supports on-chip SGX545 graphics and media accelerator
 via the Cedar Trail Power VR (PVR) graphics driver.
 
+
+Compliance
+==========
+
+This BSP is compliant with the Yocto Project as per the requirements
+listed here:
+
+  http://www.yoctoproject.org/yocto-project-compatible-registration
+
+
 Dependencies
 ============
 
diff --git a/meta-cedartrail/conf/machine/cedartrail-nopvr.conf b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
index 767137e..7ccc6e1 100644
--- a/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
+++ b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
@@ -1,8 +1,10 @@
 #@TYPE: Machine
-#@NAME: Cedartrail
+#@NAME: cedartrail-nopvr
 
-#@DESCRIPTION: Machine configuration for Cedartrail systems
-# i.e. Cedarview processor + Tiger Point Chipset
+#@WEBTITLE: Intel Atom N2600/N2800/D2550 (Formerly Cedarview) Processor with NM10 Chipset (Cedar Trail Platform) with Open Source VESA Graphics
+
+#@DESCRIPTION: Machine configuration for Cedar Trail systems
+# i.e. N2600/N2800/D2550 + NM10
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index 1463ae2..7efe584 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -1,8 +1,10 @@
 #@TYPE: Machine
-#@NAME: Cedartrail
+#@NAME: cedartrail
 
-#@DESCRIPTION: Machine configuration for Cedartrail systems
-# i.e. Cedarview processor + Tiger Point Chipset
+#@WEBTITLE: Intel Atom N2600/N2800/D2550 (Formerly Cedarview) Processor with NM10 Chipset (Cedar Trail Platform) and PVR Accelerated Graphics
+
+#@DESCRIPTION: Machine configuration for Cedar Trail systems
+# i.e. N2600/N2800/D2550 + NM10
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
-- 
1.7.4.1


