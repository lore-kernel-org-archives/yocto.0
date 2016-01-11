Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67BE2E0079A; Mon, 11 Jan 2016 06:40:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8BB9E00444
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 06:40:37 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id u188so217100290wmu.1
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 06:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=OD6SYgO/IuzVGAjbIkYdp+vh6+7vzIM3oIMV/TU7WHQ=;
	b=1+TeLIbPrsZ3ZBahlJrkI39KceY7sUgyAK6xoaUXO4E18eLy0WNpiIwfzAjXDQX4MU
	Ygb3JK0whdwJYXnVSJjexMo8Mgex8soaWhseULVD+l+fraQkj/tN4jeZ/l3z+6vZDOPk
	XJye4J2BIwFg9/QBTb5b7yCWchiycbP0Mg1mYy+VFo12kw+O/dSuYAjgsiwMcxli/pfE
	pzdsDuwLLZ9fLS5yMYtabLDjo1jRTrFeBWzkp3oyYYFIWWnQQW+9JwcAVXJHOI7oVPiV
	C5HRp/78pQNpCBYTNjDw01XjjvKyHav4vc2Ku7RzUR7DohZWTp7Qlqne6kf7a90f+R7K
	tZHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=OD6SYgO/IuzVGAjbIkYdp+vh6+7vzIM3oIMV/TU7WHQ=;
	b=Fx1Mw3vHsmXTynqyb7kaozFMz3NAJDxujkx7yHORu6q2gKHDn5lkYzFjffhSqkqQIz
	OFY4RzsNWvfzirjNH8gW1m7XolVTa+4YD3qC3kJuk5yvUJzra7yzmeeRqKcMt+A3jZLY
	+uhEf+0oXH9VvGanuhp/BgozKehsyibAyjzJYLnNyJNcKnLPYoviS8qa5Pug6LSwJc89
	2wgv5qNh4yQ2gUAJesubr5BVfz92sP8awc3D4/37InhBSKyEGaRgyDIkk9sk8AMJy366
	+sq+74yNAOQH84GC5AaoCsjPSmZOv2IDfmPlFOwB/vFuDq/sNz5lBVowaBPrkq3yQTiD
	Rfrw==
X-Gm-Message-State: ALoCoQn8XxmaDi5qH2oO5J6M0yCAW3E2t71n52J81UEcDR/uNyliXRqwK/Z0sXHP2avJSMgUG79imn7d4ZDPgTsagUWmfJJGXg==
X-Received: by 10.194.117.5 with SMTP id ka5mr119099472wjb.20.1452523236622;
	Mon, 11 Jan 2016 06:40:36 -0800 (PST)
Received: from localhost.localdomain (179.16.90.92.rev.sfr.net. [92.90.16.179])
	by smtp.gmail.com with ESMTPSA id
	q75sm13165371wmd.6.2016.01.11.06.40.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Jan 2016 06:40:36 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 15:40:28 +0100
Message-Id: <1452523229-24341-1-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <CAJzgOf+useUh1kc6eKnP1bbCvALnH3M+tYdod3WbTM_9-rp=eQ@mail.gmail.com>
References: <CAJzgOf+useUh1kc6eKnP1bbCvALnH3M+tYdod3WbTM_9-rp=eQ@mail.gmail.com>
Subject: [meta-raspberrypi][PATCH v2 1/2] qt5: fixed raspberrypi support
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
X-List-Received-Date: Mon, 11 Jan 2016 14:40:41 -0000

Because EGL properties were not defined properly, we always had the following error
    make: *** [egl] Error 1
    | EGL disabled.
    |  The EGL functionality test failed; EGL is required by some QPA plugins to manage cont
    |  You might need to modify the include and library search paths by editing QMAKE_INCDIR

This bbappend definitively fix the bug

Signed-off-by: John Madieu <j.madieu@expemb.com>
---
 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend

diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..8b77bfa
--- /dev/null
+++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,29 @@
+
+do_configure_prepend_rpi() {
+
+	sed -i 's!load(qt_config)!!' ${S}/mkspecs/linux-oe-g++/qmake.conf
+    if ! grep -q '^EGLFS_' ${S}/mkspecs/linux-oe-g++/qmake.conf; then
+        cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
+QMAKE_INCDIR_EGL = \$\$[QT_SYSROOT]${includedir}/interface/vcos/pthreads \$\$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
+QMAKE_INCDIR_OPENGL_ES2 = \$\${QMAKE_INCDIR_EGL}
+QMAKE_LIBS_EGL = -lEGL -lGLESv2
+EOF
+
+        if [ -d ${S}/src/plugins/platforms/eglfs/deviceintegration/eglfs_brcm ]; then
+            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
+EGLFS_DEVICE_INTEGRATION = eglfs_brcm
+EOF
+        else
+            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
+EGLFS_PLATFORM_HOOKS_LIBS = -lbcm_host
+EGLFS_PLATFORM_HOOKS_SOURCES = \$\$PWD/../devices/linux-rasp-pi-g++/qeglfshooks_pi.cpp
+EOF
+        fi
+    fi
+    cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
+
+
+load(qt_config)
+
+EOF
+}
-- 
1.9.1


