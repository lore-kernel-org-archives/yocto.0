Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3E91E00AAA; Wed,  5 Apr 2017 08:05:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73382E00985
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 08:05:42 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id A98E02656B8
From: Romain Perier <romain.perier@collabora.com>
To: liezhi.yang@windriver.com
Date: Wed,  5 Apr 2017 17:05:21 +0200
Message-Id: <20170405150521.19160-3-romain.perier@collabora.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170405150521.19160-1-romain.perier@collabora.com>
References: <20170405150521.19160-1-romain.perier@collabora.com>
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [PATCH 2/2] logrotate: Add systemd support
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
X-List-Received-Date: Wed, 05 Apr 2017 15:05:51 -0000

Currently, this recipe only supports daily scheduling via a cron job.
This commit adds support for systemd in the recipe, as the feature is
already supported on upstream. When the corresponding distro feature
is enabled the systemd variant will be used. The timer granularity and
its accuracy are also configurable.

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---
 .../recipes-extended/logrotate/logrotate_3.11.0.bb | 25 +++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-extended/logrotate/logrotate_3.11.0.bb b/meta/recipes-extended/logrotate/logrotate_3.11.0.bb
index d72c7f0..b75496d 100644
--- a/meta/recipes-extended/logrotate/logrotate_3.11.0.bb
+++ b/meta/recipes-extended/logrotate/logrotate_3.11.0.bb
@@ -46,14 +46,33 @@ EXTRA_OEMAKE = "\
 # INSTALL=install and BASEDIR=/usr.
 OS_NAME = "Linux"
 
-inherit autotools
+inherit autotools systemd
+
+SYSTEMD_AUTO_ENABLE = "disable"
+SYSTEMD_SERVICE_${PN} = "\
+    ${PN}.service \
+    ${PN}.timer \
+"
+
+LOGROTATE_SYSTEMD_TIMER_BASIS ?= "daily"
+LOGROTATE_SYSTEMD_TIMER_ACCURACY ?= "12h"
 
 do_install(){
     oe_runmake install DESTDIR=${D} PREFIX=${D} MANDIR=${mandir}
     mkdir -p ${D}${sysconfdir}/logrotate.d
-    mkdir -p ${D}${sysconfdir}/cron.daily
     mkdir -p ${D}${localstatedir}/lib
     install -p -m 644 ${S}/examples/logrotate-default ${D}${sysconfdir}/logrotate.conf
-    install -p -m 755 ${S}/examples/logrotate.cron ${D}${sysconfdir}/cron.daily/logrotate
     touch ${D}${localstatedir}/lib/logrotate.status
+
+    # Install systemd unit files
+    if [ "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}" = "systemd" ]; then
+        install -d ${D}${systemd_system_unitdir}
+        install -m 0644 ${S}/examples/logrotate.service ${D}${systemd_system_unitdir}/logrotate.service
+        install -m 0644 ${S}/examples/logrotate.timer ${D}${systemd_system_unitdir}/logrotate.timer
+        sed -i -e 's,OnCalendar=.*$,OnCalendar=${LOGROTATE_SYSTEMD_TIMER_BASIS},g' ${D}${systemd_system_unitdir}/logrotate.timer
+        sed -i -e 's,AccuracySec=.*$,AccuracySec=${LOGROTATE_SYSTEMD_TIMER_ACCURACY},g' ${D}${systemd_system_unitdir}/logrotate.timer
+    else
+        mkdir -p ${D}${sysconfdir}/cron.daily
+        install -p -m 0755 ${S}/examples/logrotate.cron ${D}${sysconfdir}/cron.daily/logrotate
+    fi
 }
-- 
2.9.3


