Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06EBCE00A92; Tue, 12 Jan 2016 06:22:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F155E00A27
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 06:22:18 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id b14so322693524wmb.1
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 06:22:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=JNFkbL5Ahu3Ipcv1g07rygANZQiwbu1uYxAB6QN82tY=;
	b=dAgkK38evtbthfrjXglbW+RctAx9i9E9Tr59KrZEa8rJiDNHa4diOh+EglDXqGO2UE
	ekHhZo3BW0VEUNFWJVKLhz9WOmWgkYSgoL16ezgHEdNWFbK3PQiH/9FZNLlr/3AAujbR
	77QqT6xCwJGz5yyXXR+7OdIed7OjJBydzxJv/8+ocZOf0koQX9OPM9XM2ptBXxrm2SYz
	i0Vt2bY/2rYJblauvmt1rthvjCoBrx7sUqW0OaU32h+toQfzQGn7LJvaehcPsZ7PdEjS
	BO756/nXWva795gWKihcOIkZeTN8FSri/n1I5SbLsQytvwMOBAw+yAJYYvKYcMxaB+cF
	um6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=JNFkbL5Ahu3Ipcv1g07rygANZQiwbu1uYxAB6QN82tY=;
	b=NYfDkeMBwpDDQ6IRYgznjkg6f7qwzxJRuUnAwGboNXYy8v3ih3LUXBZw7Ntp6zsG/9
	v+Rb78YFgTxEt8lIv3pkjH3tCz5Lo1BiEj9TcdI6wRlKoO0UYZnB0YARdapu6XFGjKSz
	TbDY9oGEgihf6dkTsLT1e7fq9sFzf5zX16D90tWX8DsRUrgjf31gwx3nkqwFLe9NB2ua
	l8ajTZQIOY1/9b+AGTgC6XHxgldj5sGjM2OmtT73ej4+TBgX7p+b9Jib0F3GX0xZAyni
	KLy/lqzDi7v4PmWJTKqNrcjwRq7sTFl1Z+J27xzJRdwn1jiCC/w0IgQep5tPqJ/MBW4s
	vKww==
X-Gm-Message-State: ALoCoQkTzvHg/cAvbKQA7QTGJdBDABJ4mdkeZxFpzYnpI4aByql6LYqEmeOkaH4lW8xI9th1VL1jY1Fvbs5Ms6zOwKlaHaK36g==
X-Received: by 10.194.116.97 with SMTP id jv1mr140152477wjb.38.1452608537828; 
	Tue, 12 Jan 2016 06:22:17 -0800 (PST)
Received: from localhost.localdomain (23-227-190-109.dsl.ovh.fr.
	[109.190.227.23]) by smtp.gmail.com with ESMTPSA id
	g3sm124363897wjw.31.2016.01.12.06.22.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 12 Jan 2016 06:22:16 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Jan 2016 15:22:09 +0100
Message-Id: <1452608530-20009-1-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <CAJzgOf+jeDLnwB7Jg4UkA6+KX0JaUU0qRGB7m4zK2ppg2y_Lgg@mail.gmail.com>
References: <CAJzgOf+jeDLnwB7Jg4UkA6+KX0JaUU0qRGB7m4zK2ppg2y_Lgg@mail.gmail.com>
Subject: [meta-raspberrypi][PATCH v3 1/2] qt5: fixed raspberrypi support
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
X-List-Received-Date: Tue, 12 Jan 2016 14:22:24 -0000

    Because EGL properties were not defined properly, we always had the following error
        make: *** [egl] Error 1
        | EGL disabled.
        |  The EGL functionality test failed; EGL is required by some QPA plugins to manage cont
        |  You might need to modify the include and library search paths by editing QMAKE_INCDIR

    x11 in DISTRO_FEATURES also produced the following error
        error: 'QAccessible' has not been declared
        |              } else if (QStyleHelper::isInstanceOf(groupBox->styleObject,
        QAccessible::Grouping)) {
        |                                                       ^
        |Makefile:53048: recipe for target '.obj/qgtkstyle.o' failed

    This bbappend definitively fix these bug

Signed-off-by: John Madieu <j.madieu@expemb.com>
---
 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 33 ++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend

diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..f61cd1d
--- /dev/null
+++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,33 @@
+
+# Raspberrypi only need gles2
+PACKAGECONFIG_GL = "gles2"
+
+QT_CONFIG_FLAGS_append = "${@base_contains('DISTRO_FEATURES', 'x11', ' -accessibility ', '', d)}"
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


