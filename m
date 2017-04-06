Return-Path: <Rob.Woolley@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76B29E00AA7; Thu,  6 Apr 2017 11:44:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC3DBE00AA2
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 11:44:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v36IiO3H015340
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 6 Apr 2017 11:44:24 -0700 (PDT)
Received: from ala-lpggp2.wrs.com (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 6 Apr 2017 11:44:23 -0700
From: Rob Woolley <rob.woolley@windriver.com>
To: <andrei@gherzan.ro>, <yocto@yoctoproject.org>
Date: Thu, 6 Apr 2017 11:44:19 -0700
Message-ID: <20170406184420.55160-3-rob.woolley@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170406184420.55160-1-rob.woolley@windriver.com>
References: <20170406184420.55160-1-rob.woolley@windriver.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 2/3] pitft: Include a pitft35r MACHINE_FEATURE
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
X-List-Received-Date: Thu, 06 Apr 2017 18:44:29 -0000
Content-Type: text/plain

This MACHINE_FEATURE will automatically add the recommended
Adafruit configuration line to the Raspberry Pi config.txt.

Signed-off-by: Rob Woolley <rob.woolley@windriver.com>
---
 recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index af55983..b3c5084 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -18,6 +18,7 @@ PR = "r5"
 PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
 PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
 PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
+PITFT35r="${@bb.utils.contains("MACHINE_FEATURES", "pitft35r", "1", "0", d)}"
 
 VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
 
@@ -99,6 +100,11 @@ do_deploy() {
         echo "dtoverlay=pitft28-resistive,rotate=90,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
 
+    if [ "${PITFT35r}" = "1" ]; then
+        echo "# Enable PITFT35r display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtoverlay=pitft35-resistive,rotate=90,speed=42000000,fps=20" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
+
     # UART support
     if [ "${ENABLE_UART}" = "1" ]; then
         echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
-- 
2.11.0


