Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88F6CE00303
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2011 17:32:08 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2011 17:32:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="103204884"
Received: from unknown (HELO localhost) ([10.255.12.232])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2011 17:32:07 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 16 Dec 2011 17:31:47 -0800
Message-Id: <ce764bbeb15baa4a42cd983807ea2fec6f8ac91e.1324085495.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH][meta-kernel-dev] kern-tools: Include do_install() in bbappend
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
X-List-Received-Date: Sat, 17 Dec 2011 01:32:08 -0000

do_install() has changed over versions of kern-tools, ensure this matches
the latest sources as referenced by ${AUTOREV}. Without this, using
this bbappend against older kern-tools recipes will fail in very strange
and unexplainable ways. The edison recipe for example has:

do_install() {
        install -d ${D}${bindir}
        for s in ${kern_tools_LIST}; do
            install -m 0755 ${S}/git/tools/$s ${D}${bindir}
        done
}

This resulted in do_kernel_configme failures:

| mv: cannot stat `/usr/local/src/yocto_1_1/poky/build/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-preempt-rt-build/.tmp.config*': No such file or directory

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../kern-tools-native_git.bbappend                 |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend b/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend
index 201ec7f..445b385 100644
--- a/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend
+++ b/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend
@@ -5,3 +5,10 @@ LOCALCOUNT = "0"
 # For local kern-tools work, fill in KERN_TOOLS_SRC and uncomment the SRC_URI
 # KERN_TOOLS_SRC ?= /path/to/local/kern-tools-clone
 # SRC_URI = "git://${KERN_TOOLS_SRC}"
+
+# This step has changed over versions of kern-tools, ensure this matches
+# the latest sources as referenced by ${AUTOREV}
+do_install() {
+	cd ${S}/git
+	make DESTDIR=${D}${bindir} install
+}
-- 
1.7.6.4


