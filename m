Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34176E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 15:52:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Mar 2012 15:52:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="135852187"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by fmsmga001.fm.intel.com with ESMTP; 30 Mar 2012 15:52:06 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 15:52:04 -0700
Message-Id: <512eae1ae0678b247076db900304725702acc91e.1333145263.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1333145263.git.nitin.a.kamble@intel.com>
References: <cover.1333145263.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/3] nasm: fix issue with repeat configure
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
X-List-Received-Date: Fri, 30 Mar 2012 22:52:07 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This Fixes bug: [YOCTO #2176]

This fixes the following issue as mentioned in the bug:
If nasm-native has to be rebuilt (due to a signature change) it will fail:

| checking for a BSD-compatible install... /usr/bin/install -c
| /media/large/tmp/work/x86_64-linux/nasm-native-2.07-r1/nasm-2.07/configure:
line 4261: syntax error near unexpected token `-W'
| /media/large/tmp/work/x86_64-linux/nasm-native-2.07-r1/nasm-2.07/configure:
line 4261: `PA_ADD_CFLAGS(-W)'
| ERROR: oe_runconf failed
NOTE: package nasm-native-2.07-r1: task do_configure: Failed

The failure appears to be caused by do_patch_fixaclocal being run a second time

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/nasm/nasm_2.07.bb |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-devtools/nasm/nasm_2.07.bb b/meta/recipes-devtools/nasm/nasm_2.07.bb
index 9b75496..fc2d531 100644
--- a/meta/recipes-devtools/nasm/nasm_2.07.bb
+++ b/meta/recipes-devtools/nasm/nasm_2.07.bb
@@ -13,12 +13,12 @@ SRC_URI[sha256sum] = "ac70ee451c73d742c9ff830502e5f8b1f648b2abffa8fd00944243283b
 
 inherit autotools
 
-do_patch_fixaclocal () {
-	mv aclocal.m4 acinclude.m4
+do_configure_prepend () {
+	if [ -f aclocal.m4 ] && [ ! -f acinclude.m4 ]; then
+		mv aclocal.m4 acinclude.m4
+	fi
 }
 
-addtask do_patch_fixaclocal after do_patch before do_configure
-
 do_install() {
 	install -d ${D}${bindir}
 	install -d ${D}${mandir}/man1
-- 
1.7.6.4


