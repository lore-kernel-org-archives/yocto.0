Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C21DDE0133F
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 11:55:44 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Oct 2012 11:55:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,673,1344236400"; d="scan'208";a="212613805"
Received: from unknown (HELO localhost) ([10.7.199.66])
	by orsmga001.jf.intel.com with ESMTP; 29 Oct 2012 11:55:33 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 29 Oct 2012 11:54:22 -0700
Message-Id: <23c92cdd903a96b8d0420fb9e1fd56460735d4cd.1351536782.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <1351536863-18712-1-git-send-email-dvhart@linux.intel.com>
References: <1351536863-18712-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <749418b943b9ae67cad9ba91507c999a51a5779b.1351536782.git.dvhart@linux.intel.com>
References: <749418b943b9ae67cad9ba91507c999a51a5779b.1351536782.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/3] sys940x: Add WEBTITLE and compliance information
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
X-List-Received-Date: Mon, 29 Oct 2012 18:55:44 -0000

The WEBTITLE will be used to publish the BSP on the Yocto Project website.
Adding the Yocto Project compliance information for the 1.3 release.

Update the DESCRIPTION in the machine config and the platform description
in the README to be consistent.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/README                           | 13 +++++++++++--
 meta-sys940x/conf/machine/sys940x-noemgd.conf |  5 +++--
 meta-sys940x/conf/machine/sys940x.conf        |  3 ++-
 3 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/meta-sys940x/README b/meta-sys940x/README
index 9058937..9bee44c 100644
--- a/meta-sys940x/README
+++ b/meta-sys940x/README
@@ -2,17 +2,26 @@ This README file contains information on building the meta-sys940x BSP
 layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
-The Inforce SYS940x platform consists of the Intel Atom E6xx
+The 'Queens Bay' platform consists of the Intel Atom E6xx
 processor, plus the Intel EG20T Platform Controller Hub (Tunnel Creek
 + Topcliff).
 
 It also supports the E6xx embedded on-chip graphics via the Intel
-Embedded Media and Graphics Driver (EMGD) 1.10 Driver.
+Embedded Media and Graphics Driver (EMGD).
 
 More details available on the product page:
 http://www.inforcecomputing.com/SYS940X_ECX.html
 
 
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
 
diff --git a/meta-sys940x/conf/machine/sys940x-noemgd.conf b/meta-sys940x/conf/machine/sys940x-noemgd.conf
index 0c04dcd..9037506 100644
--- a/meta-sys940x/conf/machine/sys940x-noemgd.conf
+++ b/meta-sys940x/conf/machine/sys940x-noemgd.conf
@@ -1,8 +1,9 @@
 #@TYPE: Machine
 #@NAME: sys940x-noemgd
 
-#@DESCRIPTION: Machine configuration for Inforce SYS940X systems
-# i.e. E660 + EG20T
+#@WEBTITLE: Intel Atom E6xx Processor with Intel EG20T Controller Hub Development Kit (Queens Bay) with Open Source VESA Graphics for Inforce SYS940X systems.
+
+#@DESCRIPTION: Machine configuration for Inforce SYS940X systems, without Intel-proprietary graphics bits
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index 44de796..ce45a20 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -1,8 +1,9 @@
 #@TYPE: Machine
 #@NAME: sys940x
 
+#@WEBTITLE: Intel Atom E6xx Processor with Intel EG20T Controller Hub Development Kit (Queens Bay) with Proprietary IEMGD Accelerated Graphics
+
 #@DESCRIPTION: Machine configuration for Inforce SYS940x systems
-# i.e. E660 + EG20T + emgd
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
-- 
1.7.11.7


