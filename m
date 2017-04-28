Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C13CAE00985; Fri, 28 Apr 2017 07:01:55 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 124B1E00953
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 07:01:55 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 70159269D30
From: Romain Perier <romain.perier@collabora.com>
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Fri, 28 Apr 2017 16:01:26 +0200
Message-Id: <20170428140126.27654-6-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170428140126.27654-1-romain.perier@collabora.com>
References: <20170428140126.27654-1-romain.perier@collabora.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH 5/5] u-boot-rockchip: add rock2 to compatible machines
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
X-List-Received-Date: Fri, 28 Apr 2017 14:01:55 -0000

As this machine is supported by this u-boot, add it to the compatible
machines.

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---
 recipes-bsp/u-boot/u-boot-rockchip_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
index 9363bee..ffb7887 100644
--- a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
@@ -6,7 +6,7 @@
 require recipes-bsp/u-boot/u-boot.inc
 
 DESCRIPTION = "Rockchip next-dev U-Boot"
-COMPATIBLE_MACHINE = "(firefly-rk3288)"
+COMPATIBLE_MACHINE = "(firefly-rk3288|rock2-square)"
 
 DEPENDS = "dtc-native bc-native"
 
-- 
1.8.3.1


