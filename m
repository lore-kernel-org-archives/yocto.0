Return-Path: <david.andrey@netmodule.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64690E0081C; Tue, 29 Jul 2014 08:55:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wolf.netmodule.com (wolf.netmodule.com [194.29.26.243])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68386E003FA
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 08:55:31 -0700 (PDT)
Received: from 194-29-26-246.static.cablecom.ch ([194.29.26.246]
	helo=LOIRE.netmodule.intranet)
	by wolf.netmodule.com with esmtp id 1XC9QQ-00004w-GT;
	Tue, 29 Jul 2014 17:34:50 +0200
From: David Andrey <david.andrey@netmodule.com>
To: yocto@yoctoproject.org
Date: Tue, 29 Jul 2014 17:34:10 +0200
Message-Id: <1406648052-8887-1-git-send-email-david.andrey@netmodule.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [[meta-xilinx-community][PATCH] 1/3] microzed: kernel: update to 3.14
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
X-List-Received-Date: Tue, 29 Jul 2014 15:55:33 -0000

Use Xilinx kernel 3.14 for the Microzed board
instead of the 3.10

Signed-off-by: David Andrey <david.andrey@netmodule.com>
---
 conf/machine/microzed-zynq7.conf |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/conf/machine/microzed-zynq7.conf b/conf/machine/microzed-zynq7.conf
index a57614a..b7f8934 100644
--- a/conf/machine/microzed-zynq7.conf
+++ b/conf/machine/microzed-zynq7.conf
@@ -1,9 +1,10 @@
+# Copyright (C) 2014, David Andrey <david.andrey@netmodule.com>
 #@TYPE: Machine
 #@NAME: microzed-zynq7
 #@DESCRIPTION: Machine support for microZed. (http://www.microzed.org/)
 
 # Versions corresponding to microzed documentation
-PREFERRED_VERSION_linux-xlnx ?= "3.10%"
+PREFERRED_VERSION_linux-xlnx ?= "3.14%"
 PREFERRED_VERSION_u-boot-xlnx ?= "v2013.01%"
 
 require conf/machine/include/tune-zynq.inc
-- 
1.7.10.4


