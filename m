Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F0C8E00AC5; Tue, 25 Oct 2016 15:37:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [178.209.48.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 349 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Oct 2016 15:36:58 PDT
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B081E00A7B
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 15:36:58 -0700 (PDT)
Received: from seahawk.toradex.int
	(75-146-58-181-Washington.hfc.comcastbusiness.net [75.146.58.181])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 316545C0908;
	Wed, 26 Oct 2016 00:24:39 +0200 (CEST)
From: Stefan Agner <stefan@agner.ch>
To: yocto@yoctoproject.org
Date: Tue, 25 Oct 2016 15:32:08 -0700
Message-Id: <1477434728-31222-1-git-send-email-stefan@agner.ch>
X-Mailer: git-send-email 1.9.1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1477434280; bh=zBlFXHJYRdvjCWfJdkDaxk2yjnf5Cwuj7r8hkrEwkwU=;
	h=From:To:Cc:Subject:Date:Message-Id;
	b=dJ3r3NU5e6PtpIRmP1annNdJB5E74UeD6ysTsLEHcE2uB0SIc/JQxN6uMNhZzFT1kibKeD0Hv+l9wyepB3K6R03uJJj+Xjw2vcJViRAf6H9SSHi2q0lzYAfNFBzJrSLW44udCW4GL/KIvmU6OSt3+HNw6pATx7+LPyMBDCBKqGk=
Cc: Stefan Agner <stefan.agner@toradex.com>
Subject: [meta-qt4][PATCH] qt4: add patch which fixes 24-bit color depth
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
X-List-Received-Date: Tue, 25 Oct 2016 22:37:01 -0000

From: Stefan Agner <stefan.agner@toradex.com>

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 recipes-qt4/qt4/qt4-4.8.7.inc                      |  1 +
 .../0001-QWS-fix-24-bit-RGB-BGR-handling.patch     | 36 ++++++++++++++++++++++
 2 files changed, 37 insertions(+)
 create mode 100644 recipes-qt4/qt4/qt4-4.8.7/0001-QWS-fix-24-bit-RGB-BGR-handling.patch

diff --git a/recipes-qt4/qt4/qt4-4.8.7.inc b/recipes-qt4/qt4/qt4-4.8.7.inc
index 5ecf7fd..16b22a8 100644
--- a/recipes-qt4/qt4/qt4-4.8.7.inc
+++ b/recipes-qt4/qt4/qt4-4.8.7.inc
@@ -30,6 +30,7 @@ SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-ever
            file://gcc-6.patch \
            file://Fix-QWSLock-invalid-argument-logs.patch \
            file://add_check_for_aarch64_32.patch \
+           file://0001-QWS-fix-24-bit-RGB-BGR-handling.patch \
            file://g++.conf \
            file://linux.conf \
            file://fix-for-mips-n32.patch \
diff --git a/recipes-qt4/qt4/qt4-4.8.7/0001-QWS-fix-24-bit-RGB-BGR-handling.patch b/recipes-qt4/qt4/qt4-4.8.7/0001-QWS-fix-24-bit-RGB-BGR-handling.patch
new file mode 100644
index 0000000..45856b0
--- /dev/null
+++ b/recipes-qt4/qt4/qt4-4.8.7/0001-QWS-fix-24-bit-RGB-BGR-handling.patch
@@ -0,0 +1,36 @@
+From 9722a85dd2b4a7210af66e2a135fe7aded5075c7 Mon Sep 17 00:00:00 2001
+From: Stefan Agner <stefan.agner@toradex.com>
+Date: Tue, 25 Oct 2016 14:37:02 -0700
+Subject: [PATCH] QWS: fix 24 bit RGB/BGR handling
+
+Use blit_24 for default 24-bit RGB case. This makes sure Qt works
+well with frame buffer using [23:0] R:G:B (little endian) pixel
+format. See also:
+https://bugreports.qt.io/browse/QTBUG-56740
+
+Upstream-Status: Submitted
+
+Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
+---
+ src/gui/embedded/qscreen_qws.cpp | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/src/gui/embedded/qscreen_qws.cpp b/src/gui/embedded/qscreen_qws.cpp
+index 407366c..a4ece07 100644
+--- a/src/gui/embedded/qscreen_qws.cpp
++++ b/src/gui/embedded/qscreen_qws.cpp
+@@ -1208,9 +1208,9 @@ void qt_blit_setup(QScreen *screen, const QImage &image,
+ #ifdef QT_QWS_DEPTH_24
+     case 24:
+         if (screen->pixelType() == QScreen::NormalPixel)
+-            screen->d_ptr->blit = blit_qrgb888;
+-        else
+             screen->d_ptr->blit = blit_24;
++        else
++            screen->d_ptr->blit = blit_qrgb888;
+         break;
+ #endif
+ #ifdef QT_QWS_DEPTH_18
+-- 
+2.10.0
+
-- 
1.9.1


