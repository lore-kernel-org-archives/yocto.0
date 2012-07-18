Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA0ABE00349
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 07:49:48 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 07:49:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170406879"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2012 07:49:48 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Wed, 18 Jul 2012 07:49:17 -0700
Message-Id: <a17ec412dccf6b7b68bcf9865d78e06822b1dfab.1342622602.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
References: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1342622602.git.nitin.a.kamble@intel.com>
References: <cover.1342622602.git.nitin.a.kamble@intel.com>
Subject: [PATCH 2/7] ia32-base.inc: also take -dev package of emgd
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

emgd-driver-bin recipe provides emgd-driver-bin, emgd-driver-bin-dev
& emgd-driver-bin-dbg packages. For emgd driver to work it also need
library files from emgd-driver-bin-dev package. This change makes sure
this -dev package is also added for emgd driver.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 conf/machine/include/ia32-base.inc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 99ac352..7d9413a 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -57,6 +57,7 @@ XSERVER_IA32_I965 = "xf86-video-intel \
            "
 
 XSERVER_IA32_EMGD = "emgd-driver-bin \
+                     emgd-driver-bin-dev \
            "
 
 XSERVER_IA32_VESA = "xf86-video-vesa"
-- 
1.7.3.4


