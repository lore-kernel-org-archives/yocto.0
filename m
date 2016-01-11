Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0768FE00B6D; Sun, 10 Jan 2016 18:55:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C932AE00B2C
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 18:55:27 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id f206so247764442wmf.0
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 18:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=CWPGkXC5Af2wCdp0APSN0P2UuDESIUBoDq5JqB3s3e4=;
	b=cC1JDBIUQ+HByfO6xanpy9z3WxuomVXJhes4pJ095D4ncg/F8hOL1LCGPdM1PaewPi
	Qfm8iZlzmYX4Un5zTl98KEcEYpcpYkQBfKaZFudu5b9TntRxUInx4QX4y+U12A4Q8TfX
	HfcgaiY2EEGtkWGLNP7j0rpM6cyGt9q+7dxnVN6ayuk3ZgZp+3xi7dhbo2HuPQHfXeJP
	UyB0y1kGmn8PHLqf8U5FTnb5yemeHo+DyDpRky5Fy4qVmlILzB8YFEe7oFc8yigkX1Fl
	ThVKlxG/9k5QnvjpeTLk5s3mn9KWYRQEqf66myzdKyqQkgyk2yxkqlK31dE4coO4Xtk5
	6X+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=CWPGkXC5Af2wCdp0APSN0P2UuDESIUBoDq5JqB3s3e4=;
	b=A27D0X6KBl2+63dvwlo5qQbYygp0zJU2sXzVOmkJHdpQqLWS5VCeD+hV/ww8e9/Jqt
	tArYZC9h+z6qFh2yoO4rkhB58LI4n8+D/Z9PpCn5RnL8RkiW536VGAdnzB7rdZVTtWPn
	jW1YeZc4rNbX1M39xQejYHHELHfAzNzsrsy6iBMaujYDhLjUq2uM2PMC9TVNtkKqSXel
	p7dgND5NF12vBkEosltd5p3eh6x1f9V9vGLCiA68hJ+8qXiAC7RvggIqNRZLNzDoVNtL
	6o0rMxcUXpnHsIDntavvf0b9LNyUsC5cQdoa6kBbffx7NOqjQgiOzgCci3HMgLLHp9An
	DyJQ==
X-Gm-Message-State: ALoCoQmYdRmv3MYpBckwAEqNeYfg/ZALEl+VKcaJKEUc90gvNj5Ne706AXoqpkulFLEOVqtaD90IR2v/hcIBL+kZq7gQ2eduYQ==
X-Received: by 10.28.195.212 with SMTP id t203mr11752367wmf.46.1452480927249; 
	Sun, 10 Jan 2016 18:55:27 -0800 (PST)
Received: from localhost.localdomain (107.146.113.78.rev.sfr.net.
	[78.113.146.107]) by smtp.gmail.com with ESMTPSA id
	lx4sm117492857wjb.5.2016.01.10.18.55.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Jan 2016 18:55:26 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 03:55:13 +0100
Message-Id: <1452480913-15282-3-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1452480913-15282-1-git-send-email-j.madieu@expemb.com>
References: <CAK18fxHt88ajUp9sXYhDC8U4V+wg+YHMHyKmS22fMziNxrA=pA@mail.gmail.com>
	<1452480913-15282-1-git-send-email-j.madieu@expemb.com>
Subject: [meta-raspberrypi][PATCH 4/4] qtbase bbappend: cleanned recipe
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
X-List-Received-Date: Mon, 11 Jan 2016 02:55:31 -0000

Signed-off-by: John Madieu <j.madieu@expemb.com>
---
 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
index ac158a9..8b77bfa 100644
--- a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
+++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
@@ -1,12 +1,12 @@
 
 do_configure_prepend_rpi() {
-	
+
 	sed -i 's!load(qt_config)!!' ${S}/mkspecs/linux-oe-g++/qmake.conf
     if ! grep -q '^EGLFS_' ${S}/mkspecs/linux-oe-g++/qmake.conf; then
         cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
 QMAKE_INCDIR_EGL = \$\$[QT_SYSROOT]${includedir}/interface/vcos/pthreads \$\$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
-QMAKE_INCDIR_OPENGL_ES2 = \$\${QMAKE_INCDIR_EGL} 
-QMAKE_LIBS_EGL = -lEGL -lGLESv2 
+QMAKE_INCDIR_OPENGL_ES2 = \$\${QMAKE_INCDIR_EGL}
+QMAKE_LIBS_EGL = -lEGL -lGLESv2
 EOF
 
         if [ -d ${S}/src/plugins/platforms/eglfs/deviceintegration/eglfs_brcm ]; then
@@ -27,8 +27,3 @@ load(qt_config)
 
 EOF
 }
-
-
-
-
-
-- 
1.9.1


