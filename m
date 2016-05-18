Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD73CE00E50; Wed, 18 May 2016 05:24:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80FB1E00E47
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 05:23:58 -0700 (PDT)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2622.sfr.fr (SMTP Server) with ESMTP id E47691C000ADD;
	Wed, 18 May 2016 14:23:57 +0200 (CEST)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2622.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 14:23:54 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 20:21:20 +0800
Message-Id: <1463574082-126198-7-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 6/8] Support for vc4 graphics driver: modify the wayland configuration for vc4
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
X-List-Received-Date: Wed, 18 May 2016 12:24:13 -0000

This patch series enables the support for the VC4 graphics driver from Eric Anholt.
Configure the configuration options for Wayland, depending on whether 'vc4graphics' is in MACHINE_FEATURES or not.

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-graphics/wayland/weston_%.bbappend | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/recipes-graphics/wayland/weston_%.bbappend b/recipes-graphics/wayland/weston_%.bbappend
index c3a7421..76bab9f 100644
--- a/recipes-graphics/wayland/weston_%.bbappend
+++ b/recipes-graphics/wayland/weston_%.bbappend
@@ -1,4 +1,3 @@
-EXTRA_OECONF_append_rpi = "\
-        --enable-rpi-compositor \
-        WESTON_NATIVE_BACKEND=rpi-backend.so \
-       "
+EXTRA_OECONF_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' --enable-rpi-compositor', d)}"
+EXTRA_OECONF_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
+
-- 
2.7.4


