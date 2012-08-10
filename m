Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8999EE01415
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 12:02:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Aug 2012 12:02:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="132787386"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.174])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Aug 2012 12:02:28 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	nitin.a.kamble@intel.com,
	tom.zanussi@intel.com
Date: Fri, 10 Aug 2012 12:02:29 -0700
Message-Id: <10661fc3a8ea84d0f912c3ab1baa660369cb4e52.1344624483.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344624483.git.kishore.k.bodke@intel.com>
References: <cover.1344624483.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/3] [meta-intel] meta-romley: Move Matrox MGA Xorg driver to meta-intel/common
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
X-List-Received-Date: Fri, 10 Aug 2012 19:02:29 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Matrox MGA Xorg driver is being used by other meta-intel
BSPs.  So move this to meta-intel/common/recipes-graphics.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../xorg-driver/xf86-video-mga_1.4.13.bb           |    0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {meta-romley => common}/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb (100%)

diff --git a/meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb b/common/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
similarity index 100%
rename from meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
rename to common/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
-- 
1.7.9.5


