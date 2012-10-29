Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCFC2E01248
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 11:55:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Oct 2012 11:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,673,1344236400"; d="scan'208";a="234194244"
Received: from unknown (HELO localhost) ([10.7.199.66])
	by orsmga002.jf.intel.com with ESMTP; 29 Oct 2012 11:55:33 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 29 Oct 2012 11:54:21 -0700
Message-Id: <749418b943b9ae67cad9ba91507c999a51a5779b.1351536782.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <1351536863-18712-1-git-send-email-dvhart@linux.intel.com>
References: <1351536863-18712-1-git-send-email-dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/3] fri2: Add WEBTITLE and compliance information
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
X-List-Received-Date: Mon, 29 Oct 2012 18:55:34 -0000

The WEBTITLE will be used to publish the BSP on the Yocto Project website.
Adding the Yocto Project compliance information for the 1.3 release.

Update the DESCRIPTION in the machine config and the platform description
in the README to be consistent.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-fri2/README                        | 19 ++++++++++++++-----
 meta-fri2/conf/machine/fri2-noemgd.conf |  5 +++--
 meta-fri2/conf/machine/fri2.conf        |  3 ++-
 3 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/meta-fri2/README b/meta-fri2/README
index 05b7257..af33c0b 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -7,13 +7,22 @@ Developer Kit, as described here:
 
 http://us.kontron.com/products/systems+and+platforms/m2m/m2m+smart+services+developer+kit.html
 
-The platform consists of the Intel Atom E640T processor plus the Intel
-EG20T Platform Controller Hub (Tunnel Creek + Topcliff), along with a
-variety of communications options and other machine-to-machine (m2m)
-capabilities.
+The 'Queens Bay' platform consists of the Intel Atom E640T processor plus the
+Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff). The Fish River
+Island II includes a variety of communications options and other
+machine-to-machine (m2m) capabilities.
 
 It also supports the E6xx embedded on-chip graphics via the Intel
-Embedded Media and Graphics Driver (EMGD) 1.10 Driver.
+Embedded Media and Graphics Driver (EMGD).
+
+
+Compliance
+==========
+
+This BSP is compliant with the Yocto Project as per the requirements
+listed here:
+
+  http://www.yoctoproject.org/yocto-project-compatible-registration
 
 
 Dependencies
diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index 3c25817..cb94679 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -1,8 +1,9 @@
 #@TYPE: Machine
 #@NAME: fri2
 
-#@DESCRIPTION: Machine configuration for Fish River Island II systems
-# i.e. E660 + EG20T
+#@WEBTITLE: Intel Atom E640T Processor with Intel EG20T Controller Hub Development Kit (Queens Bay) with Open Source VESA Graphics for Fish River Island II systems
+
+#@DESCRIPTION: Machine configuration for Fish River Island II systems, without Intel-proprietary graphics bits
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 19f2fb0..ec343f2 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -1,8 +1,9 @@
 #@TYPE: Machine
 #@NAME: fri2
 
+#@WEBTITLE: Intel Atom E640T Processor with Intel EG20T Controller Hub Development Kit (Queens Bay) with Proprietary IEMGD Accelerated Graphics for Fish River Island II systems
+
 #@DESCRIPTION: Machine configuration for Fish River Island II systems
-# i.e. E660 + EG20T
 
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
-- 
1.7.11.7


