Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C34E2E00D16; Thu, 27 Jul 2017 19:32:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BDFCE00D0B
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:32:44 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v6S2Wifd021974
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:32:44 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Thu, 27 Jul 2017 19:32:43 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 28 Jul 2017 10:32:16 +0800
Message-ID: <c9d1b5dd857087e5b0ae0b4be2c9e32339e42d81.1501209083.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1501209083.git.jackie.huang@windriver.com>
References: <cover.1501209083.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 2/3] ocfs2-tools: fix the installation and systemd services
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
X-List-Received-Date: Fri, 28 Jul 2017 02:32:45 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

* use _append for do_install so that autotools_do_install
  will be run first.
* add -m for the install commands.
* add ${S} for install source files instead of relative path.
* remove cluster.conf.sample and use the sample conf file
  in source code instead.
* Disable systemd services by default since it won't
  work before the conf file is changed according to
  the actual network settings.
* Fix the services to use the correct helper scripts

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../ocfs2-tools/ocfs2-tools/cluster.conf.sample    | 10 -----
 .../ocfs2-tools/ocfs2-tools/o2cb.service           |  4 +-
 .../ocfs2-tools/ocfs2-tools/ocfs2.service          |  4 +-
 .../recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb   | 46 +++++++++++++---------
 4 files changed, 31 insertions(+), 33 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.conf.sample

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.conf.sample b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.conf.sample
deleted file mode 100644
index d7252b5..0000000
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.conf.sample
+++ /dev/null
@@ -1,10 +0,0 @@
-node:
-	ip_port = 7777
-	ip_address = 192.168.246.100
-	number = 0
-	name = localhost.localdomain
-	cluster = ocfs2
-
-cluster:
-	node_count = 1
-	name = ocfs2
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.service b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.service
index 520b530..c49b547 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.service
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/o2cb.service
@@ -5,8 +5,8 @@ After=network.target
 [Service]
 Type=oneshot
 RemainAfterExit=yes
-ExecStart=/usr/lib/ocfs2-tools/o2cb-helper start
-ExecStop=/usr/lib/ocfs2-tools/o2cb-helper stop
+ExecStart=@LIBDIR@/o2cb-helper start
+ExecStop=@LIBDIR@/o2cb-helper stop
 
 [Install]
 WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.service b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.service
index afcbbb9..d64da6c 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.service
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2.service
@@ -6,8 +6,8 @@ After=network.target o2cb.service
 [Service]
 Type=oneshot
 RemainAfterExit=yes
-ExecStart=/bin/mount -at ocfs2
-ExecStop=/bin/umount -a -t ocfs2
+ExecStart=@LIBDIR@/ocfs2-helper start
+ExecStop=@LIBDIR@/ocfs2-helper stop
 
 [Install]
 WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
index 3074525..be9a505 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
@@ -14,7 +14,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 SRC_URI = "git://oss.oracle.com/git/ocfs2-tools.git \
     file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
-    file://cluster.conf.sample \
     file://o2cb.service \
     file://ocfs2.service \
 "
@@ -62,32 +61,41 @@ do_compile_prepend() {
 }
 
 SYSTEMD_SERVICE_${PN} = "o2cb.service ocfs2.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+do_install_append() {
+    install -d ${D}${sysconfdir}/init.d
+    install -m 0755 ${S}/vendor/common/o2cb.init ${D}${sysconfdir}/init.d/o2cb
+    install -m 0755 ${S}/vendor/common/ocfs2.init ${D}${sysconfdir}/init.d/ocfs2
+
+    install -d ${D}${sysconfdir}/sysconfig
+    install -m 0644 ${S}/vendor/common/o2cb.sysconfig ${D}${sysconfdir}/sysconfig/o2cb
+
+    install -d ${D}${sysconfdir}/udev/rules.d
+    install -m 0644 ${S}/vendor/common/51-ocfs2.rules ${D}${sysconfdir}/udev/rules.d/51-ocfs2.rules
 
-do_install() {
-    install -d ${D}/etc/init.d
-    install vendor/common/o2cb.init ${D}/etc/init.d/o2cb
-    install vendor/common/ocfs2.init ${D}/etc/init.d/ocfs2
-    install -d ${D}/etc/sysconfig
-    install vendor/common/o2cb.sysconfig ${D}/etc/sysconfig/o2cb
-    install -d ${D}/etc/udev/rules.d
-    install vendor/common/51-ocfs2.rules ${D}/etc/udev/rules.d/51-ocfs2.rules
     install -d ${D}/${libdir}/ocf/resource.d/ocfs2
-    install  -m 0755 vendor/common/o2cb.ocf ${D}/${libdir}/ocf/resource.d/ocfs2/o2cb
-    oe_runmake DESTDIR="${D}" install
+    install  -m 0755 ${S}/vendor/common/o2cb.ocf ${D}/${libdir}/ocf/resource.d/ocfs2/o2cb
     chmod 644 ${D}/${libdir}/*.a
-    install -dm 0755  ${D}/etc/ocfs2
-    install -m 0644 ${WORKDIR}/cluster.conf.sample ${D}/etc/ocfs2/cluster.conf.sample
+
+    install -dm 0755  ${D}${sysconfdir}/ocfs2
+    install -m 0644 ${S}/documentation/samples/cluster.conf ${D}${sysconfdir}/ocfs2/cluster.conf.sample
+
     rm -rf ${D}/${libdir}/ocf
     rm -rf ${D}/sbin/ocfs2_controld.pcmk
     rm -rf ${D}/sbin/ocfs2_controld.cman
-    # fix up hardcoded paths
-    sed -i -e 's,/usr/lib/,${libdir}/,' ${WORKDIR}/o2cb.service
+
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
-        install -d ${D}/${systemd_unitdir}/system
-        install -m 644 ${WORKDIR}/o2cb.service ${D}/${systemd_unitdir}/system
-        install -m 644 ${WORKDIR}/ocfs2.service ${D}/${systemd_unitdir}/system
+        install -d ${D}/${systemd_system_unitdir}
+        install -m 0644 ${WORKDIR}/o2cb.service ${D}/${systemd_system_unitdir}
+        sed -i -e 's,@LIBDIR@,${libexecdir},' ${D}${systemd_system_unitdir}/o2cb.service
+
+        install -m 0644 ${WORKDIR}/ocfs2.service ${D}/${systemd_system_unitdir}
+        sed -i -e 's,@LIBDIR@,${libexecdir},' ${D}${systemd_system_unitdir}/ocfs2.service
+
         install -d ${D}/${libexecdir}
-        install -m 755 vendor/common/o2cb.init ${D}/${libexecdir}/o2cb-helper
+        install -m 0755 ${S}/vendor/common/o2cb.init ${D}/${libexecdir}/o2cb-helper
+        install -m 0755 ${S}/vendor/common/ocfs2.init ${D}${libexecdir}/ocfs2-helper
     fi
 }
 
-- 
2.11.0


