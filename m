Return-Path: <eric@eukrea.com>
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E7DDE0071D
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 14:00:36 -0700 (PDT)
Received: from localhost.localdomain (unknown [82.233.81.124])
	by smtp3-g21.free.fr (Postfix) with ESMTP id A8032A6293;
	Tue, 12 Mar 2013 22:00:31 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Mar 2013 22:00:24 +0100
Message-Id: <1363122024-31419-1-git-send-email-eric@eukrea.com>
X-Mailer: git-send-email 1.7.11.7
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] use right license name for GPLv2
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
X-List-Received-Date: Tue, 12 Mar 2013 21:00:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Eric Bénard <eric@eukrea.com>
---
 recipes-bcm/bcm2835/bcm2835_1.8.bb            | 2 +-
 recipes-extra/startup/rpi-first-run-wizard.bb | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bcm/bcm2835/bcm2835_1.8.bb b/recipes-bcm/bcm2835/bcm2835_1.8.bb
index d9681e5..40f9be5 100644
--- a/recipes-bcm/bcm2835/bcm2835_1.8.bb
+++ b/recipes-bcm/bcm2835/bcm2835_1.8.bb
@@ -5,7 +5,7 @@ SECTION = "base"
 HOMEPAGE = "http://www.open.com.au/mikem/bcm2835"
 AUTHOR = "Mike McCauley (mikem@open.com.au)"
 
-LICENSE = "GPL-2.0"
+LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
 PR = "r0"
diff --git a/recipes-extra/startup/rpi-first-run-wizard.bb b/recipes-extra/startup/rpi-first-run-wizard.bb
index f3ac8b4..dda4012 100644
--- a/recipes-extra/startup/rpi-first-run-wizard.bb
+++ b/recipes-extra/startup/rpi-first-run-wizard.bb
@@ -1,5 +1,5 @@
 DESCRIPTION = "Scripts to support a first run wizard on the Raspberry Pi."
-LICENSE = "GPLV2"
+LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
 DEPENDS = "zenity dbus"
-- 
1.7.11.7


