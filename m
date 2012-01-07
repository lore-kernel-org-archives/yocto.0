Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21416E006B0
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 21:24:13 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2012 21:24:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104475609"
Received: from unknown (HELO localhost) ([10.255.13.210])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2012 21:24:12 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri,  6 Jan 2012 23:23:46 -0600
Message-Id: <ef75d749854732618ce999c79b3368aa46037ea8.1325913610.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1325913610.git.tom.zanussi@intel.com>
References: <cover.1325913610.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] local.conf.sample.extended: add LICENSE_FLAGS_WHITELIST section
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
X-List-Received-Date: Sat, 07 Jan 2012 05:24:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a new section for LICENSE_FLAGS_WHITELIST, containing a list of
the current packages with LICENSE_FLAGS.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-yocto/conf/local.conf.sample.extended |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 7c26572..f44d7fa 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -123,3 +123,16 @@
 # The following is a list of classes to import to use in the generation of images
 # currently an example class is image_types_uboot
 # IMAGE_CLASSES = " image_types_uboot"
+
+# This is a list of packages that require a commercial license to ship
+# product. If shipped as part of an image these packages may have 
+# implications so they are disabled by default.  To enable them,
+# un-comment the below as appropriate.
+#LICENSE_FLAGS_WHITELIST = "commercial_gst-fluendo-mp3 \
+#                           commercial_gst-openmax \
+#                           commercial_gst-plugins-ugly \
+#                           commercial_lame \
+#                           commercial_libmad \
+#                           commercial_libomxil \
+#                           commercial_mpeg2dec \
+#                           commercial_qmmp"
-- 
1.7.0.4


