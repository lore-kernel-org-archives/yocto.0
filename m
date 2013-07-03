Return-Path: <Sergey_Matyukevich@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9055E013CB
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 04:28:28 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1UuLEX-00024V-8U from Sergey_Matyukevich@mentor.com ;
	Wed, 03 Jul 2013 04:28:25 -0700
Received: from SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Wed, 3 Jul 2013 04:28:25 -0700
Received: from bars.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server id 14.2.247.3; Wed, 3 Jul 2013 12:28:23 +0100
From: Sergey Matyukevich <sergey_matyukevich@mentor.com>
To: Holger Behrens <holger.behrens@windriver.com>, Florin Sarbu
	<florin.sarbu@windriver.com>
Date: Wed, 3 Jul 2013 15:28:07 +0400
Message-ID: <1372850887-10185-1-git-send-email-sergey_matyukevich@mentor.com>
X-Mailer: git-send-email 1.7.2.5
MIME-Version: 1.0
X-OriginalArrivalTime: 03 Jul 2013 11:28:25.0148 (UTC)
	FILETIME=[6E8DA7C0:01CE77E0]
Cc: yocto@yoctoproject.org
Subject: [meta-ivi] [PATCH] connman: delete init scripts if 'sysvinit' feature is enabled
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
X-List-Received-Date: Wed, 03 Jul 2013 11:28:29 -0000
Content-Type: text/plain

connman bbappend: delete init scripts if 'sysvinit' feature is enabled

Connman init scripts are installed only if 'sysvinit' feature is enabled
in DISTRO_FEATURES: see commit 7c8160ccbe17d6e10bd7a09b91843182a89b9055 in
poky.

Signed-off-by: Sergey Matyukevich <sergey_matyukevich@mentor.com>
---
 recipes-connectivity/connman/connman_1.15.bbappend |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-connectivity/connman/connman_1.15.bbappend b/recipes-connectivity/connman/connman_1.15.bbappend
index cda612b..236f244 100644
--- a/recipes-connectivity/connman/connman_1.15.bbappend
+++ b/recipes-connectivity/connman/connman_1.15.bbappend
@@ -4,6 +4,8 @@ INITSCRIPT_NAME = ""
 INITSCRIPT_PARAMS = ""
 
 do_install_append() {
-	# Remove init scripts
-	rm -r ${D}${sysconfdir}/init.d
+    if ${@base_contains('DISTRO_FEATURES','sysvinit','true','false',d)}; then
+        # Remove init scripts
+        rm -r ${D}${sysconfdir}/init.d
+    fi
 }
-- 
1.7.2.5


