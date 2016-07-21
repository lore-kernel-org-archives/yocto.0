Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADF33E00EB6; Thu, 21 Jul 2016 05:32:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97C52E00EB1
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 05:32:44 -0700 (PDT)
Received: from localhost.localdomain (unknown [74.95.113.124])
	by msfrf2625.sfr.fr (SMTP Server) with ESMTP id 0B4031C00043A;
	Thu, 21 Jul 2016 14:32:44 +0200 (CEST)
Received: from localhost.localdomain (unknown [74.95.113.124])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2625.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 21 Jul 2016 14:32:43 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2016 20:32:07 +0800
Message-Id: <1469104337-21068-3-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v4 02/12] rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
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
X-List-Received-Date: Thu, 21 Jul 2016 12:32:48 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 47eb23b..aabc131 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -37,6 +37,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/w1-gpio.dtbo \
     overlays/w1-gpio-pullup.dtbo \
     overlays/pi3-miniuart-bt.dtbo \
+    overlays/vc4-kms-v3d.dtbo \
     "
 KERNEL_IMAGETYPE ?= "Image"
 
-- 
2.7.4


