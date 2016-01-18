Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C480DE00B8B; Mon, 18 Jan 2016 06:14:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96403E00AB9
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 06:14:17 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id l65so101202888wmf.1
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 06:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=JNFkbL5Ahu3Ipcv1g07rygANZQiwbu1uYxAB6QN82tY=;
	b=zy3fbm/UqopSmjZ8I75Jfa7yO+xJbe53NPac07ROQjlMrvp3wczUu9Y38aNTpPLs8s
	OQc+A1GnBdEJwpd/39qYuLVG2uys0MoK2YUL3nyg4Ip4nfLjGKdMKxSHNU/8i0V9D/MI
	WmkULepQYWePH7PYNrEJQD2WFoSAkN+VBYp8mnikO4n0OyO1uHrIN3WRIgqx7grtJ+3v
	b6ChSRFq9MiQNHaie4TgA1Pc7bR3hVyF8Y0WIEa//7VURN6M1d/rGTRz5Jq44aLKb9Tt
	sr9EruMC5xvuU/7nrKlBfqlMmrE/bOJubB0Wko93UaThi0fur6KPZzro1fkuOZigVPx3
	5Tvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JNFkbL5Ahu3Ipcv1g07rygANZQiwbu1uYxAB6QN82tY=;
	b=CA7PQa/tCME6Vmtn/nZsXpb08ROn+KqzHVqpGVgHf6tf+wnnEoRezxnK6IzicVHAkN
	OnjsnBBIFk3+szVep9CeeXPBYXW8LHk+SiRZxRKLnhbGRO9rb8m7yB8Uqlaxi6Z3Oigz
	nt79GNog9qwSZV9W74Lxf28+oHQyMD7hhqNhPEiEdcpWHB6dGG+bjOIgTXH9mA+gbgfP
	fr1EzKcLzZ3uYdBZjEc/W7VXp9XbP2pI9tltDpJmJ9qxv04FQiAbUeSwiVphTTw3vJ61
	67o/5eUFbFmFQiN7K+CET4WduG2M5H8qNf/tKo7lXyfta/Do3TqwXvEsipZDokVQbcAa
	pr/A==
X-Gm-Message-State: ALoCoQm+NgyEfuE0P6IzhVF+OEfZa+/QHJuoVzKvxBCaksXMW/aSpN4JgeYG9TylXtea1ABa+f7Zu1LQi935JCBfG2kMPe65KA==
X-Received: by 10.194.175.198 with SMTP id cc6mr24930579wjc.24.1453126456398; 
	Mon, 18 Jan 2016 06:14:16 -0800 (PST)
Received: from localhost.localdomain (23-227-190-109.dsl.ovh.fr.
	[109.190.227.23]) by smtp.gmail.com with ESMTPSA id
	r10sm24003568wjz.24.2016.01.18.06.14.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 18 Jan 2016 06:14:15 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Jan 2016 15:13:53 +0100
Message-Id: <1453126434-30548-1-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
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
X-List-Received-Date: Mon, 18 Jan 2016 14:14:18 -0000

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


