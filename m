Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74D69E00AE4; Sun,  2 Jul 2017 06:57:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF66EE00349
	for <yocto@yoctoproject.org>; Sun,  2 Jul 2017 06:57:17 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga105.jf.intel.com with ESMTP; 02 Jul 2017 06:57:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,297,1496127600"; d="scan'208";a="121460287"
Received: from pequod.jf.intel.com ([10.54.74.4])
	by fmsmga005.fm.intel.com with ESMTP; 02 Jul 2017 06:57:16 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sun,  2 Jul 2017 06:56:37 -0700
Message-Id: <20170702135637.60277-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.13.1
Subject: [yocto-autobuilder][PATCH] buildset-config/nightly-refkit: add layers to bbconf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 02 Jul 2017 13:57:20 -0000

Since we are parsing and building all the images in refkit-ci.inc,
there are some layers that are now required. This includes flatpak,
industrial, and ROS layers. Since we are building a dynamic set of
images based on this inc file, we should be adding these layers
dynamically as well at some point.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.controller/nightly-refkit.conf | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/buildset-config.controller/nightly-refkit.conf b/buildset-config.controller/nightly-refkit.conf
index ab3ef6fa6..1d2487da6 100644
--- a/buildset-config.controller/nightly-refkit.conf
+++ b/buildset-config.controller/nightly-refkit.conf
@@ -31,6 +31,9 @@ steps: [{'SetDest':{}},
                                               'refkit/meta-security-isafw',
                                               'refkit/meta-intel-realsense',
                                               'refkit/meta-clang',
+                                              'refkit/meta-flatpak',
+                                              'refkit/meta-refkit-industrial',
+                                              'refkit/meta-ros',
                                               'refkit/meta-openembedded/meta-filesystems',
                                               'refkit/meta-openembedded/meta-gnome',
                                               'refkit/meta-openembedded/meta-networking',
@@ -65,6 +68,9 @@ steps: [{'SetDest':{}},
                                               'refkit/meta-security-isafw',
                                               'refkit/meta-intel-realsense',
                                               'refkit/meta-clang',
+                                              'refkit/meta-flatpak',
+                                              'refkit/meta-refkit-industrial',
+                                              'refkit/meta-ros',
                                               'refkit/meta-openembedded/meta-filesystems',
                                               'refkit/meta-openembedded/meta-gnome',
                                               'refkit/meta-openembedded/meta-networking',
-- 
2.13.1


