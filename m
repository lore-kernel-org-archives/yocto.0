Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13296E00EF7; Fri, 20 May 2016 04:52:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02BF4E00EEB
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 04:52:42 -0700 (PDT)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2604.sfr.fr (SMTP Server) with ESMTP id 6B3C11C005C32;
	Fri, 20 May 2016 13:52:41 +0200 (CEST)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2604.sfr.fr (SMTP Server) with ESMTPSA;
	Fri, 20 May 2016 13:52:39 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Fri, 20 May 2016 19:51:48 +0800
Message-Id: <1463745113-55142-9-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
References: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 08/13] rpi-config_git.bb: add v4c overlay to config.txt to support vc4graphics
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
X-List-Received-Date: Fri, 20 May 2016 11:52:44 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-bsp/bootfiles/rpi-config_git.bb | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 4bc8eb7..f610718 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -13,12 +13,14 @@ SRC_URI = "git://github.com/Evilpaul/RPi-config.git;protocol=git;branch=master \
 
 S = "${WORKDIR}/git"
 
-PR = "r4"
+PR = "r5"
 
 PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
 PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
 PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
 
+VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
+
 inherit deploy
 
 do_deploy() {
@@ -102,6 +104,12 @@ do_deploy() {
         echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    # VC4 Graphics support
+    if [ "${VC4GRAPHICS}" = "1" ]; then
+        echo "# Enable VC4 Graphics" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtoverlay=vc4-kms-v3d,${VC4_CMA_SIZE}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 addtask deploy before do_package after do_install
-- 
2.7.4


