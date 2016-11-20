Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15E42E00CFF; Sun, 20 Nov 2016 04:07:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE90E00C92
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 04:07:38 -0800 (PST)
Received: from localhost.localdomain (111-250-155-21.dynamic.hinet.net
	[111.250.155.21])
	by msfrf2624.sfr.fr (SMTP Server) with ESMTP id 7ADA01C000819;
	Sun, 20 Nov 2016 13:07:37 +0100 (CET)
Received: from localhost.localdomain (111-250-155-21.dynamic.hinet.net
	[111.250.155.21])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2624.sfr.fr (SMTP Server) with ESMTPSA;
	Sun, 20 Nov 2016 13:07:35 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Sun, 20 Nov 2016 20:07:13 +0800
Message-Id: <1479643633-62226-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1479643633-62226-1-git-send-email-herve.jourdain@neuf.fr>
References: <1479643633-62226-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 1/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Sun, 20 Nov 2016 12:07:45 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 conf/machine/raspberrypi3-64.conf | 19 +++++++++++++++++++
 conf/machine/raspberrypi3.conf    |  8 ++++++--
 2 files changed, 25 insertions(+), 2 deletions(-)
 create mode 100644 conf/machine/raspberrypi3-64.conf

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
new file mode 100644
index 0000000..a5ceddb
--- /dev/null
+++ b/conf/machine/raspberrypi3-64.conf
@@ -0,0 +1,19 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi 3 Development Board
+#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits mode
+
+DEFAULTTUNE ?= "cortexa53-64"
+
+MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
+
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
+
+PREFERRED_VERSION_linux-raspberrypi_raspberrypi3-64 ?= "4.7.%"
+
+require conf/machine/include/tune-cortexa53.inc
+include conf/machine/include/rpi-base.inc
+
+SERIAL_CONSOLE = "115200 ttyS0"
+VC4_CMA_SIZE ?= "cma-256"
+
+UBOOT_MACHINE = "rpi_3_config"
diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 9820209..ab6a481 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -2,12 +2,16 @@
 #@NAME: RaspberryPi 3 Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi 3
 
-MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
+DEFAULTTUNE ?= "cortexa53hf-32"
+
+MACHINEOVERRIDES = "raspberrypi2:raspberrypi:${MACHINE}"
 
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 
-include conf/machine/raspberrypi2.conf
+require conf/machine/include/tune-cortexa53.inc
+include conf/machine/include/rpi-base.inc
 
 SERIAL_CONSOLE = "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
 
+UBOOT_MACHINE = "rpi_3_config"
-- 
2.7.4


