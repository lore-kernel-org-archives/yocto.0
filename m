Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81800E013D9
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 05:14:54 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Oct 2012 05:14:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,675,1344236400"; d="scan'208";a="240030389"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.87])
	by fmsmga001.fm.intel.com with ESMTP; 29 Oct 2012 16:42:43 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Mon, 29 Oct 2012 16:44:06 -0700
Message-Id: <a3391aec3e92fbf28ebb7e030cee7ce6efe6729a.1351553989.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cc35d8e8fa6eb4c756368a64d4007175e1516a7b.1351553989.git.kishore.k.bodke@intel.com>
References: <cc35d8e8fa6eb4c756368a64d4007175e1516a7b.1351553989.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1351553989.git.kishore.k.bodke@intel.com>
References: <cover.1351553989.git.kishore.k.bodke@intel.com>
Subject: [PATCH 2/2] [meta-intel] crystalforest: Update the README Instructions.
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
X-List-Received-Date: Tue, 30 Oct 2012 12:14:54 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add Instructions to build the custom Image to
enable qat modules.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-crystalforest/README |    9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/meta-crystalforest/README b/meta-crystalforest/README
index a938193..8731c2a 100644
--- a/meta-crystalforest/README
+++ b/meta-crystalforest/README
@@ -88,6 +88,15 @@ You should then be able to build a crystalforest image as such:
   $ source oe-init-build-env
   $ bitbake core-image-sato
 
+The above image will not give you the quickassist technology features
+such as openssl-qat-module, zlib-qat-module and corpus data files.
+
+If you want those feature built into the image by default, You should
+build the custom image by doing the following:
+
+  $ source oe-init-build-env
+  $ bitbake core-image-qat
+
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
-- 
1.7.9.5


