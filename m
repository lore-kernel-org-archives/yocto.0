Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EDC1E00AE6; Thu, 13 Apr 2017 00:43:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82A4CE00992
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 00:43:12 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id F31DE26181E
From: Romain Perier <romain.perier@collabora.com>
To: liezhi.yang@windriver.com
Date: Thu, 13 Apr 2017 09:42:50 +0200
Message-Id: <20170413074250.12957-1-romain.perier@collabora.com>
X-Mailer: git-send-email 2.9.3
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [PATCH v3] logrotate: Add systemd support
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
X-List-Received-Date: Thu, 13 Apr 2017 07:43:17 -0000

Currently, this recipe only supports daily scheduling via a cron job.
This commit adds support for systemd in the recipe, with the
corresponding services backported from upstream. When the distro feature
is enabled the systemd variant will be used. The timer granularity and
its accuracy are also configurable.

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---

Changes in v3:
- After a discussion with RP, that's preferable to integrate systemd support
in the recipe of logrotate 3.9. QA testing will be passed on it, then we will
see if this patch can be merged or delayed to master-next.
- I have backported systemd service and timer from upstream directly
- The bump to 3.11 will wait

 .../logrotate/logrotate/logrotate.service          | 10 ++++++++
 .../logrotate/logrotate/logrotate.timer            | 10 ++++++++
 meta/recipes-extended/logrotate/logrotate_3.9.1.bb | 27 ++++++++++++++++++++--
 3 files changed, 45 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/logrotate/logrotate/logrotate.service
 create mode 100644 meta/recipes-extended/logrotate/logrotate/logrotate.timer

diff --git a/meta/recipes-extended/logrotate/logrotate/logrotate.service b/meta/recipes-extended/logrotate/logrotate/logrotate.service
new file mode 100644
index 0000000..cf8d3f4
--- /dev/null
+++ b/meta/recipes-extended/logrotate/logrotate/logrotate.service
@@ -0,0 +1,10 @@
+[Unit]
+Description=Rotate log files
+ConditionACPower=true
+
+[Service]
+Type=oneshot
+ExecStart=/usr/sbin/logrotate /etc/logrotate.conf
+Nice=19
+IOSchedulingClass=best-effort
+IOSchedulingPriority=7
diff --git a/meta/recipes-extended/logrotate/logrotate/logrotate.timer b/meta/recipes-extended/logrotate/logrotate/logrotate.timer
new file mode 100644
index 0000000..297c2e4
--- /dev/null
+++ b/meta/recipes-extended/logrotate/logrotate/logrotate.timer
@@ -0,0 +1,10 @@
+[Unit]
+Description=Periodic rotation of log files
+
+[Timer]
+OnCalendar=daily
+AccuracySec=12h
+Persistent=true
+
+[Install]
+WantedBy=timers.target
diff --git a/meta/recipes-extended/logrotate/logrotate_3.9.1.bb b/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
index c938d9f..2c254e8 100644
--- a/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
+++ b/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
@@ -23,6 +23,8 @@ SRC_URI = "https://github.com/${BPN}/${BPN}/archive/r3-9-1.tar.gz \
            file://act-as-mv-when-rotate.patch \
            file://update-the-manual.patch \
            file://disable-check-different-filesystems.patch \
+           ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://logrotate.service', '', d)} \
+           ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://logrotate.timer', '', d)} \
             "
 
 SRC_URI[md5sum] = "8572b7c2cf9ade09a8a8e10098500fb3"
@@ -58,12 +60,33 @@ do_compile_prepend() {
     rm -f ${B}/.depend
 }
 
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
+        install -d ${D}${systemd_system_unitdir}
+        install -m 0644 ${WORKDIR}/logrotate.service ${D}${systemd_system_unitdir}/logrotate.service
+        install -m 0644 ${WORKDIR}/logrotate.timer ${D}${systemd_system_unitdir}/logrotate.timer
+        sed -i -e 's,OnCalendar=.*$,OnCalendar=${LOGROTATE_SYSTEMD_TIMER_BASIS},g' ${D}${systemd_system_unitdir}/logrotate.timer
+        sed -i -e 's,AccuracySec=.*$,AccuracySec=${LOGROTATE_SYSTEMD_TIMER_ACCURACY},g' ${D}${systemd_system_unitdir}/logrotate.timer
+    else
+        mkdir -p ${D}${sysconfdir}/cron.daily
+        install -p -m 0755 examples/logrotate.cron ${D}${sysconfdir}/cron.daily/logrotate
+    fi
 }
-- 
2.9.3


