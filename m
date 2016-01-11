Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97B5FE00B2C; Sun, 10 Jan 2016 18:01:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FE47E00903
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 18:01:11 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id l65so194058664wmf.1
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 18:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=yvcEP/poXwIIAzt1gnnyqt4ggb2RZvdJN/EOHd2WjTo=;
	b=P5Q/jZnhHEZ1TxxRR1dOwhcl1YUavcQhhr6TkKr2RHg82JapScDXhfXUD8p6dVfGy4
	2ZA9tp91WXb0JXZFGQLSKxY0+0A/i+iDW69vf0zQJNKiiAclucDBMPDCMLVn73udEdGI
	+BmZmtp7uRiKwZ8I8Z+YIojeOM29NYEEXX2r8f8oNbdPrg5MvAmKJWwIiERid4DPIaAE
	sXmZ47GWBOQbzzkDrLWJsEK0vKXlByTx66w1/U1mI8ZvkXF8P3I4sbmhBZLH0LXW5Hes
	51YKLn+q12ef4OefxoBl3oKv0O56fG4XmrkAuCa7f8QwY9g74tZ5xze0H3D9PTsA5cAk
	mUlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=yvcEP/poXwIIAzt1gnnyqt4ggb2RZvdJN/EOHd2WjTo=;
	b=TZwC6z2w0PLP8lWLL+Bnnq/8A7xH6FrOpbvgwkvyh/gKw0keV6G+KtGl28TV4fyqHx
	6KdIms+90huWnxrmFJgUpTBXrl0/mZiQdoup3U5qWNraBdNeRyI/TVzAM37ZkNTzwv2s
	F8HIfIzfRQzTd8Jmzq+HyvhfsWaHq4psF4h3vp4D5EkxxnroM0Di50gdFz6fEpRWG3/D
	L/6V3qv0w5vdHimdJRXGjIMlBT+SlHyFI8oEkwDb9UO184uj5uuY2DJ3PMbLZMDyw89+
	SPk5WaovV9w14GsMDaXhg4Vc8a0sXwosZeSwcCL1WIasGagPHtailzuWz2cANdQ9RcD8
	BJfw==
X-Gm-Message-State: ALoCoQmaa7CfVyHmIqQ9otGlNCy9p2gaq46CFrKFuD6SG0cImWVC7iHWy+QBwlb+H99ZK9Bs0MC/emDL+EWe8PKnT4XhbUa9WQ==
X-Received: by 10.28.213.204 with SMTP id m195mr9872268wmg.53.1452477670557;
	Sun, 10 Jan 2016 18:01:10 -0800 (PST)
Received: from localhost.localdomain (107.146.113.78.rev.sfr.net.
	[78.113.146.107]) by smtp.gmail.com with ESMTPSA id
	dl8sm117515325wjb.29.2016.01.10.18.01.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Jan 2016 18:01:09 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 03:01:03 +0100
Message-Id: <1452477663-14043-1-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20160110184033.GA10098@resin>
References: <20160110184033.GA10098@resin>
Subject: [meta-raspberrypi][PATCH 2/2] layer.conf: avoid to force users to add the qt5 layer because of qtbase bbappend
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
X-List-Received-Date: Mon, 11 Jan 2016 02:01:21 -0000

Signed-off-by: John Madieu <j.madieu@expemb.com>

cleanned qtbase.bbappend

Signed-off-by: John Madieu <j.madieu@expemb.com>
---
 conf/layer.conf                            |  4 ++++
 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 29 +++++++++++++++++++++++++
 recipes-qt/qt5/qtbase_%.bbappend           | 34 ------------------------------
 3 files changed, 33 insertions(+), 34 deletions(-)
 create mode 100644 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
 delete mode 100644 recipes-qt/qt5/qtbase_%.bbappend

diff --git a/conf/layer.conf b/conf/layer.conf
index bea5a65..6346459 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -12,3 +12,7 @@ BBFILE_PRIORITY_raspberrypi = "9"
 # Additional license directories.
 LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
 
+# Let us add layer-specific (such as qt5-layer) bbappends
+# which are only applied when that layer is included in our configuration
+BBFILES += "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % layer \
+               for layer in BBFILE_COLLECTIONS.split())}"
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
diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
deleted file mode 100644
index ac158a9..0000000
--- a/recipes-qt/qt5/qtbase_%.bbappend
+++ /dev/null
@@ -1,34 +0,0 @@
-
-do_configure_prepend_rpi() {
-	
-	sed -i 's!load(qt_config)!!' ${S}/mkspecs/linux-oe-g++/qmake.conf
-    if ! grep -q '^EGLFS_' ${S}/mkspecs/linux-oe-g++/qmake.conf; then
-        cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
-QMAKE_INCDIR_EGL = \$\$[QT_SYSROOT]${includedir}/interface/vcos/pthreads \$\$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
-QMAKE_INCDIR_OPENGL_ES2 = \$\${QMAKE_INCDIR_EGL} 
-QMAKE_LIBS_EGL = -lEGL -lGLESv2 
-EOF
-
-        if [ -d ${S}/src/plugins/platforms/eglfs/deviceintegration/eglfs_brcm ]; then
-            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
-EGLFS_DEVICE_INTEGRATION = eglfs_brcm
-EOF
-        else
-            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
-EGLFS_PLATFORM_HOOKS_LIBS = -lbcm_host
-EGLFS_PLATFORM_HOOKS_SOURCES = \$\$PWD/../devices/linux-rasp-pi-g++/qeglfshooks_pi.cpp
-EOF
-        fi
-    fi
-    cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
-
-
-load(qt_config)
-
-EOF
-}
-
-
-
-
-
-- 
1.9.1


