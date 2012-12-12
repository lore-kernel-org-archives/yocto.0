Return-Path: <twoerner@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16410E00770
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:43:57 -0800 (PST)
Received: by mail-ie0-f170.google.com with SMTP id k10so1568260iea.15
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=Tq/REmQIk4j6xyOUWrPBc73GQyronPnhxSOTUye+w74=;
	b=h0S0O5YcYwguli9OzIH5pxtn/0LBaA/wdiggYXmm5XtFr8oAxmFuVuZEuudXiwQNc4
	jkFJlLLJhVmrPKjjkFJzlIT3A2YPGR13QIPQVuERHugK0uaBHPlXinDaiqvPfyyVDgE3
	9clJhFz36AEtP8GxduCVhPrIrGUqOQw5HOBWZ9KVoA0d/WQLkWZqGvOREy7VDvbsFAfi
	VhNBk4WDpg9SeKD7etyRodtXX9w61hS4hoHRz10eWLIcmaPQ8i/gkg+hWMrbHBSZBipT
	CJH5qqXRYnJzvVNEtNN4YRUuTHWe+mN2jC3CUkhZzjy/AMOs5etV5wxzzCXHZaUNaN0q
	lTRg==
Received: by 10.50.150.175 with SMTP id uj15mr12911143igb.52.1355312636641;
	Wed, 12 Dec 2012 03:43:56 -0800 (PST)
Received: from localhost.localdomain (dsl-67-55-9-50.acanac.net. [67.55.9.50])
	by mx.google.com with ESMTPS id bh3sm1641731igc.0.2012.12.12.03.43.54
	(version=SSLv3 cipher=OTHER); Wed, 12 Dec 2012 03:43:55 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 12 Dec 2012 06:43:46 -0500
Message-Id: <1355312626-17604-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 1.8.0
Subject: [PATCH runqemu] runqemu: add support for FSTYPE=vmdk
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
X-List-Received-Date: Wed, 12 Dec 2012 11:43:57 -0000

Allow vmdk images to be run through the 'runqemu' facility.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 scripts/runqemu          | 39 +++++++++++++++++++++++++++++----------
 scripts/runqemu-internal | 20 ++++++++++++++++----
 2 files changed, 45 insertions(+), 14 deletions(-)

diff --git a/scripts/runqemu b/scripts/runqemu
index fb7ac56..190e3b4 100755
--- a/scripts/runqemu
+++ b/scripts/runqemu
@@ -27,6 +27,7 @@ usage() {
     echo "  ROOTFS - the rootfs image file or nfsroot directory to use"
     echo "  MACHINE - the machine name (optional, autodetected from KERNEL filename if unspecified)"
     echo "  RAMFS - boot a ramfs-based image"
+    echo "  VM - boot a vmdk image"
     echo "  Simplified QEMU command-line options can be passed with:"
     echo "    nographic - disables video console"
     echo "    serial - enables a serial console on /dev/ttyS0"
@@ -41,6 +42,7 @@ usage() {
     echo "  $MYNAME qemux86 ramfs"
     echo "  $MYNAME qemux86 qemuparams=\"-m 256\""
     echo "  $MYNAME qemux86 bootparams=\"psplash=false\""
+    echo "  $MYNAME path/to/<image>-<machine>.vmdk"
     exit 1
 }
 
@@ -56,6 +58,7 @@ error() {
 MACHINE=${MACHINE:=""}
 KERNEL=${KERNEL:=""}
 ROOTFS=${ROOTFS:=""}
+VM=${VM:=""}
 FSTYPE=""
 LAZY_ROOTFS=""
 SCRIPT_QEMU_OPT=""
@@ -84,6 +87,10 @@ process_filename() {
 		    error "conflicting FSTYPE types [$FSTYPE] and [$EXT]"
 		fi
 		;;
+	/vmdk/)
+		FSTYPE=$EXT
+		VM=$filename
+		;;
 	*)
 		error "unknown file arg [$filename]"
 		;;
@@ -192,19 +199,27 @@ elif [ ! -w /dev/net/tun ] ; then
 fi
 
 # Report errors for missing combinations of options
-if [ -z "$MACHINE" -a -z "$KERNEL" ]; then
-    error "you must specify at least a MACHINE or KERNEL argument"
+if [ -z "$MACHINE" -a -z "$KERNEL" -a -z "$VM" ]; then
+    error "you must specify at least a MACHINE, VM, or KERNEL argument"
 fi
 if [ "$FSTYPE" = "nfs" -a -z "$ROOTFS" ]; then
     error "NFS booting without an explicit ROOTFS path is not yet supported"
 fi
 
 if [ -z "$MACHINE" ]; then
-    MACHINE=`basename $KERNEL | sed 's/.*\(qemux86-64\|qemux86\|qemuarm\|qemumips64\|qemumips\|qemuppc\|qemush4\).*/\1/'`
-    if [ -z "$MACHINE" ]; then
-        error "Unable to set MACHINE from kernel filename [$KERNEL]"
+    if [ "x$FSTYPE" = "xvmdk" ]; then
+        MACHINE=`basename $VM | sed 's/.*\(qemux86-64\|qemux86\|qemuarm\|qemumips64\|qemumips\|qemuppc\|qemush4\).*/\1/'`
+        if [ -z "$MACHINE" ]; then
+            error "Unable to set MACHINE from vmdk filename [$VM]"
+        fi
+        echo "Set MACHINE to [$MACHINE] based on vmdk [$VM]"
+    else
+        MACHINE=`basename $KERNEL | sed 's/.*\(qemux86-64\|qemux86\|qemuarm\|qemumips64\|qemumips\|qemuppc\|qemush4\).*/\1/'`
+        if [ -z "$MACHINE" ]; then
+            error "Unable to set MACHINE from kernel filename [$KERNEL]"
+        fi
+        echo "Set MACHINE to [$MACHINE] based on kernel [$KERNEL]"
     fi
-    echo "Set MACHINE to [$MACHINE] based on kernel [$KERNEL]"
 fi
 
 YOCTO_KVM_WIKI="https://wiki.yoctoproject.org/wiki/How_to_enable_KVM_for_Poky_qemu"
@@ -366,7 +381,7 @@ if [ -e "$ROOTFS" -a -z "$FSTYPE" ]; then
     fi
 fi
 
-if [ -z "$KERNEL" ]; then
+if [ -z "$KERNEL" -a "x$FSTYPE" != "xvmdk" ]; then
     setup_tmpdir
     eval kernel_file=\$${machine2}_DEFAULT_KERNEL
     KERNEL=$OE_TMPDIR/deploy/images/$kernel_file
@@ -395,7 +410,7 @@ if [ "$LAZY_ROOTFS" = "true" ]; then
     ROOTFS=$OE_TMPDIR/deploy/images/$ROOTFS-$MACHINE.$FSTYPE
 fi
 
-if [ -z "$ROOTFS" ]; then
+if [ -z "$ROOTFS" -a "x$FSTYPE" != "xvmdk" ]; then
     setup_tmpdir
     T=$OE_TMPDIR/deploy/images
     eval rootfs_list=\$${machine2}_DEFAULT_ROOTFS
@@ -409,8 +424,12 @@ fi
 
 echo ""
 echo "Continuing with the following parameters:"
-echo "KERNEL: [$KERNEL]"
-echo "ROOTFS: [$ROOTFS]"
+if [ "x$FSTYPE" != "xvmdk" ]; then
+    echo "KERNEL: [$KERNEL]"
+    echo "ROOTFS: [$ROOTFS]"
+else
+    echo "VMDK:   [$VM]"
+fi
 echo "FSTYPE: [$FSTYPE]"
 
 setup_sysroot
diff --git a/scripts/runqemu-internal b/scripts/runqemu-internal
index 7ca00f8..fd1304e 100755
--- a/scripts/runqemu-internal
+++ b/scripts/runqemu-internal
@@ -260,13 +260,13 @@ case "$MACHINE" in
     ;;
 esac
 
-if [ ! -f "$KERNEL" ]; then
+if [ ! -f "$KERNEL" -a "x$FSTYPE" != "xvmdk" ]; then
     echo "Error: Kernel image file $KERNEL doesn't exist"
     cleanup
     return
 fi
 
-if [ "$FSTYPE" != "nfs" -a ! -f "$ROOTFS" ]; then
+if [ "$FSTYPE" != "nfs" -a "$FSTYPE" != "vmdk" -a ! -f "$ROOTFS" ]; then
     echo "Error: Image file $ROOTFS doesn't exist"
     cleanup
     return
@@ -341,6 +341,9 @@ if [ "$MACHINE" = "qemux86" ]; then
         KERNCMDLINE="root=/dev/nfs nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
         QEMUOPTIONS="$QEMU_NETWORK_CMD $QEMU_UI_OPTIONS"
     fi
+    if [ "$FSTYPE" = "vmdk" ]; then
+        QEMUOPTIONS="$QEMU_NETWORK_CMD $QEMU_UI_OPTIONS"
+    fi
     # Currently oprofile's event based interrupt mode doesn't work(Bug #828) in
     # qemux86 and qemux86-64. We can use timer interrupt mode for now.
     KERNCMDLINE="$KERNCMDLINE oprofile.timer=1"
@@ -365,6 +368,9 @@ if [ "$MACHINE" = "qemux86-64" ]; then
         KERNCMDLINE="root=/dev/nfs nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
         QEMUOPTIONS="$QEMU_NETWORK_CMD $QEMU_UI_OPTIONS"
     fi
+    if [ "$FSTYPE" = "vmdk" ]; then
+        QEMUOPTIONS="$QEMU_NETWORK_CMD $QEMU_UI_OPTIONS"
+    fi
     # Currently oprofile's event based interrupt mode doesn't work(Bug #828) in
     # qemux86 and qemux86-64. We can use timer interrupt mode for now.
     KERNCMDLINE="$KERNCMDLINE oprofile.timer=1"
@@ -560,8 +566,14 @@ fi
 
 echo "Running $QEMU..."
 # -no-reboot is a mandatory option - see bug #100
-echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
-LD_PRELOAD="$GL_LD_PRELOAD" $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT"
+if [ "$FSTYPE" = "vmdk" ]; then
+    echo $QEMUBIN $VM $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT
+    LD_PRELOAD="$GL_LD_PRELOAD" $QEMUBIN $VM $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT
+else
+    echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
+    LD_PRELOAD="$GL_LD_PRELOAD" $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT"
+fi
+
 
 
 cleanup
-- 
1.8.0


