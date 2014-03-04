Return-Path: <Rongqing.Li@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F0E5E00965
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 21:51:22 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s245pLwI027099
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 3 Mar 2014 21:51:22 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Mon, 3 Mar 2014 21:51:21 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 4 Mar 2014 13:52:29 +0800
Message-ID: <d7502db601cb9da301fdc600d0b2033b15fdee1a.1393912246.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1393912246.git.rongqing.li@windriver.com>
References: <cover.1393912246.git.rongqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/2] audit: Add systemd support
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
X-List-Received-Date: Tue, 04 Mar 2014 05:51:25 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

Audit unit file is from https://fedorahosted.org/audit/browser/trunk/init.d/auditd.service

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 recipes-security/audit/audit/audit-volatile.conf |    1 +
 recipes-security/audit/audit/auditd.service      |   21 +++++++++++++++++++++
 recipes-security/audit/audit_2.3.2.bb            |   18 ++++++++++++++++--
 3 files changed, 38 insertions(+), 2 deletions(-)
 create mode 100644 recipes-security/audit/audit/audit-volatile.conf
 create mode 100644 recipes-security/audit/audit/auditd.service

diff --git a/recipes-security/audit/audit/audit-volatile.conf b/recipes-security/audit/audit/audit-volatile.conf
new file mode 100644
index 0000000..9cbe154
--- /dev/null
+++ b/recipes-security/audit/audit/audit-volatile.conf
@@ -0,0 +1 @@
+d  /var/log/audit 0750 root root -
diff --git a/recipes-security/audit/audit/auditd.service b/recipes-security/audit/audit/auditd.service
new file mode 100644
index 0000000..6daa056
--- /dev/null
+++ b/recipes-security/audit/audit/auditd.service
@@ -0,0 +1,21 @@
+[Unit]
+Description=Security Auditing Service
+DefaultDependencies=no
+After=local-fs.target
+Conflicts=shutdown.target
+Before=sysinit.target shutdown.target
+After=systemd-tmpfiles-setup.service
+RefuseManualStop=yes
+
+[Service]
+ExecStart=/sbin/auditd -n
+## To use augenrules, copy this file to /etc/systemd/system/auditd.service
+## and uncomment the next line and delete/comment out the auditctl line.
+## Then copy existing rules to /etc/audit/rules.d/
+## Not doing this last step can cause loss of existing rules
+#ExecStartPost=-/sbin/augenrules --load
+ExecStartPost=-/sbin/auditctl -R /etc/audit/rules.d/audit.rules
+ExecReload=/bin/kill -HUP $MAINPID
+
+[Install]
+WantedBy=multi-user.target
diff --git a/recipes-security/audit/audit_2.3.2.bb b/recipes-security/audit/audit_2.3.2.bb
index edcb881..eafcd30 100644
--- a/recipes-security/audit/audit_2.3.2.bb
+++ b/recipes-security/audit/audit_2.3.2.bb
@@ -14,14 +14,19 @@ SRC_URI = "http://people.redhat.com/sgrubb/audit/audit-${PV}.tar.gz \
 	   file://audit-python-configure.patch \
 	   file://audit-for-cross-compiling.patch \
 	   file://auditd \
-	   file://fix-swig-host-contamination.patch"
+	   file://fix-swig-host-contamination.patch \
+	   file://auditd.service \
+	   file://audit-volatile.conf \
+"
 
-inherit autotools pythonnative update-rc.d
+inherit autotools pythonnative update-rc.d systemd
 
 UPDATERCPN = "auditd"
 INITSCRIPT_NAME = "auditd"
 INITSCRIPT_PARAMS = "defaults"
 
+SYSTEMD_SERVICE_${PN} = "auditd.service"
+
 SRC_URI[md5sum] = "4e8d065b5cc16b77b9b61e93a9ed160e"
 SRC_URI[sha256sum] = "8872e0b5392888789061db8034164305ef0e1b34543e1e7004d275f039081d29"
 
@@ -74,4 +79,13 @@ do_install_append() {
 	# replace init.d
 	install -D -m 0755 ${S}/../auditd ${D}/etc/init.d/auditd
 	rm -rf ${D}/etc/rc.d
+
+	if ${@base_contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+		install -d ${D}${sysconfdir}/tmpfiles.d/
+		install -m 0644 ${WORKDIR}/audit-volatile.conf ${D}${sysconfdir}/tmpfiles.d/
+	fi
+	
+	# install systemd unit files
+	install -d ${D}${systemd_unitdir}/system
+	install -m 0644 ${WORKDIR}/auditd.service ${D}${systemd_unitdir}/system
 }
-- 
1.7.10.4


