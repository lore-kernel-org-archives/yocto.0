Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97521E00461
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2012 08:16:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Oct 2012 08:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,543,1344236400"; d="scan'208";a="230736587"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 06 Oct 2012 08:16:51 -0700
Received: from moolinex.rb.intel.com (unknown [10.237.112.10])
	by linux.intel.com (Postfix) with ESMTP id B9CB72C8002
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2012 08:16:51 -0700 (PDT)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Oct 2012 18:16:33 +0300
Message-Id: <4cb6a8f4787730086e42e67fddba5edc4c6e75a7.1349536496.git.mihaix.lindner@linux.intel.com>
X-Mailer: git-send-email 1.7.12
In-Reply-To: <cover.1349536496.git.mihaix.lindner@linux.intel.com>
References: <cover.1349536496.git.mihaix.lindner@linux.intel.com>
In-Reply-To: <cover.1349536496.git.mihaix.lindner@linux.intel.com>
References: <cover.1349536496.git.mihaix.lindner@linux.intel.com>
Subject: [PATCH 1/1] meta-tlk: fix included file name
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
X-List-Received-Date: Sat, 06 Oct 2012 15:16:58 -0000

PN in linux-yocto-tlk.inc takes the .inc file name and becomes
linux-yocto-tlk. Renamed to linux-yocto_tlk.inc to avoid confusions.
Related to: [YOCTO #3217]

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---
 meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend                  | 2 +-
 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend                  | 2 +-
 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend                  | 2 +-
 .../recipes-kernel/linux/{linux-yocto-tlk.inc => linux-yocto_tlk.inc}   | 0
 4 files changed, 3 insertions(+), 3 deletions(-)
 rename meta-tlk/recipes-kernel/linux/{linux-yocto-tlk.inc => linux-yocto_tlk.inc} (100%)

diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
index e316320..f580168 100644
--- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1 +1 @@
-require ${PN}-tlk.inc
+require ${PN}_tlk.inc
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
index e316320..f580168 100644
--- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -1 +1 @@
-require ${PN}-tlk.inc
+require ${PN}_tlk.inc
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
index e316320..f580168 100644
--- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -1 +1 @@
-require ${PN}-tlk.inc
+require ${PN}_tlk.inc
diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto-tlk.inc b/meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc
similarity index 100%
rename from meta-tlk/recipes-kernel/linux/linux-yocto-tlk.inc
rename to meta-tlk/recipes-kernel/linux/linux-yocto_tlk.inc
-- 
1.7.12


