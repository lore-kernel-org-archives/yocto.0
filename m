Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2E79E00349
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 07:49:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 07:49:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170406887"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2012 07:49:48 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Wed, 18 Jul 2012 07:49:19 -0700
Message-Id: <49e01dfa9dd21b4acd41b4e397cd3544e8f3e7e6.1342622602.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
References: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1342622602.git.nitin.a.kamble@intel.com>
References: <cover.1342622602.git.nitin.a.kamble@intel.com>
Subject: [PATCH 4/7] crownbay: update emgd driver version in the README
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
X-List-Received-Date: Thu, 19 Jul 2012 14:49:49 -0000

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


