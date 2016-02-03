Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 816FAE00C2D; Wed,  3 Feb 2016 02:51:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32C94E00B3D
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 02:51:47 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id l66so157440868wml.0
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 02:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=JNFkbL5Ahu3Ipcv1g07rygANZQiwbu1uYxAB6QN82tY=;
	b=CYJ419Migkdg/At98iGn4TirB8xlZI6kni9O8Bqzdwd25C90ZJaL2+/WW4eYvHCO83
	XRUBl1sXL6vBjXYGsQro3ZK0f3UJBmKdaxaCo9Pnp1pJgyNKARUFh0IT9l5Anu5peA5n
	cLmbHP4YukJO5cvSleJFkj/0J/2NVKIgi26/TBgFrEFpblkAceBmDtsYV6yKfH5tPX+6
	x8YZqcjWddMaEODN2nfkrxgfCYmHNSlH/wLjy3VBMKYB/lZITuqh3Q04zboM+SpvfKGm
	wfO6oCsWee6YXffDwCiEVT8hZJN8WU9SRm9AxZsy3Ifa3SnugpVYByNY8XkbEPNd1bBq
	Gs/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JNFkbL5Ahu3Ipcv1g07rygANZQiwbu1uYxAB6QN82tY=;
	b=M/KQG2XOZwzCOQfyMifMHZnmgwz6JJwYYOtN/pZ0O9OoYwv94nr+0SyoNvU8gWDGv4
	rkbEj9sO/3Mwtq1710/MG5WKzLsjOQvgxqFUPbFnWZvL00ANLSdgMku+wqv2mW7IsSds
	2TuVrH6VexaKo7UvNnFLF5qXYlZFqaow2pHvaAcbzQLicgACl4yvsawgIOj2u5gUWWbA
	bpkJT1rJBJGTBvsgZRYmIVeRUvGmUii8qC/YuFdRV5JJ/djOlwM8DPHWo+jFjElw489+
	JW8MEjw/fyV++8PgKDfpk2/L6SH9q7oI3RZYXfCKxHqkN/iCAV0w2gWHt7J8AjUCk7Gz
	6y7Q==
X-Gm-Message-State: AG10YOTL1J4TVDAkyC80H1lMNcpjQyNq16bWitE4E87r6Otv5DBFp4pTNlfVQItJhZTjdg==
X-Received: by 10.194.62.11 with SMTP id u11mr1209970wjr.172.1454496706536;
	Wed, 03 Feb 2016 02:51:46 -0800 (PST)
Received: from localhost.localdomain (boi78-4-88-168-227-92.fbx.proxad.net.
	[88.168.227.92])
	by smtp.gmail.com with ESMTPSA id i2sm5817121wjx.42.2016.02.03.02.51.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 03 Feb 2016 02:51:44 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Feb 2016 11:51:01 +0100
Message-Id: <1454496662-5619-1-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-raspberrypi][PATCH 1/2] qt5: fixed raspberrypi support
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
X-List-Received-Date: Wed, 03 Feb 2016 10:51:53 -0000

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


