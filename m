Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE170E0049B
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 05:51:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Oct 2012 05:51:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,541,1344236400"; d="scan'208";a="230358238"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 05 Oct 2012 05:51:55 -0700
Received: from moolinex.rb.intel.com (unknown [10.237.112.10])
	by linux.intel.com (Postfix) with ESMTP id A6D812C8001
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 05:51:55 -0700 (PDT)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Oct 2012 15:51:36 +0300
Message-Id: <fe9db2a05117ca59023838590128725561f45893.1349441050.git.mihaix.lindner@linux.intel.com>
X-Mailer: git-send-email 1.7.12
In-Reply-To: <1349437880.15658.22.camel@ted>
References: <cover.1349435514.git.mihaix.lindner@linux.intel.com>
	<57468146a5fbeb836ac941d51fc6f41031e41b03.1349435514.git.mihaix.lindner@linux.intel.com>
	<1349437880.15658.22.camel@ted>
Subject: [PATCH 1/1] meta-tlk: fix ignored SRC_URI appends
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
X-List-Received-Date: Fri, 05 Oct 2012 12:51:58 -0000

Fix SRC_URI appends ignored by meta-cedartrail and meta-crownbay. Used
SRC_URI_append instead of SRC_URI.
Also placed all variables in an .inc file to be required by all
linux-yocto recipes in here, since all versions use the same.

[YOCTO #3217]

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---
 meta-tlk/recipes-kernel/linux/linux-yocto-tlk.inc      | 3 +++
 meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend | 7 +------
 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend | 7 +------
 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend | 7 +------
 4 files changed, 6 insertions(+), 18 deletions(-)
 create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto-tlk.inc

diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto-tlk.inc b/meta-tlk/recipes-kernel/linux/linux-yocto-tlk.inc
new file mode 100644
index 0000000..b1cf883
--- /dev/null
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto-tlk.inc
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+SRC_URI_append = " file://time-limited-kernel.cfg"
+PR .= ".2"
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 138cc21..e316320 100644
--- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,6 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-# enable the time limited kernel configuration options
-SRC_URI += "file://time-limited-kernel.cfg"
-
-PR .= ".1"
+require ${PN}-tlk.inc
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
index 138cc21..e316320 100644
--- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -1,6 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-# enable the time limited kernel configuration options
-SRC_URI += "file://time-limited-kernel.cfg"
-
-PR .= ".1"
+require ${PN}-tlk.inc
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 138cc21..e316320 100644
--- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -1,6 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-# enable the time limited kernel configuration options
-SRC_URI += "file://time-limited-kernel.cfg"
-
-PR .= ".1"
+require ${PN}-tlk.inc
-- 
1.7.12


