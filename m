Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FB37E00C64; Wed, 30 Mar 2016 07:36:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0F45E00833
	for <yocto@yoctoproject.org>; Wed, 30 Mar 2016 07:35:59 -0700 (PDT)
X-Halon-ID: b624fc93-f684-11e5-8ff9-0050569116f7
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [78.78.107.132])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Wed, 30 Mar 2016 16:35:55 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed, 30 Mar 2016 16:35:46 +0200
Message-Id: <1459348549-32007-3-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1459348549-32007-1-git-send-email-petter@technux.se>
References: <1459348549-32007-1-git-send-email-petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 2/5] rpi-base.inc: Remove deprecated MACHINE_FEATURES
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
X-List-Received-Date: Wed, 30 Mar 2016 14:36:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 conf/machine/include/rpi-base.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index a9e8053..f70e952 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -40,7 +40,7 @@ KERNEL_DEVICETREE ?= " \
     "
 KERNEL_IMAGETYPE ?= "Image"
 
-MACHINE_FEATURES += "kernel26 apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
+MACHINE_FEATURES += "apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
 
 # Raspberry Pi has no hardware clock
 MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"
-- 
1.9.1


