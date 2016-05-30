Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF55FE00D6C; Mon, 30 May 2016 13:49:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C83BBE00EC9
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 13:49:50 -0700 (PDT)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])
	by msfrf2612.sfr.fr (SMTP Server) with ESMTP id 3C4561C000438;
	Mon, 30 May 2016 22:49:50 +0200 (CEST)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2612.sfr.fr (SMTP Server) with ESMTPSA;
	Mon, 30 May 2016 22:49:50 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2016 04:49:17 +0800
Message-Id: <1464641363-88572-9-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1464641363-88572-1-git-send-email-herve.jourdain@neuf.fr>
References: <1464641363-88572-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v3 08/14] wayland/weston_%.bbappend: modify configuration options to support vc4graphics
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
X-List-Received-Date: Mon, 30 May 2016 20:49:59 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-graphics/wayland/weston_%.bbappend | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-graphics/wayland/weston_%.bbappend b/recipes-graphics/wayland/weston_%.bbappend
index c3a7421..57b8079 100644
--- a/recipes-graphics/wayland/weston_%.bbappend
+++ b/recipes-graphics/wayland/weston_%.bbappend
@@ -1,4 +1,2 @@
-EXTRA_OECONF_append_rpi = "\
-        --enable-rpi-compositor \
-        WESTON_NATIVE_BACKEND=rpi-backend.so \
-       "
+EXTRA_OECONF_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' --enable-rpi-compositor WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
+
-- 
2.7.4


