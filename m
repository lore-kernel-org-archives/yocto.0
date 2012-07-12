Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2523E00347
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 02:37:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Jul 2012 02:37:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="164795607"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 12 Jul 2012 02:37:10 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Thu, 12 Jul 2012 02:35:54 -0700
Message-Id: <8a1dbb15a9e7ce0b9ef651ac01ff93a1996edc71.1342085510.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1342085510.git.nitin.a.kamble@intel.com>
References: <cover.1342085510.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] ia32-base.inc: also take -dev package of emgd
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
X-List-Received-Date: Thu, 12 Jul 2012 09:37:10 -0000

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


