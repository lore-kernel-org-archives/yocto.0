Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A986E0032E
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 13:27:11 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Oct 2012 13:26:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,642,1344236400"; d="scan'208";a="237817670"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 24 Oct 2012 13:26:52 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Wed, 24 Oct 2012 13:25:51 -0700
Message-Id: <6f887e6929f52dddb5a29fd2d92c48732486febb.1351110209.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1d3856156110f722e46f1960851d1ed67e2f30f0.1351110208.git.nitin.a.kamble@intel.com>
References: <1d3856156110f722e46f1960851d1ed67e2f30f0.1351110208.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351110208.git.nitin.a.kamble@intel.com>
References: <cover.1351110208.git.nitin.a.kamble@intel.com>
Subject: [PATCH v2 5/6] jasperforest: add WEBTITLE & Compliance information
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
X-List-Received-Date: Wed, 24 Oct 2012 20:27:11 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
And adding the Yocto Project Compliance information for the 1.3 release.
Also specifying all the layers used from meta-intel repository.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-jasperforest/README                         |    8 +++++++-
 meta-jasperforest/conf/machine/jasperforest.conf |    2 ++
 2 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/meta-jasperforest/README b/meta-jasperforest/README
index 12f84c2..6397ec7 100644
--- a/meta-jasperforest/README
+++ b/meta-jasperforest/README
@@ -8,6 +8,12 @@ combined with the Intel 3420 PCH chipset (Ibex Peak) make up the
 'Picket Post' CRB this BSP was developed on.
 
 
+Compliance
+==========
+This BSP is compliant with Yocto Project as per requirements listed here:
+http://www.yoctoproject.org/yocto-project-compatible-registration
+
+
 Dependencies
 ============
 
@@ -21,7 +27,7 @@ This layer depends on:
   branch: master
 
   URI: git://git.yoctoproject.org/meta-intel
-  layers: intel
+  layers: meta-intel, meta-jasperforest
   branch: master
 
 
diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index d661f7b..8111deb 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -1,6 +1,8 @@
 #@TYPE: Machine
 #@NAME: jasperforest
 
+#@WEBTITLE: Platforms with Intel Xeon C5500/C3500 series processors with Intel 3420 PCH chipset (Jasper Forest)
+
 #@DESCRIPTION: Machine configuration for Jasper Forest Picket Post
 # systems i.e. Xeon C5500/C3500 + Intel 3420 chipset (Ibex Peak)
 
-- 
1.7.3.4


