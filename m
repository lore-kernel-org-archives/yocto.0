Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30A9BE013B6
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 21:09:09 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 Oct 2011 21:09:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,343,1315206000"; d="scan'208";a="26615318"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Oct 2011 21:09:08 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 23:08:42 -0500
Message-Id: <ddd62430dfb1392391b2a54e3f382437d4de2ca9.1318564650.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0fb53ad3e4b7ec6e21823fb1848636af057f6e73.1318564650.git.tom.zanussi@intel.com>
References: <0fb53ad3e4b7ec6e21823fb1848636af057f6e73.1318564650.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318564650.git.tom.zanussi@intel.com>
References: <cover.1318564650.git.tom.zanussi@intel.com>
Subject: [PATCH 05/10] meta-fishriver: xserver-xorg renaming updates
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
X-List-Received-Date: Fri, 14 Oct 2011 04:09:09 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update fishriver to reflect the new xserver-xorg naming.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fishriver/conf/machine/fishriver.conf |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index 2fe78e8..ffbc05a 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-XSERVER ?= "xserver-xf86-dri-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
-- 
1.7.0.4


