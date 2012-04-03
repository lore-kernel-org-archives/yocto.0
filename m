Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C678AE013FE
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 16:45:22 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Apr 2012 16:45:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="126777925"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.75])
	by azsmga001.ch.intel.com with ESMTP; 03 Apr 2012 16:45:22 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Tue,  3 Apr 2012 16:43:57 -0700
Message-Id: <7a988a33c1d49b6645b55076fe73cb9f2f4f2aaa.1333496206.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
References: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1333496206.git.kishore.k.bodke@intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
Subject: [PATCH 6/7] Cedartrail: Add a new recipe for Audio.
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
X-List-Received-Date: Tue, 03 Apr 2012 23:45:23 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Adding a new recipe for including a Audio
feature for the cedartrail bsp.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../cedartrail-audio/cedartrail-audio.bb           |   30 ++++++++++++++
 .../cedartrail-audio/cedartrail-audio              |   42 ++++++++++++++++++++
 2 files changed, 72 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
 create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio

diff --git a/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
new file mode 100644
index 0000000..9a43f02
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
@@ -0,0 +1,30 @@
+SUMMARY = "Provide a basic init script to enable audio"
+DESCRIPTION = "Set the volume and unmute the Front mixer setting during boot."
+SECTION = "base"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
+
+PR = "r0"
+
+inherit update-rc.d
+
+RDEPENDS = "alsa-utils-amixer"
+
+SRC_URI = "file://cedartrail-audio"
+
+INITSCRIPT_NAME = "cedartrail-audio"
+INITSCRIPT_PARAMS = "defaults 90"
+
+do_install() {
+	install -d ${D}${sysconfdir} \
+	           ${D}${sysconfdir}/init.d
+	install -m 0755 ${WORKDIR}/cedartrail-audio ${D}${sysconfdir}/init.d
+        cat ${WORKDIR}/${INITSCRIPT_NAME} | \
+            sed -e 's,/etc,${sysconfdir},g' \
+                -e 's,/usr/sbin,${sbindir},g' \
+                -e 's,/var,${localstatedir},g' \
+                -e 's,/usr/bin,${bindir},g' \
+                -e 's,/usr,${prefix},g' > ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+        chmod 755 ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+}
+
diff --git a/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
new file mode 100644
index 0000000..efd08d3
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
@@ -0,0 +1,42 @@
+#!/bin/sh
+### BEGIN INIT INFO
+# Provides:          cedartrail mixer setup
+# Required-Start:    $syslog
+# Required-Stop:     $syslog
+# Default-Start:     2 3 4 5
+# Default-Stop:      0 1 6
+# Short-Description: Initialize the cedartrail audio mixer
+# Description:       Unmute FRONT and set volume 
+### END INIT INFO
+
+# Author: Darren Hart <dvhart@linux.intel.com>
+# Based on /etc/init.d/skeleton
+
+PATH=/sbin:/usr/sbin:/bin:/usr/bin
+DESC="Audio mixer settings"
+NAME=cedartrail-audio
+AMIXER=`which amixer`
+SCRIPTNAME=/etc/init.d/$NAME
+
+# Exit if amixer is not installed
+[ -x "$AMIXER" ] || exit 0
+
+do_start() {
+	# Enable the "Front" simple controls (black phones jack)
+	$AMIXER sset Front 90 on > /dev/null
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
1.7.5.4


