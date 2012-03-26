Return-Path: <rahul.saxena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D36E013A8
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:58:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Mar 2012 14:58:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="121924779"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by orsmga001.jf.intel.com with ESMTP; 26 Mar 2012 14:58:57 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 26 Mar 2012 07:49:22 -0700
Message-Id: <891c44fb9ad6d47536864f63032fae583fc5ba1c.1332797429.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332797429.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332797429.git.rahul.saxena@intel.com>
References: <cover.1332797429.git.rahul.saxena@intel.com>
Subject: [PATCH 04/14] meta-cedatrail: add recipe for setting audio mixer settings during boot
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
X-List-Received-Date: Mon, 26 Mar 2012 21:58:58 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Recipe is copied from n450-audio.bb with a few parameters changed
to adjust volume settings for Front mixer during boot.

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
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
1.7.4.1


