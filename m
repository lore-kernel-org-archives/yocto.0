Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40742E00E7D; Wed, 18 May 2016 05:24:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19BCFE00E4F
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 05:24:14 -0700 (PDT)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2622.sfr.fr (SMTP Server) with ESMTP id 7A4B11C000ACF;
	Wed, 18 May 2016 14:24:13 +0200 (CEST)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2622.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 14:24:05 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 20:21:22 +0800
Message-Id: <1463574082-126198-9-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 8/8] Support for vc4 graphics driver: modify the configuration for mesa
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
X-List-Received-Date: Wed, 18 May 2016 12:24:30 -0000

This patch series enables the support for the VC4 graphics driver from Eric Anholt.
Add some configuration for building mesa, on raspberrypi, when VC4 is in use.

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-graphics/mesa/mesa_%.bbappend | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 recipes-graphics/mesa/mesa_%.bbappend

diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
new file mode 100644
index 0000000..b182388
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -0,0 +1,4 @@
+PACKAGECONFIG_append_rpi = " gallium"
+GALLIUMDRIVERS_rpi = "vc4"
+DRIDRIVERS_rpi = ""
+
-- 
2.7.4


