Return-Path: <alan@alanstice.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23197E00E28; Mon, 11 Apr 2016 11:36:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_WEB autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [136.166.156.64 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 708F7E00E1D
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 11:35:49 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id q129so15378488pfb.3
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 11:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=alanstice-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=USS+NnDctXRD3F5waBk4EdijpveuzOzZtTOaaDcSMUU=;
	b=u/XXxKNdM6ivr+Df+POcRx/uRlS9sV+Z8Cl1ByY3zCWbiqdHJPfES/k8igxHfUWa0u
	VNf4JZa5eY0N+zDZr7YmatASdt1EBhBB2GeiRSD5smVbJKRv/hXFM0kGDrI61TEHbR4D
	yZL0PrvrFFnAcqU+NB7llsQ+/BJCFx8vpl40i2O/wKQ+cGT75DgfwCTSTpNu3+65ZE1e
	nP+GYKvGqsqkQzYY9pGFzB4OVD47Ziji4GbVinUW9ImQGiJzQQ/FnTQpYu7w7rJR8YOg
	NrNCf8m01qA08yXvhDaanDy05AgO8D8akm3OtgZqj/i3uiXt+frakPkIRzIo7cQgf0De
	JNGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=USS+NnDctXRD3F5waBk4EdijpveuzOzZtTOaaDcSMUU=;
	b=YvbSaN6asTAUeg++VU5C82P28xzGtg1FVNXTv+FaVBvHf7oGaA1pHUvZzK2ZqWHRfB
	1UkB8vjV7+mr3kgzmKkIy4XBgQ7Cvi6b3hKWITxivFqueg/bvWFtZu+ipfOldzuflXcJ
	35SIUGprKFd1wXcu//Dm/45FL55TPvplZugGeWsJL7q9EDtkDUiW6wRmfZzA3/1Sq7zu
	e0fBmGcmBzWpHF077sGNCTgu70CBthY4O2+ejJeygfdTKbQvocEnBWNu9tOL5MglrXwh
	YaVEyI3hspd8gzYqVlSUZCnyGu7igrJcb6ulvKt31o7My1UPhlFG3PfZL7DWum1H9tYq
	aY+Q==
X-Gm-Message-State: AD7BkJJuPL4pj23R/9kKyRBMmElBgdDfR8041A1zsbFkKMik3a8p0sai3raH1dv3zL3yOw==
X-Received: by 10.98.33.208 with SMTP id o77mr35187504pfj.108.1460399748687;
	Mon, 11 Apr 2016 11:35:48 -0700 (PDT)
Received: from BHSMCX1.lgsvl.net ([136.166.156.64])
	by smtp.gmail.com with ESMTPSA id
	c9sm37817207pfd.24.2016.04.11.11.35.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Apr 2016 11:35:48 -0700 (PDT)
From: Alan Stice <alan@alanstice.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Apr 2016 11:35:45 -0700
Message-Id: <1460399745-22611-1-git-send-email-alan@alanstice.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: Rename linux.inc to linux-rpi.inc Rename linux.inc to prevent it from impacting other machines
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
X-List-Received-Date: Mon, 11 Apr 2016 18:36:02 -0000

Signed-off-by: Alan Stice <alan@alanstice.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc |   2 +-
 recipes-kernel/linux/linux-rpi.inc         | 132 +++++++++++++++++++++++++++++
 recipes-kernel/linux/linux.inc             | 132 -----------------------------
 3 files changed, 133 insertions(+), 133 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-rpi.inc
 delete mode 100644 recipes-kernel/linux/linux.inc

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 24e7fe2..7ab1de2 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -1,4 +1,4 @@
-require linux.inc
+require linux-rpi.inc
 inherit linux-raspberrypi-base
 
 DESCRIPTION = "Linux Kernel for Raspberry Pi"
diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
new file mode 100644
index 0000000..fae78b7
--- /dev/null
+++ b/recipes-kernel/linux/linux-rpi.inc
@@ -0,0 +1,132 @@
+DESCRIPTION = "Linux Kernel"
+SECTION = "kernel"
+LICENSE = "GPLv2"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
+
+inherit kernel siteinfo
+require recipes-kernel/linux/linux-yocto.inc
+
+# Enable OABI compat for people stuck with obsolete userspace
+ARM_KEEP_OABI ?= "1"
+
+# Quirk for udev greater or equal 141
+UDEV_GE_141 ?= "1"
+
+# Set the verbosity of kernel messages during runtime
+# You can define CMDLINE_DEBUG in your local.conf or distro.conf to override this behaviour
+CMDLINE_DEBUG ?= '${@base_conditional("DISTRO_TYPE", "release", "quiet", "debug", d)}'
+CMDLINE_append = " ${CMDLINE_DEBUG}"
+
+# Set a variable in .configure
+# $1 - Configure variable to be set
+# $2 - value [n/y/value]
+kernel_configure_variable() {
+    # Remove the config
+    CONF_SED_SCRIPT="$CONF_SED_SCRIPT /CONFIG_$1[ =]/d;"
+    if test "$2" = "n"
+    then
+        echo "# CONFIG_$1 is not set" >> ${B}/.config
+    else
+        echo "CONFIG_$1=$2" >> ${B}/.config
+    fi
+}
+
+do_configure_prepend() {
+    # Clean .config
+    echo "" > ${B}/.config
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
+    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
+
+    yes '' | oe_runmake oldconfig
+}
+
+# Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
+python () {
+    try:
+        defconfig = bb.fetch2.localpath('file://defconfig', d)
+    except bb.fetch2.FetchError:
+        return
+
+    try:
+        configfile = open(defconfig)
+    except IOError:
+        return
+
+    if 'CONFIG_KERNEL_LZO=y\n' in configfile.readlines():
+        depends = d.getVar('DEPENDS', False)
+        d.setVar('DEPENDS', depends + ' lzop-native')
+}
diff --git a/recipes-kernel/linux/linux.inc b/recipes-kernel/linux/linux.inc
deleted file mode 100644
index fae78b7..0000000
--- a/recipes-kernel/linux/linux.inc
+++ /dev/null
@@ -1,132 +0,0 @@
-DESCRIPTION = "Linux Kernel"
-SECTION = "kernel"
-LICENSE = "GPLv2"
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
-
-inherit kernel siteinfo
-require recipes-kernel/linux/linux-yocto.inc
-
-# Enable OABI compat for people stuck with obsolete userspace
-ARM_KEEP_OABI ?= "1"
-
-# Quirk for udev greater or equal 141
-UDEV_GE_141 ?= "1"
-
-# Set the verbosity of kernel messages during runtime
-# You can define CMDLINE_DEBUG in your local.conf or distro.conf to override this behaviour
-CMDLINE_DEBUG ?= '${@base_conditional("DISTRO_TYPE", "release", "quiet", "debug", d)}'
-CMDLINE_append = " ${CMDLINE_DEBUG}"
-
-# Set a variable in .configure
-# $1 - Configure variable to be set
-# $2 - value [n/y/value]
-kernel_configure_variable() {
-    # Remove the config
-    CONF_SED_SCRIPT="$CONF_SED_SCRIPT /CONFIG_$1[ =]/d;"
-    if test "$2" = "n"
-    then
-        echo "# CONFIG_$1 is not set" >> ${B}/.config
-    else
-        echo "CONFIG_$1=$2" >> ${B}/.config
-    fi
-}
-
-do_configure_prepend() {
-    # Clean .config
-    echo "" > ${B}/.config
-    CONF_SED_SCRIPT=""
-
-    # oabi / eabi support
-    if [ "${TARGET_OS}" = "linux-gnueabi" -o  "${TARGET_OS}" = "linux-uclibceabi" ]; then
-        kernel_configure_variable AEABI y
-        if [ "${ARM_KEEP_OABI}" = "1" ] ; then
-            kernel_configure_variable OABI_COMPAT y
-        else
-            kernel_configure_variable OABI_COMPAT n
-        fi
-    else
-        kernel_configure_variable AEABI n
-        kernel_configure_variable OABI_COMPAT n
-    fi
-
-    # Set cmdline
-    kernel_configure_variable CMDLINE "\"${CMDLINE}\""
-
-    # Localversion
-    kernel_configure_variable LOCALVERSION "\"\""
-    kernel_configure_variable LOCALVERSION_AUTO n
-
-    # Udev quirks
-    # Newer versions of udev mandate that sysfs doesn't have deprecated entries
-    if [ "${UDEV_GE_141}" = "1" ] ; then
-        kernel_configure_variable SYSFS_DEPRECATED n
-        kernel_configure_variable SYSFS_DEPRECATED_V2 n
-        kernel_configure_variable HOTPLUG y
-        kernel_configure_variable UEVENT_HELPER_PATH "\"\""
-        kernel_configure_variable UNIX y
-        kernel_configure_variable SYSFS y
-        kernel_configure_variable PROC_FS y
-        kernel_configure_variable TMPFS y
-        kernel_configure_variable INOTIFY_USER y
-        kernel_configure_variable SIGNALFD y
-        kernel_configure_variable TMPFS_POSIX_ACL y
-        kernel_configure_variable BLK_DEV_BSG y
-        kernel_configure_variable DEVTMPFS y
-        kernel_configure_variable DEVTMPFS_MOUNT y
-    fi
-
-    # Newer inits like systemd need cgroup support
-    if [ "${KERNEL_ENABLE_CGROUPS}" = "1" ] ; then
-        kernel_configure_variable CGROUP_SCHED y
-        kernel_configure_variable CGROUPS y
-        kernel_configure_variable CGROUP_NS y
-        kernel_configure_variable CGROUP_FREEZER y
-        kernel_configure_variable CGROUP_DEVICE y
-        kernel_configure_variable CPUSETS y
-        kernel_configure_variable PROC_PID_CPUSET y
-        kernel_configure_variable CGROUP_CPUACCT y
-        kernel_configure_variable RESOURCE_COUNTERS y
-    fi
-
-    # root-over-nfs-over-usb-eth support. Limited, but should cover some cases
-    # Enable this by setting a proper CMDLINE_NFSROOT_USB.
-    if [ ! -z "${CMDLINE_NFSROOT_USB}" ]; then
-        oenote "Configuring the kernel for root-over-nfs-over-usb-eth with CMDLINE ${CMDLINE_NFSROOT_USB}"
-        kernel_configure_variable INET y
-        kernel_configure_variable IP_PNP y
-        kernel_configure_variable USB_GADGET y
-        kernel_configure_variable USB_GADGET_SELECTED y
-        kernel_configure_variable USB_ETH y
-        kernel_configure_variable NFS_FS y
-        kernel_configure_variable ROOT_NFS y
-        kernel_configure_variable ROOT_NFS y
-        kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
-    fi
-
-    # Activate CONFIG_LEGACY_PTYS
-    kernel_configure_variable LEGACY_PTYS y
-
-    # Keep this the last line
-    # Remove all modified configs and add the rest to .config
-    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
-
-    yes '' | oe_runmake oldconfig
-}
-
-# Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
-python () {
-    try:
-        defconfig = bb.fetch2.localpath('file://defconfig', d)
-    except bb.fetch2.FetchError:
-        return
-
-    try:
-        configfile = open(defconfig)
-    except IOError:
-        return
-
-    if 'CONFIG_KERNEL_LZO=y\n' in configfile.readlines():
-        depends = d.getVar('DEPENDS', False)
-        d.setVar('DEPENDS', depends + ' lzop-native')
-}
-- 
2.7.4


