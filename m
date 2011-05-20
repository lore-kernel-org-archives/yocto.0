Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 381F74C8043A
	for <yocto@yoctoproject.org>; Fri, 20 May 2011 12:31:14 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 May 2011 10:31:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,243,1304319600"; d="scan'208";a="439886285"
Received: from unknown (HELO localhost) ([10.255.12.58])
	by azsmga001.ch.intel.com with ESMTP; 20 May 2011 10:31:13 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 20 May 2011 12:30:53 -0500
Message-Id: <1b227f8ed2df529cc13f7169b0c08ff3d0f8c812.1305910788.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <010c401ecbf725d01b7d01532268d9c0c7f470e1.1305910788.git.tom.zanussi@intel.com>
References: <010c401ecbf725d01b7d01532268d9c0c7f470e1.1305910788.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305910788.git.tom.zanussi@intel.com>
References: <cover.1305910788.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-sugarbay: remove xserver-xf86-dri-lite bbappend
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
X-List-Received-Date: Fri, 20 May 2011 17:31:14 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This is no longer needed.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)
 delete mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend

diff --git a/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend b/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
deleted file mode 100644
index b2808ef..0000000
--- a/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-EXTRA_OECONF += "--enable-dga"
-- 
1.7.0.4


