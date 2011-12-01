Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6287CE0073A
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 13:35:07 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Dec 2011 13:35:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,280,1320652800"; d="scan'208";a="81253574"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by azsmga001.ch.intel.com with ESMTP; 01 Dec 2011 13:35:06 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  1 Dec 2011 15:35:04 -0600
Message-Id: <f8b36aa86572e50ad2cd95a49d9e99bf3244f97f.1322775053.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1554c200a74a8105ccc8f872edad422a5bf13835.1322775053.git.tom.zanussi@intel.com>
References: <1554c200a74a8105ccc8f872edad422a5bf13835.1322775053.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322775053.git.tom.zanussi@intel.com>
References: <cover.1322775053.git.tom.zanussi@intel.com>
Subject: [PATCH 4/6] meta-crownbay: update README with EMGD video plugin instructions
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
X-List-Received-Date: Thu, 01 Dec 2011 21:35:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Adding support for video acceleration means some new components need
to be installed - update the instructions to reflect that.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/README |   27 +++++++++++++++++++++------
 1 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index e1cf28d..65289f7 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -144,8 +144,8 @@ $ rpm2cpio emgd-bin-2032-1.6.i586.rpm > emgd-bin-2032-1.6.i586.cpio
 $ mkdir extracted; cd extracted
 $ cpio -idv < ../emgd-bin-2032-1.6.i586.cpio
 
-Finally, you can copy the xorg-xserver binaries to the
-emgd-driver-bin-1.8 directory in meta-intel/common:
+You can now copy the xorg-xserver binaries to the emgd-driver-bin-1.8
+directory in meta-intel/common:
 
 $ cp -a usr/lib meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8
 
@@ -153,10 +153,25 @@ You also need to copy the IEMGD License.txt file to the same directory:
 
 $ cp IEMGD_HEAD_Linux/License/License.txt meta-intel/common/recipes/xorg-xserver/emgd-driver-bin-1.8
 
-Additionally, you should remove the following unused file from the
-emgd binaries in order to avoid a packaging error at build-time:
-
-$ rm meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/emgd_drv_video.so
+Finally, you need to extract and copy the video plugins to the
+emgd-driver-bin-1.8 directory in meta-intel/common:
+ 
+$ cd IEMGD_HEAD_Linux/common/video_plugin
+$ rpm2cpio gst-plugins-mixvideo-0.10.30-1.i586.rpm > gst-plugins-mixvideo-0.10.30-1.i586.cpio
+$ rpm2cpio gst-plugins-va-0.10.7MFLD-1.i586.rpm > gst-plugins-va-0.10.7MFLD-1.i586.cpio
+$ rpm2cpio gst-vabuffer-0.10.5MFLD-1.i586.rpm > gst-vabuffer-0.10.5MFLD-1.i586.cpio
+$ rpm2cpio mixcommon-0.1.9-1.i586.rpm > mixcommon-0.1.9-1.i586.cpio
+$ rpm2cpio mixvbp-0.1.24-1.i586.rpm > mixvbp-0.1.24-1.i586.cpio
+$ rpm2cpio mixvideo-0.1.31-1.i586.rpm > mixvideo-0.1.31-1.i586.cpio
+$ mkdir extracted; cd extracted
+$ cpio -idv < ../gst-plugins-mixvideo-0.10.30-1.i586.cpio
+$ cpio -idv < ../gst-plugins-va-0.10.7MFLD-1.i586.cpio
+$ cpio -idv < ../gst-vabuffer-0.10.5MFLD-1.i586.cpio
+$ cpio -idv < ../mixcommon-0.1.9-1.i586.cpio
+$ cpio -idv < ../mixvbp-0.1.24-1.i586.cpio
+$ cpio -idv < ../mixvideo-0.1.31-1.i586.cpio
+$ rm usr/lib/*.so.0
+$ cp -a usr/lib meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8
 
 At this point, you should be able to build meta-crownbay images as usual.
 
-- 
1.7.0.4


