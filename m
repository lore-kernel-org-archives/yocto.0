Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B3E1E013EB
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 17:41:31 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Mar 2012 17:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132233175"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2012 17:41:30 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 22 Mar 2012 10:32:25 -0700
Message-Id: <ce9cab52c2f66b4659672348a554d4ede18fc049.1332459306.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332459306.git.rahul.saxena@intel.com>
References: <cover.1332459306.git.rahul.saxena@intel.com>
Subject: [PATCH 12/13] meta-cedartrail: Update SRC_URI in kernel recipe append files to point to linux-yocto_3.0
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
X-List-Received-Date: Fri, 23 Mar 2012 00:41:31 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Current poky/edison points to linux-yocto-3.0-1.1.x.git repo. However this repo does not have
cedartrail branch. Hence  point to linux-yocto_3.0 via kernel recipe append files

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    3 +++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
 2 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 828e6fd..759c3b7 100755
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -1,4 +1,7 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+
 COMPATIBLE_MACHINE_cedartrail = "cedartrail"
 KMACHINE_cedartrail  = "cedartrail"
 
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 14c0b9d..0a05d8b 100755
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,5 +1,7 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
+SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+
 COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
 KMACHINE_cedartrail-nopvr  = "yocto/standard/cedartrail"
 KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
-- 
1.7.4.1


