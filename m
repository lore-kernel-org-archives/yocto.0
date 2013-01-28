Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F35BE0072E
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 15:08:06 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Jan 2013 15:08:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,555,1355126400"; d="scan'208";a="277693381"
Received: from wrk.jf.intel.com ([10.7.202.62])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2013 15:08:05 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Jan 2013 15:06:51 -0800
Message-Id: <d9ca37631d64490db90497a3fc0a24769f6412d3.1359414197.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <0301e122e348ccd40a7627be35c230dc5bc20a77.1359414197.git.kevin.strasser@linux.intel.com>
References: <0301e122e348ccd40a7627be35c230dc5bc20a77.1359414197.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1359414197.git.kevin.strasser@linux.intel.com>
References: <cover.1359414197.git.kevin.strasser@linux.intel.com>
Subject: [yocto-docs][PATCH 3/3] dev-manual: clarify what source is being archived
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
X-List-Received-Date: Mon, 28 Jan 2013 23:08:06 -0000

Part of section 5.15.1 incorrectly implies that only copyleft
source will be archived to the specified directory, when in fact
copyleft filtering is disabled by default.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 30751e3..5856c35 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -2947,9 +2947,9 @@
      INHERIT += "${ARCHIVER_CLASS}"
      SOURCE_ARCHIVE_PACKAGE_TYPE = "tar"
                 </literallayout>
-                During the creation of your image, all GPL
-                or other copyleft licensed source
-                is placed within subdirectories of
+                During the creation of your image, the source from all
+                recipes that deploy packages to the image is placed within
+                subdirectories of
                 <filename>DEPLOY_DIR/sources</filename> based on the
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-LICENSE'><filename>LICENSE</filename></ulink>
                 for each recipe.
-- 
1.7.9.5


