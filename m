Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75C60E00524; Sat, 10 Jun 2017 23:50:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95D46E00524
	for <yocto@yoctoproject.org>; Sat, 10 Jun 2017 23:50:30 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 28F66261488
From: Romain Perier <romain.perier@collabora.com>
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Sun, 11 Jun 2017 08:50:17 +0200
Message-Id: <20170611065017.1785-1-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH] u-boot-rockchip: Switch to u-boot-common_2017.05.inc
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
X-List-Received-Date: Sun, 11 Jun 2017 06:50:32 -0000

Use the include file that has been introduced by commit
241cd21f70a537d23147a7e7b367bfc49fda1ac5

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---
 recipes-bsp/u-boot/u-boot-rockchip_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
index 291438a..c0b1ff6 100644
--- a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
@@ -4,7 +4,7 @@
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 require recipes-bsp/u-boot/u-boot.inc
-require recipes-bsp/u-boot/u-boot-common_2017.01.inc
+require recipes-bsp/u-boot/u-boot-common_2017.05.inc
 
 DESCRIPTION = "Rockchip next-dev U-Boot"
 COMPATIBLE_MACHINE = "(firefly-rk3288|rock2-square)"
-- 
1.8.3.1


