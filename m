Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29355E00B6D; Sat, 13 May 2017 08:33:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B96E00973
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 08:33:24 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 0E82F26027F
From: Romain Perier <romain.perier@collabora.com>
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Sat, 13 May 2017 17:33:04 +0200
Message-Id: <20170513153305.27132-5-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170513153305.27132-1-romain.perier@collabora.com>
References: <20170513153305.27132-1-romain.perier@collabora.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH v2 4/5] u-boot-rockchip: remove duplicated variables
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
X-List-Received-Date: Sat, 13 May 2017 15:33:25 -0000

This adds the inclusion of u-boot-common_2017.01.inc and removes
duplicated variables that are already defined by this file.

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---
 recipes-bsp/u-boot/u-boot-rockchip_git.bb | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
index d3e3168..094dbe1 100644
--- a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
@@ -1,12 +1,12 @@
 # Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
 # Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
+# Copyright (C) 2017 Romain Perier <romain.perier@collabora.com>
 # Released under the MIT license (see COPYING.MIT for the terms)
 
 require recipes-bsp/u-boot/u-boot.inc
+require recipes-bsp/u-boot/u-boot-common_2017.01.inc
 
 DESCRIPTION = "Rockchip next-dev U-Boot"
-LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
 COMPATIBLE_MACHINE = "(firefly-rk3288)"
 
 DEPENDS = "dtc-native bc-native"
@@ -17,7 +17,6 @@ SRC_URI = " \
 	"
 SRCREV = "${AUTOREV}"
 PV = "v2017.05+git${SRCPV}"
-S = "${WORKDIR}/git"
 
 do_compile_append () {
     # copy to default search path
-- 
1.8.3.1


