Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D74B1E01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 09:56:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 09:56:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,375,1344236400"; d="scan'208";a="218161441"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.13.76])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 09:56:06 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 09:56:04 -0700
Message-Id: <c69e0c612f58b83e19932eb26deaa86400c774d9.1346864117.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1346864117.git.sgw@linux.intel.com>
References: <cover.1346864117.git.sgw@linux.intel.com>
In-Reply-To: <cover.1346864117.git.sgw@linux.intel.com>
References: <cover.1346864117.git.sgw@linux.intel.com>
Subject: [PATCH 2/3] base-files: add /etc/motd with TLK info
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
X-List-Received-Date: Wed, 05 Sep 2012 16:56:21 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../base-files/base-files_3.0.14.bbappend          |    3 +++
 meta-tlk/recipes-core/base-files/files/motd        |    7 +++++++
 2 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend
 create mode 100644 meta-tlk/recipes-core/base-files/files/motd

diff --git a/meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend b/meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend
new file mode 100644
index 0000000..248b225
--- /dev/null
+++ b/meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR .= ".1"
diff --git a/meta-tlk/recipes-core/base-files/files/motd b/meta-tlk/recipes-core/base-files/files/motd
new file mode 100644
index 0000000..13cd74c
--- /dev/null
+++ b/meta-tlk/recipes-core/base-files/files/motd
@@ -0,0 +1,7 @@
+This image contains a time limited kernel and will reboot the machine
+automatically in 10 days. Do not include this image in a product.
+
+Use the image for evaluation purposes only.
+
+Please see http://www.yoctoproject.org/tlk for instructions on how to
+eliminate the timeout.
-- 
1.7.7.6


