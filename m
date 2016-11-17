Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78FCAE00CC8; Thu, 17 Nov 2016 05:23:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A797E00A6D
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 05:23:14 -0800 (PST)
Received: from localhost.localdomain (118-169-187-55.dynamic.hinet.net
	[118.169.187.55])
	by msfrf2603.sfr.fr (SMTP Server) with ESMTP id 8F1721C00100D;
	Thu, 17 Nov 2016 14:14:35 +0100 (CET)
Received: from localhost.localdomain (118-169-187-55.dynamic.hinet.net
	[118.169.187.55])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2603.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 17 Nov 2016 14:14:32 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 17 Nov 2016 21:13:53 +0800
Message-Id: <1479388433-130851-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1479388433-130851-1-git-send-email-herve.jourdain@neuf.fr>
References: <1479388433-130851-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi_4.7.bb: upgrade to latest good version
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
X-List-Received-Date: Thu, 17 Nov 2016 13:23:18 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-kernel/linux/linux-raspberrypi_4.7.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.7.bb b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
index 0315f8f..4a8fe36 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.7.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.7.7"
+LINUX_VERSION ?= "4.7.10"
 
-SRCREV = "a45a35c08598b23f9fd82e49c83b46c7d536244f"
+SRCREV = "e7fa325a40f260ed9fb86391a0b65150eba8c112"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y \
            file://0001-fix-dtbo-rules.patch \
 "
-- 
2.7.4


