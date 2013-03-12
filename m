Return-Path: <eric@eukrea.com>
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A343DE0071D
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 13:56:56 -0700 (PDT)
Received: from localhost.localdomain (unknown [82.233.81.124])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 84FEFA61C4;
	Tue, 12 Mar 2013 21:56:49 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Mar 2013 21:56:47 +0100
Message-Id: <1363121807-15304-1-git-send-email-eric@eukrea.com>
X-Mailer: git-send-email 1.7.11.7
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] rpi-first-run-wizard: fix QA Error
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
X-List-Received-Date: Tue, 12 Mar 2013 20:56:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

ERROR: QA Issue: .../meta-raspberrypi/recipes-extra/startup/rpi-first-run-wizard.bb:
Variable RDEPENDS is set as not being package specific, please fix this.

Signed-off-by: Eric Bénard <eric@eukrea.com>
---
 recipes-extra/startup/rpi-first-run-wizard.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extra/startup/rpi-first-run-wizard.bb b/recipes-extra/startup/rpi-first-run-wizard.bb
index c5cef7c..f3ac8b4 100644
--- a/recipes-extra/startup/rpi-first-run-wizard.bb
+++ b/recipes-extra/startup/rpi-first-run-wizard.bb
@@ -3,7 +3,7 @@ LICENSE = "GPLV2"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
 DEPENDS = "zenity dbus"
-RDEPENDS = "slim sudo zenity dbus"
+RDEPENDS_${PN} = "slim sudo zenity dbus"
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-- 
1.7.11.7


