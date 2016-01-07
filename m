Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0CA9E00B45; Wed,  6 Jan 2016 16:45:12 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 902F5E00863
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 16:45:09 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id f206so99922562wmf.0
	for <yocto@yoctoproject.org>; Wed, 06 Jan 2016 16:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=mu2DIEyNkhWmkb31bd3gIql7XXp8xsMZOaYu/oCdeZk=;
	b=H4KNSMrRbA/z5rA1ZC+T07l7RdR7AfBGuDjrI65kYXGhmIJKOxrfGAUU2tujp3DthI
	akXYBULmBOj6bywm6VrnFOQTOPjUTKxL9qlIdWF8+EQWpvgqL508ZbyU48it2jNMHEmZ
	XzUEPmHt/QJX1H6fFrYaRH77XhwmH/rITc2Bu8UDeRD4kQv2prDXIeByISXXT76m4BQL
	2EfjBJav32R5ZPqjFiILDrYvaGIQ7cC+/2fVb4j4gYckQ+GeYZfoSeVNagKLMU0cPMRv
	Fvyjdro1RkKWvxE7jyQ226ImJxLHwOWUifiAAS5sngDPF6J7g3GJGwCTPdOdr9vgzAer
	gOeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=mu2DIEyNkhWmkb31bd3gIql7XXp8xsMZOaYu/oCdeZk=;
	b=PzTcHBUOyh9/aMdVtXeEunmsP0aK6MWRuMaoGDLtFAPxeXQ0z5b3pcDodLDBpm+LDL
	hSUmlillTJLB2lTB+UrWuMfUQxnWFSj1MoA3o2STz6WSMl5rPTs8jDQAHNJN1bBQyk60
	svSPz7FENYxS3YSfQxldzvbg+aS5NGxrkb9OwJecIIQvGkomyMTOVbm9cGelD0gqZvvZ
	vw5vnZdPXj+TgSRkHZtdUc/qYE/eWkKdxJ8zYhN7JjZ+AbibWf2gjkOTh7lJadGZ24C1
	KxQaAlYTcgbP9w/dPvnmD9Dm7b6NtUfiotfJw9nPy37lTjvIhXJCVJhTck1V+KoggQWL
	a8jw==
X-Gm-Message-State: ALoCoQm8cbu/mqD0zpOn3Iamk46vzl4hY+PG0z2BwWh5IDz5TIU2NjLHgN8gQgl9lgvOxf7MkUuKJPPjZO84Oamp6+CGZGh8zA==
X-Received: by 10.194.176.170 with SMTP id cj10mr98451774wjc.165.1452127508461;
	Wed, 06 Jan 2016 16:45:08 -0800 (PST)
Received: from localhost.localdomain
	(che78-h03-89-82-135-150.dsl.sta.abo.bbox.fr. [89.82.135.150])
	by smtp.gmail.com with ESMTPSA id
	i63sm11010853wmf.24.2016.01.06.16.45.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 06 Jan 2016 16:45:07 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Jan 2016 01:44:55 +0100
Message-Id: <1452127495-10015-1-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
X-Mailman-Approved-At: Thu, 07 Jan 2016 08:49:02 -0800
Subject: [meta-raspberrypi][PATCH] qt5: fixed raspberrypi support
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
X-List-Received-Date: Thu, 07 Jan 2016 00:45:12 -0000

Because EGL properties were not defined properly, we always had the following error
     make: *** [egl] Error 1
    | EGL disabled.
    |  The EGL functionality test failed; EGL is required by some QPA plugins to manage cont
    |  You might need to modify the include and library search paths by editing QMAKE_INCDIR

    This bbappend definitively fix the bug

Signed-off-by: John Madieu <j.madieu@expemb.com>
---
 recipes-qt/qt5/qtbase_%.bbappend | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 recipes-qt/qt5/qtbase_%.bbappend

diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..ac158a9
--- /dev/null
+++ b/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,34 @@
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
+
+
+
+
+
-- 
1.9.1


