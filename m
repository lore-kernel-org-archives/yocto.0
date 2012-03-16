Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 407DAE013BA
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 10:06:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Mar 2012 10:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="121725809"
Received: from unknown (HELO localhost) ([10.255.12.16])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2012 10:06:23 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 16 Mar 2012 10:05:37 -0700
Message-Id: <a68d07d9d1d6af674d8389c47bdc6b88776538ae.1331917459.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1331917459.git.dvhart@linux.intel.com>
References: <cover.1331917459.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/2] distro-tracking: Update rt-tests, trace-cmd, and kernel shark
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
X-List-Received-Date: Fri, 16 Mar 2012 17:06:24 -0000

o Add common fields for these recipes.
o Note no update due to being on the current version.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Saul Wold <sgw@linux.intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   25 +++++++++++++++----
 1 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 8ad924b..6a43bb6 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -135,16 +135,23 @@ RECIPE_MANUAL_CHECK_DATE_pn-subversion = "Jan 25, 2011"
 RECIPE_MAINTAINER_pn-subversion = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-trace-cmd = "green"
-RECIPE_LATEST_VERSION_pn-trace-cmd = "1.1.1"
-DISTRO_PN_ALIAS_pn-trace-cmd = "Mandriva=trace-cmd Ubuntu=trace-cmd"
-RECIPE_LAST_UPDATE_pn-trace-cmd = "Jan 11, 2011"
+RECIPE_LATEST_VERSION_pn-trace-cmd = "1.2"
+RECIPE_LATEST_RELEASE_DATE_pn-trace-cmd = "Nov 7, 2011"
+RECIPE_LAST_UPDATE_pn-trace-cmd = "Nov 30, 2011"
+RECIPE_MANUAL_CHECK_DATE_pn-trace-cmd = "Mar 16, 2011"
 RECIPE_MAINTAINER_pn-trace-cmd = "Darren Hart <dvhart@linux.intel.com>"
+RECIPE_NO_UPDATE_REASON_pn-trace-cmd = "1.2 is the latest version."
+DISTRO_PN_ALIAS_pn-trace-cmd = "Mandriva=trace-cmd Ubuntu=trace-cmd"
 
 RECIPE_STATUS_pn-kernelshark = "green"
 RECIPE_LATEST_VERSION_pn-kernelshark = "0.2"
-DISTRO_PN_ALIAS_pn-kernelshark = "Mandriva=kernelshark Ubuntu=kernelshark"
-RECIPE_LAST_UPDATE_pn-kernelshark = "Jan 11, 2011"
+RECIPE_LATEST_RELEASE_DATE_pn-kernelshark = "Nov 7, 2011"
+RECIPE_LAST_UPDATE_pn-kernelshark = "Nov 30, 2011"
+RECIPE_MANUAL_CHECK_DATE_pn-kernelshark = "Mar 16, 2011"
 RECIPE_MAINTAINER_pn-kernelshark = "Darren Hart <dvhart@linux.intel.com>"
+RECIPE_NO_UPDATE_REASON_pn-kernelshark = "0.2 is the latest version."
+RECIPE_COMMENTS_pn-kernelshark = "Builds on trace-cmd, but has a different version."
+DISTRO_PN_ALIAS_pn-kernelshark = "Mandriva=kernelshark Ubuntu=kernelshark"
 
 RECIPE_STATUS_pn-web = "green"
 RECIPE_LATEST_VERSION_pn-web = "0.0+svnr129"
@@ -6279,8 +6286,14 @@ RECIPE_COMMENTS_pn-pseudo = "Yocto Project maintained"
 RECIPE_MANUAL_CHECK_DATE_pn-pseudo = "Nov 02, 2011" 
 DISTRO_PN_ALIAS_pn-pseudo = "Windriver"
 
-DISTRO_PN_ALIAS_pn-rt-tests = "Debian=rt-tests Ubuntu=rt-tests"
+RECIPE_STATUS_pn-rt-tests = "green"
+RECIPE_LATEST_VERSION_pn-rt-tests = "0.83"
+RECIPE_LATEST_RELEASE_DATE_pn-rt-tests = "Sep 26, 2011"
+RECIPE_LAST_UPDATE_pn-rt-tests = "Nov 02, 2011"
+RECIPE_MANUAL_CHECK_DATE_pn-rt-tests = "Mar 16, 2011"
 RECIPE_MAINTAINER_pn-rt-tests = "Darren Hart <dvhart@linux.intel.com>"
+RECIPE_NO_UPDATE_REASON_pn-rt-tests = "0.83 is the latest version."
+DISTRO_PN_ALIAS_pn-rt-tests = "Debian=rt-tests Ubuntu=rt-tests"
 
 DISTRO_PN_ALIAS_pn-xserver-xorg-lite = "Fedora=xorg-x11-server Ubuntu=xserver-xorg"
 DISTRO_PN_ALIAS_pn-xserver-xf86-lite = "Fedora=xorg-x11-server Ubuntu=xserver-xorg"
-- 
1.7.6.5


