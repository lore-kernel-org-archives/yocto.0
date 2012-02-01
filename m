Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B678E01396
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:26:38 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2012 14:26:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102153816"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 14:26:37 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>, Yocto Project <yocto@yoctoproject.org>
Date: Wed,  1 Feb 2012 14:26:04 -0800
Message-Id: <8c5010ca5786a486f2082d711fdf52b8617973af.1328135056.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1328135056.git.dvhart@linux.intel.com>
References: <cover.1328135056.git.dvhart@linux.intel.com>
Subject: [pull-sys940x 3/4] genmac: Replace RANDOM_MAC in network/interfaces with a randomly generated MAC
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
X-List-Received-Date: Wed, 01 Feb 2012 22:26:38 -0000

For machines that do not have a MAC in hardware and with drivers that don't
generate a random one in the kernel, this init script will replace the string
RANDOM_MAC in the network/interfaces file with one generated with "ranpwd -m".
Care is taken to ensure multiple interfaces can use RANDOM_MAC and receive
unique addresses. ranpwd generates MACs with the locally administered bit set
and the multicast bit disabled.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/recipes-bsp/genmac/files/genmac |   46 ++++++++++++++++++++++++++
 meta-sys940x/recipes-bsp/genmac/genmac.bb    |   30 +++++++++++++++++
 2 files changed, 76 insertions(+), 0 deletions(-)
 create mode 100644 meta-sys940x/recipes-bsp/genmac/files/genmac
 create mode 100644 meta-sys940x/recipes-bsp/genmac/genmac.bb

diff --git a/meta-sys940x/recipes-bsp/genmac/files/genmac b/meta-sys940x/recipes-bsp/genmac/files/genmac
new file mode 100644
index 0000000..6ca069c
--- /dev/null
+++ b/meta-sys940x/recipes-bsp/genmac/files/genmac
@@ -0,0 +1,46 @@
+#!/bin/sh
+### BEGIN INIT INFO
+# Provides:          Random MAC address generator
+# Required-Start:    $syslog
+# Required-Stop:     $syslog
+# Default-Start:     2 3 4 5
+# Default-Stop:      0 1 6
+# Short-Description: Set a random MAC for tagged interfaces
+# Description:       Set a random MAC for interfaces with RANDOM_MAC
+### END INIT INFO
+
+# Author: Darren Hart <dvhart@linux.intel.com>
+# Based on /etc/init.d/skeleton
+
+PATH=/sbin:/usr/sbin:/bin:/usr/bin
+DESC="Set a random MAC for tagged interfaces"
+NAME=genmac
+RANPWD=`which ranpwd`
+SCRIPTNAME=/etc/init.d/$NAME
+
+# Exit if amixer is not installed
+[ -x "$RANPWD" ] || exit 0
+
+do_start() {
+	# Replace every occurance of RANDOM_MAC with a unique locally
+	# administered, unicast, randomly generated MAC address.
+	while grep -q RANDOM_MAC /etc/network/interfaces; do
+		sed -i "1,/RANDOM_MAC/s/RANDOM_MAC/$($RANPWD -m)/" /etc/network/interfaces
+	done
+}
+
+case "$1" in
+start)
+	echo "$NAME: Setting random MAC addresses"
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
+
diff --git a/meta-sys940x/recipes-bsp/genmac/genmac.bb b/meta-sys940x/recipes-bsp/genmac/genmac.bb
new file mode 100644
index 0000000..56849b4
--- /dev/null
+++ b/meta-sys940x/recipes-bsp/genmac/genmac.bb
@@ -0,0 +1,30 @@
+SUMMARY = "Provide a basic init script to generate a random MAC"
+DESCRIPTION = "Set the MAC from the config file."
+SECTION = "base"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
+
+PR = "r0"
+
+inherit update-rc.d
+
+RDEPENDS_${PN} = "ranpwd"
+
+SRC_URI = "file://genmac"
+
+INITSCRIPT_NAME = "genmac"
+# Run as early as possible to ensure we are before the networking scripts
+INITSCRIPT_PARAMS = "start 39 S ."
+
+do_install() {
+	install -d ${D}${sysconfdir} \
+	           ${D}${sysconfdir}/init.d
+	install -m 0755 ${WORKDIR}/${INITSCRIPT_NAME} ${D}${sysconfdir}/init.d
+        cat ${WORKDIR}/${INITSCRIPT_NAME} | \
+            sed -e 's,/etc,${sysconfdir},g' \
+                -e 's,/usr/sbin,${sbindir},g' \
+                -e 's,/var,${localstatedir},g' \
+                -e 's,/usr/bin,${bindir},g' \
+                -e 's,/usr,${prefix},g' > ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+        chmod 755 ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+}
-- 
1.7.6.5


