Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6DE2E00995; Sat,  4 Feb 2017 10:40:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B3D5E00932
	for <yocto@yoctoproject.org>; Sat,  4 Feb 2017 10:40:47 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP; 04 Feb 2017 10:40:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,335,1477983600"; d="scan'208";a="55400547"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga004.jf.intel.com with ESMTP; 04 Feb 2017 10:40:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Feb 2017 10:36:50 -0800
Message-Id: <1486233410-15671-8-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
References: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][morty][PATCH 7/7] zephyr-qemuboot.bbclass
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Feb 2017 18:40:54 -0000

A bbclass used to generate qemuboot.conf and various symbolic
links needed to properly run "runqemu".

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 classes/zephyr-qemuboot.bbclass | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 classes/zephyr-qemuboot.bbclass

diff --git a/classes/zephyr-qemuboot.bbclass b/classes/zephyr-qemuboot.bbclass
new file mode 100644
index 0000000..2f9c4f1
--- /dev/null
+++ b/classes/zephyr-qemuboot.bbclass
@@ -0,0 +1,39 @@
+inherit qemuboot
+
+KERNEL_IMAGETYPE = "${PN}.elf"
+QB_DEFAULT_FSTYPE = "elf"
+QB_NETWORK_DEVICE = "none"
+QB_NET = "none"
+
+IMAGE_LINK_NAME = "${PN}-image-${MACHINE}"
+
+# Create a link with "-image-" in the name just to keep runqemu happy
+QEMU_IMAGE_LINK = "${DEPLOY_DIR_IMAGE}/${PN}-image-${MACHINE}.elf"
+
+# qemuboot writes into IMGDEPLOYDIR, force to write to DEPLOY_DIR_IMAGE
+IMGDEPLOYDIR = "${DEPLOY_DIR_IMAGE}"
+
+CLEANFUNCS += "bootconf_clean"
+
+python bootconf_clean() {
+    import glob
+    files = glob.glob(d.getVar('IMGDEPLOYDIR', True)+'/'+ d.getVar('PN', True) + '*.qemuboot.conf')
+    for f in files:
+        os.remove(f)
+
+    qemuimage_link = d.getVar('QEMU_IMAGE_LINK', True)
+    if os.path.lexists(qemuimage_link):
+        os.remove(qemuimage_link)
+}
+
+python do_bootconf_write() {
+    bb.build.exec_func("write_qemuboot_conf", d)
+
+    qemuimage = "%s/%s.elf" % (d.getVar('DEPLOY_DIR_IMAGE', True), d.getVar('PN', True))
+    qemuimage_link = d.getVar('QEMU_IMAGE_LINK', True)
+    if os.path.lexists(qemuimage_link):
+        os.remove(qemuimage_link)
+    os.symlink(os.path.basename(qemuimage), qemuimage_link)
+}
+
+addtask do_bootconf_write before do_build after do_deploy
-- 
2.7.4


