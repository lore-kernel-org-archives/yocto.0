Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACC25E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 09:41:43 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Jan 2012 09:39:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="55146639"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.14.3])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Jan 2012 09:39:29 -0800
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jan 2012 09:39:28 -0800
Message-Id: <77fa2b8ddf2cd1bbb5fca8c79025e1e9be507b1f.1326216128.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.5
In-Reply-To: <cover.1326216128.git.josh@linux.intel.com>
References: <cover.1326216128.git.josh@linux.intel.com>
In-Reply-To: <cover.1326216128.git.josh@linux.intel.com>
References: <cover.1326216128.git.josh@linux.intel.com>
Subject: [PATCH 3/3] n450-audio: drop this machine specific recipe in favour of alsa-state
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
X-List-Received-Date: Tue, 10 Jan 2012 17:41:43 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta-n450/conf/machine/n450.conf                   |    2 -
 meta-n450/recipes-bsp/n450-audio/n450-audio.bb     |   30 --------------
 .../recipes-bsp/n450-audio/n450-audio/n450-audio   |   42 --------------------
 3 files changed, 0 insertions(+), 74 deletions(-)
 delete mode 100644 meta-n450/recipes-bsp/n450-audio/n450-audio.bb
 delete mode 100644 meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio

diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index 3e6a541..6ffdce9 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -14,5 +14,3 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0" 
 APPEND += "console=ttyS0,115200 console=tty0" 
-
-MACHINE_EXTRA_RRECOMMENDS += "n450-audio"
diff --git a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
deleted file mode 100644
index 27904e3..0000000
--- a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
+++ /dev/null
@@ -1,30 +0,0 @@
-SUMMARY = "Provide a basic init script to enable audio"
-DESCRIPTION = "Set the volume and unmute the Front mixer setting during boot."
-SECTION = "base"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
-
-PR = "r4"
-
-inherit update-rc.d
-
-RDEPENDS = "alsa-utils-amixer"
-
-SRC_URI = "file://n450-audio"
-
-INITSCRIPT_NAME = "n450-audio"
-INITSCRIPT_PARAMS = "defaults 90"
-
-do_install() {
-	install -d ${D}${sysconfdir} \
-	           ${D}${sysconfdir}/init.d
-	install -m 0755 ${WORKDIR}/n450-audio ${D}${sysconfdir}/init.d
-        cat ${WORKDIR}/${INITSCRIPT_NAME} | \
-            sed -e 's,/etc,${sysconfdir},g' \
-                -e 's,/usr/sbin,${sbindir},g' \
-                -e 's,/var,${localstatedir},g' \
-                -e 's,/usr/bin,${bindir},g' \
-                -e 's,/usr,${prefix},g' > ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
-        chmod 755 ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
-}
-
diff --git a/meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio b/meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio
deleted file mode 100644
index c5a0044..0000000
--- a/meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio
+++ /dev/null
@@ -1,42 +0,0 @@
-#!/bin/sh
-### BEGIN INIT INFO
-# Provides:          n450 mixer setup
-# Required-Start:    $syslog
-# Required-Stop:     $syslog
-# Default-Start:     2 3 4 5
-# Default-Stop:      0 1 6
-# Short-Description: Initialize the n450 audio mixer
-# Description:       Unmute FRONT and set volume to ~70%.
-### END INIT INFO
-
-# Author: Darren Hart <dvhart@linux.intel.com>
-# Based on /etc/init.d/skeleton
-
-PATH=/sbin:/usr/sbin:/bin:/usr/bin
-DESC="Audio mixer settings"
-NAME=n450-audio
-AMIXER=`which amixer`
-SCRIPTNAME=/etc/init.d/$NAME
-
-# Exit if amixer is not installed
-[ -x "$AMIXER" ] || exit 0
-
-do_start() {
-	# Enable the "Front" simple controls (black phones jack)
-	$AMIXER sset Front 30 on > /dev/null
-}
-
-case "$1" in
-start)
-	echo "$NAME: setting default mixer settings."
-	do_start
-	;;
-stop)
-	;;
-*)
-	echo "Usage: $SCRIPTNAME {start|stop}" >&2
-	exit 3
-	;;
-esac
-
-exit 0
-- 
1.7.7.5


