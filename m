Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00256E01412
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:34 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 May 2012 14:50:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104438629"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by AZSMGA002.ch.intel.com with ESMTP; 25 May 2012 14:50:34 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:39 -0500
Message-Id: <babd331ef5dd69daae187368a065dcb3d5d6db40.1337981721.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 14/22] meta-intel: remove video acceleration from emgd XSERVER
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
X-List-Received-Date: Fri, 25 May 2012 21:50:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Video acceleration dependencies really don't belong in the XSERVER
variable - remove them; we'll add them back later via va-intel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/machine/include/ia32-base.inc |    4 ----
 1 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index be1c8e0..99ac352 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -57,10 +57,6 @@ XSERVER_IA32_I965 = "xf86-video-intel \
            "
 
 XSERVER_IA32_EMGD = "emgd-driver-bin \
-           libva-x11 \
-           libva-tpi \
-           libva-glx \
-           libva-egl \
            "
 
 XSERVER_IA32_VESA = "xf86-video-vesa"
-- 
1.7.0.4


