Return-Path: <mcfrisk@kapsi.fi>
Received: from mail.kapsi.fi (mail.kapsi.fi [217.30.184.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B4FEE014B2
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 00:25:57 -0700 (PDT)
Received: from lakka.kapsi.fi ([2001:1bc8:1004::1] ident=Debian-exim)
	by mail.kapsi.fi with esmtps (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <mcfrisk@kapsi.fi>)
	id 1UQBtJ-0002uY-U6; Thu, 11 Apr 2013 10:25:53 +0300
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.72)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1UQBtJ-0002Bp-SN; Thu, 11 Apr 2013 10:25:53 +0300
From: Mikko Rapeli <mikko.rapeli@iki.fi>
To: yocto@yoctoproject.org
Date: Thu, 11 Apr 2013 10:25:53 +0300
Message-Id: <1365665153-8262-1-git-send-email-mikko.rapeli@iki.fi>
X-Mailer: git-send-email 1.7.2.5
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: mcfrisk@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Mailman-Approved-At: Thu, 11 Apr 2013 09:22:29 -0700
Cc: mikko.rapeli@iki.fi
Subject: [PATCH meta-ivi] core-boot-genivi: include dependencies from MACHINE_EXTRA_RRECOMMENDS
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
X-List-Received-Date: Thu, 11 Apr 2013 07:25:57 -0000

BSP layers may have important but non-essential packages in the variable,
for example firmware packages from meta-fsl-arm for imx6 boards.

Signed-off-by: Mikko Rapeli <mikko.rapeli@iki.fi>
---
 recipes-yocto-ivi/packagegroups/packagegroup-core-boot-genivi.bb |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-boot-genivi.bb b/recipes-yocto-ivi/packagegroups/packagegroup-core-boot-genivi.bb
index 2de6976..1c01006 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-boot-genivi.bb
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-core-boot-genivi.bb
@@ -43,4 +43,5 @@ RDEPENDS_packagegroup-core-boot-genivi = "\
     "
 
 RRECOMMENDS_packagegroup-core-boot-genivi = "\
-    ${MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS}"
+    ${MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS} \
+    ${MACHINE_EXTRA_RRECOMMENDS}"
-- 
1.7.10.4


