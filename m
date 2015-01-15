Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE253E00942; Thu, 15 Jan 2015 14:33:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-05.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41606E00757
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 14:33:06 -0800 (PST)
X-Halon-ID: 93ba0664-9d06-11e4-bf52-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [95.197.59.95])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 23:33:49 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu, 15 Jan 2015 23:32:52 +0100
Message-Id: <629ef863ed68ab685847e71ab963164c5f1bc7df.1421360572.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1421360572.git.petter@technux.se>
References: <cover.1421360572.git.petter@technux.se>
In-Reply-To: <cover.1421360572.git.petter@technux.se>
References: <cover.1421360572.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: fix do_configure failure
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
X-List-Received-Date: Thu, 15 Jan 2015 22:33:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When building against newer yocto project releases below failure
occurs.

| DEBUG: Executing shell function do_configure
| NOTE: make oldconfig
| make: *** No rule to make target `oldconfig'.  Stop.
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure

Fix this by trying to adapt more of the standard mechanism
that exists in yocto, in order to build "custom kernels".

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 recipes-kernel/linux/linux-raspberrypi.inc       | 8 +++++---
 recipes-kernel/linux/linux-raspberrypi/defconfig | 1 +
 recipes-kernel/linux/linux.inc                   | 9 +++++----
 3 files changed, 11 insertions(+), 7 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/defconfig

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index e756b57..4145b1a 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -5,12 +5,14 @@ SECTION = "kernel"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
 
+SRC_URI += " \
+        file://defconfig \
+        "
+
 COMPATIBLE_MACHINE = "raspberrypi"
 
 PV_append = "+git${SRCREV}"
 
-S = "${WORKDIR}/git"
-
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG = "bcmrpi_defconfig"
 
@@ -19,7 +21,7 @@ CMDLINE_raspberrypi = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA
 
 UDEV_GE_141 ?= "1"
 
-do_configure_prepend() {
+do_kernel_configme_prepend() {
     install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
 }
 
diff --git a/recipes-kernel/linux/linux-raspberrypi/defconfig b/recipes-kernel/linux/linux-raspberrypi/defconfig
new file mode 100644
index 0000000..ecbf32c
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi/defconfig
@@ -0,0 +1 @@
+# Dummy file to get through do_kernel_configme.
diff --git a/recipes-kernel/linux/linux.inc b/recipes-kernel/linux/linux.inc
index 7a8f984..fae78b7 100644
--- a/recipes-kernel/linux/linux.inc
+++ b/recipes-kernel/linux/linux.inc
@@ -5,6 +5,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
 
 inherit kernel siteinfo
+require recipes-kernel/linux/linux-yocto.inc
 
 # Enable OABI compat for people stuck with obsolete userspace
 ARM_KEEP_OABI ?= "1"
@@ -25,15 +26,15 @@ kernel_configure_variable() {
     CONF_SED_SCRIPT="$CONF_SED_SCRIPT /CONFIG_$1[ =]/d;"
     if test "$2" = "n"
     then
-        echo "# CONFIG_$1 is not set" >> ${S}/.config
+        echo "# CONFIG_$1 is not set" >> ${B}/.config
     else
-        echo "CONFIG_$1=$2" >> ${S}/.config
+        echo "CONFIG_$1=$2" >> ${B}/.config
     fi
 }
 
 do_configure_prepend() {
     # Clean .config
-    echo "" > ${S}/.config
+    echo "" > ${B}/.config
     CONF_SED_SCRIPT=""
 
     # oabi / eabi support
@@ -108,7 +109,7 @@ do_configure_prepend() {
 
     # Keep this the last line
     # Remove all modified configs and add the rest to .config
-    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${S}/.config'
+    sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
 
     yes '' | oe_runmake oldconfig
 }
-- 
1.9.1


