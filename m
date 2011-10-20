Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE42DE01350
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 14:29:17 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Oct 2011 14:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,381,1315206000"; d="scan'208";a="80164489"
Received: from unknown (HELO localhost) ([10.255.15.126])
	by fmsmga002.fm.intel.com with ESMTP; 20 Oct 2011 14:29:16 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 20 Oct 2011 16:29:14 -0500
Message-Id: <6d7d9802bb6f13d593cdb1f266ef4b004bdf177f.1319145936.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1319145936.git.tom.zanussi@intel.com>
References: <cover.1319145936.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-jasperforest: add xserver-xorg bbappend
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
X-List-Received-Date: Thu, 20 Oct 2011 21:29:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The xorg vesa driver calls DGAInit, so we need to able it in the
xserver.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/xserver-xorg_1.11.1.bbappend      |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend

diff --git a/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend b/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend
new file mode 100644
index 0000000..b2808ef
--- /dev/null
+++ b/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF += "--enable-dga"
-- 
1.7.0.4


