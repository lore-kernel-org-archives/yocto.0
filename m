Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34A0FE00344
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 11:04:42 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Jul 2012 11:04:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="170597258"
Received: from wrk.jf.intel.com ([10.7.202.71])
	by orsmga002.jf.intel.com with ESMTP; 11 Jul 2012 11:04:42 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Jul 2012 11:05:45 -0700
Message-Id: <1342029945-10625-1-git-send-email-kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [meta-baryon] add build documentation
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
X-List-Received-Date: Wed, 11 Jul 2012 18:04:42 -0000

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 README |   24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/README b/README
index 2a9c77d..8303cdf 100644
--- a/README
+++ b/README
@@ -27,6 +27,30 @@ to yocto@yoctoproject.org with '[meta-baryon]' in the subject.
 
 
 
+Building the meta-baryon layer
+------------------------------
+
+After you download meta-baryon, be sure to add its location to bblayers.conf.
+
+The meta-baryon layer uses the 'lame' package, which has a license that
+must be whitelisted by adding the string "commercial" to the
+LICENSE_FLAGS_WHITELIST variable in your local.conf. For example:
+
+  LICENSE_FLAGS_WHITELIST = "commercial"
+
+Optionally, you can set the DISTRO flag to both identify the image as Baryon 
+and cut down DISTRO_FEATURES to something more appropriate for a headless NAS 
+type device. For example:
+
+  DISTRO = "baryon"
+
+You should then be able to build the image as such:
+
+  $ source oe-init-build-env
+  $ bitbake baryon-image
+
+
+
 License
 -------
 
-- 
1.7.9.5


