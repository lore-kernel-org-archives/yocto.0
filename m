Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64BCBE00A80; Thu, 19 Jan 2017 04:49:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17C98E00B2E
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 04:49:46 -0800 (PST)
Received: from localhost.localdomain (36-225-57-150.dynamic-ip.hinet.net
	[36.225.57.150])
	by msfrf2630.sfr.fr (SMTP Server) with ESMTP id 8AC151C001C18;
	Thu, 19 Jan 2017 13:49:44 +0100 (CET)
Received: from localhost.localdomain (36-225-57-150.dynamic-ip.hinet.net
	[36.225.57.150])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2630.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 19 Jan 2017 13:49:42 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 20:49:18 +0800
Message-Id: <1484830158-39365-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] Fix compilation of Weston when using USERLAND: kms PACKAGECONFIG must be removed
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
X-List-Received-Date: Thu, 19 Jan 2017 12:49:57 -0000

When building weston with userland, there is an error at configuration time:
| checking for DRM_COMPOSITOR... no
| configure: error: Package requirements (libudev >= 136 libdrm >= 2.4.30 gbm mtdev >= 1.1.0) were not met:
| 
| No package 'gbm' found
This is due to kms being enabled by default in the PACKAGECONFIG, which triggers --enable-drm-compositor, which requires gbm [vc4 is kms-based, not userland]

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-graphics/wayland/weston_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/wayland/weston_%.bbappend b/recipes-graphics/wayland/weston_%.bbappend
index f2cb7aa..f36bd32 100644
--- a/recipes-graphics/wayland/weston_%.bbappend
+++ b/recipes-graphics/wayland/weston_%.bbappend
@@ -1,6 +1,6 @@
 EXTRA_OECONF_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' --enable-rpi-compositor WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
 
-PACKAGECONFIG_remove_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'fbdev', '', d)}"
+PACKAGECONFIG_remove_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'fbdev', 'kms', d)}"
 
 EXTRA_OECONF += "--disable-xwayland-test \
                  --disable-simple-egl-clients \
-- 
2.7.4


