Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91D9EE007DD; Sat, 13 May 2017 08:33:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B390E007DD
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 08:33:15 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 6AD8D26027F
From: Romain Perier <romain.perier@collabora.com>
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Sat, 13 May 2017 17:33:01 +0200
Message-Id: <20170513153305.27132-2-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170513153305.27132-1-romain.perier@collabora.com>
References: <20170513153305.27132-1-romain.perier@collabora.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH v2 1/5] machine: add UBOOT_MACHINE definition to rock2-square
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
X-List-Received-Date: Sat, 13 May 2017 15:33:17 -0000

This adds the defconfig to be used as part of the build of u-boot for
the Rock2 Square.

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---
 conf/machine/rock2-square.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/rock2-square.conf b/conf/machine/rock2-square.conf
index 38ec701..a896d50 100644
--- a/conf/machine/rock2-square.conf
+++ b/conf/machine/rock2-square.conf
@@ -8,4 +8,5 @@
 
 include conf/machine/include/rk3288.inc
 KERNEL_DEVICETREE = "rk3288-rock2-square.dtb"
+UBOOT_MACHINE = "rock2_defconfig"
 
-- 
1.8.3.1


