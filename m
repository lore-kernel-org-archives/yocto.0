Return-Path: <mohamad.noor.alim.hussin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5068EE0114C; Fri, 13 Jul 2018 05:09:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44C97E00C76
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 05:09:13 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jul 2018 05:09:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,347,1526367600"; d="scan'208";a="54111778"
Received: from alim-desktop.png.intel.com ([172.30.199.42])
	by fmsmga007.fm.intel.com with ESMTP; 13 Jul 2018 05:09:12 -0700
From: mohamad.noor.alim.hussin@intel.com
To: yocto@yoctoproject.org,
	richard.purdie@linuxfoundation.org
Date: Fri, 13 Jul 2018 20:08:55 +0800
Message-Id: <1531483735-31772-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] runtime: Add support to manual BSP test cases
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
X-List-Received-Date: Fri, 13 Jul 2018 12:09:15 -0000

From: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>

This is manual BSP test cases that have converted to auto test cases
for QA release. Manualbsp.py has dependency on file bsphardware that run
on hardware.

Signed-off-by: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
---
 meta/lib/oeqa/runtime/cases/manualbsp.py | 122 ++++++++++++++++++++++++++++
 meta/lib/oeqa/runtime/files/bsphardware  | 132 +++++++++++++++++++++++++++++++
 2 files changed, 254 insertions(+)
 create mode 100644 meta/lib/oeqa/runtime/cases/manualbsp.py
 create mode 100755 meta/lib/oeqa/runtime/files/bsphardware

diff --git a/meta/lib/oeqa/runtime/cases/manualbsp.py b/meta/lib/oeqa/runtime/cases/manualbsp.py
new file mode 100644
index 0000000..22d0d33
--- /dev/null
+++ b/meta/lib/oeqa/runtime/cases/manualbsp.py
@@ -0,0 +1,122 @@
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.core.decorator.oeid import OETestID
+import subprocess
+import time
+
+class BspRuntimeTest(OERuntimeTestCase):
+
+    @OETestID(240)
+    def test_check_bash(self):
+        status, output = self.target.run('which bash')
+        msg = ('bash shell not working as expected. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestID(228)
+    def test_runlevel_5(self):
+        status, output = self.target.run('init 5')
+        msg = ('System unable to init 5 '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 255, msg = msg)
+        time.sleep(2)
+        command = 'bsphardware -r 5'
+        status, output = self.target.run(command)
+        msg = ('System did not start from runlevel 5. '
+                'Status:%s.' % (status))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestID(198)
+    def test_runlevel_3(self):
+        status, output = self.target.run('init 3')
+        msg = ('System unable to start with runlevel 3. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 255, msg = msg)
+        time.sleep(2)
+        command = 'bsphardware -r 3'
+        status, output = self.target.run(command)
+        msg = ('Unable to change from runlevel 5 to 3. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+class BspHardwareTest(OERuntimeTestCase):
+
+    @classmethod
+    def setUpClass(cls):
+        src = os.path.join(cls.tc.runtime_files_dir, 'bsphardware')
+        cls.tc.target.run('mkdir ~/test')
+        cls.tc.target.copyTo(src, '/usr/bin')
+
+    @classmethod
+    def tearDownClass(cls):
+        cls.tc.target.run('rm -rf ~/test')
+
+    @OETestID(216)
+    def test_USB_mount(self):
+        command = 'bsphardware -d sd -sp 1 -m ~/test/stick'
+        status, output = self.target.run(command)
+        msg = ('Unable to mount USB stick. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestID(217)
+    @OETestDepends(['manualbsp.BspHardwareTest.test_USB_write_file'])
+    def test_USB_read_file(self):
+        command = 'cat ~/test/stick/hello_stick'
+        status, output = self.target.run(command)
+        msg = ('Unable to read file from USB stick. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['manualbsp.BspHardwareTest.test_USB_mount'])
+    @OETestID(219)
+    def test_USB_write_file(self):
+        command = 'touch ~/test/stick/hello_stick'
+        status, output = self.target.run(command)
+        msg = ('Status and  output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['manualbsp.BspHardwareTest.test_USB_mount'])
+    @OETestID(218)
+    def test_USB_unmount(self):
+        command = 'bsphardware -u ~/test/stick'
+        status, output = self.target.run(command)
+        msg = ('Unable to unmount USB stick. ' 
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestID(241)
+    def test_MicroSD_mount(self):
+        command = 'bsphardware -d mmc -sp p1 -m ~/test/microsd'
+        status, output = self.target.run(command)
+        msg = ('Unable to mount MicroSD. '
+                'Status and output:%s and %s.' %(status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['manualbsp.BspHardwareTest.test_MicroSD_write_file'])
+    @OETestID(242)
+    def test_MicroSD_read_file(self):
+        command = 'cat ~/test/microsd/hello_mmc'
+        status, output = self.target.run(command)
+        msg = ('Unable to read MicroSD. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['manualbsp.BspHardwareTest.test_MicroSD_mount'])
+    @OETestID(244)
+    def test_MicroSD_write_file(self):
+        command = 'touch ~/test/microsd/hello_mmc'
+        status, output = self.target.run(command)
+        msg = ('Unable to write to MicroSD. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['manualbsp.BspHardwareTest.test_MicroSD_mount'])
+    @OETestID(243)
+    def test_MicroSD_unmount(self):
+        command = 'bsphardware -u ~/test/microsd'
+        status, output = self.target.run(command)
+        msg = ('Unable to unmount MicroSD. '
+                'Status and output:%s and %s.' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
+
diff --git a/meta/lib/oeqa/runtime/files/bsphardware b/meta/lib/oeqa/runtime/files/bsphardware
new file mode 100755
index 0000000..2640acc
--- /dev/null
+++ b/meta/lib/oeqa/runtime/files/bsphardware
@@ -0,0 +1,132 @@
+#!/bin/sh
+
+# Description: This script used for Yocto Project BSP test.
+#              manualbsp.py script is depend on this script
+#              that available in poky/meta/lib/oeqa/runtime/cases/manualbsp.py.
+#              This script is should be located in
+#              poky/meta/lib/oeqa/runtime/cases/
+
+LOG_FILE="/tmp/bsphardware.log"
+
+usage() {
+echo "BSP hardware test is a script used to test hardware"
+echo "such as USB stick, micro SD and SSD hard disk on Yocto Project."$'\n'
+echo "Usage:"
+echo " -d, --device <keyword, e.g. sd/mmc>            Get device's name"
+echo " -sp, --setPartition <partition's number>       Set partition's number "
+echo " -m, --mount <path/to/mount>                    Mount the device to /path/to/mount"
+echo " -u, --umount <path/to/unmount>                 Unmont the mounted device"
+echo " -r, --runlevel <3|5>                           Get runlevel on current system"
+echo " -h, --help                                     Show the usage"$'\n'
+echo "Examples"
+echo " bsphardware -d sda -sp 1 -m ~/data   Mount /dev/sda1 on ~/data"
+}
+
+options() {
+SETPARTITION=""
+DEVICE=""
+while [[ $# -gt 0 ]]; do
+case "$1" in
+    -d|--device)
+        echo "[INFO]: get device's name" 2>&1 | tee -a $LOG_FILE
+        array_devices=()
+        index_device=()
+        array_devices=$(ls /dev/$2*)
+        for i in ${array_devices[@]}
+        do
+            index_device+=($i)
+        done
+        DEVICE="${index_device[0]}"
+        echo "[INFO]: Detected device: $DEVICE"$'\n' 2>&1 | tee -a $LOG_FILE
+        ;;
+    -sp| --setPartition)
+        echo "[INFO]: Set partition: $2" 2>&1 | tee -a $LOG_FILE
+        SETPARTITION=$2
+        ;;
+    -m|mount)
+        if [[ ! -d $2 ]];then
+            mkdir -p $2
+        fi
+        if [[ "$DEVICE" == "" || " $SETPARTITION" == "" ]]; then
+            echo "[ERROR]: Target device and partition not found." 2>&1 | tee -a $LOG_FILE 
+            echo "[INFO]: Use -d <device_keyword> -sp <partition's number> -m <dir>"  2>&1 | tee -a $LOG_FILE
+        else
+            echo "[INFO]: Mounting removable media..." 2>&1 | tee -a $LOG_FILE
+            echo "[DEBUG]: commandline: mount $DEVICE$SETPARTITION $2"$'\n' 2>&1 | tee -a $LOG_FILE > /dev/null
+            mount $DEVICE$SETPARTITION $2
+        fi
+        if [[ $? -eq 0 ]]; then
+            echo "[INFO]: Device $DEVICE$SETPARTITION mount successfully"$'\n' 2>&1 | tee -a $LOG_FILE
+            exit 0
+        else
+            echo "[ERROR]: Unable to mount device $DEVICE$SETPARTITION. Device does not exist"$'\n' 2>&1 | tee -a $LOG_FILE
+            exit 1
+        fi
+        ;;
+    -u|umount)
+        echo "[INFO]: Unmount $2" 2>&1 | tee -a $LOG_FILE
+        if [[ -d $2 ]]; then
+            echo "[DEBUG]: commandline: umount from $2" 2>&1 | tee -a $LOG_FILE > /dev/null
+            umount $2
+        else
+            echo "[Error]: No mount point on $2"$'\n' 2>&1 | tee -a $LOG_FILE
+            exit 1
+        fi
+        if [[ $? -eq 0 ]];then 
+            echo "[INFO]: Device $2 unmount successfully" 2>&1 | tee -a $LOG_FILE
+            echo "[INFO]: Removing mount point on $2" $'\n' 2>&1 | tee -a $LOG_FILE
+            rm -rf $2
+        else
+            echo "[ERROR]: Unable to unmount from $2"$'\n' 2>&1 | tee -a $LOG_FILE
+        fi
+        ;;
+    -r|--runlevel)
+        level=$(runlevel | cut -d " " -f2)
+        echo "[DEBUG]: commandline: runlevel | cut -d ' ' -f2" 2>&1 | tee -a $LOG_FILE > /dev/null
+        if [[ "$2" == "3" || "$2" == "5" ]]; then
+            if [[ "$level" == "3" && "$level" == "$2" ]]; then
+                echo "[DEBUG]: Test runlevel 3"  2>&1 | tee -a $LOG_FILE
+                echo "[INFO]: System start with runlevel: $level"$'\n' 2>&1 | tee -a $LOG_FILE
+                exit 0
+            elif [[ "$level" == "5" && "$level" == "$2" ]]; then
+                echo "[DEBUG]: Test runlevel 5" 2>&1 | tee -a $LOG_FILE > /dev/null
+                echo "[INFO]: System start with runlevel: $level"$'\n' 2>&1 | tee -a $LOG_FILE
+                exit 0
+            else
+                echo "[INFO]: System did not start with runlevel: $2"$'\n' 2>&1 | tee -a $LOG_FILE
+                exit 1
+            fi
+        else
+            echo "[ERROR]: Runlevel other than 3 & 5 are not allowed."$'\n' 2>&1 | tee -a $LOG_FILE
+            exit 1
+        fi
+        ;;
+    -h|--help)
+        usage
+        exit 0
+        ;;
+    *) 
+        echo "[Error]: Arguments $1 is not exists."$'\n' 2>&1 | tee -a $LOG_FILE
+        usage
+        exit 1
+        ;;
+esac
+shift
+shift
+done
+}
+
+main() {
+if [ "$#" == "0" ];then
+    usage
+    exit 1
+else
+    echo "[INFO]: Start-Date: $(date '+%Y-%m-%d %H:%M:%S')" 2>&1 | tee -a $LOG_FILE > /dev/null
+    echo "[DEBUG]: commandline: $0 ${POSITIONAL[*]}" 2>&1 | tee -a $LOG_FILE > /dev/null
+    options "${POSITIONAL[@]}"
+fi
+}
+
+POSITIONAL=()
+POSITIONAL+=("$@")
+main ${POSITIONAL[@]}
-- 
2.7.4


