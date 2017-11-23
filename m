Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00F2DE00CF7; Wed, 22 Nov 2017 22:40:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Nov 2017 22:40:27 PST
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7670AE00B1A
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 22:40:27 -0800 (PST)
X-Halon-ID: f2fc7df2-d018-11e7-aaf5-005056917a89
Authorized-sender: petter@technux.se
Received: from petterarch.localdomain (unknown [95.199.134.206])
	by bin-vsp-out-01.atm.binero.net (Halon) with ESMTPSA
	id f2fc7df2-d018-11e7-aaf5-005056917a89;
	Thu, 23 Nov 2017 07:38:50 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu, 23 Nov 2017 07:38:48 +0100
Message-Id: <20171123063848.11164-1-petter@technux.se>
X-Mailer: git-send-email 2.14.2
MIME-Version: 1.0
Subject: [meta-chip][PATCH] linux: remove usage of deprecated linux-dtb.inc
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
X-List-Received-Date: Thu, 23 Nov 2017 06:40:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 recipes-kernel/linux/linux-chip_git.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-chip_git.bb b/recipes-kernel/linux/linux-chip_git.bb
index 38df4ad..955d6e7 100644
--- a/recipes-kernel/linux/linux-chip_git.bb
+++ b/recipes-kernel/linux/linux-chip_git.bb
@@ -6,7 +6,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
 COMPATIBLE_MACHINE = "chip"
 
 inherit kernel
-require recipes-kernel/linux/linux-dtb.inc
 
 LINUX_VERSION ?= "4.3.0"
 PV = "${LINUX_VERSION}+git${SRCPV}"
-- 
2.14.2


