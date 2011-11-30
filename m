Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEEFEE0059E
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 08:39:16 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Nov 2011 08:39:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,597,1315206000"; d="scan'208";a="90635446"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by fmsmga001.fm.intel.com with ESMTP; 30 Nov 2011 08:39:03 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 30 Nov 2011 10:38:57 -0600
Message-Id: <6799520cea00bdd7632f49e7cb35e0cbf69dd2dc.1322670614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7da6b2be458f0c479334d3bf87b2c76b57563a54.1322670614.git.tom.zanussi@intel.com>
References: <7da6b2be458f0c479334d3bf87b2c76b57563a54.1322670614.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322670614.git.tom.zanussi@intel.com>
References: <cover.1322670614.git.tom.zanussi@intel.com>
Subject: [PATCH 5/6] meta-intel: add libva to xserver-xorg
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
X-List-Received-Date: Wed, 30 Nov 2011 16:39:16 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

xserver-xorg-1.9.3 is used by EMGD, which requires libva, so add the
dependency here.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/xserver-xorg-1.9.3.inc            |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
index 888445d..ba8179a 100644
--- a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
+++ b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
@@ -8,6 +8,8 @@ PROTO_DEPS += "xf86driproto dri2proto"
 DEPENDS += "font-util"
 EXTRA_OECONF += "--enable-dri --enable-dri2 --enable-dga"
 
+RDEPENDS_${PN} += "libva"
+
 LIC_FILES_CHKSUM = "file://COPYING;md5=3dd2bbe3563837f80ed8926b06c1c353"
 
 SRC_URI[md5sum] = "5bef6839a76d029204ab31aa2fcb5201"
-- 
1.7.0.4


