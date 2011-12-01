Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A267DE006B8
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 10:05:47 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Dec 2011 10:05:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,279,1320652800"; d="scan'208";a="91166265"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2011 10:05:46 -0800
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com, kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Thu,  1 Dec 2011 12:05:49 -0600
Message-Id: <05cda5202784ef61c52e8237590a31de988f4834.1322762434.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1322762434.git.tom.zanussi@intel.com>
References: <cover.1322762434.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4] meta-jasperforest: Remove xserver-xorg .bbappend.
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
X-List-Received-Date: Thu, 01 Dec 2011 18:05:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The configuration that was being done in it is now forever redundant,
since it's enabled in oe-core.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/xserver-xorg_1.11.2.bbappend      |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)
 delete mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xorg_1.11.2.bbappend

diff --git a/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xorg_1.11.2.bbappend b/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xorg_1.11.2.bbappend
deleted file mode 100644
index b2808ef..0000000
--- a/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xorg_1.11.2.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-EXTRA_OECONF += "--enable-dga"
-- 
1.7.0.4


