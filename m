Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BC54E00AA7; Tue, 18 Apr 2017 13:59:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9056BE00A9A
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 13:59:21 -0700 (PDT)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 1123147F0E8
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 22:51:24 +0200 (CEST)
Received: from mfilter22-d.gandi.net (mfilter22-d.gandi.net [217.70.178.150])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id 7B105172094;
	Tue, 18 Apr 2017 22:51:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter22-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter22-d.gandi.net (mfilter22-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id C-Dkw-bG-otk; Tue, 18 Apr 2017 22:51:22 +0200 (CEST)
X-Originating-IP: 82.34.23.153
Received: from host0.betafive.co.uk
	(cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net [82.34.23.153])
	(Authenticated sender: noreply@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E2C14172093;
	Tue, 18 Apr 2017 22:51:21 +0200 (CEST)
Received: by host0.betafive.co.uk (Postfix, from userid 2525)
	id 9688C4045D7E; Tue, 18 Apr 2017 21:51:19 +0100 (BST)
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 21:51:08 +0100
Message-Id: <20170418205108.14629-9-pbarker@toganlabs.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170418205108.14629-1-pbarker@toganlabs.com>
References: <20170418205108.14629-1-pbarker@toganlabs.com>
Subject: [meta-raspberrypi][morty][PATCH 8/8] rpi-config: Specify bcm2710-rpi-3-b dtb for 64bit rpi3
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
X-List-Received-Date: Tue, 18 Apr 2017 20:59:26 -0000

From: Khem Raj <raj.khem@gmail.com>

Let config.txt explicitly specify it

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index f610718..20ec343 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -112,6 +112,12 @@ do_deploy() {
     fi
 }
 
+do_deploy_append_raspberrypi3-64() {
+    # Device Tree support
+    echo "# Load correct Device Tree for Aarch64" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    echo "device_tree=bcm2710-rpi-3-b.dtb" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+}
+
 addtask deploy before do_package after do_install
 do_deploy[dirs] += "${DEPLOYDIR}/bcm2835-bootfiles"
 
-- 
2.11.0


