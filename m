Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B415E01385
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2012 15:19:31 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Nov 2012 15:19:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,734,1344236400"; d="scan'208";a="214791730"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.87])
	by azsmga001.ch.intel.com with ESMTP; 07 Nov 2012 15:19:30 -0800
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Wed,  7 Nov 2012 15:21:11 -0800
Message-Id: <721ab8722c2fd221006ec95d2b19a828672cbe53.1352330314.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1352330314.git.kishore.k.bodke@intel.com>
References: <cover.1352330314.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] romley: Update README Instructions
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
X-List-Received-Date: Wed, 07 Nov 2012 23:19:31 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add Instructions on how to get the
Intel DPDK recipes

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-romley/README |   10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/meta-romley/README b/meta-romley/README
index c35c209..f6b2181 100644
--- a/meta-romley/README
+++ b/meta-romley/README
@@ -46,7 +46,7 @@ Table of Contents
 
   I. Building the meta-romley BSP layer
  II. Booting the images in /binary
-
+III. Enabling Intel DPDK Technology
 
 I. Building the meta-romley BSP layer
 =======================================
@@ -115,6 +115,14 @@ ifconfig the IP address and use that to ssh in.  The root password is
 empty, so to log in type 'root' for the user name and hit 'Enter' at
 the Password prompt: and you should be in.
 
+III. Enabling Intel DPDK Technology
+===================================
+
+There are recipes available for the 'Intel Data Plane Development Kit
+Technology components for use with this BSP.  Please contact your
+Intel Field Sales Representative or visit Intel Embedded Design
+Center (www.intel.com/p/en_US/embedded/designcenter) for instructions on how
+to locate and use these recipes.
 ----
 
 If you find you're getting corrupt images on the USB (it doesn't show
-- 
1.7.9.5


