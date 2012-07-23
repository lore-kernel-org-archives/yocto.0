Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05A8AE013DB
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 03:07:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Jul 2012 03:07:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="172433682"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 24 Jul 2012 03:07:19 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Mon, 23 Jul 2012 03:06:12 -0700
Message-Id: <e68290eaee882eb1a333c42486adb6f9b999787d.1343037893.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1343037893.git.nitin.a.kamble@intel.com>
References: <cover.1343037893.git.nitin.a.kamble@intel.com>
Subject: [PATCH 3/6] crownbay: update emgd driver version in the README
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
X-List-Received-Date: Tue, 24 Jul 2012 10:07:20 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-crownbay/README |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index b56c79a..2521432 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -6,7 +6,7 @@ The Crown Bay platform consists of the Intel Atom Z6xx processor,
 plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
 
 It also supports the E6xx embedded on-chip graphics via the Intel
-Embedded Media and Graphics Driver (EMGD) 1.10 Driver.
+Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
 
 
 Dependencies
@@ -63,7 +63,7 @@ common metadata shared between BSPs) e.g.:
 The meta-crownbay layer contains support for two different machine
 configurations. These configurations are identical except for the fact
 that the one prefixed with 'crownbay' makes use of the
-Intel-proprietary EMGD 1.10 graphics driver, while the one prefixed
+Intel-proprietary EMGD 1.14 graphics driver, while the one prefixed
 with 'crownbay-noemgd' does not.
 
 If you want to enable the layer that supports EMGD graphics add the
@@ -73,10 +73,10 @@ following to the local.conf file:
 
 The 'crownbay' machine includes the emgd-driver-bin package, which has
 a proprietary license that must be whitelisted by adding the string
-"license_emgd-driver-bin_1.10" to the LICENSE_FLAGS_WHITELIST variable
+"license_emgd-driver-bin_1.14" to the LICENSE_FLAGS_WHITELIST variable
 in your local.conf.  For example:
 
-  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10"
+  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.14"
 
 If you want to enable the layer that does not support EMGD graphics
 add the following to the local.conf file:
-- 
1.7.3.4


