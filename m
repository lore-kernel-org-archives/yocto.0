Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F11AFE00B30; Sun,  8 Nov 2015 11:01:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EE4DE00985
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2015 11:01:11 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZvVAQ-000128-VT; Sun, 08 Nov 2015 18:58:23 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com
Date: Sun,  8 Nov 2015 19:00:39 +0000
Message-Id: <1447009240-14783-4-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447009240-14783-1-git-send-email-flihp@twobit.us>
References: <1447009240-14783-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 3/4] selinux-init: Break labeling of /dev out into separate script.
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
X-List-Received-Date: Sun, 08 Nov 2015 19:01:14 -0000

Remove selinux-init package from packagegroup-selinux-minimal.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../packagegroups/packagegroup-core-selinux.bb     |  1 +
 .../packagegroups/packagegroup-selinux-minimal.bb  |  2 +-
 .../selinux/selinux-init/selinux-init.sh           |  9 --------
 recipes-security/selinux/selinux-init_0.1.bb       |  2 +-
 .../selinux/selinux-labeldev/selinux-labeldev.sh   | 24 ++++++++++++++++++++++
 recipes-security/selinux/selinux-labeldev_0.1.bb   | 16 +++++++++++++++
 6 files changed, 43 insertions(+), 11 deletions(-)
 create mode 100644 recipes-security/selinux/selinux-labeldev/selinux-labeldev.sh
 create mode 100644 recipes-security/selinux/selinux-labeldev_0.1.bb

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index 472bf55..e46cda7 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -24,6 +24,7 @@ RDEPENDS_${PN} = " \
 	setools-console \
 	selinux-config \
 	selinux-init \
+	selinux-labeldev \
 	refpolicy-standard \
 	refpolicy-mls \
 	coreutils \
diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
index 42fb82d..34c5f7c 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
@@ -22,6 +22,6 @@ RDEPENDS_${PN} = "\
 	policycoreutils-sestatus \
 	policycoreutils-setfiles \
 	selinux-config \
-	selinux-init \
+	selinux-labeldev \
 	refpolicy-mls \
 "
diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh b/recipes-security/selinux/selinux-init/selinux-init.sh
index f9f0914..32c4de1 100644
--- a/recipes-security/selinux/selinux-init/selinux-init.sh
+++ b/recipes-security/selinux/selinux-init/selinux-init.sh
@@ -34,12 +34,6 @@ check_rootfs()
 	/sbin/shutdown -f -h now
 }
 
-# Because /dev/console is not relabeled by kernel, many commands
-# would can not use it, including restorecon.
-${CHCON} -t `${MATCHPATHCON} -n /dev/null | cut -d: -f3` /dev/null
-${CHCON} -t `${MATCHPATHCON} -n /dev/console | cut -d: -f3` /dev/console
-
-
 # If /.autorelabel placed, the whole file system should be relabeled
 if [ -f /.autorelabel ]; then
 	echo "Checking SELinux security contexts:"
@@ -65,7 +59,4 @@ if [ "`${SECON} -t --pid 1`" = "kernel_t" ]; then
 	/sbin/reboot
 fi
 
-# Now, we should relabel /dev for most services.
-${RESTORECON} -RF /dev
-
 exit 0
diff --git a/recipes-security/selinux/selinux-init_0.1.bb b/recipes-security/selinux/selinux-init_0.1.bb
index cde142d..87f8dad 100644
--- a/recipes-security/selinux/selinux-init_0.1.bb
+++ b/recipes-security/selinux/selinux-init_0.1.bb
@@ -14,6 +14,6 @@ ${PN}_RDEPENDS = " \
 "
 
 SRC_URI = "file://${BPN}.sh"
-SELINUX_SCRIPT_DST = "0${BPN}"
+INITSCRIPT_PARAMS = "start 01 S ."
 
 require selinux-initsh.inc
diff --git a/recipes-security/selinux/selinux-labeldev/selinux-labeldev.sh b/recipes-security/selinux/selinux-labeldev/selinux-labeldev.sh
new file mode 100644
index 0000000..62e7a42
--- /dev/null
+++ b/recipes-security/selinux/selinux-labeldev/selinux-labeldev.sh
@@ -0,0 +1,24 @@
+#!/bin/sh
+
+/usr/sbin/selinuxenabled 2>/dev/null || exit 0
+
+CHCON=/usr/bin/chcon
+MATCHPATHCON=/usr/sbin/matchpathcon
+RESTORECON=/sbin/restorecon
+
+for i in ${CHCON} ${MATCHPATHCON} ${RESTORECON}; do
+	test -x $i && continue
+	echo "$i is missing in the system."
+	echo "Please add \"selinux=0\" in the kernel command line to disable SELinux."
+	exit 1
+done
+
+# Because /dev/console is not relabeled by kernel, many commands
+# would can not use it, including restorecon.
+${CHCON} -t `${MATCHPATHCON} -n /dev/null | cut -d: -f3` /dev/null
+${CHCON} -t `${MATCHPATHCON} -n /dev/console | cut -d: -f3` /dev/console
+
+# Now, we should relabel /dev for most services.
+${RESTORECON} -RF /dev
+
+exit 0
diff --git a/recipes-security/selinux/selinux-labeldev_0.1.bb b/recipes-security/selinux/selinux-labeldev_0.1.bb
new file mode 100644
index 0000000..b692bb2
--- /dev/null
+++ b/recipes-security/selinux/selinux-labeldev_0.1.bb
@@ -0,0 +1,16 @@
+SUMMARY = "SELinux init script"
+DESCRIPTION = "Set SELinux labels for /dev."
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+${PN}_RDEPENDS = " \
+    coreutils \
+    libselinux-bin \
+    policycoreutils-setfiles \
+"
+
+SRC_URI = "file://${BPN}.sh"
+SELINUX_SCRIPT_DST = "0${BPN}"
+
+require selinux-initsh.inc
-- 
2.1.4


