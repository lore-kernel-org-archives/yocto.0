Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B8D3E0147F
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 03:55:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r06BtJcF005970
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 03:55:19 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Sun, 6 Jan 2013 03:55:19 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Sun, 6 Jan 2013 13:54:58 +0200
Message-ID: <1357473302-19235-19-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 19/23] audiomanager: Remove git version recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 06 Jan 2013 11:55:19 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../audiomanager/audiomanager_git.bb               |   43 --------------------
 1 file changed, 43 deletions(-)
 delete mode 100644 recipes-multimedia/audiomanager/audiomanager_git.bb

diff --git a/recipes-multimedia/audiomanager/audiomanager_git.bb b/recipes-multimedia/audiomanager/audiomanager_git.bb
deleted file mode 100644
index fc087d4..0000000
--- a/recipes-multimedia/audiomanager/audiomanager_git.bb
+++ /dev/null
@@ -1,43 +0,0 @@
-SUMMARY = "Genivi AudioManager"
-HOMEPAGE = "https://www.genivi.org/"
-SECTION = "multimedia"
-
-LICENSE = "MPLv2"
-LIC_FILES_CHKSUM = "file://LICENCE;md5=815ca599c9df247a0c7f619bab123dad"
-
-PR = "r4"
-
-DEPENDS = "dlt-daemon sqlite3 dbus"
-
-SRC_URI = "git://git.projects.genivi.org/AudioManager.git;protocol=git;tag=e33f72e932661784affc0f24d56f0e78fbac783f \
-           file://AudioManager.service file://setup_amgr.sh"
-
-S = "${WORKDIR}/git"
-inherit autotools gettext cmake pkgconfig systemd
-
-SYSTEMD_PACKAGES = "${PN}-systemd"
-SYSTEMD_SERVICE = "AudioManager.service"
-SYSTEMD_AUTO_ENABLE = "disable"
-
-EXTRA_OECMAKE += "-DWITH_TESTS=OFF -DUSE_BUILD_LIBS=OFF"
-OECMAKE_CXX_FLAGS +="-ldl"
-
-FILES_${PN} += "${libdir}/audioManager/command/*.so.* \
-                ${libdir}/audioManager/control/*.so.* \
-                ${libdir}/audioManager/routing/*.so.* \
-"
-FILES_${PN}-dev += "${libdir}/audioManager/command/*.so \
-                    ${libdir}/audioManager/control/*.so \
-                    ${libdir}/audioManager/routing/*.so \
-"
-
-FILES_${PN}-dbg += "${libdir}/audioManager/command/.debug/* \
-                    ${libdir}/audioManager/control/.debug/* \
-                    ${libdir}/audioManager/routing/.debug/* \
-"
-FILES_${PN}-systemd += "${systemd_unitdir}/scripts"
-
-do_install_append() {
-        mkdir -p ${D}${systemd_unitdir}/scripts/
-        install -m 0755 ${WORKDIR}/setup_amgr.sh ${D}${systemd_unitdir}/scripts/setup_amgr.sh
-}
-- 
1.7.9.5


