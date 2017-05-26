Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13DDDE00C31; Fri, 26 May 2017 01:46:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5FBBE00B93
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:46:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v4Q8kJWe032364
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 01:46:19 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 26 May 2017 01:46:19 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 26 May 2017 16:46:11 +0800
Message-ID: <8f59ba4cad31a8277246f862a734ab48ae5a64d8.1495787965.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1495787965.git.jackie.huang@windriver.com>
References: <cover.1495787965.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 1/5] openais: add systemd support
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
X-List-Received-Date: Fri, 26 May 2017 08:46:27 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

inherit systemd and add .service for systemd support

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../recipes-cgl/openais/files/openais.service           | 14 ++++++++++++++
 meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb    | 17 +++++++++++++++--
 2 files changed, 29 insertions(+), 2 deletions(-)
 create mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais.service

diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais.service b/meta-cgl-common/recipes-cgl/openais/files/openais.service
new file mode 100644
index 0000000..230e4bb
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/openais/files/openais.service
@@ -0,0 +1,14 @@
+[Unit]
+Description=OpenAIS Cluster Framework
+ConditionKernelCommandLine=!nocluster
+Requires=network-online.target
+After=network-online.target
+
+[Service]
+ExecStart=@DATADIR@/openais/openais start
+ExecStop=@DATADIR@/openais/openais stop
+Type=oneshot
+RemainAfterExit=yes
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
index e503cec..23da0a2 100644
--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
+++ b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
@@ -9,10 +9,23 @@ SRC_URI = " \
     file://fix-lcrso-linkage.patch \
     file://build-cleanup-configure-ac.patch \
     file://openais-fix-bash.patch \
-	"
+    file://openais.service \
+    "
+
 SRC_URI[md5sum] = "e500ad3c49fdc45d8653f864e80ed82c"
 SRC_URI[sha256sum] = "974b4959f3c401c16156dab31e65a6d45bbf84dd85a88c2a362712e738c06934"
 
-inherit autotools pkgconfig
+inherit autotools pkgconfig systemd
+
+SYSTEMD_SERVICE_${PN} = "openais.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+do_install_append() {
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -D -m 0755 ${D}${sysconfdir}/init.d/openais ${D}${datadir}/${BPN}/openais
+        install -D -m 0644 ${WORKDIR}/openais.service ${D}${systemd_system_unitdir}/openais.service
+        sed -i -e 's,@DATADIR@,${datadir},g' ${D}${systemd_system_unitdir}/openais.service
+    fi
+}
 
 FILES_${PN}-dbg += "${libexecdir}/lcrso/.debug"
-- 
2.11.0


