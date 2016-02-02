Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3446E00C1A; Tue,  2 Feb 2016 09:04:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FFE4E008F1
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 09:04:03 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id r129so127631000wmr.0
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 09:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=JNFkbL5Ahu3Ipcv1g07rygANZQiwbu1uYxAB6QN82tY=;
	b=VwfjuRZm+JkjTyNUeRrTVmQGziBVn7iTCeNM4+4B5iaHQrLgJL6+pzTcqj+8MV5ALh
	0RoNv297YYrf+dSl/I3qlnEjNvSF6FOzW7Rt42GEVaXfAu+hKIcLsmecSSJfWWGCBbeL
	nGucIYSVryBTTb/sS8BjkBfMYVlDV2EydVx+q8U06ZHiGdZlwpa8wOuCm9rscWSPqFQ6
	F+5JmGPM02iUL0IMF6BgZROcilQZWVGZVbECsxFz7j6yOcHD47V55Rgx+CEN+pV608zt
	H9kOnG+rRuxysZNImdUgZlwtevv0uNbefyzgRG0uMDKLBva6jxVg5+TLQrl1IiKKrism
	bvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=JNFkbL5Ahu3Ipcv1g07rygANZQiwbu1uYxAB6QN82tY=;
	b=EEy5Q7cT1HaYh1kXk32cbRtyRP6lIi7Kb0JHkg37/coaNC9H7ReWAVnr5AElLfcarz
	JuY+WW6S/yCug3mE4Yd+LWmEPTpxjj6OF6yq7YBWv8sGhHm3xmy3mgR/acfhj4+qvuwc
	jy6hNlUd9mp3oquyn97sbPY6IEH5M4n6c7misZd/Cok5xoLkSNw1rTSfq7lc3vRy891z
	FdBgBXOE6yXGPE++Rp++MbKgeSeCIYpS79jfvEfHZZc5Qy6r821/bgKmZhbxeE3GY0vW
	AvIJ/8Cq9Z16kuiQtDdotgFcJX4VqVxQuJ8ycsUpF6dWOd28e4jvqsUTfPmAHYp4yEKM
	DYUw==
X-Gm-Message-State: AG10YOTzE8cps/KM3/ZTB3LXco0+ehm2lnwk+66ZIq6NvFER/igYjepjUTEJcPXFIHjoIg==
X-Received: by 10.194.62.11 with SMTP id u11mr33678175wjr.172.1454432642714;
	Tue, 02 Feb 2016 09:04:02 -0800 (PST)
Received: from localhost.localdomain (boi78-4-88-168-227-92.fbx.proxad.net.
	[88.168.227.92]) by smtp.gmail.com with ESMTPSA id
	gl10sm2377371wjb.30.2016.02.02.09.04.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 02 Feb 2016 09:04:02 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Feb 2016 18:03:57 +0100
Message-Id: <1454432638-20259-1-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <EC7BC1CD2E085743BB2AE634252C39C17170D3@server.exchange.local>
References: <EC7BC1CD2E085743BB2AE634252C39C17170D3@server.exchange.local>
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
X-List-Received-Date: Tue, 02 Feb 2016 17:04:07 -0000

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


