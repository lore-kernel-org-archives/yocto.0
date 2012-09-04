Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFEEFE01371
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 13:57:36 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Sep 2012 13:57:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,369,1344236400"; d="scan'208";a="217759502"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.252])
	by fmsmga002.fm.intel.com with ESMTP; 04 Sep 2012 13:57:22 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Sep 2012 13:57:20 -0700
Message-Id: <1346792241-23600-2-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <1346792241-23600-1-git-send-email-sgw@linux.intel.com>
References: <1346792241-23600-1-git-send-email-sgw@linux.intel.com>
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
X-List-Received-Date: Tue, 04 Sep 2012 20:57:37 -0000

This adds infomation about how to disable the Time Limited Kernel

[YOCTO #2704]

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
index 0000000..a6a6270
--- /dev/null
+++ b/meta-tlk/recipes-core/base-files/files/motd
@@ -0,0 +1,7 @@
+This image contains a time limited kernel and will halt the machine
+automatically in 10 days. Do not include this image in a product.
+
+Use the image for evaluation purposes only.
+
+Please see http://www.yoctoproject.org/tlk for instructions on how to
+eliminate the timeout.
-- 
1.7.7.6


