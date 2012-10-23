Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D08E9E00294
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:25:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Oct 2012 13:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,637,1344236400"; d="scan'208";a="239165262"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 23 Oct 2012 13:25:40 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Tue, 23 Oct 2012 13:24:37 -0700
Message-Id: <35ee85e0775c3e40fc091eda9ec48526640ec975.1351023743.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <bfc3276fad6f337215fd21751afdb1ceaaf407a4.1351023743.git.nitin.a.kamble@intel.com>
References: <bfc3276fad6f337215fd21751afdb1ceaaf407a4.1351023743.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351023743.git.nitin.a.kamble@intel.com>
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
Subject: [PATCH 2/6] chiefriver README: add WebTitle & Compliance information
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
X-List-Received-Date: Tue, 23 Oct 2012 20:25:41 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The WebTitle will be used to publish the BSP on the Yocto Project Website.
And adding the Yocto Project Compliance information for the 1.3 release.
Also specifying all the layers used from meta-intel repository.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-chiefriver/README |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/meta-chiefriver/README b/meta-chiefriver/README
index 7c47b02..7af1288 100644
--- a/meta-chiefriver/README
+++ b/meta-chiefriver/README
@@ -6,6 +6,14 @@ The 'Chief River' platform consists of the Intel Ivy Bridge processor,
 plus the Panther Point PCH.  This BSP assumes that the Ivy Bridge
 integrated graphics are being used.
 
+WebTitle: Intel 3nd Generations Core Platforms: Core i3, i5, i7 (Ivy Bridge)
+
+
+Compliance:
+============
+This BSP is compliant with Yocto Project as per requirements listed here:
+http://www.yoctoproject.org/yocto-project-compatible-registration
+
 
 Dependencies
 ============
@@ -20,7 +28,7 @@ This layer depends on:
   branch: master
 
   URI: git://git.yoctoproject.org/meta-intel
-  layers: intel
+  layers: meta-intel, meta-chiefriver
   branch: master
 
 
-- 
1.7.3.4


