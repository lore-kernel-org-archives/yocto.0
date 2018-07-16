Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76EF7E00E35; Sun, 15 Jul 2018 21:55:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AFADE00D06
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2018 21:54:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w6G4suqu002153
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2018 21:54:56 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.399.0; Sun, 15 Jul 2018 21:54:56 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 16 Jul 2018 12:54:55 +0800
Message-ID: <1531716895-78131-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH] iucode-tool: add a service file (systemd)
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
X-List-Received-Date: Mon, 16 Jul 2018 04:55:00 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Add a service file (systemd), so that the microcode can be uploaded
automatically

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-core/microcode/iucode-tool/iucode-tool.service | 11 +++++++++++
 recipes-core/microcode/iucode-tool_2.3.1.bb            | 17 +++++++++++++++--
 2 files changed, 26 insertions(+), 2 deletions(-)
 create mode 100644 recipes-core/microcode/iucode-tool/iucode-tool.service

diff --git a/recipes-core/microcode/iucode-tool/iucode-tool.service b/recipes-core/microcode/iucode-tool/iucode-tool.service
new file mode 100644
index 0000000..6b134c3
--- /dev/null
+++ b/recipes-core/microcode/iucode-tool/iucode-tool.service
@@ -0,0 +1,11 @@
+[Unit]
+Description=Apply Cpu Microcode
+
+[Service]
+Type=oneshot
+KillMode=process
+RemainAfterExit=yes
+ExecStart=@SBINDIR@/iucode_tool -k @LIB@/firmware/intel-ucode/microcode.bin
+
+[Install]
+WantedBy=multi-user.target
diff --git a/recipes-core/microcode/iucode-tool_2.3.1.bb b/recipes-core/microcode/iucode-tool_2.3.1.bb
index df74a8e..1762468 100644
--- a/recipes-core/microcode/iucode-tool_2.3.1.bb
+++ b/recipes-core/microcode/iucode-tool_2.3.1.bb
@@ -18,16 +18,29 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
 
 DEPENDS_append_libc-musl = " argp-standalone"
 
-SRC_URI = "https://gitlab.com/iucode-tool/releases/raw/master/iucode-tool_${PV}.tar.xz"
+SRC_URI = "https://gitlab.com/iucode-tool/releases/raw/master/iucode-tool_${PV}.tar.xz \
+           file://iucode-tool.service \
+          "
 SRC_URI_append_libc-musl = " file://0001-Makefile.am-Add-arg-parse-library-for-MUSL-support.patch"
 
 SRC_URI[md5sum] = "63b33cc0ea1f8c73b443412abbf39d6f"
 SRC_URI[sha256sum] = "12b88efa4d0d95af08db05a50b3dcb217c0eb2bfc67b483779e33d498ddb2f95"
 
-inherit autotools
+inherit autotools systemd
 
 BBCLASSEXTEND = "native"
 
 COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
 
 UPSTREAM_CHECK_URI = "https://gitlab.com/iucode-tool/releases"
+
+
+SYSTEMD_SERVICE_${PN} = "iucode-tool.service"
+SYSTEMD_AUTO_ENABLE_${PN} = "enable"
+
+do_install_append() {
+	install -d ${D}${systemd_unitdir}/system
+	install -m 0644 ${WORKDIR}/iucode-tool.service ${D}${systemd_unitdir}/system
+	sed -i -e 's,@SBINDIR@,${sbindir},g' ${D}${systemd_unitdir}/system/iucode-tool.service
+	sed -i -e 's,@LIB@,${base_libdir},g' ${D}${systemd_unitdir}/system/iucode-tool.service
+}
-- 
2.7.4


