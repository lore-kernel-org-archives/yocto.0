Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D57AE00D67; Thu, 28 Sep 2017 23:23:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1B85E00D5B
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 23:23:53 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8T6Nr0a029359
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 23:23:53 -0700
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Sep 2017 23:23:52 -0700
From: <zhe.he@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Sep 2017 14:10:00 +0800
Message-ID: <1506665400-20424-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] kernel: Fix config warning for CONFIG_I2C_ALGOBIT
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
X-List-Received-Date: Fri, 29 Sep 2017 06:23:54 -0000
Content-Type: text/plain

From: He Zhe <zhe.he@windriver.com>

CONFIG_DRM in yocto-kernel-cache selects CONFIG_I2C_ALGOBIT as "y".
Change CONFIG_I2C_ALGOBIT 00026-lm-sensors.cfg from "m" to "y" to
avoid following config conflict.

---------- CONFIG_I2C_ALGOBIT -----------------
Config: CONFIG_I2C_ALGOBIT
From: /PATH/TO/i915.cfg /PATH/TO/00026-lm-sensors.cfg
Requested value:  CONFIG_I2C_ALGOBIT=m
Actual value:     CONFIG_I2C_ALGOBIT=y

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
index f28bdf6..71c4cad 100644
--- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
@@ -1,5 +1,5 @@
 CONFIG_I2C_SMBUS=m
-CONFIG_I2C_ALGOBIT=m
+CONFIG_I2C_ALGOBIT=y
 CONFIG_I2C_ALGOPCA=m
 CONFIG_I2C_ALI1535=m
 CONFIG_I2C_ALI1563=m
-- 
2.8.1


