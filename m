Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE491E00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:25:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Oct 2012 13:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,637,1344236400"; d="scan'208";a="239165266"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 23 Oct 2012 13:25:41 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Tue, 23 Oct 2012 13:24:38 -0700
Message-Id: <eafcdbdb3843e08adc7385d0f1cec2b316d1b691.1351023743.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <bfc3276fad6f337215fd21751afdb1ceaaf407a4.1351023743.git.nitin.a.kamble@intel.com>
References: <bfc3276fad6f337215fd21751afdb1ceaaf407a4.1351023743.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351023743.git.nitin.a.kamble@intel.com>
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
Subject: [PATCH 3/6] crownbay README: add WebTitle & Compliance information
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
 meta-crownbay/README |   13 +++++++++++--
 1 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index 4bc9f31..3996a94 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -2,13 +2,22 @@ This README file contains information on building the meta-crownbay
 BSP layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
-The Crown Bay platform consists of the Intel Atom Z6xx processor,
+The Crown Bay platform consists of the Intel Atom E6xx processor,
 plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
 
 It also supports the E6xx embedded on-chip graphics via the Intel
 Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
 
 
+WebTitle: Intel Atom E6xx processor with Intel EG20T Controller Hub development kit (crownbay)
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
 
@@ -22,7 +31,7 @@ This layer depends on:
   branch: master
 
   URI: git://git.yoctoproject.org/meta-intel
-  layers: intel
+  layers: meta-intel, meta-crownbay
   branch: master
 
 
-- 
1.7.3.4


