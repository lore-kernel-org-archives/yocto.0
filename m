Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 240C7E00DC1; Mon, 30 May 2016 13:49:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B6C0E00D28
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 13:49:42 -0700 (PDT)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])
	by msfrf2612.sfr.fr (SMTP Server) with ESMTP id B3DCB1C0008C8;
	Mon, 30 May 2016 22:49:41 +0200 (CEST)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2612.sfr.fr (SMTP Server) with ESMTPSA;
	Mon, 30 May 2016 22:49:41 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2016 04:49:10 +0800
Message-Id: <1464641363-88572-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1464641363-88572-1-git-send-email-herve.jourdain@neuf.fr>
References: <1464641363-88572-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v3 01/14] rpi-default-providers.inc: change default providers to support vc4graphics
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
X-List-Received-Date: Mon, 30 May 2016 20:49:52 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 conf/machine/include/rpi-default-providers.inc | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index cabbd43..0bc8838 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -3,8 +3,8 @@
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi"
 PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/egl ?= "userland"
-PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
-PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
-PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
+PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "userland", d)}"
+PREFERRED_PROVIDER_virtual/libgles2 ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "userland", d)}"
+PREFERRED_PROVIDER_virtual/libgl ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
+PREFERRED_PROVIDER_virtual/mesa ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
 PREFERRED_PROVIDER_jpeg ?= "jpeg"
-- 
2.7.4


