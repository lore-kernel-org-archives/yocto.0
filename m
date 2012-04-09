Return-Path: <rahul.saxena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D684E0059A
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 14:38:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2012 14:38:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="127008513"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2012 14:38:36 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, tom.zanussi@intel.com, kishore.k.bodke@intel.com
Date: Mon,  9 Apr 2012 07:27:49 -0700
Message-Id: <aaf08824e13388e9d5e0177f060c6472493dfec6.1334005587.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1334005587.git.rahul.saxena@intel.com>
References: <cover.1334005587.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1334005587.git.rahul.saxena@intel.com>
References: <cover.1334005587.git.rahul.saxena@intel.com>
Subject: [PATCH 1/1] meta-cedartrail: fix README to state tools-testapps needed for Glxgears
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
X-List-Received-Date: Mon, 09 Apr 2012 21:38:36 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Existing README incorrectly states that "debug-tweaks" is needed to be added
to EXTRA_IMAGE_FEATURES to include Glxgears in build. The correct feature
to be included is "tools-testapps" and not "debug-tweaks"

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 meta-cedartrail/README |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index f17410c..30df320 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -117,7 +117,7 @@ included in the sato images.  The sample files are installed in
 
 Adding Glxgears to image
 -------------------------
-Glxgears can be added to the generated image by adding "debug-tweaks"
+Glxgears can be added to the generated image by adding "tools-testapps"
 option to the extra image features variable in the default local.conf
 before building the BSP.
 
-- 
1.7.4.1


