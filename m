Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 097BDE00C43; Thu,  3 Aug 2017 19:07:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4A37E00C3A
	for <yocto@yoctoproject.org>; Thu,  3 Aug 2017 19:07:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v7427N2L015355
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 3 Aug 2017 19:07:24 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Thu, 3 Aug 2017 19:07:23 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 4 Aug 2017 10:06:55 +0800
Message-ID: <20170804020655.4377-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] corosync: update to 1.4.8
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
X-List-Received-Date: Fri, 04 Aug 2017 02:07:28 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

- Add systemd support
- Add PACKAGECONFIG for nss, dbus, rdma and snmp
- Install config file for corosync-notifyd

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../corosync/corosync/corosync-notifyd.service     | 13 +++++++
 .../recipes-cgl/corosync/corosync/corosync.service | 26 ++++++++++++++
 .../{corosync_1.4.7.bb => corosync_1.4.8.bb}       | 42 ++++++++++++++++++----
 3 files changed, 74 insertions(+), 7 deletions(-)
 create mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/corosync-notifyd.service
 create mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/corosync.service
 rename meta-cgl-common/recipes-cgl/corosync/{corosync_1.4.7.bb => corosync_1.4.8.bb} (51%)

diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/corosync-notifyd.service b/meta-cgl-common/recipes-cgl/corosync/corosync/corosync-notifyd.service
new file mode 100644
index 0000000..ce576fe
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/corosync/corosync/corosync-notifyd.service
@@ -0,0 +1,13 @@
+[Unit]
+Description=Corosync Dbus and snmp notifier
+Wants=corosync.service
+After=corosync.service
+
+[Service]
+EnvironmentFile=@SYSCONFDIR@/sysconfig/corosync-notifyd
+ExecStart=@SBINDIR@/corosync-notifyd -f $OPTIONS
+Type=simple
+Restart=on-failure
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/corosync.service b/meta-cgl-common/recipes-cgl/corosync/corosync/corosync.service
new file mode 100644
index 0000000..d5dd38f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/corosync/corosync/corosync.service
@@ -0,0 +1,26 @@
+[Unit]
+Description=Corosync Cluster Engine
+ConditionKernelCommandLine=!nocluster
+Requires=network-online.target
+After=network-online.target
+
+[Service]
+ExecStart=@DATADIR@/corosync/corosync start
+ExecStop=@DATADIR@/corosync/corosync stop
+Type=oneshot
+RemainAfterExit=yes
+
+# The following config is for corosync with enabled watchdog service.
+#
+#  When corosync watchdog service is being enabled and using with
+#  pacemaker.service, and if you want to exert the watchdog when a
+#  corosync process is terminated abnormally,
+#  uncomment the line of the following Restart= and RestartSec=.
+#Restart=on-failure
+#  Specify a period longer than soft_margin as RestartSec.
+#RestartSec=70
+#  rewrite according to environment.
+#ExecStartPre=/sbin/modprobe softdog soft_margin=60
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb b/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.8.bb
similarity index 51%
rename from meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb
rename to meta-cgl-common/recipes-cgl/corosync/corosync_1.4.8.bb
index 019a2f4..3b5afce 100644
--- a/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb
+++ b/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.8.bb
@@ -4,7 +4,7 @@ several default APIs and libraries, default configuration files, and an init \
 script."
 HOMEPAGE = "http://corosync.github.io/corosync/"
 
-inherit autotools pkgconfig update-rc.d useradd
+inherit autotools pkgconfig update-rc.d useradd systemd
 
 SRC_URI = "http://build.clusterlabs.org/corosync/releases/${BPN}-${PV}.tar.gz \
            file://groff-desc-path.patch \
@@ -13,22 +13,29 @@ SRC_URI = "http://build.clusterlabs.org/corosync/releases/${BPN}-${PV}.tar.gz \
            file://build-cleanup-configure-ac.patch \
            file://corosync.init \
            file://notifyd.init \
+           file://corosync.service \
+           file://corosync-notifyd.service \
            file://volatiles \
           "
 
-SRC_URI[md5sum] = "da9b2cf0b55f08ac4cf7cd82ac2f977a"
-SRC_URI[sha256sum] = "c1d005b2093e9a725abd1dfb2be936114b561c0b3145aca11f58c1a733a05af8"
+SRC_URI[md5sum] = "e16c71db45c8b39948847655958d0dec"
+SRC_URI[sha256sum] = "64ee50f783a4bfa8a63fd576090cf7dd1810f3c60e01b4886723b87c5ff2b013"
 
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=25656171d1e4054c636a9893067f8c30"
 
-DEPENDS = "groff-native nss"
+DEPENDS = "groff-native"
 
 INSANE_SKIP_${PN} += ""
 
-EXTRA_OECONF += " --enable-nss "
 CFLAGS_append += " -fPIC "
 
+PACKAGECONFIG ?= "dbus nss snmp"
+PACKAGECONFIG[dbus] = "--enable-dbus,--disable-dbus,dbus"
+PACKAGECONFIG[nss] = "--enable-nss,--disable-nss,nss"
+PACKAGECONFIG[rdma] = "--enable-rdma,--disable-rdma"
+PACKAGECONFIG[snmp] = "--enable-snmp,--disable-snmp,net-snmp"
+
 do_compile() {
     DESCPATH="${STAGING_DATADIR_NATIVE}/groff/`groff -v | awk '{if(NR==1)print $4}'`/font"
     oe_runmake DESCPATH=${DESCPATH}
@@ -37,6 +44,7 @@ do_compile() {
 do_install_append() {
     install -d ${D}${sysconfdir}/default/volatiles
     install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/05_corosync
+    install -D -m 0644 ${S}/tools/corosync-notifyd.sysconfig.example ${D}${sysconfdir}/sysconfig/corosync-notifyd
 
     # Original init script is too bashy
     rm -f ${D}/${sysconfdir}/init.d/corosync
@@ -44,17 +52,37 @@ do_install_append() {
     rm -rf ${D}/${sysconfdir}/init.d/corosync-notifyd
     install -m 0755 ${WORKDIR}/notifyd.init ${D}/${sysconfdir}/init.d/corosync-notifyd
 
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -d ${D}${datadir}/${BPN}
+        cp ${D}/${sysconfdir}/init.d/* ${D}${datadir}/${BPN}/
+
+        install -d ${D}${systemd_system_unitdir}
+        install -m 0644 ${WORKDIR}/corosync.service ${D}${systemd_system_unitdir}
+        sed -i -e 's,@DATADIR@,${datadir},g' ${D}${systemd_system_unitdir}/corosync.service
+
+        install -m 0644 ${WORKDIR}/corosync-notifyd.service ${D}${systemd_system_unitdir}
+        sed -i -e 's,@SYSCONFDIR@,${sysconfdir},g' \
+            -e 's,@SBINDIR@,${sbindir},g' ${D}${systemd_system_unitdir}/corosync-notifyd.service
+
+        install -d ${D}${sysconfdir}/tmpfiles.d
+        echo "d ${localstatedir}/log/cluster - - - -" > ${D}${sysconfdir}/tmpfiles.d/corosync.conf
+    fi
+
     rm -fr "${D}${localstatedir}/lock"
     rm -fr "${D}${localstatedir}/run"
     rmdir --ignore-fail-on-non-empty "${D}${localstatedir}"
 }
 
-FILES_${PN} += "run"
+FILES_${PN}-doc += "${datadir}/snmp/mibs/COROSYNC-MIB.txt"
 FILES_${PN}-dbg += "${libexecdir}/lcrso/.debug"
 
 INITSCRIPT_NAME = "corosync"
+INITSCRIPT_PARAMS = "remove"
+
+SYSTEMD_SERVICE_${PN} = "corosync.service corosync-notifyd.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
 
 USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "haclient"
 USERADD_PARAM_${PN} = "-M --home  ${localstatedir}/lib/heartbeat -g haclient hacluster"
-
-- 
2.11.0


