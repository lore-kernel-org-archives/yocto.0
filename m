Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82DD74C804C2
	for <yocto@yoctoproject.org>; Fri, 20 May 2011 12:31:38 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 May 2011 10:31:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,243,1304319600"; 
   d="scan'208";a="1648213"
Received: from unknown (HELO localhost) ([10.255.12.58])
	by orsmga001.jf.intel.com with ESMTP; 20 May 2011 10:31:09 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 20 May 2011 12:30:52 -0500
Message-Id: <010c401ecbf725d01b7d01532268d9c0c7f470e1.1305910788.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1305910788.git.tom.zanussi@intel.com>
References: <cover.1305910788.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-sugarbay: remove PREFERRED_VERSION settings
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
X-List-Received-Date: Fri, 20 May 2011 17:31:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

There's no reason to specify these.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |    6 ------
 1 files changed, 0 insertions(+), 6 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index dd0b113..4f8f189 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -43,12 +43,6 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
 
 TARGET_CC_ARCH = "-m64"
 
-PREFERRED_VERSION_xf86-video-intel ?= "2.14.0"
-PREFERRED_VERSION_mesa-dri ?= "7.10"
-PREFERRED_VERSION_libdrm ?= "2.4.23"
-PREFERRED_VERSION_cairo ?= "1.10.2"
-PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
-
 PREFERRED_VERSION_grub ?= "1.98"
 
 SRCREV_machine_pn-linux-yocto_sugarbay ?= "b906f358fd404a1e74a961f25079274e0d933ee1"
-- 
1.7.0.4


