Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0F45E009B2; Sun, 12 Feb 2017 11:11:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6533E0049D
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 11:11:09 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Feb 2017 11:11:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,154,1484035200"; d="scan'208";a="933048137"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga003.jf.intel.com with ESMTP; 12 Feb 2017 11:11:08 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sun, 12 Feb 2017 11:11:03 -0800
Message-Id: <1486926663-19726-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-zephyr][morty][PATCH] arduino-101: Support for flashing via USB
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
X-List-Received-Date: Sun, 12 Feb 2017 19:11:11 -0000

Implement a class allowing flashing Arduino-101 using dfu-util.
User needs to have dfu-utils installed on the host machine.
All tree cores supported (x86, ARM, ARC)

Sample usage:
    $ MACHINE=arduino-101 bitbake xxx
    $ MACHINE=arduino-101 bitbake xxx -c flash_usb

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 classes/zephyr-flash-dfu.bbclass  | 34 ++++++++++++++++++++++++++++++++++
 conf/machine/arduino-101-sss.conf |  1 +
 conf/machine/arduino-101.conf     |  1 +
 3 files changed, 36 insertions(+)
 create mode 100644 classes/zephyr-flash-dfu.bbclass

diff --git a/classes/zephyr-flash-dfu.bbclass b/classes/zephyr-flash-dfu.bbclass
new file mode 100644
index 0000000..2d82281
--- /dev/null
+++ b/classes/zephyr-flash-dfu.bbclass
@@ -0,0 +1,34 @@
+
+python do_flash_usb() {
+    import subprocess
+    return_code = subprocess.call("which dfu-util", shell=True)
+    if return_code != 0:
+        bb.error("ERROR: dfu_util binary not in PATH")
+        sys.exit(1)
+
+    board = d.getVar('BOARD',True)
+    bb.warn("Attempting to flash board: %s" % board)
+
+    if board == 'arduino_101_sss':
+        iface = 'sensor_core'
+    elif board == 'arduino_101':
+        iface = 'x86_app'
+    elif board == 'arduino_101_ble':
+        iface = 'ble_core'
+    else:
+        bb.error(" Unsupported board %s" % board)
+        sys.exit(2)
+
+    image = "%s/%s.elf" % (d.getVar('DEPLOY_DIR_IMAGE', True), d.getVar('PN', True))
+    statement = 'dfu-util -v -a ' + iface + ' -d 8087:0aba -D ' + image.replace('elf','bin')
+    bb.note("command: %s" % statement)
+    return_code = subprocess.call(statement, shell=True)
+    if return_code != 0:
+        bb.error("Error flashig the device [%d], reset needed?" % return_code)
+    else:
+        bb.warn("Success (return code %d)" % return_code)
+}
+
+addtask do_flash_usb
+
+do_flash_usb[nostamp] = "1"
diff --git a/conf/machine/arduino-101-sss.conf b/conf/machine/arduino-101-sss.conf
index cab5a3f..14b9861 100644
--- a/conf/machine/arduino-101-sss.conf
+++ b/conf/machine/arduino-101-sss.conf
@@ -16,3 +16,4 @@ PREFERRED_VERSION_binutils-cross-${TARGET_ARCH} = "2.26+gitarc"
 PREFERRED_VERSION_binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} = "2.26+gitarc"
 
 TARGET_LINK_HASH_STYLE = ""
+ZEPHYR_INHERIT_CLASSES += "zephyr-flash-dfu"
diff --git a/conf/machine/arduino-101.conf b/conf/machine/arduino-101.conf
index 543a41e..b38c320 100644
--- a/conf/machine/arduino-101.conf
+++ b/conf/machine/arduino-101.conf
@@ -8,3 +8,4 @@ require conf/machine/include/tune-iamcu.inc
 TUNE_PKGARCH_arduino-101 = "iamcu"
 
 TARGET_LINK_HASH_STYLE = ""
+ZEPHYR_INHERIT_CLASSES += "zephyr-flash-dfu"
-- 
2.7.4


