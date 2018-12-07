Return-Path: <Daniel.Dragomir@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0840E00C4E; Fri,  7 Dec 2018 02:34:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0990E00C12
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2018 02:34:51 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wB7AYp8X021813
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 7 Dec 2018 02:34:51 -0800 (PST)
Received: from otp-ddragomi-d1.wrs.com (128.224.125.89) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Fri, 7 Dec 2018 02:34:50 -0800
From: Daniel Dragomir <daniel.dragomir@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Dec 2018 12:38:00 +0200
Message-ID: <1544179080-3412-1-git-send-email-daniel.dragomir@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-security][thud][PATCH] tpm2.0-tss: Remove resourcemgr sub-package
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
X-List-Received-Date: Fri, 07 Dec 2018 10:34:53 -0000
Content-Type: text/plain

Since in 2.0.x branch resourcemgr was removed as deprecated by
commit 7966ef8916f79ed09eab966a58d773f413fbb67f ("Remove resourcemgr
and fixup build.") and commit 0e175d36c13b1801d75ae768ac520154585326f8
("contrib: Remove systemd service and udev rules for old resourcemgr."),
remove resourcemgr sub-package with it's components.

Build will fail when trying sed command on resourcemgr.service
(No such file or directory).

Signed-off-by: Daniel Dragomir <daniel.dragomir@windriver.com>
---
 meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
index 3e7b81a..9d1ff72 100644
--- a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
+++ b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
@@ -24,22 +24,6 @@ EXTRA_USERS_PARAMS = "\
 	groupadd tss; \
 	"
 
-SYSTEMD_PACKAGES = "resourcemgr"
-SYSTEMD_SERVICE_resourcemgr = "resourcemgr.service"
-SYSTEMD_AUTO_ENABLE_resourcemgr = "enable"
-
-do_patch[postfuncs] += "${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','fix_systemd_unit','', d)}"
-fix_systemd_unit () {
-    sed -i -e 's;^ExecStart=.*/resourcemgr;ExecStart=${sbindir}/resourcemgr;' ${S}/contrib/resourcemgr.service
-}
-
-do_install_append() {
-    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
-        install -d ${D}${systemd_system_unitdir}
-        install -m0644 ${S}/contrib/resourcemgr.service ${D}${systemd_system_unitdir}/resourcemgr.service
-    fi
-}
-
 PROVIDES = "${PACKAGES}"
 PACKAGES = " \
     ${PN} \
@@ -57,7 +41,6 @@ PACKAGES = " \
     libtss2 \
     libtss2-dev \
     libtss2-staticdev \
-    resourcemgr \
 "
 
 FILES_libtss2-tcti-device = "${libdir}/libtss2-tcti-device.so.*"
@@ -89,5 +72,3 @@ FILES_libtss2-dev = " \
 FILES_libtss2-staticdev = "${libdir}/libtss*a"
 
 FILES_${PN} = "${libdir}/udev"
-
-FILES_resourcemgr = "${sbindir}/resourcemgr ${systemd_system_unitdir}/resourcemgr.service"
-- 
2.7.4


