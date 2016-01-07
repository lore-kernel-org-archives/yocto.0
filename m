Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7486E00CCC; Thu,  7 Jan 2016 02:59:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 649DBE00803
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2016 02:59:32 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id l65so92067030wmf.1
	for <yocto@yoctoproject.org>; Thu, 07 Jan 2016 02:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=mu2DIEyNkhWmkb31bd3gIql7XXp8xsMZOaYu/oCdeZk=;
	b=dScGCw283o9HKpdccyQqRrmk2bEJtSPzHoTeWFakdytHYjWyFdaEyyEmWum3Ev5puR
	ZXmJkD2FQdjyQekd/3WYBhzg4SjXyOb3rBHOWw4MVRUtiv+fRYqvGZBSOHWhymYqwZZL
	0BG5oZmE4h+BxzRT1kxnseBAw3QeBKLGUbmrsnOi6Mso113iZ0hjGZi63EUoorVs4B5J
	bjabu892ceRqedOoIwfzSsgwTr5yUw54BXfw0aNVNnn2UuNPXBf74z1cI2U7b41VCw/X
	UT0hZlpwryGAUHtEb4NYMm0eQWJIgOOXNARz0XzSNnOP4TRrRK6p2fdDXlai7hCqh6eG
	uW/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=mu2DIEyNkhWmkb31bd3gIql7XXp8xsMZOaYu/oCdeZk=;
	b=ik5AEpnoLg7YV1DMqrBNlEppWi0rve/3lVA2RdvdIf1URf10WWKgenFRFGeNyGtcdr
	B5E7gOKCBlGroj18gUgp+kNvYQy/l7C8kGdkC5FHu7nmkQ8Eo3c/WI1odVA6rxwWDkqs
	wSokqsTz7E+6DIbgvbVPUrkZeQ4A9eMp2eGQjDEr4rGHK7ohxU8eaGt/dzHl8OdagYbJ
	UO5qxLKix9AAiGuv2kKVbGdfyrn5SK8C1Dglydhvi6x4l6FbnoBqg2FIrSXTU7oLHKMd
	JXSXUEyT7ZQHLeKv5wfbNh70zk5RWiIM+q3WlDee1cJA31bXsSTB4BRb8fJIcr6PMCdN
	rNhw==
X-Gm-Message-State: ALoCoQn+9eSvfCb24rduJJzMiKIbHjyJzksZNDXXYebVC1xuNAFx2GdJ+Yq4faS4cURwSCUXvEuTNxvYho1JaXlCummeYk5jMw==
X-Received: by 10.195.18.5 with SMTP id gi5mr9992364wjd.167.1452164371326;
	Thu, 07 Jan 2016 02:59:31 -0800 (PST)
Received: from localhost.localdomain (23-227-190-109.dsl.ovh.fr.
	[109.190.227.23]) by smtp.gmail.com with ESMTPSA id
	w8sm56509492wjx.21.2016.01.07.02.59.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Jan 2016 02:59:30 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Jan 2016 11:59:21 +0100
Message-Id: <1452164361-17172-1-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
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
X-List-Received-Date: Thu, 07 Jan 2016 10:59:34 -0000

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


