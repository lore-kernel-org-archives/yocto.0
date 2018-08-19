Return-Path: <mohamad.noor.alim.hussin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0626DE00BC0; Sun, 19 Aug 2018 08:22:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AF92E0083D
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2018 08:22:39 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Aug 2018 08:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,261,1531810800"; d="scan'208";a="82657097"
Received: from alim-desktop.png.intel.com ([172.30.199.42])
	by fmsmga001.fm.intel.com with ESMTP; 19 Aug 2018 08:22:38 -0700
From: mohamad.noor.alim.hussin@intel.com
To: yocto@yoctoproject.org
Date: Sun, 19 Aug 2018 23:22:10 +0800
Message-Id: <1534692130-10623-2-git-send-email-mohamad.noor.alim.hussin@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1534692130-10623-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
References: <1534692130-10623-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
Subject: [PATCH] runtime: add bsp-test-helper script to support runtime BSP test cases
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
X-List-Received-Date: Sun, 19 Aug 2018 15:22:41 -0000

From: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>

bsp-test-helper script has functionality to detect removable media
such as usb stick and micro SD card and mount/unmount it to the target
device such as minnowboard and beaglebone. It is used to support runtime
BSP test cases such as to test mount/unmount usb stick and micro SD on
target device.

Signed-off-by: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
---
 meta/lib/oeqa/runtime/files/bsp-test-helper | 173 ++++++++++++++++++++++++++++
 1 file changed, 173 insertions(+)
 create mode 100755 meta/lib/oeqa/runtime/files/bsp-test-helper

diff --git a/meta/lib/oeqa/runtime/files/bsp-test-helper b/meta/lib/oeqa/runtime/files/bsp-test-helper
new file mode 100755
index 0000000..50afb3c
--- /dev/null
+++ b/meta/lib/oeqa/runtime/files/bsp-test-helper
@@ -0,0 +1,173 @@
+#!/bin/bash
+
+LOG_FILE="/tmp/bsp-test-helper.log"
+
+usage() {
+echo "BSP hardware test is a script used to test hardware"
+echo "such as USB stick, micro SD and SSD hard disk on Yocto Project."$'\n'
+echo "Usage:"
+echo " -m, --mount [pendrive|hdd|mmc] <path/to/mount> Mount the device to /path/to/mount"
+echo " -u, --umount <path/to/unmount>                 Unmont the mounted device"
+echo " -r, --runlevel <3|5>                           Get runlevel on current system"
+echo " -h, --help                                     Show the usage"$'\n'
+echo "Example"
+echo "  bsp-test-helper -m pendrive ~/data   Mount pendrive to ~/data"
+}
+
+options() {
+DEVICE=""
+while [[ $# -gt 0 ]]; do
+case "$1" in
+    -m|--mount)
+       sd_devices=()
+       sd_sizes=()
+       mmc_device=()
+       list_devices=`ls /sys/block | grep sd`
+       mmc_devices=`ls /sys/block/ | grep "mmcblk[0-9]\{1,\}$"`
+       for d in $list_devices $mmc_devices; do
+           case $d in
+               sd*)
+                   dev_name=`lsblk -o NAME,SIZE | grep $d | sed -n 1p | awk -F' ' '{print $1}'`
+                   dev_size=`lsblk -o NAME,SIZE | grep $d | sed -n 1p | awk -F' ' '{print $2}'`
+                   sd_devices+=($dev_name)
+                   sd_sizes+=($dev_size)
+                   ;;
+                mmc*)
+		   mmc_device+=($d)
+		   ;;
+            esac
+        done
+        if [[ ${#sd_devices[@]} > 1 ]]; then
+	    # check scsi device's size
+            if [[ ${sd_sizes[0]} > ${sd_sizes[1]} ]];then
+                HDD="/dev/${sd_devices[0]}"
+                THUMB_DRIVE="/dev/${sd_devices[1]}"
+                echo "[INFO]: HDD is $HDD, size = ${sd_sizes[0]}" 2>&1 | tee -a $LOG_FILE
+                echo "[INFO]: THUMB DRIVE = $THUMB_DRIVE, size = ${sd_sizes[1]}" 2>&1 | tee -a $LOG_FILE
+            elif [[ ${sd_sizes[0]} < ${sd_sizes[1]} ]];then
+                HDD="/dev/${sd_devices[1]}"
+                THUMB_DRIVE="/dev/${sd_devices[0]}"
+                echo "[INFO]: HDD is $HDD, size = $${sd_sizes[1]}" 2>&1 | tee -a $LOG_FILE
+                echo "[INFO]: THUMB DRIVE = $THUMB_DRIVE, size = ${sd_sizes[0]}" 2>&1 | tee -a $LOG_FILE
+            else
+                echo "[ERROR]: Cannot validate scsi devices." 2>&1 | tee -a $LOG_FILE
+            fi
+        else 
+            THUMB_DRIVE="/dev/$sd_devices"
+            HDD="/dev/$sd_devices"
+        fi
+        if [[ ${#mmc_device[@]} > 1 ]]; then
+            n=${#mmc_devices[@]}
+            MMC_DEVICE="${mmc_device[$n]}"
+        else
+            MMC_DEVICE=$mmc_device
+        fi
+        if [[ -z "$2" ]];then
+            echo "[ERROR]: Device not specify. Plese specify device pendrive/hdd/mmc" 2>&1 | tee -a $LOG_FILE
+	    exit 1
+        else
+	    case $2 in
+	        pendrive|PENDRIVE)
+                    DEVICE=$THUMB_DRIVE
+		    ;;
+	        hdd|HDD)
+		    DEVICE=$HDD
+		    ;;
+		mmc|MMC)
+		    DEVICE="/dev/${MMC_DEVICE}p"
+		    ;;
+	        *)
+                    echo "[ERROR]: Unknown device" 2>&1 | tee -a $LOG_FILE
+		    ;;
+	        esac
+	    if [[ ! -d $3 ]]; then
+	        mkdir -p $3 
+	    fi
+	    echo "[INFO]: mounting ${DEVICE}1 to $3" 2>&1 | tee -a $LOG_FILE
+	    mount ${DEVICE}1 $3
+	    if [[ $? -eq 0 ]]; then
+	        echo "[DEBUG]: commandline: mount ${DEVICE}1 $3" 2>&1 | tee -a $LOG_FILE
+	        echo "[INFO]: Device ${DEVICE}1 mount successfully"$'\n' 2>&1 | tee -a $LOG_FILE
+	        exit 0
+	    else
+	        echo "[ERROR]: Unable to mount ${DEVICE}1"$'\n' 2>&1 | tee -a $LOG_FILE
+	        exit 1
+	    fi
+	fi
+        ;;
+    -u|--umount)
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
+        level=`runlevel | awk -F ' ' '{print $2}'`
+        echo "[DEBUG]: commandline: runlevel | runlevel | awk -F ' ' '{print $2}'" 2>&1 | tee -a $LOG_FILE > /dev/null
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
+    -X| --test-xorg)
+         XORG=`ps -ef | grep Xorg`
+         for arr in ${XORG[@]};do
+             if [[ $arr == "/usr/bin/Xorg" ]]; then
+                echo "[INFO]: Xorg is running"$'\n' 2>&1 | tee -a $LOG_FILE
+                exit 0
+             fi
+         done
+        ;;
+    -h|--help)
+        usage
+        exit 0
+        ;;
+    *) 
+        echo "[Error]: Arguments $1 is not available."$'\n' 2>&1 | tee -a $LOG_FILE
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


