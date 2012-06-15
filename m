Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15CCFE01435
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 21:53:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jun 2012 21:53:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="157887510"
Received: from unknown (HELO localhost) ([10.255.12.51])
	by orsmga002.jf.intel.com with ESMTP; 14 Jun 2012 21:53:40 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 14 Jun 2012 23:53:32 -0500
Message-Id: <8f4eb72ee349858cf9b768c97aca70d82319f978.1339735796.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1f5f00447342f047d114d93ea81dc7f53b01df0a.1339735796.git.tom.zanussi@intel.com>
References: <1f5f00447342f047d114d93ea81dc7f53b01df0a.1339735796.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1339735796.git.tom.zanussi@intel.com>
References: <cover.1339735796.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-emenlow: prefer 1.10.2 cairo
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
X-List-Received-Date: Fri, 15 Jun 2012 04:53:41 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

emenlow needs to use the old 1.10.2 cairo library instead of the
upgraded version.

Fixes [YOCTO #2507]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 1362434..26ca43b 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -18,6 +18,7 @@ PREFERRED_PROVIDER_virtual/xserver-xf86 = "xserver-psb"
 PREFERRED_PROVIDER_mesa-dri = "xpsb-glx"
 PREFERRED_VERSION_libva ?= "0.31.0"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
+PREFERRED_VERSION_cairo ?= "1.10.2"
 XSERVER ?= "xserver-psb \
            xserver-psb-extension-dri \
            xserver-psb-extension-dri2 \
-- 
1.7.0.4


