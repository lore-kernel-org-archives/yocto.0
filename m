Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3FBBE011CC
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 12:20:59 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2012 12:20:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,280,1352102400"; d="scan'208";a="244486547"
Received: from wrk.jf.intel.com ([10.7.202.54])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2012 12:20:59 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 19 Nov 2012 12:20:27 -0800
Message-Id: <0a89eef85ff8ed361ac5a3e2f8fca6869670d74c.1353354792.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1353354792.git.kevin.strasser@linux.intel.com>
References: <cover.1353354792.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 1/3] packagegroup-core-tools: exclude packages that depend on x11
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
X-List-Received-Date: Mon, 19 Nov 2012 20:21:00 -0000

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 .../packagegroup-core-tools-profile.bbappend       |   15 +++++++++++++++
 .../packagegroup-core-tools-testapps.bbappend      |   12 ++++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
 create mode 100644 recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend

diff --git a/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend b/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
new file mode 100644
index 0000000..0d13a45
--- /dev/null
+++ b/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
@@ -0,0 +1,15 @@
+# Only include packages that are useful on a headless device
+
+PROFILETOOLS = " \
+    oprofile \
+    oprofileui-server \
+    powertop \
+    lttng-control \
+    "
+
+RRECOMMENDS_${PN} = " \
+    perf \
+    trace-cmd \
+    kernel-module-oprofile \
+    blktrace \
+    "
diff --git a/recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend b/recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend
new file mode 100644
index 0000000..86c7eb5
--- /dev/null
+++ b/recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend
@@ -0,0 +1,12 @@
+# Only include packages that are useful on a headless device
+
+RDEPENDS_${PN} = " \
+    blktool \
+    tslib-calibrate \
+    tslib-tests \
+    lrzsz \
+    ${KEXECTOOLS} \
+    alsa-utils-amixer \
+    alsa-utils-aplay \
+    ltp \
+    "
-- 
1.7.9.5


