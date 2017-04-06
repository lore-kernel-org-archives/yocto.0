Return-Path: <Rob.Woolley@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B746CE00AAA; Thu,  6 Apr 2017 11:44:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7122CE00A71
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 11:44:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v36IiMRZ019545
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 6 Apr 2017 11:44:22 -0700 (PDT)
Received: from ala-lpggp2.wrs.com (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 6 Apr 2017 11:44:21 -0700
From: Rob Woolley <rob.woolley@windriver.com>
To: <andrei@gherzan.ro>, <yocto@yoctoproject.org>
Date: Thu, 6 Apr 2017 11:44:18 -0700
Message-ID: <20170406184420.55160-2-rob.woolley@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170406184420.55160-1-rob.woolley@windriver.com>
References: <20170406184420.55160-1-rob.woolley@windriver.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 1/3] pitft: Include the pitft35r dtbo files
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
X-List-Received-Date: Thu, 06 Apr 2017 18:44:28 -0000
Content-Type: text/plain

Include the pitft35r device tree blobs in the filesystem of the image.

Signed-off-by: Rob Woolley <rob.woolley@windriver.com>
---
 conf/machine/include/rpi-base.inc | 1 +
 conf/machine/raspberrypi3-64.conf | 1 +
 2 files changed, 2 insertions(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 092cbeb..9bcb91d 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -31,6 +31,7 @@ KERNEL_DEVICETREE ?= " \
     overlays/lirc-rpi.dtbo \
     overlays/pitft22.dtbo \
     overlays/pitft28-resistive.dtbo \
+    overlays/pitft35-resistive.dtbo \
     overlays/pps-gpio.dtbo \
     overlays/rpi-ft5406.dtbo \
     overlays/w1-gpio.dtbo \
diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index ca10ed9..0efe3ff 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -23,6 +23,7 @@ KERNEL_DEVICETREE = " \
     overlays/lirc-rpi.dtbo \
     overlays/pitft22.dtbo \
     overlays/pitft28-resistive.dtbo \
+    overlays/pitft35-resistive.dtbo \
     overlays/pps-gpio.dtbo \
     overlays/rpi-ft5406.dtbo \
     overlays/w1-gpio.dtbo \
-- 
2.11.0


