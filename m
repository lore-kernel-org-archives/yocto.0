Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A292E01463
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 03:55:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r06BtDS1027400
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 03:55:13 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Sun, 6 Jan 2013 03:55:13 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Sun, 6 Jan 2013 13:54:55 +0200
Message-ID: <1357473302-19235-16-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 16/23] node-startup-controller: Remove git version recipe
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
X-List-Received-Date: Sun, 06 Jan 2013 11:55:13 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../node-startup-controller_git.bb                 |   53 --------------------
 1 file changed, 53 deletions(-)
 delete mode 100644 recipes-extended/node-startup-controller/node-startup-controller_git.bb

diff --git a/recipes-extended/node-startup-controller/node-startup-controller_git.bb b/recipes-extended/node-startup-controller/node-startup-controller_git.bb
deleted file mode 100644
index 0d3b90c..0000000
--- a/recipes-extended/node-startup-controller/node-startup-controller_git.bb
+++ /dev/null
@@ -1,53 +0,0 @@
-SUMMARY = "GENIVI Node Startup Controller"
-DESCRIPTION = "The GENIVI Node Startup Controller \
-		- manages the Last User Context (LUC) \
-		- monitors node startup \
-		  and \
-		- manages legacy applications within a node \
-		"
-
-HOMEPAGE = "https://www.genivi.org/"
-SECTION = "base"
-
-LICENSE = "MPLv2"
-LIC_FILES_CHKSUM = "file://COPYING;md5=815ca599c9df247a0c7f619bab123dad"
-
-SRCREV = "958e5ab2bc93ac0d885ca75f4f33988cbdd3e758"
-PV = "1.0.0+git${SRCPV}"
-PR = "r2"
-
-DEFAULT_PREFERENCE = "-1"
-
-SRC_URI = "git://git.projects.genivi.org/lifecycle/node-startup-controller.git;protocol=git"
-
-DEPENDS = "glib-2.0 dlt-daemon systemd"
-
-S = "${WORKDIR}/git"
-
-inherit autotools gtk-doc
-do_configure_prepend () {
-        mkdir m4
-}
-
-PACKAGES =+ "${PN}-nsm-dummy ${PN}-nsm-dummy-dbg"
-
-RRECOMMENDS_${PN} += "${PN}-nsm-dummy"
-
-
-FILES_${PN} += "\
-	${libdir}/${PN}-1/${PN} \
-	${libdir}/${PN}-1/legacy-app-handler \
-	${libdir}/systemd/system/${PN}.service \
-	${datadir}/dbus-1/system-services/org.genivi.NodeStartupController1.service \
-	"
-FILES_${PN}-dbg += "\
-	${libdir}/${PN}-1/.debug/*ler \
-	"
-FILES_${PN}-nsm-dummy = "\
-	${libdir}/${PN}-1/nsm-dummy \
-	${libdir}/systemd/system/nsm-dummy.service \
-	${datadir}/dbus-1/system-services/org.genivi.NodeStateManager.* \
-	"
-FILES_${PN}-nsm-dummy-dbg = "\
-	${libdir}/${PN}-1/.debug/nsm-dummy \
-	"
-- 
1.7.9.5


