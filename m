Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 353BFE00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:25:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Oct 2012 13:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,637,1344236400"; d="scan'208";a="239165272"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 23 Oct 2012 13:25:41 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Tue, 23 Oct 2012 13:24:40 -0700
Message-Id: <a8c176db11ac1df33981b48f4170c45f3788d57b.1351023743.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <bfc3276fad6f337215fd21751afdb1ceaaf407a4.1351023743.git.nitin.a.kamble@intel.com>
References: <bfc3276fad6f337215fd21751afdb1ceaaf407a4.1351023743.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351023743.git.nitin.a.kamble@intel.com>
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
Subject: [PATCH 5/6] jasperforest README: add WebTitle & Compliance information
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
X-List-Received-Date: Tue, 23 Oct 2012 20:25:42 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The WebTitle will be used to publish the BSP on the Yocto Project Website.
And adding the Yocto Project Compliance information for the 1.3 release.
Also specifying all the layers used from meta-intel repository.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-jasperforest/README |   11 ++++++++++-
 1 files changed, 10 insertions(+), 1 deletions(-)

diff --git a/meta-jasperforest/README b/meta-jasperforest/README
index 12f84c2..98a4d57 100644
--- a/meta-jasperforest/README
+++ b/meta-jasperforest/README
@@ -8,6 +8,15 @@ combined with the Intel 3420 PCH chipset (Ibex Peak) make up the
 'Picket Post' CRB this BSP was developed on.
 
 
+WebTitle: Platforms with Intel Xeon C5500/C3500 processors with Intel 3420 PCH chipset (jasperforest)
+
+
+Compliance:
+============
+This BSP is compliant with Yocto Project as per requirements listed here:
+http://www.yoctoproject.org/yocto-project-compatible-registration
+
+
 Dependencies
 ============
 
@@ -21,7 +30,7 @@ This layer depends on:
   branch: master
 
   URI: git://git.yoctoproject.org/meta-intel
-  layers: intel
+  layers: meta-intel, meta-jasperforest
   branch: master
 
 
-- 
1.7.3.4


