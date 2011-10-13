Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBCEFE01395
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 22:07:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Oct 2011 22:07:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,338,1315206000"; d="scan'208";a="73057520"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2011 22:07:48 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 00:07:22 -0500
Message-Id: <5b9483e99f5d4aed25d4ecc01407020404574c53.1318481569.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <57876222731972088b7d40943f78e960efc2562a.1318481569.git.tom.zanussi@intel.com>
References: <57876222731972088b7d40943f78e960efc2562a.1318481569.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1318481569.git.tom.zanussi@intel.com>
References: <cover.1318481569.git.tom.zanussi@intel.com>
Subject: [PATCH 09/10] meta-jasperforest: remove obsolete xserver-xf86-dri-lite .bbappend
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
X-List-Received-Date: Thu, 13 Oct 2011 05:07:49 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The recipe and what it does no longer needed, so remove it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)
 delete mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend

diff --git a/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend b/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
deleted file mode 100644
index b2808ef..0000000
--- a/meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-EXTRA_OECONF += "--enable-dga"
-- 
1.7.0.4


