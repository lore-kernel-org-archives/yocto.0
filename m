Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B599E0159A
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 15:36:52 -0700 (PDT)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 91807B6A00D;
	Wed, 11 Sep 2013 00:36:50 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.0 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from poweramy.fritz.box (ppp-188-174-75-98.dynamic.mnet-online.de
	[188.174.75.98])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 418BBB6A002; 
	Wed, 11 Sep 2013 00:36:50 +0200 (CEST)
From: lists@philipp-wagner.com
To: yocto@yoctoproject.org
Date: Wed, 11 Sep 2013 00:36:32 +0200
Message-Id: <1378852594-13307-3-git-send-email-lists@philipp-wagner.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
References: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Philipp Wagner <mail@philipp-wagner.com>
Subject: [meta-raspberrypi][PATCH 2/4] Remove tabs from recipe
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
X-List-Received-Date: Tue, 10 Sep 2013 22:36:52 -0000

From: Philipp Wagner <mail@philipp-wagner.com>

Signed-off-by: Philipp Wagner <mail@philipp-wagner.com>
---
 recipes-kernel/linux/linux.inc | 174 ++++++++++++++++++++---------------------
 1 file changed, 87 insertions(+), 87 deletions(-)

diff --git a/recipes-kernel/linux/linux.inc b/recipes-kernel/linux/linux.inc
index 493616c..7a8f984 100644
--- a/recipes-kernel/linux/linux.inc
+++ b/recipes-kernel/linux/linux.inc
@@ -21,96 +21,96 @@ CMDLINE_append = " ${CMDLINE_DEBUG}"
 # $1 - Configure variable to be set
 # $2 - value [n/y/value]
 kernel_configure_variable() {
-	# Remove the config
-	CONF_SED_SCRIPT="$CONF_SED_SCRIPT /CONFIG_$1[ =]/d;"
-	if test "$2" = "n"
-	then
-		echo "# CONFIG_$1 is not set" >> ${S}/.config
-	else
-		echo "CONFIG_$1=$2" >> ${S}/.config
-	fi
+    # Remove the config
+    CONF_SED_SCRIPT="$CONF_SED_SCRIPT /CONFIG_$1[ =]/d;"
+    if test "$2" = "n"
+    then
+        echo "# CONFIG_$1 is not set" >> ${S}/.config
+    else
+        echo "CONFIG_$1=$2" >> ${S}/.config
+    fi
 }
 
 do_configure_prepend() {
-	# Clean .config
-	echo "" > ${S}/.config
-	CONF_SED_SCRIPT=""
-
-	# oabi / eabi support
-	if [ "${TARGET_OS}" = "linux-gnueabi" -o  "${TARGET_OS}" = "linux-uclibceabi" ]; then
-		kernel_configure_variable AEABI y
-		if [ "${ARM_KEEP_OABI}" = "1" ] ; then
-			kernel_configure_variable OABI_COMPAT y
-		else
-			kernel_configure_variable OABI_COMPAT n
-		fi
-	else
-		kernel_configure_variable AEABI n
-		kernel_configure_variable OABI_COMPAT n
-	fi
-
-	# Set cmdline
-	kernel_configure_variable CMDLINE "\"${CMDLINE}\""
-
-	# Localversion
-	kernel_configure_variable LOCALVERSION "\"\""
-	kernel_configure_variable LOCALVERSION_AUTO n
-
-	# Udev quirks
-	# Newer versions of udev mandate that sysfs doesn't have deprecated entries
-	if [ "${UDEV_GE_141}" = "1" ] ; then
-		kernel_configure_variable SYSFS_DEPRECATED n
-		kernel_configure_variable SYSFS_DEPRECATED_V2 n
-		kernel_configure_variable HOTPLUG y
-		kernel_configure_variable UEVENT_HELPER_PATH "\"\""
-		kernel_configure_variable UNIX y
-		kernel_configure_variable SYSFS y
-		kernel_configure_variable PROC_FS y
-		kernel_configure_variable TMPFS y
-		kernel_configure_variable INOTIFY_USER y
-		kernel_configure_variable SIGNALFD y
-		kernel_configure_variable TMPFS_POSIX_ACL y
-		kernel_configure_variable BLK_DEV_BSG y
-		kernel_configure_variable DEVTMPFS y
-		kernel_configure_variable DEVTMPFS_MOUNT y
-	fi
-
-	# Newer inits like systemd need cgroup support
-	if [ "${KERNEL_ENABLE_CGROUPS}" = "1" ] ; then
-		kernel_configure_variable CGROUP_SCHED y
-		kernel_configure_variable CGROUPS y
-		kernel_configure_variable CGROUP_NS y
-		kernel_configure_variable CGROUP_FREEZER y
-		kernel_configure_variable CGROUP_DEVICE y
-		kernel_configure_variable CPUSETS y
-		kernel_configure_variable PROC_PID_CPUSET y
-		kernel_configure_variable CGROUP_CPUACCT y
-		kernel_configure_variable RESOURCE_COUNTERS y
-	fi
-
-	# root-over-nfs-over-usb-eth support. Limited, but should cover some cases
-	# Enable this by setting a proper CMDLINE_NFSROOT_USB.
-	if [ ! -z "${CMDLINE_NFSROOT_USB}" ]; then
-		oenote "Configuring the kernel for root-over-nfs-over-usb-eth with CMDLINE ${CMDLINE_NFSROOT_USB}"
-		kernel_configure_variable INET y
-		kernel_configure_variable IP_PNP y
-		kernel_configure_variable USB_GADGET y
-		kernel_configure_variable USB_GADGET_SELECTED y
-		kernel_configure_variable USB_ETH y
-		kernel_configure_variable NFS_FS y
-		kernel_configure_variable ROOT_NFS y
-		kernel_configure_variable ROOT_NFS y
-		kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
-	fi
-
-	# Activate CONFIG_LEGACY_PTYS
-	kernel_configure_variable LEGACY_PTYS y
-
-	# Keep this the last line
-	# Remove all modified configs and add the rest to .config
-	sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${S}/.config'
-
-	yes '' | oe_runmake oldconfig
+    # Clean .config
+    echo "" > ${S}/.config
+    CONF_SED_SCRIPT=""
+
+    # oabi / eabi support
+    if [ "${TARGET_OS}" = "linux-gnueabi" -o  "${TARGET_OS}" = "linux-uclibceabi" ]; then
+        kernel_configure_variable AEABI y
+        if [ "${ARM_KEEP_OABI}" = "1" ] ; then
+            kernel_configure_variable OABI_COMPAT y
+        else
+            kernel_configure_variable OABI_COMPAT n
+        fi
+    else
+        kernel_configure_variable AEABI n
+        kernel_configure_variable OABI_COMPAT n
+    fi
+
+    # Set cmdline
+    kernel_configure_variable CMDLINE "\"${CMDLINE}\""
+
+    # Localversion
+    kernel_configure_variable LOCALVERSION "\"\""
+    kernel_configure_variable LOCALVERSION_AUTO n
+
+    # Udev quirks
+    # Newer versions of udev mandate that sysfs doesn't have deprecated entries
+    if [ "${UDEV_GE_141}" = "1" ] ; then
+        kernel_configure_variable SYSFS_DEPRECATED n
+        kernel_configure_variable SYSFS_DEPRECATED_V2 n
+        kernel_configure_variable HOTPLUG y
+        kernel_configure_variable UEVENT_HELPER_PATH "\"\""
+        kernel_configure_variable UNIX y
+        kernel_configure_variable SYSFS y
+        kernel_configure_variable PROC_FS y
+        kernel_configure_variable TMPFS y
+        kernel_configure_variable INOTIFY_USER y
+        kernel_configure_variable SIGNALFD y
+        kernel_configure_variable TMPFS_POSIX_ACL y
+        kernel_configure_variable BLK_DEV_BSG y
+        kernel_configure_variable DEVTMPFS y
+        kernel_configure_variable DEVTMPFS_MOUNT y
+    fi
+
+    # Newer inits like systemd need cgroup support
+    if [ "${KERNEL_ENABLE_CGROUPS}" = "1" ] ; then
+        kernel_configure_variable CGROUP_SCHED y
+        kernel_configure_variable CGROUPS y
+        kernel_configure_variable CGROUP_NS y
+        kernel_configure_variable CGROUP_FREEZER y
+        kernel_configure_variable CGROUP_DEVICE y
+        kernel_configure_variable CPUSETS y
+        kernel_configure_variable PROC_PID_CPUSET y
+        kernel_configure_variable CGROUP_CPUACCT y
+        kernel_configure_variable RESOURCE_COUNTERS y
+    fi
+
+    # root-over-nfs-over-usb-eth support. Limited, but should cover some cases
+    # Enable this by setting a proper CMDLINE_NFSROOT_USB.
+    if [ ! -z "${CMDLINE_NFSROOT_USB}" ]; then
+        oenote "Configuring the kernel for root-over-nfs-over-usb-eth with CMDLINE ${CMDLINE_NFSROOT_USB}"
+        kernel_configure_variable INET y
+        kernel_configure_variable IP_PNP y
+        kernel_configure_variable USB_GADGET y
+        kernel_configure_variable USB_GADGET_SELECTED y
+        kernel_configure_variable USB_ETH y
+        kernel_configure_variable NFS_FS y
+        kernel_configure_variable ROOT_NFS y
+        kernel_configure_variable ROOT_NFS y
+        kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
+    fi
+
+    # Activate CONFIG_LEGACY_PTYS
+    kernel_configure_variable LEGACY_PTYS y
+
+    # Keep this the last line
+    # Remove all modified configs and add the rest to .config
+    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${S}/.config'
+
+    yes '' | oe_runmake oldconfig
 }
 
 # Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
-- 
1.8.1.4

