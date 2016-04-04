Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1536EE0077F; Mon,  4 Apr 2016 11:48:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [149.210.149.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 335 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Apr 2016 11:48:45 PDT
Received: from outbound1.mail.transip.nl (outbound1.mail.transip.nl
	[149.210.149.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9B8EE00522
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 11:48:45 -0700 (PDT)
Received: from submission1.mail.transip.nl (submission1.mail.transip.nl
	[IPv6:2a01:7c8:7c8::65])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 3qf1892hs0zSGFh
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 20:43:05 +0200 (CEST)
Received: from [127.0.0.1] (dhcp-077-250-235-241.chello.nl [77.250.235.241])
	by submission1.mail.transip.nl (Postfix) with ESMTPA id 3qf1886St9z2Xtj
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 20:43:04 +0200 (CEST)
To: yocto@yoctoproject.org
From: Herrie <me@herrie.org>
Message-ID: <5702B520.6060608@herrie.org>
Date: Mon, 4 Apr 2016 20:40:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.1
MIME-Version: 1.0
X-Antivirus: avast! (VPS 160404-0, 04/04/2016), Outbound message
X-Antivirus-Status: Clean
X-Scanned-By: ClueGetter at submission1.mail.transip.nl
X-Report-Abuse-To: abuse@transip.nl
Subject: [meta-raspberrypi] [patch] linux-raspberrypi_Rename_linux.inc_to_linux-rpi.inc
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
X-List-Received-Date: Mon, 04 Apr 2016 18:48:50 -0000
X-Groupsio-MsgNum: 29287
Content-Type: multipart/mixed; boundary="------------030801000109000604040206"

--------------030801000109000604040206
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

 From 164d6ec1b054fa241e65ac4961d204edd9965061 Mon Sep 17 00:00:00 2001
From: Alan Stice <alan@alanstice.com>
Date: Thu, 10 Mar 2016 08:52:07 -0800
Subject: [PATCH] linux-raspberrypi: Rename linux.inc to linux-rpi.inc Rename
  linux.inc to prevent it from impacting other machines while building 
multiple targets with same architecture sharing sstate.

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




--------------030801000109000604040206
Content-Type: text/plain; charset=UTF-8;
 name="linux-raspberrypi_Rename_linux.inc_to_linux-rpi.inc.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename*0="linux-raspberrypi_Rename_linux.inc_to_linux-rpi.inc.patch"

RnJvbSAxNjRkNmVjMWIwNTRmYTI0MWU2NWFjNDk2MWQyMDRlZGQ5OTY1MDYxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBBbGFuIFN0aWNlIDxhbGFuQGFsYW5zdGljZS5jb20+CkRhdGU6
IFRodSwgMTAgTWFyIDIwMTYgMDg6NTI6MDcgLTA4MDAKU3ViamVjdDogW1BBVENIXSBsaW51eC1y
YXNwYmVycnlwaTogUmVuYW1lIGxpbnV4LmluYyB0byBsaW51eC1ycGkuaW5jIFJlbmFtZQogbGlu
dXguaW5jIHRvIHByZXZlbnQgaXQgZnJvbSBpbXBhY3Rpbmcgb3RoZXIgbWFjaGluZXMKClNpZ25l
ZC1vZmYtYnk6IEFsYW4gU3RpY2UgPGFsYW5AYWxhbnN0aWNlLmNvbT4KLS0tCiByZWNpcGVzLWtl
cm5lbC9saW51eC9saW51eC1yYXNwYmVycnlwaS5pbmMgfCAgIDIgKy0KIHJlY2lwZXMta2VybmVs
L2xpbnV4L2xpbnV4LXJwaS5pbmMgICAgICAgICB8IDEzMiArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwogcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXguaW5jICAgICAgICAgICAgIHwgMTMy
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDEzMyBpbnNl
cnRpb25zKCspLCAxMzMgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgcmVjaXBlcy1r
ZXJuZWwvbGludXgvbGludXgtcnBpLmluYwogZGVsZXRlIG1vZGUgMTAwNjQ0IHJlY2lwZXMta2Vy
bmVsL2xpbnV4L2xpbnV4LmluYwoKZGlmZiAtLWdpdCBhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xp
bnV4LXJhc3BiZXJyeXBpLmluYyBiL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXJhc3BiZXJy
eXBpLmluYwppbmRleCAyNGU3ZmUyLi43YWIxZGUyIDEwMDY0NAotLS0gYS9yZWNpcGVzLWtlcm5l
bC9saW51eC9saW51eC1yYXNwYmVycnlwaS5pbmMKKysrIGIvcmVjaXBlcy1rZXJuZWwvbGludXgv
bGludXgtcmFzcGJlcnJ5cGkuaW5jCkBAIC0xLDQgKzEsNCBAQAotcmVxdWlyZSBsaW51eC5pbmMK
K3JlcXVpcmUgbGludXgtcnBpLmluYwogaW5oZXJpdCBsaW51eC1yYXNwYmVycnlwaS1iYXNlCiAK
IERFU0NSSVBUSU9OID0gIkxpbnV4IEtlcm5lbCBmb3IgUmFzcGJlcnJ5IFBpIgpkaWZmIC0tZ2l0
IGEvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgtcnBpLmluYyBiL3JlY2lwZXMta2VybmVsL2xp
bnV4L2xpbnV4LXJwaS5pbmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMC4uZmFl
NzhiNwotLS0gL2Rldi9udWxsCisrKyBiL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXJwaS5p
bmMKQEAgLTAsMCArMSwxMzIgQEAKK0RFU0NSSVBUSU9OID0gIkxpbnV4IEtlcm5lbCIKK1NFQ1RJ
T04gPSAia2VybmVsIgorTElDRU5TRSA9ICJHUEx2MiIKKworTElDX0ZJTEVTX0NIS1NVTSA9ICJm
aWxlOi8vQ09QWUlORzttZDU9ZDc4MTBmYWI3NDg3ZmIwYWFkMzI3Yjc2ZjFiZTdjZDciCisKK2lu
aGVyaXQga2VybmVsIHNpdGVpbmZvCityZXF1aXJlIHJlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4
LXlvY3RvLmluYworCisjIEVuYWJsZSBPQUJJIGNvbXBhdCBmb3IgcGVvcGxlIHN0dWNrIHdpdGgg
b2Jzb2xldGUgdXNlcnNwYWNlCitBUk1fS0VFUF9PQUJJID89ICIxIgorCisjIFF1aXJrIGZvciB1
ZGV2IGdyZWF0ZXIgb3IgZXF1YWwgMTQxCitVREVWX0dFXzE0MSA/PSAiMSIKKworIyBTZXQgdGhl
IHZlcmJvc2l0eSBvZiBrZXJuZWwgbWVzc2FnZXMgZHVyaW5nIHJ1bnRpbWUKKyMgWW91IGNhbiBk
ZWZpbmUgQ01ETElORV9ERUJVRyBpbiB5b3VyIGxvY2FsLmNvbmYgb3IgZGlzdHJvLmNvbmYgdG8g
b3ZlcnJpZGUgdGhpcyBiZWhhdmlvdXIKK0NNRExJTkVfREVCVUcgPz0gJyR7QGJhc2VfY29uZGl0
aW9uYWwoIkRJU1RST19UWVBFIiwgInJlbGVhc2UiLCAicXVpZXQiLCAiZGVidWciLCBkKX0nCitD
TURMSU5FX2FwcGVuZCA9ICIgJHtDTURMSU5FX0RFQlVHfSIKKworIyBTZXQgYSB2YXJpYWJsZSBp
biAuY29uZmlndXJlCisjICQxIC0gQ29uZmlndXJlIHZhcmlhYmxlIHRvIGJlIHNldAorIyAkMiAt
IHZhbHVlIFtuL3kvdmFsdWVdCitrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlKCkgeworICAgICMg
UmVtb3ZlIHRoZSBjb25maWcKKyAgICBDT05GX1NFRF9TQ1JJUFQ9IiRDT05GX1NFRF9TQ1JJUFQg
L0NPTkZJR18kMVsgPV0vZDsiCisgICAgaWYgdGVzdCAiJDIiID0gIm4iCisgICAgdGhlbgorICAg
ICAgICBlY2hvICIjIENPTkZJR18kMSBpcyBub3Qgc2V0IiA+PiAke0J9Ly5jb25maWcKKyAgICBl
bHNlCisgICAgICAgIGVjaG8gIkNPTkZJR18kMT0kMiIgPj4gJHtCfS8uY29uZmlnCisgICAgZmkK
K30KKworZG9fY29uZmlndXJlX3ByZXBlbmQoKSB7CisgICAgIyBDbGVhbiAuY29uZmlnCisgICAg
ZWNobyAiIiA+ICR7Qn0vLmNvbmZpZworICAgIENPTkZfU0VEX1NDUklQVD0iIgorCisgICAgIyBv
YWJpIC8gZWFiaSBzdXBwb3J0CisgICAgaWYgWyAiJHtUQVJHRVRfT1N9IiA9ICJsaW51eC1nbnVl
YWJpIiAtbyAgIiR7VEFSR0VUX09TfSIgPSAibGludXgtdWNsaWJjZWFiaSIgXTsgdGhlbgorICAg
ICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIEFFQUJJIHkKKyAgICAgICAgaWYgWyAiJHtB
Uk1fS0VFUF9PQUJJfSIgPSAiMSIgXSA7IHRoZW4KKyAgICAgICAgICAgIGtlcm5lbF9jb25maWd1
cmVfdmFyaWFibGUgT0FCSV9DT01QQVQgeQorICAgICAgICBlbHNlCisgICAgICAgICAgICBrZXJu
ZWxfY29uZmlndXJlX3ZhcmlhYmxlIE9BQklfQ09NUEFUIG4KKyAgICAgICAgZmkKKyAgICBlbHNl
CisgICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgQUVBQkkgbgorICAgICAgICBrZXJu
ZWxfY29uZmlndXJlX3ZhcmlhYmxlIE9BQklfQ09NUEFUIG4KKyAgICBmaQorCisgICAgIyBTZXQg
Y21kbGluZQorICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgQ01ETElORSAiXCIke0NNRExJ
TkV9XCIiCisKKyAgICAjIExvY2FsdmVyc2lvbgorICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFi
bGUgTE9DQUxWRVJTSU9OICJcIlwiIgorICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgTE9D
QUxWRVJTSU9OX0FVVE8gbgorCisgICAgIyBVZGV2IHF1aXJrcworICAgICMgTmV3ZXIgdmVyc2lv
bnMgb2YgdWRldiBtYW5kYXRlIHRoYXQgc3lzZnMgZG9lc24ndCBoYXZlIGRlcHJlY2F0ZWQgZW50
cmllcworICAgIGlmIFsgIiR7VURFVl9HRV8xNDF9IiA9ICIxIiBdIDsgdGhlbgorICAgICAgICBr
ZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIFNZU0ZTX0RFUFJFQ0FURUQgbgorICAgICAgICBrZXJu
ZWxfY29uZmlndXJlX3ZhcmlhYmxlIFNZU0ZTX0RFUFJFQ0FURURfVjIgbgorICAgICAgICBrZXJu
ZWxfY29uZmlndXJlX3ZhcmlhYmxlIEhPVFBMVUcgeQorICAgICAgICBrZXJuZWxfY29uZmlndXJl
X3ZhcmlhYmxlIFVFVkVOVF9IRUxQRVJfUEFUSCAiXCJcIiIKKyAgICAgICAga2VybmVsX2NvbmZp
Z3VyZV92YXJpYWJsZSBVTklYIHkKKyAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBT
WVNGUyB5CisgICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgUFJPQ19GUyB5CisgICAg
ICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgVE1QRlMgeQorICAgICAgICBrZXJuZWxfY29u
ZmlndXJlX3ZhcmlhYmxlIElOT1RJRllfVVNFUiB5CisgICAgICAgIGtlcm5lbF9jb25maWd1cmVf
dmFyaWFibGUgU0lHTkFMRkQgeQorICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIFRN
UEZTX1BPU0lYX0FDTCB5CisgICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgQkxLX0RF
Vl9CU0cgeQorICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIERFVlRNUEZTIHkKKyAg
ICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBERVZUTVBGU19NT1VOVCB5CisgICAgZmkK
KworICAgICMgTmV3ZXIgaW5pdHMgbGlrZSBzeXN0ZW1kIG5lZWQgY2dyb3VwIHN1cHBvcnQKKyAg
ICBpZiBbICIke0tFUk5FTF9FTkFCTEVfQ0dST1VQU30iID0gIjEiIF0gOyB0aGVuCisgICAgICAg
IGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgQ0dST1VQX1NDSEVEIHkKKyAgICAgICAga2VybmVs
X2NvbmZpZ3VyZV92YXJpYWJsZSBDR1JPVVBTIHkKKyAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92
YXJpYWJsZSBDR1JPVVBfTlMgeQorICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIENH
Uk9VUF9GUkVFWkVSIHkKKyAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBDR1JPVVBf
REVWSUNFIHkKKyAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBDUFVTRVRTIHkKKyAg
ICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBQUk9DX1BJRF9DUFVTRVQgeQorICAgICAg
ICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIENHUk9VUF9DUFVBQ0NUIHkKKyAgICAgICAga2Vy
bmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBSRVNPVVJDRV9DT1VOVEVSUyB5CisgICAgZmkKKworICAg
ICMgcm9vdC1vdmVyLW5mcy1vdmVyLXVzYi1ldGggc3VwcG9ydC4gTGltaXRlZCwgYnV0IHNob3Vs
ZCBjb3ZlciBzb21lIGNhc2VzCisgICAgIyBFbmFibGUgdGhpcyBieSBzZXR0aW5nIGEgcHJvcGVy
IENNRExJTkVfTkZTUk9PVF9VU0IuCisgICAgaWYgWyAhIC16ICIke0NNRExJTkVfTkZTUk9PVF9V
U0J9IiBdOyB0aGVuCisgICAgICAgIG9lbm90ZSAiQ29uZmlndXJpbmcgdGhlIGtlcm5lbCBmb3Ig
cm9vdC1vdmVyLW5mcy1vdmVyLXVzYi1ldGggd2l0aCBDTURMSU5FICR7Q01ETElORV9ORlNST09U
X1VTQn0iCisgICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgSU5FVCB5CisgICAgICAg
IGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgSVBfUE5QIHkKKyAgICAgICAga2VybmVsX2NvbmZp
Z3VyZV92YXJpYWJsZSBVU0JfR0FER0VUIHkKKyAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJp
YWJsZSBVU0JfR0FER0VUX1NFTEVDVEVEIHkKKyAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJp
YWJsZSBVU0JfRVRIIHkKKyAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBORlNfRlMg
eQorICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIFJPT1RfTkZTIHkKKyAgICAgICAg
a2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBST09UX05GUyB5CisgICAgICAgIGtlcm5lbF9jb25m
aWd1cmVfdmFyaWFibGUgQ01ETElORSAiXCIke0NNRExJTkVfTkZTUk9PVF9VU0J9XCIiCisgICAg
ZmkKKworICAgICMgQWN0aXZhdGUgQ09ORklHX0xFR0FDWV9QVFlTCisgICAga2VybmVsX2NvbmZp
Z3VyZV92YXJpYWJsZSBMRUdBQ1lfUFRZUyB5CisKKyAgICAjIEtlZXAgdGhpcyB0aGUgbGFzdCBs
aW5lCisgICAgIyBSZW1vdmUgYWxsIG1vZGlmaWVkIGNvbmZpZ3MgYW5kIGFkZCB0aGUgcmVzdCB0
byAuY29uZmlnCisgICAgc2VkIC1lICIke0NPTkZfU0VEX1NDUklQVH0iIDwgJyR7V09SS0RJUn0v
ZGVmY29uZmlnJyA+PiAnJHtCfS8uY29uZmlnJworCisgICAgeWVzICcnIHwgb2VfcnVubWFrZSBv
bGRjb25maWcKK30KKworIyBBdXRvbWF0aWNhbGx5IGRlcGVuZCBvbiBsem9wLW5hdGl2ZSBpZiBD
T05GSUdfS0VSTkVMX0xaTyBpcyBlbmFibGVkCitweXRob24gKCkgeworICAgIHRyeToKKyAgICAg
ICAgZGVmY29uZmlnID0gYmIuZmV0Y2gyLmxvY2FscGF0aCgnZmlsZTovL2RlZmNvbmZpZycsIGQp
CisgICAgZXhjZXB0IGJiLmZldGNoMi5GZXRjaEVycm9yOgorICAgICAgICByZXR1cm4KKworICAg
IHRyeToKKyAgICAgICAgY29uZmlnZmlsZSA9IG9wZW4oZGVmY29uZmlnKQorICAgIGV4Y2VwdCBJ
T0Vycm9yOgorICAgICAgICByZXR1cm4KKworICAgIGlmICdDT05GSUdfS0VSTkVMX0xaTz15XG4n
IGluIGNvbmZpZ2ZpbGUucmVhZGxpbmVzKCk6CisgICAgICAgIGRlcGVuZHMgPSBkLmdldFZhcign
REVQRU5EUycsIEZhbHNlKQorICAgICAgICBkLnNldFZhcignREVQRU5EUycsIGRlcGVuZHMgKyAn
IGx6b3AtbmF0aXZlJykKK30KZGlmZiAtLWdpdCBhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4
LmluYyBiL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LmluYwpkZWxldGVkIGZpbGUgbW9kZSAx
MDA2NDQKaW5kZXggZmFlNzhiNy4uMDAwMDAwMAotLS0gYS9yZWNpcGVzLWtlcm5lbC9saW51eC9s
aW51eC5pbmMKKysrIC9kZXYvbnVsbApAQCAtMSwxMzIgKzAsMCBAQAotREVTQ1JJUFRJT04gPSAi
TGludXggS2VybmVsIgotU0VDVElPTiA9ICJrZXJuZWwiCi1MSUNFTlNFID0gIkdQTHYyIgotCi1M
SUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZSU5HO21kNT1kNzgxMGZhYjc0ODdmYjBhYWQz
MjdiNzZmMWJlN2NkNyIKLQotaW5oZXJpdCBrZXJuZWwgc2l0ZWluZm8KLXJlcXVpcmUgcmVjaXBl
cy1rZXJuZWwvbGludXgvbGludXgteW9jdG8uaW5jCi0KLSMgRW5hYmxlIE9BQkkgY29tcGF0IGZv
ciBwZW9wbGUgc3R1Y2sgd2l0aCBvYnNvbGV0ZSB1c2Vyc3BhY2UKLUFSTV9LRUVQX09BQkkgPz0g
IjEiCi0KLSMgUXVpcmsgZm9yIHVkZXYgZ3JlYXRlciBvciBlcXVhbCAxNDEKLVVERVZfR0VfMTQx
ID89ICIxIgotCi0jIFNldCB0aGUgdmVyYm9zaXR5IG9mIGtlcm5lbCBtZXNzYWdlcyBkdXJpbmcg
cnVudGltZQotIyBZb3UgY2FuIGRlZmluZSBDTURMSU5FX0RFQlVHIGluIHlvdXIgbG9jYWwuY29u
ZiBvciBkaXN0cm8uY29uZiB0byBvdmVycmlkZSB0aGlzIGJlaGF2aW91cgotQ01ETElORV9ERUJV
RyA/PSAnJHtAYmFzZV9jb25kaXRpb25hbCgiRElTVFJPX1RZUEUiLCAicmVsZWFzZSIsICJxdWll
dCIsICJkZWJ1ZyIsIGQpfScKLUNNRExJTkVfYXBwZW5kID0gIiAke0NNRExJTkVfREVCVUd9Igot
Ci0jIFNldCBhIHZhcmlhYmxlIGluIC5jb25maWd1cmUKLSMgJDEgLSBDb25maWd1cmUgdmFyaWFi
bGUgdG8gYmUgc2V0Ci0jICQyIC0gdmFsdWUgW24veS92YWx1ZV0KLWtlcm5lbF9jb25maWd1cmVf
dmFyaWFibGUoKSB7Ci0gICAgIyBSZW1vdmUgdGhlIGNvbmZpZwotICAgIENPTkZfU0VEX1NDUklQ
VD0iJENPTkZfU0VEX1NDUklQVCAvQ09ORklHXyQxWyA9XS9kOyIKLSAgICBpZiB0ZXN0ICIkMiIg
PSAibiIKLSAgICB0aGVuCi0gICAgICAgIGVjaG8gIiMgQ09ORklHXyQxIGlzIG5vdCBzZXQiID4+
ICR7Qn0vLmNvbmZpZwotICAgIGVsc2UKLSAgICAgICAgZWNobyAiQ09ORklHXyQxPSQyIiA+PiAk
e0J9Ly5jb25maWcKLSAgICBmaQotfQotCi1kb19jb25maWd1cmVfcHJlcGVuZCgpIHsKLSAgICAj
IENsZWFuIC5jb25maWcKLSAgICBlY2hvICIiID4gJHtCfS8uY29uZmlnCi0gICAgQ09ORl9TRURf
U0NSSVBUPSIiCi0KLSAgICAjIG9hYmkgLyBlYWJpIHN1cHBvcnQKLSAgICBpZiBbICIke1RBUkdF
VF9PU30iID0gImxpbnV4LWdudWVhYmkiIC1vICAiJHtUQVJHRVRfT1N9IiA9ICJsaW51eC11Y2xp
YmNlYWJpIiBdOyB0aGVuCi0gICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgQUVBQkkg
eQotICAgICAgICBpZiBbICIke0FSTV9LRUVQX09BQkl9IiA9ICIxIiBdIDsgdGhlbgotICAgICAg
ICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBPQUJJX0NPTVBBVCB5Ci0gICAgICAgIGVs
c2UKLSAgICAgICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgT0FCSV9DT01QQVQgbgot
ICAgICAgICBmaQotICAgIGVsc2UKLSAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBB
RUFCSSBuCi0gICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgT0FCSV9DT01QQVQgbgot
ICAgIGZpCi0KLSAgICAjIFNldCBjbWRsaW5lCi0gICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJs
ZSBDTURMSU5FICJcIiR7Q01ETElORX1cIiIKLQotICAgICMgTG9jYWx2ZXJzaW9uCi0gICAga2Vy
bmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBMT0NBTFZFUlNJT04gIlwiXCIiCi0gICAga2VybmVsX2Nv
bmZpZ3VyZV92YXJpYWJsZSBMT0NBTFZFUlNJT05fQVVUTyBuCi0KLSAgICAjIFVkZXYgcXVpcmtz
Ci0gICAgIyBOZXdlciB2ZXJzaW9ucyBvZiB1ZGV2IG1hbmRhdGUgdGhhdCBzeXNmcyBkb2Vzbid0
IGhhdmUgZGVwcmVjYXRlZCBlbnRyaWVzCi0gICAgaWYgWyAiJHtVREVWX0dFXzE0MX0iID0gIjEi
IF0gOyB0aGVuCi0gICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgU1lTRlNfREVQUkVD
QVRFRCBuCi0gICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgU1lTRlNfREVQUkVDQVRF
RF9WMiBuCi0gICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgSE9UUExVRyB5Ci0gICAg
ICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgVUVWRU5UX0hFTFBFUl9QQVRIICJcIlwiIgot
ICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIFVOSVggeQotICAgICAgICBrZXJuZWxf
Y29uZmlndXJlX3ZhcmlhYmxlIFNZU0ZTIHkKLSAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJp
YWJsZSBQUk9DX0ZTIHkKLSAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBUTVBGUyB5
Ci0gICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgSU5PVElGWV9VU0VSIHkKLSAgICAg
ICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBTSUdOQUxGRCB5Ci0gICAgICAgIGtlcm5lbF9j
b25maWd1cmVfdmFyaWFibGUgVE1QRlNfUE9TSVhfQUNMIHkKLSAgICAgICAga2VybmVsX2NvbmZp
Z3VyZV92YXJpYWJsZSBCTEtfREVWX0JTRyB5Ci0gICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFy
aWFibGUgREVWVE1QRlMgeQotICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIERFVlRN
UEZTX01PVU5UIHkKLSAgICBmaQotCi0gICAgIyBOZXdlciBpbml0cyBsaWtlIHN5c3RlbWQgbmVl
ZCBjZ3JvdXAgc3VwcG9ydAotICAgIGlmIFsgIiR7S0VSTkVMX0VOQUJMRV9DR1JPVVBTfSIgPSAi
MSIgXSA7IHRoZW4KLSAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBDR1JPVVBfU0NI
RUQgeQotICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIENHUk9VUFMgeQotICAgICAg
ICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIENHUk9VUF9OUyB5Ci0gICAgICAgIGtlcm5lbF9j
b25maWd1cmVfdmFyaWFibGUgQ0dST1VQX0ZSRUVaRVIgeQotICAgICAgICBrZXJuZWxfY29uZmln
dXJlX3ZhcmlhYmxlIENHUk9VUF9ERVZJQ0UgeQotICAgICAgICBrZXJuZWxfY29uZmlndXJlX3Zh
cmlhYmxlIENQVVNFVFMgeQotICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIFBST0Nf
UElEX0NQVVNFVCB5Ci0gICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUgQ0dST1VQX0NQ
VUFDQ1QgeQotICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIFJFU09VUkNFX0NPVU5U
RVJTIHkKLSAgICBmaQotCi0gICAgIyByb290LW92ZXItbmZzLW92ZXItdXNiLWV0aCBzdXBwb3J0
LiBMaW1pdGVkLCBidXQgc2hvdWxkIGNvdmVyIHNvbWUgY2FzZXMKLSAgICAjIEVuYWJsZSB0aGlz
IGJ5IHNldHRpbmcgYSBwcm9wZXIgQ01ETElORV9ORlNST09UX1VTQi4KLSAgICBpZiBbICEgLXog
IiR7Q01ETElORV9ORlNST09UX1VTQn0iIF07IHRoZW4KLSAgICAgICAgb2Vub3RlICJDb25maWd1
cmluZyB0aGUga2VybmVsIGZvciByb290LW92ZXItbmZzLW92ZXItdXNiLWV0aCB3aXRoIENNRExJ
TkUgJHtDTURMSU5FX05GU1JPT1RfVVNCfSIKLSAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJp
YWJsZSBJTkVUIHkKLSAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBJUF9QTlAgeQot
ICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIFVTQl9HQURHRVQgeQotICAgICAgICBr
ZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIFVTQl9HQURHRVRfU0VMRUNURUQgeQotICAgICAgICBr
ZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIFVTQl9FVEggeQotICAgICAgICBrZXJuZWxfY29uZmln
dXJlX3ZhcmlhYmxlIE5GU19GUyB5Ci0gICAgICAgIGtlcm5lbF9jb25maWd1cmVfdmFyaWFibGUg
Uk9PVF9ORlMgeQotICAgICAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIFJPT1RfTkZTIHkK
LSAgICAgICAga2VybmVsX2NvbmZpZ3VyZV92YXJpYWJsZSBDTURMSU5FICJcIiR7Q01ETElORV9O
RlNST09UX1VTQn1cIiIKLSAgICBmaQotCi0gICAgIyBBY3RpdmF0ZSBDT05GSUdfTEVHQUNZX1BU
WVMKLSAgICBrZXJuZWxfY29uZmlndXJlX3ZhcmlhYmxlIExFR0FDWV9QVFlTIHkKLQotICAgICMg
S2VlcCB0aGlzIHRoZSBsYXN0IGxpbmUKLSAgICAjIFJlbW92ZSBhbGwgbW9kaWZpZWQgY29uZmln
cyBhbmQgYWRkIHRoZSByZXN0IHRvIC5jb25maWcKLSAgICBzZWQgLWUgIiR7Q09ORl9TRURfU0NS
SVBUfSIgPCAnJHtXT1JLRElSfS9kZWZjb25maWcnID4+ICcke0J9Ly5jb25maWcnCi0KLSAgICB5
ZXMgJycgfCBvZV9ydW5tYWtlIG9sZGNvbmZpZwotfQotCi0jIEF1dG9tYXRpY2FsbHkgZGVwZW5k
IG9uIGx6b3AtbmF0aXZlIGlmIENPTkZJR19LRVJORUxfTFpPIGlzIGVuYWJsZWQKLXB5dGhvbiAo
KSB7Ci0gICAgdHJ5OgotICAgICAgICBkZWZjb25maWcgPSBiYi5mZXRjaDIubG9jYWxwYXRoKCdm
aWxlOi8vZGVmY29uZmlnJywgZCkKLSAgICBleGNlcHQgYmIuZmV0Y2gyLkZldGNoRXJyb3I6Ci0g
ICAgICAgIHJldHVybgotCi0gICAgdHJ5OgotICAgICAgICBjb25maWdmaWxlID0gb3BlbihkZWZj
b25maWcpCi0gICAgZXhjZXB0IElPRXJyb3I6Ci0gICAgICAgIHJldHVybgotCi0gICAgaWYgJ0NP
TkZJR19LRVJORUxfTFpPPXlcbicgaW4gY29uZmlnZmlsZS5yZWFkbGluZXMoKToKLSAgICAgICAg
ZGVwZW5kcyA9IGQuZ2V0VmFyKCdERVBFTkRTJywgRmFsc2UpCi0gICAgICAgIGQuc2V0VmFyKCdE
RVBFTkRTJywgZGVwZW5kcyArICcgbHpvcC1uYXRpdmUnKQotfQo=

--------------030801000109000604040206--
