Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F8D1E008EE; Mon,  4 Apr 2016 12:48:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [149.210.149.73 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from outbound2.mail.transip.nl (outbound2.mail.transip.nl
	[149.210.149.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E0BDE006C7
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 12:48:39 -0700 (PDT)
Received: from submission0.mail.transip.nl (submission0.mail.transip.nl
	[IPv6:2a01:7c8:7c8::64])
	by outbound2.mail.transip.nl (Postfix) with ESMTP id 3qf2bg2DBczZC0D;
	Mon,  4 Apr 2016 21:48:31 +0200 (CEST)
Received: from [127.0.0.1] (dhcp-077-250-235-241.chello.nl [77.250.235.241])
	by submission0.mail.transip.nl (Postfix) with ESMTPA id 3qf2bd1D32z2XXb;
	Mon,  4 Apr 2016 21:48:29 +0200 (CEST)
To: Andrei Gherzan <andrei@gherzan.ro>, yocto@yoctoproject.org
References: <5702B520.6060608@herrie.org> <20160404192846.GA6860@resin>
From: Herrie <me@herrie.org>
Message-ID: <5702C473.5020804@herrie.org>
Date: Mon, 4 Apr 2016 21:45:55 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.1
MIME-Version: 1.0
In-Reply-To: <20160404192846.GA6860@resin>
X-Antivirus: avast! (VPS 160404-0, 04/04/2016), Outbound message
X-Antivirus-Status: Clean
X-Scanned-By: ClueGetter at submission0.mail.transip.nl
X-Report-Abuse-To: abuse@transip.nl
Subject: Re: [meta-raspberrypi] [patch] linux-raspberrypi_Rename_linux.inc_to_linux-rpi.inc
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Apr 2016 19:48:42 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Andrei,

Hopefully better like this. Changed it to plain text at my end now for 
below patch

Cheers,
Herman


 From 164d6ec1b054fa241e65ac4961d204edd9965061 Mon Sep 17 00:00:00 2001
From: Alan Stice <alan@alanstice.com>
Date: Thu, 10 Mar 2016 08:52:07 -0800
Subject: [PATCH] linux-raspberrypi: Rename linux.inc to linux-rpi.inc
Rename linux.inc to prevent it from impacting other machines while 
building multiple targets with same architecture sharing sstate.

Signed-off-by: Alan Stice <alan@alanstice.com>
Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
---
  recipes-kernel/linux/linux-raspberrypi.inc |   2 +-
  recipes-kernel/linux/linux-rpi.inc         | 132 
+++++++++++++++++++++++++++++
  recipes-kernel/linux/linux.inc             | 132 
-----------------------------
  3 files changed, 133 insertions(+), 133 deletions(-)
  create mode 100644 recipes-kernel/linux/linux-rpi.inc
  delete mode 100644 recipes-kernel/linux/linux.inc

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc 
b/recipes-kernel/linux/linux-raspberrypi.inc
index 24e7fe2..7ab1de2 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -1,4 +1,4 @@
-require linux.inc
+require linux-rpi.inc
  inherit linux-raspberrypi-base

  DESCRIPTION = "Linux Kernel for Raspberry Pi"
diff --git a/recipes-kernel/linux/linux-rpi.inc 
b/recipes-kernel/linux/linux-rpi.inc
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
+# You can define CMDLINE_DEBUG in your local.conf or distro.conf to 
override this behaviour
+CMDLINE_DEBUG ?= '${@base_conditional("DISTRO_TYPE", "release", 
"quiet", "debug", d)}'
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
+    if [ "${TARGET_OS}" = "linux-gnueabi" -o  "${TARGET_OS}" = 
"linux-uclibceabi" ]; then
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
+    # Newer versions of udev mandate that sysfs doesn't have deprecated 
entries
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
+    # root-over-nfs-over-usb-eth support. Limited, but should cover 
some cases
+    # Enable this by setting a proper CMDLINE_NFSROOT_USB.
+    if [ ! -z "${CMDLINE_NFSROOT_USB}" ]; then
+        oenote "Configuring the kernel for root-over-nfs-over-usb-eth 
with CMDLINE ${CMDLINE_NFSROOT_USB}"
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
-# You can define CMDLINE_DEBUG in your local.conf or distro.conf to 
override this behaviour
-CMDLINE_DEBUG ?= '${@base_conditional("DISTRO_TYPE", "release", 
"quiet", "debug", d)}'
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
-    if [ "${TARGET_OS}" = "linux-gnueabi" -o  "${TARGET_OS}" = 
"linux-uclibceabi" ]; then
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
-    # Newer versions of udev mandate that sysfs doesn't have deprecated 
entries
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
-    # root-over-nfs-over-usb-eth support. Limited, but should cover 
some cases
-    # Enable this by setting a proper CMDLINE_NFSROOT_USB.
-    if [ ! -z "${CMDLINE_NFSROOT_USB}" ]; then
-        oenote "Configuring the kernel for root-over-nfs-over-usb-eth 
with CMDLINE ${CMDLINE_NFSROOT_USB}"
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



