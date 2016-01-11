Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30EA3E00B63; Sun, 10 Jan 2016 18:55:27 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5A22E00B2C
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 18:55:22 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id l65so194785165wmf.1
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2016 18:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=7dT0pdjEqBJGtVp3eGWjtOa6Dmab+wjs8zqU0Ku3T2E=;
	b=PfAt0vLAZjWFUm0oGZRhlkPi1sdYr2Z4M1HnGI2CaKQQZpS2Uxx3kshT9OdS6ZmfpQ
	z5SQJwCx0gzWeYGMu/aSRxexln022wDFbJEpbhqtyYm1xkB0dAjbJOcl2zHE2AhT+rq7
	u5d/l2ZwES1roMK5TPBBN2s2n03bdoud0il8xG/FRVR/X2Vxk8XRk+gkyxuMfVzKumsn
	+lMlzIZqYMxHiE/OQPBeL6zZXeJeCz8/Mtqmw6dGCyiLc2KEpjrllz1QG2yCanxrCSTG
	/EXMKvj+3P5aUBsHOozX+2qKRg7ARfQCvBTAjeiPKZQh1o9r6RHQ6PgPkhE/C5IpvvLj
	nx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=7dT0pdjEqBJGtVp3eGWjtOa6Dmab+wjs8zqU0Ku3T2E=;
	b=cjxpObc5pbcB0DW6nXtOdhT3/BbRpjlD2fNmMSZnKcZeEUuCMxyDf2D+eBtOcS7n+I
	65ULuIrvH17N5qTnN+/IKZG9pXnV+iXFy91196nZ3g/UJVy7T+Ndj9Zw20A1za3WT1G2
	ExNmnNgPV9RBkcBTkQYx3LAAu9VkFDQOwp1Bs6byg+PDggJft1L7hKLnZCsobPXwQY2o
	QhfePzHS8pzgDHqvxt+CdmkzYLS125D/8evmbji/WMrsEBwjpOrilRVpwsy3lZQKqGhL
	jL2HZEqyiEGHDVtQcZ8hrOqWf58U/OGggPCbxQZ5p5vm7FpO6iFtDjHBWiyg00iFsgT+
	a6xw==
X-Gm-Message-State: ALoCoQnRuFCthZ0RbmDjWni5puc+DNiZXe+DmpExTDVJtNgEP+o2XZ+fSrK1grAQoGvNDma0dmyXY6Ly/npNR8Y4KC78l4ef2g==
X-Received: by 10.194.179.71 with SMTP id de7mr129545120wjc.119.1452480922131; 
	Sun, 10 Jan 2016 18:55:22 -0800 (PST)
Received: from localhost.localdomain (107.146.113.78.rev.sfr.net.
	[78.113.146.107]) by smtp.gmail.com with ESMTPSA id
	lx4sm117492857wjb.5.2016.01.10.18.55.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Jan 2016 18:55:21 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 03:55:11 +0100
Message-Id: <1452480913-15282-1-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <CAK18fxHt88ajUp9sXYhDC8U4V+wg+YHMHyKmS22fMziNxrA=pA@mail.gmail.com>
References: <CAK18fxHt88ajUp9sXYhDC8U4V+wg+YHMHyKmS22fMziNxrA=pA@mail.gmail.com>
Subject: [meta-raspberrypi][PATCH 2/4] qt5base: moved the bbappend to a suitable path
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
X-List-Received-Date: Mon, 11 Jan 2016 02:55:27 -0000

Signed-off-by: John Madieu <j.madieu@expemb.com>
---
 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 34 ++++++++++++++++++++++++++++++
 recipes-qt/qt5/qtbase_%.bbappend           | 34 ------------------------------
 2 files changed, 34 insertions(+), 34 deletions(-)
 create mode 100644 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
 delete mode 100644 recipes-qt/qt5/qtbase_%.bbappend

diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..ac158a9
--- /dev/null
+++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
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


