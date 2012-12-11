Return-Path: <twoerner@gmail.com>
Received: from mail-ia0-f182.google.com (mail-ia0-f182.google.com
	[209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09127E0034C
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 17:55:50 -0800 (PST)
Received: by mail-ia0-f182.google.com with SMTP id x2so7812960iad.27
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 17:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=U5fse4diQvP/ZKWGlCBPRLepXG+HlVBQxrSgust8Q5I=;
	b=aMyr+l5TRP19s4d8NoULhCIIhcNMSgJvYzdEwXvMrubJNx/sdAl0So+8LbsRweGvWP
	59B5jSOdr3cRInxXHaKh+y0JPu46R1hmU9lIhdX4d71BF/m2UrR1eKt1SSw0E6RJbTz0
	ObSDe+klxhKooVgxbQsoCL8nuIqz3foH/SzQuy3V0M+6UOs5Gv1cmKW4smBm7RHYuVzb
	xFdliXhBpxXufAHlBH5hfcrkIzL2dM18XDVkVVnVZDm/2dSEMH4xpQ9z0LdbCh0xxOMH
	GVoU/rymggSAJ0Ypl0nsilpGXsmkUuShzmeufbfZRSH55+vo4ejLD50OkVFVO/yKh9zf
	gJLw==
Received: by 10.50.104.232 with SMTP id gh8mr8674208igb.45.1355190950538;
	Mon, 10 Dec 2012 17:55:50 -0800 (PST)
Received: from localhost.localdomain (dsl-67-55-9-50.acanac.net. [67.55.9.50])
	by mx.google.com with ESMTPS id px5sm7639511igc.0.2012.12.10.17.55.48
	(version=SSLv3 cipher=OTHER); Mon, 10 Dec 2012 17:55:49 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Dec 2012 20:55:25 -0500
Message-Id: <1355190925-2727-1-git-send-email-twoerner@gmail.com>
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
X-List-Received-Date: Tue, 11 Dec 2012 01:55:51 -0000

Allow vmdk images to be run through the 'runqemu' facility.
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


