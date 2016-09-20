Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74020E00B9C; Tue, 20 Sep 2016 07:25:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BCC2E00B78
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 07:25:02 -0700 (PDT)
Received: from 1bmLxg-0007kd-UY by out10d.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1bmLxg-0007la-Vg
	for yocto@yoctoproject.org; Tue, 20 Sep 2016 07:23:52 -0700
Received: by emcmailer; Tue, 20 Sep 2016 07:23:52 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10d.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1bmLxg-0007kd-UY
	for yocto@yoctoproject.org; Tue, 20 Sep 2016 07:23:52 -0700
Received: from sestofb11.enea.se (172.21.3.152) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 16:23:51 +0200
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id 2C8B2441599;
	Tue, 20 Sep 2016 16:23:52 +0200 (CEST)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Sep 2016 16:23:52 +0200
Message-ID: <1474381432-28259-4-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1474381432-28259-1-git-send-email-adrian.dudau@enea.com>
References: <1474381432-28259-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-cgl][PATCHv2 3/3] Add initrdscripts
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
X-List-Received-Date: Tue, 20 Sep 2016 14:25:09 -0000
Content-Type: text/plain

These scripts are used to load the rootfs onto multipath devices.

Scripts originally developed by: Mats Liljegren <mats.liljegren@enea.com>

CGL requirements AVL.7.1.*

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 .../recipes-core/initrdscripts/files/init-boot.sh  | 179 +++++++++++++++++++++
 .../initrdscripts/initramfs-cgl-boot_1.0.bb        |  14 ++
 2 files changed, 193 insertions(+)
 create mode 100644 meta-cgl-common/recipes-core/initrdscripts/files/init-boot.sh
 create mode 100644 meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb

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
-- 
1.9.1


