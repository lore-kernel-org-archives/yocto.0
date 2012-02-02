Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D74E00595
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 16:29:09 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2012 16:29:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="62287915"
Received: from unknown (HELO localhost) ([10.255.14.106])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Feb 2012 16:29:08 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Feb 2012 18:28:59 -0600
Message-Id: <b2fef47b61925a090a9a97a0607d1cd9aae2d78e.1328142259.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1328142259.git.tom.zanussi@intel.com>
References: <cover.1328142259.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-yocto/local.conf.sample.extended: add LICENSE_FLAGS_WHITELIST section
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
X-List-Received-Date: Thu, 02 Feb 2012 00:29:09 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a new section for LICENSE_FLAGS_WHITELIST, containing a list of
the current packages with LICENSE_FLAGS.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-yocto/conf/local.conf.sample.extended |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index b901c5b..f0d1ba8 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -130,3 +130,16 @@
 # do update(remove/add some pkgs) on it.  NOTE: This is not suggested
 # when you want to create a productive rootfs
 #INC_RPM_IMAGE_GEN = "1"
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


