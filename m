Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74000E00A4C; Thu, 19 Jan 2017 05:16:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 010BCE00A3B
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 05:16:19 -0800 (PST)
Received: from localhost.localdomain (36-225-57-150.dynamic-ip.hinet.net
	[36.225.57.150])
	by msfrf2621.sfr.fr (SMTP Server) with ESMTP id 1E0B11C000428;
	Thu, 19 Jan 2017 14:16:19 +0100 (CET)
Received: from localhost.localdomain (36-225-57-150.dynamic-ip.hinet.net
	[36.225.57.150])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2621.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 19 Jan 2017 14:16:17 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 21:16:05 +0800
Message-Id: <1484831765-82329-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] Add recipe to build qtbase for raspberrypi out of the box.
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
X-List-Received-Date: Thu, 19 Jan 2017 13:16:34 -0000

Supports different EGLFS_DEVICE_INTEGRATION for userland or vc4

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-qt/qt5/qtbase_%.bbappend | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 recipes-qt/qt5/qtbase_%.bbappend

diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..aebcaf9
--- /dev/null
+++ b/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,10 @@
+PACKAGECONFIG_GL_rpi = "gles2 eglfs"
+DEPENDS_${PN}_append_rpi = " virtual/egl"
+
+OE_QTBASE_EGLFS_DEVICE_INTEGRATION = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'eglfs_kms', 'eglfs_brcm', d)}"
+
+do_configure_prepend() {
+    # Add the appropriate EGLFS_DEVICE_INTEGRATION, depending if using VC4 or USERLAND
+    echo "EGLFS_DEVICE_INTEGRATION = ${OE_QTBASE_EGLFS_DEVICE_INTEGRATION}" > ${S}/mkspecs/oe-device-extra.pri
+}
+
-- 
2.7.4


