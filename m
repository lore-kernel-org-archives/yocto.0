Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA05EE00A5C; Fri, 24 Mar 2017 01:46:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00069E00724
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 01:46:12 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id ED52F265AAC
From: Romain Perier <romain.perier@collabora.com>
To: liezhi.yang@windriver.com
Date: Fri, 24 Mar 2017 09:46:04 +0100
Message-Id: <20170324084604.10391-1-romain.perier@collabora.com>
X-Mailer: git-send-email 2.9.3
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [PATCH v2] logrotate: Add systemd support
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
X-List-Received-Date: Fri, 24 Mar 2017 08:46:15 -0000

Currently, this recipe only supports daily scheduling via a cron job.
This commit adds support for systemd, including systemd service and
systemd timer. When the corresponding distro feature is enabled the
systemd variant will be used. The timer granularity and its accuracy
are also configurable.

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---

Changes in v2:
- Make the systemd timer configurable (as this is distribution or target specific)

 .../logrotate/logrotate/logrotate.service          |  9 ++++++++
 .../logrotate/logrotate/logrotate.timer            |  7 ++++++
 meta/recipes-extended/logrotate/logrotate_3.9.1.bb | 27 ++++++++++++++++++++--
 3 files changed, 41 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/logrotate/logrotate/logrotate.service
 create mode 100644 meta/recipes-extended/logrotate/logrotate/logrotate.timer

diff --git a/meta/recipes-extended/logrotate/logrotate/logrotate.service b/meta/recipes-extended/logrotate/logrotate/logrotate.service
new file mode 100644
index 0000000..3edb8ef
--- /dev/null
+++ b/meta/recipes-extended/logrotate/logrotate/logrotate.service
@@ -0,0 +1,9 @@
+[Unit]
+Description=Rotate log files
+
+[Service]
+Type=oneshot
+ExecStart=/usr/sbin/logrotate /etc/logrotate.conf
+Nice=19
+IOSchedulingClass=best-effort
+IOSchedulingPriority=7
diff --git a/meta/recipes-extended/logrotate/logrotate/logrotate.timer b/meta/recipes-extended/logrotate/logrotate/logrotate.timer
new file mode 100644
index 0000000..c616b43
--- /dev/null
+++ b/meta/recipes-extended/logrotate/logrotate/logrotate.timer
@@ -0,0 +1,7 @@
+[Unit]
+Description=Daily rotation of log files
+
+[Timer]
+OnCalendar=@TIMER_BASIS@
+AccuracySec=@TIMER_ACCURACY@
+Persistent=true
diff --git a/meta/recipes-extended/logrotate/logrotate_3.9.1.bb b/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
index 5f1a601..6953996 100644
--- a/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
+++ b/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
@@ -14,6 +14,8 @@ SRC_URI = "https://fedorahosted.org/releases/l/o/logrotate/logrotate-${PV}.tar.g
            file://act-as-mv-when-rotate.patch \
            file://update-the-manual.patch \
            file://disable-check-different-filesystems.patch \
+           ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://logrotate.service', '', d)} \
+           ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://logrotate.timer', '', d)} \
             "
 
 SRC_URI[md5sum] = "4492b145b6d542e4a2f41e77fa199ab0"
@@ -47,6 +49,17 @@ EXTRA_OEMAKE = "\
 # INSTALL=install and BASEDIR=/usr.
 OS_NAME = "Linux"
 
+inherit systemd
+
+SYSTEMD_AUTO_ENABLE = "disable"
+SYSTEMD_SERVICE_${PN} = "\
+    ${PN}.service \
+    ${PN}.timer \
+"
+
+LOGROTATE_SYSTEMD_TIMER_BASIS ?= "daily"
+LOGROTATE_SYSTEMD_TIMER_ACCURACY ?= "12h"
+
 do_compile_prepend() {
     # Make sure the recompile is OK
     rm -f ${B}/.depend
@@ -55,9 +68,19 @@ do_compile_prepend() {
 do_install(){
     oe_runmake install DESTDIR=${D} PREFIX=${D} MANDIR=${mandir}
     mkdir -p ${D}${sysconfdir}/logrotate.d
-    mkdir -p ${D}${sysconfdir}/cron.daily
     mkdir -p ${D}${localstatedir}/lib
     install -p -m 644 examples/logrotate-default ${D}${sysconfdir}/logrotate.conf
-    install -p -m 755 examples/logrotate.cron ${D}${sysconfdir}/cron.daily/logrotate
     touch ${D}${localstatedir}/lib/logrotate.status
+
+    # Install systemd unit files
+    if [ "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}" = "systemd" ]; then
+        install -d ${D}/${systemd_system_unitdir}
+        install -m 0644 ${WORKDIR}/logrotate.service ${D}/${systemd_system_unitdir}/logrotate.service
+        install -m 0644 ${WORKDIR}/logrotate.timer ${D}/${systemd_system_unitdir}/logrotate.timer
+        sed -i -e 's,@TIMER_BASIS@,${LOGROTATE_SYSTEMD_TIMER_BASIS},g' ${D}${systemd_system_unitdir}/logrotate.timer
+        sed -i -e 's,@TIMER_ACCURACY@,${LOGROTATE_SYSTEMD_TIMER_ACCURACY},g' ${D}${systemd_system_unitdir}/logrotate.timer
+    else
+        mkdir -p ${D}${sysconfdir}/cron.daily
+        install -p -m 0755 examples/logrotate.cron ${D}${sysconfdir}/cron.daily/logrotate
+    fi
 }
-- 
1.8.3.1


