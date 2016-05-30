Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BE19E00EC9; Mon, 30 May 2016 13:50:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE7E8E00ED3
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 13:49:51 -0700 (PDT)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])
	by msfrf2612.sfr.fr (SMTP Server) with ESMTP id 221B61C000438;
	Mon, 30 May 2016 22:49:51 +0200 (CEST)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2612.sfr.fr (SMTP Server) with ESMTPSA;
	Mon, 30 May 2016 22:49:51 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2016 04:49:18 +0800
Message-Id: <1464641363-88572-10-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1464641363-88572-1-git-send-email-herve.jourdain@neuf.fr>
References: <1464641363-88572-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v3 09/14] weston/weston_%.bbappend: modify configuration options to support vc4graphics
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
X-List-Received-Date: Mon, 30 May 2016 20:50:00 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-graphics/weston/weston_%.bbappend | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/recipes-graphics/weston/weston_%.bbappend b/recipes-graphics/weston/weston_%.bbappend
index 3ec311d..70f4360 100644
--- a/recipes-graphics/weston/weston_%.bbappend
+++ b/recipes-graphics/weston/weston_%.bbappend
@@ -1,7 +1,8 @@
-EXTRA_OECONF += "--enable-rpi-compositor \
-             --disable-resize-optimization \
-             --disable-setuid-install \
-             --disable-xwayland-test \
-             --disable-simple-egl-clients \
-             WESTON_NATIVE_BACKEND=rpi-backend.so \
+PACKAGECONFIG_rpi_remove = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', ' fbdev', '', d)}"
+EXTRA_OECONF += "--disable-xwayland-test \
+                 --disable-simple-egl-clients \
 "
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--enable-rpi-compositor', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-resize-optimization', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-setuid-install', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', 'WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
-- 
2.7.4


