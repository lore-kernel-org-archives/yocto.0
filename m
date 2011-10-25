Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05977E006AC
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 13:15:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Oct 2011 13:15:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,405,1315206000"; d="scan'208";a="77594634"
Received: from unknown (HELO localhost) ([10.255.15.57])
	by fmsmga001.fm.intel.com with ESMTP; 25 Oct 2011 13:15:51 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue, 25 Oct 2011 15:15:15 -0500
Message-Id: <a0488bd1b856abe56ec6ae6eb9ac9a3ada393656.1319573089.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1319573089.git.tom.zanussi@intel.com>
References: <cover.1319573089.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-crownbay: README correction
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
X-List-Received-Date: Tue, 25 Oct 2011 20:15:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

In the instructions for manually extracting the binaries from the EMGD
Linux tarball, an additional step for removing the emgd_drv_video
shared library is necessary; this adds it for crownbay.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/README |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index 439b8c7..de9f1f1 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -122,6 +122,11 @@ You also need to copy the IEMGD License.txt file to the same directory:
 
 $ cp IEMGD_HEAD_Linux/License/License.txt meta-intel/common/recipes/xorg-xserver/emgd-driver-bin-1.8
 
+Additionally, you should remove the following unused file from the
+emgd binaries in order to avoid a packaging error at build-time:
+
+$ rm meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/emgd_drv_video.so
+
 At this point, you should be able to build meta-crownbay images as usual.
 
 
-- 
1.7.0.4


