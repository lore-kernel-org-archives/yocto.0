Return-Path: <Sergey_Matyukevich@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF30FE0140D
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2013 01:50:49 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Uv1j5-0004me-RB from Sergey_Matyukevich@mentor.com ;
	Fri, 05 Jul 2013 01:50:47 -0700
Received: from SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Fri, 5 Jul 2013 01:50:47 -0700
Received: from bars.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server id 14.2.247.3; Fri, 5 Jul 2013 09:50:46 +0100
From: Sergey Matyukevich <sergey_matyukevich@mentor.com>
To: Holger Behrens <holger.behrens@windriver.com>, Florin Sarbu
	<florin.sarbu@windriver.com>
Date: Fri, 5 Jul 2013 12:50:44 +0400
Message-ID: <1373014244-27070-1-git-send-email-sergey_matyukevich@mentor.com>
X-Mailer: git-send-email 1.7.2.5
MIME-Version: 1.0
X-OriginalArrivalTime: 05 Jul 2013 08:50:47.0738 (UTC)
	FILETIME=[BE52E9A0:01CE795C]
Cc: yocto@yoctoproject.org
Subject: [meta-ivi] [PATCHv3] connman: do not delete init scripts in bbappend
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
X-List-Received-Date: Fri, 05 Jul 2013 08:50:49 -0000
Content-Type: text/plain

Currently connman init scripts are installed only when 'sysvinit' feature is
enabled in DISTRO_FEATURES: commit 7c8160ccbe17d6e10bd7a09b91843182a89b9055
in poky. No need to remove them in bbappend:
  - they are not installed for 'systemd'-enabled systems
  - they are needed for 'sysvinit'-enabled systems

Signed-off-by: Sergey Matyukevich <sergey_matyukevich@mentor.com>
---
 recipes-connectivity/connman/connman_1.15.bbappend |    8 --------
 1 files changed, 0 insertions(+), 8 deletions(-)

diff --git a/recipes-connectivity/connman/connman_1.15.bbappend b/recipes-connectivity/connman/connman_1.15.bbappend
index cda612b..f1deaf2 100644
--- a/recipes-connectivity/connman/connman_1.15.bbappend
+++ b/recipes-connectivity/connman/connman_1.15.bbappend
@@ -1,9 +1 @@
 PRINC := "${@int(PRINC) + 2}"
-
-INITSCRIPT_NAME = ""
-INITSCRIPT_PARAMS = ""
-
-do_install_append() {
-	# Remove init scripts
-	rm -r ${D}${sysconfdir}/init.d
-}
-- 
1.7.2.5


