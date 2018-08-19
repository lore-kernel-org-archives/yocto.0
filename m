Return-Path: <mohamad.noor.alim.hussin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DA6BE00874; Sun, 19 Aug 2018 08:22:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DCD6E003E4
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2018 08:22:33 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Aug 2018 08:22:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,261,1531810800"; d="scan'208";a="82657082"
Received: from alim-desktop.png.intel.com ([172.30.199.42])
	by fmsmga001.fm.intel.com with ESMTP; 19 Aug 2018 08:22:32 -0700
From: mohamad.noor.alim.hussin@intel.com
To: yocto@yoctoproject.org
Date: Sun, 19 Aug 2018 23:22:09 +0800
Message-Id: <1534692130-10623-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] runtime: add BSP test case for usb storage
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
X-List-Received-Date: Sun, 19 Aug 2018 15:22:35 -0000

From: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>

Contain test cases to test mount/unmount the usb stick on target
platform such as minnowboard and beaglebone. The test assume that
the usb storage device such as usb thumb drive was plugged into
the target device otherwise the test for would failed. It also test
to read and write from usb thumb drive. Usb test cases start with
mount the usb thumb drive then write and read from it. Lastly, it
will unmount it. If the usb thumb drive unable to mount due to corrupt
of partition or not exists, then the mount test will failed and the
following test would skip.

This test need to enable flag 'HARDWARE_TEST = "1"' on conf/local.conf
file in order to run on target device. This test should be skip on qemu.

Signed-off-by: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
---
 meta/lib/oeqa/runtime/cases/usb.py | 54 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 meta/lib/oeqa/runtime/cases/usb.py

diff --git a/meta/lib/oeqa/runtime/cases/usb.py b/meta/lib/oeqa/runtime/cases/usb.py
new file mode 100644
index 0000000..3e17645
--- /dev/null
+++ b/meta/lib/oeqa/runtime/cases/usb.py
@@ -0,0 +1,54 @@
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.core.decorator.oeid import OETestID
+from oeqa.core.decorator.data import skipIfNotDataVar
+
+class USBTest(OERuntimeTestCase):
+    @classmethod
+    def setUpClass(cls):
+        cls.hw_test_path = '~/test'
+        cls.usb_path = os.path.join(cls.hw_test_path, 'stick')
+        cls.usb_file = os.path.join(cls.usb_path, 'hello_stick')
+        src = os.path.join(cls.tc.runtime_files_dir, 'bsp-test-helper')
+        cls.tc.target.run('mkdir -p %s' % (cls.usb_path))
+        cls.tc.target.copyTo(src, '/usr/bin')
+
+    @classmethod
+    def tearDownClass(cls):
+        cls.tc.target.run('rm -rf %s' % (cls.hw_test_path))
+
+    @skipIfNotDataVar('HARDWARE_TEST','1',
+            'Usb test only run on platform. It will skip on qemu.')
+    @OETestID(216)
+    def test_usb_mount(self):
+        command = ('bsp-test-helper --mount pendrive %s' % (self.usb_path))
+        status, output = self.target.run(command)
+        msg = ('Unable to mount USB stick. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestID(217)
+    @OETestDepends(['usb.USBTest.test_usb_write_file'])
+    def test_usb_read_file(self):
+        command = ('cat %s' % (self.usb_file))
+        status, output = self.target.run(command)
+        msg = ('Unable to read file from USB stick. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['usb.USBTest.test_usb_mount'])
+    @OETestID(219)
+    def test_usb_write_file(self):
+        command = ('echo hello_world > %s' % (self.usb_file))
+        status, output = self.target.run(command)
+        msg = ('Status and  output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['usb.USBTest.test_usb_mount'])
+    @OETestID(218)
+    def test_usb_unmount(self):
+        command = ('bsp-test-helper --umount %s' % (self.usb_path))
+        status, output = self.target.run(command)
+        msg = ('Unable to unmount USB stick. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
-- 
2.7.4


