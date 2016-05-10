Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14517E00D1A; Tue, 10 May 2016 03:05:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.181.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out11.electric.net (smtp-out11.electric.net
	[185.38.181.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84FE1E00D1A
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 03:05:50 -0700 (PDT)
Received: from 1b04Y0-0000Jq-Uq by out11a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1b04Y1-0000K9-TA
	for yocto@yoctoproject.org; Tue, 10 May 2016 03:05:49 -0700
Received: by emcmailer; Tue, 10 May 2016 03:05:49 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out11a.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1b04Y0-0000Jq-Uq
	for yocto@yoctoproject.org; Tue, 10 May 2016 03:05:48 -0700
Received: from sestofb11.enea.se (172.21.3.146) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 10 May 2016 12:05:47 +0200
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id 20D432413BE;
	Tue, 10 May 2016 12:05:48 +0200 (CEST)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 10 May 2016 12:05:47 +0200
Message-ID: <1462874748-57412-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-cgl][PATCH 1/2] Added device manager multipath support for root file system
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
X-List-Received-Date: Tue, 10 May 2016 10:05:55 -0000
Content-Type: text/plain

From: Mats Liljegren <mats.liljegren@enea.com>

This is implemented using an initramfs, built by core-image-cgl-initramfs image
recipe. Multipath device configurations are done using kernel boot parameters.
The multipath-root-howto.md explains how to use this.

Also note that the meta-cgl/scripts/conf_setup.sh will now also add a BBMASK
entry to mask out the meta-virtualization's version of multipath-tools, since
we need the newer recipe in the meta-openembedded/meta-oe instead.

Signed-off-by: Mats Liljegren <mats.liljegren@enea.com>
Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/images/core-image-cgl-initramfs.bb |  22 +++
 meta-cgl-common/images/core-image-cgl.bb           |   2 +
 .../packagegroups/packagegroup-cgl-middleware.bb   |   8 +-
 .../recipes-core/initrdscripts/files/init-boot.sh  | 179 +++++++++++++++++++++
 .../initrdscripts/initramfs-cgl-boot_1.0.bb        |  14 ++
 scripts/conf_setup.sh                              |   2 +
 6 files changed, 220 insertions(+), 7 deletions(-)
 create mode 100644 meta-cgl-common/images/core-image-cgl-initramfs.bb
 create mode 100644 meta-cgl-common/recipes-core/initrdscripts/files/init-boot.sh
 create mode 100644 meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb
 create mode 100755 scripts/conf_setup.sh

diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-common/images/core-image-cgl-initramfs.bb
new file mode 100644
index 0000000..845fa07
--- /dev/null
+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
@@ -0,0 +1,22 @@
+require core-image-cgl.bb
+
+# Recipe is based on core-image-minimal.bb
+DESCRIPTION = "Initramfs used to mount multipath device as root file system"
+
+PACKAGE_INSTALL = "initramfs-cgl-boot busybox base-passwd udev ${ROOTFS_BOOTSTRAP_INSTALL}"
+
+# Do not pollute the initrd image with rootfs features
+IMAGE_FEATURES = ""
+
+export IMAGE_BASENAME = "core-image-cgl-initramfs"
+IMAGE_LINGUAS = ""
+
+LICENSE = "MIT"
+
+IMAGE_FSTYPES = "cpio.gz.u-boot"
+IMAGE_CLASSES += "image_types_uboot"
+inherit core-image
+
+IMAGE_ROOTFS_SIZE = "8192"
+
+BAD_RECOMMENDATIONS += "busybox-syslog"
diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cgl-common/images/core-image-cgl.bb
index d12391b..5975601 100644
--- a/meta-cgl-common/images/core-image-cgl.bb
+++ b/meta-cgl-common/images/core-image-cgl.bb
@@ -21,6 +21,8 @@ IMAGE_INSTALL += "\
     kernel-modules \
     "
 
+IMAGE_FSTYPES += " ext3.gz"
+
 # kexec-tools doesn't work on Mips
 KEXECTOOLS_mips ?= ""
 KEXECTOOLS_mipsel ?= ""
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index 448e038..b0c2cac 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -18,14 +18,8 @@ DHCP = " \
     "
 
 MULTIPATH_TOOLS = " \
-    libmpathpersist \
-    mpathpersist \
+    multipath-tools \
     kpartx \
-    libmultipath \
-    multipath \
-    multipathd \
-    libmultipath-dev \
-    libmpathpersist-dev \
     "
 
 RDEPENDS_packagegroup-cgl-middleware = "\
diff --git a/meta-cgl-common/recipes-core/initrdscripts/files/init-boot.sh b/meta-cgl-common/recipes-core/initrdscripts/files/init-boot.sh
new file mode 100644
index 0000000..fcadfc6
--- /dev/null
+++ b/meta-cgl-common/recipes-core/initrdscripts/files/init-boot.sh
@@ -0,0 +1,179 @@
+#!/bin/sh -eu
+
+# Fail function, either called explicitly or when shell will quit
+fail () {
+    # Avoid recursive traps
+    trap '' ERR EXIT
+
+    # If message provided, print it
+    [ -n '${1:-}' ] && echo $@
+
+    # Generic error message and shell access
+    echo "Error occured, giving a shell"
+    exec sh
+}
+
+trap fail ERR EXIT
+
+interrupt () {
+    echo "User interrupt received, giving a shell. When exiting shell, execution will continue."
+    sh
+}
+
+trap interrupt INT
+
+# Find session ID for an iSCSI disk given its IQN name
+iqn_to_sid () {
+    iscsiadm -m session | fgrep $1 | sed -r 's/.*\[([0-9])\].*/\1/'
+}
+
+# Find device name, without path, for an iSCSI disk given its IQN name
+iqn_to_dev () {
+    iscsiadm -m session -r $(iqn_to_sid $1) -P3 | sed -rn 's/.*Attached scsi disk ([a-zA-Z0-9_]+).*/\1/p'
+}
+
+# Parse input parameters expecting name=value pairs.
+# Name only matches known parameters.
+# On match, set variable <name> to value <value>.
+# E.g. given "parse_cmdline trythis="ok, do it"
+# the shell variable "trythis" will now have the value "ok, do it".
+parse_cmdline () {
+    iscsi_chap_user=""
+    iscsi_chap_pwd=""
+    iscsi_dev=""
+    iscsi_debug=0
+
+    while [ -n "${1:-}" ]; do
+        name="${1%%=*}"
+        val="${1#*=}"
+        case $name in
+            iscsi_chap_user|iscsi_chap_pw)
+                eval $name=\"$val\";;
+            iscsi_dev)
+                eval $name=\"$iscsi_dev $val\"
+                ;;
+            iscsi_debug)
+                set -x
+                iscsi_debug=1
+                ;;
+        esac
+        shift
+    done
+
+    [ -n "${iscsi_dev}" ] || fail "Mandatory kernel boot parameter 'iscsi_dev' not given."
+
+}
+
+PATH=/sbin:/bin:/usr/sbin:/usr/bin
+
+echo "Mounting /proc"
+mount -t proc proc /proc
+
+KERNEL_CMDLINE="$(cat /proc/cmdline)"
+
+echo "Parsing kernel parameters"
+parse_cmdline $KERNEL_CMDLINE
+
+echo "Mounting /sys"
+mount -t sysfs sysfs /sys
+
+# udev is needed for multipath
+echo "Starting udev"
+/etc/init.d/udev start
+
+# Add CHAP autenthication, if given as kernel boot parameters
+echo "Configuring iSCSI"
+[ -n "$iscsi_chap_user" -o -n "$iscsi_chap_pw" ] && cat <<EOF >> /etc/iscsi/iscsid.conf
+node.session.auth.authmethod = CHAP
+EOF
+[ -n "$iscsi_chap_user" ] && cat <<EOF >> /etc/iscsi/iscsid.conf
+node.session.auth.username = $iscsi_chap_user
+EOF
+[ -n "$iscsi_chap_pw" ] && cat <<EOF >> /etc/iscsi/iscsid.conf
+node.session.auth.password = $iscsi_chap_pw
+EOF
+
+echo >> /etc/iscsi/iscsid.conf
+
+echo "Starting iSCSI daemon"
+/etc/init.d/iscsid restart
+
+echo "Discovering iSCSI devices"
+
+for dev in $iscsi_dev; do
+    target_ip="${dev%%:*}"
+    dev_name="${dev#*:}"
+    echo "Logging in to iscsi devices: $dev_name, target: $target_ip"
+    iscsiadm --mode discoverydb --type sendtargets --discover --portal $target_ip
+    iscsiadm --mode node --targetname $dev_name --login --portal $target_ip
+done
+
+echo "Configuring multipath"
+cat <<EOF > /etc/multipath.conf
+defaults {
+        path_grouping_policy    multibus
+        # If no path, then queue requests
+        no_path_retry queue
+}
+devices {
+        device {
+                vendor                  IET
+                product                 VIRTUAL-DISK
+                path_grouping_policy    multibus
+        }
+}
+blacklist {
+        devnode ".*"
+}
+blacklist_exceptions {
+$(for dev in $iscsi_dev; do
+    echo "        devnode   \"^$(iqn_to_dev ${dev#*:})\""
+  done)
+        property  ".*"
+}
+EOF
+
+echo "Starting multipath daemon"
+# Make sure lock file directory exists
+mkdir -p /var/lock/subsys/multipathd
+/etc/init.d/multipathd start
+
+mpath_template='/dev/disk/by-id/dm-uuid-mpath-*'
+
+echo "Waiting for mpath device to appear"
+while [ -z "$(ls $mpath_template 2>/dev/null)" ]; do
+    sleep 1
+done
+MPATH_DEV="$(ls $mpath_template)"
+echo "mpath device: $MPATH_DEV"
+
+echo "Mounting mpath device $MPATH_DEV"
+mount $MPATH_DEV /mnt
+
+echo "Stopping multipath daemon"
+# Should be using "/etc/init.d/multipathd stop", but did not work.
+# Got "killall: /sbin/multipathd: no process killed".
+# Kill the process based on the saved pid.
+kill $(cat /run/multipathd.pid)
+
+echo "Moving iscsi pid and lock files"
+cp /run/iscsid.pid /mnt/run/iscsid.pid
+cp /run/lock/iscsi/* /mnt/run/lock/iscsi
+
+# In case iscsi_debug is given, open a shell at this point
+if [ $iscsi_debug -eq 1 ]; then
+    echo "iscsi_debug given, opening a shell. When exiting shell, boot will continue."
+    sh
+fi
+
+# udev needs to be restart when real init runs, so stop it
+echo "Stopping udev"
+/etc/init.d/udev stop
+
+echo "Moving sys, proc and dev mounts to new root"
+mount --move /sys /mnt/sys
+mount --move /proc /mnt/proc
+mount --move /dev /mnt/dev
+
+echo "Switching to new root"
+exec switch_root /mnt /sbin/init $KERNEL_CMDLINE
diff --git a/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb b/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb
new file mode 100644
index 0000000..5265bf0
--- /dev/null
+++ b/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb
@@ -0,0 +1,14 @@
+SUMMARY = "Support for having multipath iSCSI devices as root file system"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=838c366f69b72c5df05c96dff79b35f2"
+SRC_URI = "file://init-boot.sh"
+
+do_install() {
+        install -m 0755 ${WORKDIR}/init-boot.sh ${D}/init
+}
+
+inherit allarch
+
+RDEPENDS_${PN} += "multipath-tools kpartx iscsi-initiator-utils"
+
+FILES_${PN} += " /init "
diff --git a/scripts/conf_setup.sh b/scripts/conf_setup.sh
new file mode 100755
index 0000000..aad8e71
--- /dev/null
+++ b/scripts/conf_setup.sh
@@ -0,0 +1,2 @@
+#!/bin/bash
+echo -e '\nBBMASK = "meta-virtualization/recipes-extended/multipath-tools/multipath-tools_git.bb"' >> conf/local.conf
-- 
1.9.1


