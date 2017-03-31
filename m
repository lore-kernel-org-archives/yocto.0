Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40EC9E00A4F; Fri, 31 Mar 2017 04:40:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D405E009B9
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 04:40:55 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id A89E7261048
From: Romain Perier <romain.perier@collabora.com>
To: Qi.Chen@windriver.com
Date: Fri, 31 Mar 2017 13:40:43 +0200
Message-Id: <20170331114043.6165-1-romain.perier@collabora.com>
X-Mailer: git-send-email 2.9.3
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [PATCH] busybox: make SYSLOGD optionnal
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
X-List-Received-Date: Fri, 31 Mar 2017 11:40:57 -0000

Some distros might choose another syslogd provider like rsyslogd.
update-alternative will update the link from syslogd to the right
provider. However the syslogd feature is still present and enabled
in busybox.

This commit adds a new configuration fragment to make syslogd
optionnal in busybox.

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---
 meta/recipes-core/busybox/busybox.inc        |  6 +++---
 meta/recipes-core/busybox/busybox/defconfig  | 20 +++++++++-----------
 meta/recipes-core/busybox/busybox/syslog.cfg | 11 +++++++++++
 meta/recipes-core/busybox/busybox_1.24.1.bb  |  1 +
 meta/recipes-core/busybox/busybox_git.bb     |  1 +
 5 files changed, 25 insertions(+), 14 deletions(-)
 create mode 100644 meta/recipes-core/busybox/busybox/syslog.cfg

diff --git a/meta/recipes-core/busybox/busybox.inc b/meta/recipes-core/busybox/busybox.inc
index b2f1960..a60b7a9 100644
--- a/meta/recipes-core/busybox/busybox.inc
+++ b/meta/recipes-core/busybox/busybox.inc
@@ -40,7 +40,7 @@ INITSCRIPT_NAME_${PN}-syslog = "syslog"
 INITSCRIPT_NAME_${PN}-udhcpd = "busybox-udhcpd"
 
 SYSTEMD_PACKAGES = "${PN}-syslog"
-SYSTEMD_SERVICE_${PN}-syslog = "busybox-syslog.service"
+SYSTEMD_SERVICE_${PN}-syslog = "${@bb.utils.contains('SRC_URI', 'file://syslog.cfg', 'busybox-syslog.service', '', d)}"
 
 CONFFILES_${PN}-syslog = "${sysconfdir}/syslog-startup.conf.${BPN}"
 CONFFILES_${PN}-mdev = "${sysconfdir}/mdev.conf"
@@ -326,8 +326,8 @@ inherit update-alternatives
 
 ALTERNATIVE_PRIORITY = "50"
 
-ALTERNATIVE_${PN}-syslog += "syslog-conf"
-ALTERNATIVE_LINK_NAME[syslog-conf] = "${sysconfdir}/syslog.conf"
+ALTERNATIVE_${PN}-syslog += "${@bb.utils.contains('SRC_URI', 'file://syslog.cfg', 'syslog-conf', '', d)}"
+ALTERNATIVE_LINK_NAME[syslog-conf] = "${@bb.utils.contains('SRC_URI', 'file://syslog.cfg', "${sysconfdir}/syslog.conf", '', d)}"
 
 python () {
     if bb.utils.contains('DISTRO_FEATURES', 'sysvinit', True, False, d):
diff --git a/meta/recipes-core/busybox/busybox/defconfig b/meta/recipes-core/busybox/busybox/defconfig
index c0459d5..387dcc0 100644
--- a/meta/recipes-core/busybox/busybox/defconfig
+++ b/meta/recipes-core/busybox/busybox/defconfig
@@ -1049,17 +1049,15 @@ CONFIG_FEATURE_SH_HISTFILESIZE=y
 #
 # System Logging Utilities
 #
-CONFIG_SYSLOGD=y
-CONFIG_FEATURE_ROTATE_LOGFILE=y
-CONFIG_FEATURE_REMOTE_LOG=y
-CONFIG_FEATURE_SYSLOGD_DUP=y
-CONFIG_FEATURE_SYSLOGD_CFG=y
-CONFIG_FEATURE_SYSLOGD_READ_BUFFER_SIZE=256
-CONFIG_FEATURE_IPC_SYSLOG=y
-CONFIG_FEATURE_IPC_SYSLOG_BUFFER_SIZE=64
-CONFIG_LOGREAD=y
-CONFIG_FEATURE_LOGREAD_REDUCED_LOCKING=y
-CONFIG_FEATURE_KMSG_SYSLOG=y
+# CONFIG_SYSLOGD is not set
+# CONFIG_FEATURE_ROTATE_LOGFILE is not set
+# CONFIG_FEATURE_REMOTE_LOG is not set
+# CONFIG_FEATURE_SYSLOGD_DUP is not set
+# CONFIG_FEATURE_SYSLOGD_CFG is not set
+# CONFIG_FEATURE_IPC_SYSLOG is not set
+# CONFIG_LOGREAD is not set
+# CONFIG_FEATURE_LOGREAD_REDUCED_LOCKING is not set
+# CONFIG_FEATURE_KMSG_SYSLOG is not set
 CONFIG_KLOGD=y
 
 #
diff --git a/meta/recipes-core/busybox/busybox/syslog.cfg b/meta/recipes-core/busybox/busybox/syslog.cfg
new file mode 100644
index 0000000..e2425ed
--- /dev/null
+++ b/meta/recipes-core/busybox/busybox/syslog.cfg
@@ -0,0 +1,11 @@
+CONFIG_SYSLOGD=y
+CONFIG_FEATURE_ROTATE_LOGFILE=y
+CONFIG_FEATURE_REMOTE_LOG=y
+CONFIG_FEATURE_SYSLOGD_DUP=y
+CONFIG_FEATURE_SYSLOGD_CFG=y
+CONFIG_FEATURE_SYSLOGD_READ_BUFFER_SIZE=256
+CONFIG_FEATURE_IPC_SYSLOG=y
+CONFIG_FEATURE_IPC_SYSLOG_BUFFER_SIZE=64
+CONFIG_LOGREAD=y
+CONFIG_FEATURE_LOGREAD_REDUCED_LOCKING=y
+CONFIG_FEATURE_KMSG_SYSLOG=y
diff --git a/meta/recipes-core/busybox/busybox_1.24.1.bb b/meta/recipes-core/busybox/busybox_1.24.1.bb
index df0e131..1b8a1a3 100644
--- a/meta/recipes-core/busybox/busybox_1.24.1.bb
+++ b/meta/recipes-core/busybox/busybox_1.24.1.bb
@@ -40,6 +40,7 @@ SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://resize.cfg \
            ${@["", "file://init.cfg"][(d.getVar('VIRTUAL-RUNTIME_init_manager', True) == 'busybox')]} \
            ${@["", "file://mdev.cfg"][(d.getVar('VIRTUAL-RUNTIME_dev_manager', True) == 'busybox-mdev')]} \
+           file://syslog.cfg \
            file://inittab \
            file://rcS \
            file://rcK \
diff --git a/meta/recipes-core/busybox/busybox_git.bb b/meta/recipes-core/busybox/busybox_git.bb
index c29b894..f666517 100644
--- a/meta/recipes-core/busybox/busybox_git.bb
+++ b/meta/recipes-core/busybox/busybox_git.bb
@@ -42,6 +42,7 @@ SRC_URI = "git://busybox.net/busybox.git \
            file://resize.cfg \
            ${@["", "file://init.cfg"][(d.getVar('VIRTUAL-RUNTIME_init_manager', True) == 'busybox')]} \
            ${@["", "file://mdev.cfg"][(d.getVar('VIRTUAL-RUNTIME_dev_manager', True) == 'busybox-mdev')]} \
+           file://syslog.cfg \
            file://inittab \
            file://rcS \
            file://rcK \
-- 
1.8.3.1


