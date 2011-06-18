Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 096F24C80A52
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2011 19:35:46 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Jun 2011 17:35:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,384,1304319600"; d="scan'208";a="14959234"
Received: from unknown (HELO localhost) ([10.255.13.112])
	by orsmga002.jf.intel.com with ESMTP; 17 Jun 2011 17:35:46 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Jun 2011 17:35:29 -0700
Message-Id: <e5423c103c47c9e1c4cd4c9ce2ca877e54cdac03.1308357152.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1308357152.git.dvhart@linux.intel.com>
References: <cover.1308357152.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1308357152.git.dvhart@linux.intel.com>
References: <cover.1308357152.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] beagleboard: add basic audio mixer defaults
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
X-List-Received-Date: Sat, 18 Jun 2011 00:35:47 -0000

We need a generic alsa based mechanism that we can use a bbappend to save
default mixer controls per bsp. Until that is ready, this ensures the Audio Out
on the Beagleboard is enabled out of the box.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/machine/beagleboard.conf           |    3 +
 .../beagleboard-audio/beagleboard-audio.bb         |   30 +++++++++++++
 .../beagleboard-audio/beagleboard-audio            |   44 ++++++++++++++++++++
 3 files changed, 77 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
 create mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 2670691..945744b 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -9,6 +9,9 @@ XSERVER = "xserver-kdrive-fbdev"
 # Ship all kernel modules by default
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
+# Setup sane default mixer settings
+MACHINE_EXTRA_RRECOMMENDS += "beagleboard-audio"
+
 # Allow for MMC booting (required by the NAND-less Beagleboard XM)
 EXTRA_IMAGEDEPENDS += "u-boot x-load"
 
diff --git a/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb b/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
new file mode 100644
index 0000000..b0c2cd7
--- /dev/null
+++ b/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
@@ -0,0 +1,30 @@
+SUMMARY = "Provide a basic init script to enable audio"
+DESCRIPTION = "Set the volume and unmute the Front mixer setting during boot."
+SECTION = "base"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
+
+PR = "r4"
+
+inherit update-rc.d
+
+RDEPENDS = "alsa-utils-amixer"
+
+SRC_URI = "file://beagleboard-audio"
+
+INITSCRIPT_NAME = "beagleboard-audio"
+INITSCRIPT_PARAMS = "defaults 90"
+
+do_install() {
+	install -d ${D}${sysconfdir} \
+	           ${D}${sysconfdir}/init.d
+	install -m 0755 ${WORKDIR}/beagleboard-audio ${D}${sysconfdir}/init.d
+        cat ${WORKDIR}/${INITSCRIPT_NAME} | \
+            sed -e 's,/etc,${sysconfdir},g' \
+                -e 's,/usr/sbin,${sbindir},g' \
+                -e 's,/var,${localstatedir},g' \
+                -e 's,/usr/bin,${bindir},g' \
+                -e 's,/usr,${prefix},g' > ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+        chmod 755 ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+}
+
diff --git a/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio b/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio
new file mode 100644
index 0000000..ed2bd50
--- /dev/null
+++ b/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio
@@ -0,0 +1,44 @@
+#!/bin/sh
+### BEGIN INIT INFO
+# Provides:          beagleboard mixer setup
+# Required-Start:    $syslog
+# Required-Stop:     $syslog
+# Default-Start:     2 3 4 5
+# Default-Stop:      0 1 6
+# Short-Description: Initialize the beagleboard audio mixer
+# Description:       Unmute FRONT and set volume to ~70%.
+### END INIT INFO
+
+# Author: Darren Hart <dvhart@linux.intel.com>
+# Based on /etc/init.d/skeleton
+
+PATH=/sbin:/usr/sbin:/bin:/usr/bin
+DESC="Audio mixer settings"
+NAME=beagleboard-audio
+AMIXER=`which amixer`
+SCRIPTNAME=/etc/init.d/$NAME
+
+# Exit if amixer is not installed
+[ -x "$AMIXER" ] || exit 0
+
+do_start() {
+	# Enable the Headset (Audio Out)
+	$AMIXER sset "Headset" 2 > /dev/null
+	$AMIXER sset "HeadsetL Mixer AudioL1" on > /dev/null
+	$AMIXER sset "HeadsetR Mixer AudioR1" on > /dev/null
+}
+
+case "$1" in
+start)
+	echo "$NAME: setting default mixer settings."
+	do_start
+	;;
+stop)
+	;;
+*)
+	echo "Usage: $SCRIPTNAME {start|stop}" >&2
+	exit 3
+	;;
+esac
+
+exit 0
-- 
1.7.1


