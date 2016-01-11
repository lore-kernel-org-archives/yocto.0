Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E9F1E00863; Mon, 11 Jan 2016 07:46:24 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7476E0073D
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 07:46:21 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id u188so219731521wmu.1
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 07:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=OD6SYgO/IuzVGAjbIkYdp+vh6+7vzIM3oIMV/TU7WHQ=;
	b=Szrla1LtPh2v2vNqFMa/paB+pV44tLlgUgQVxtoZolSt43ygQyutcYm95+RfugZHy+
	0ZGxQefobSTs5q33ZC59to+gTXqMmbYCj4dFGtzkoKhZyoVM/1MEgzXXgU2YH5Z60o2I
	plwm/HYGpr0BM1ajVzivYUwsQPPqNBReodXbyPL7Wt2LXlqHxFf8S5Lq99PrB8FNxF24
	j3lscLlxz0szIOtxabuLCfzyqr71r5h0EgVs8jx3XQlDfEyzJ47zfnBd0ciMnbeJ3Z5a
	q8QHchaLV1lL9zRxOHnvvywUgifF/AzUYOwajBe49obd8QbDeg0kkCsIXbyqmPrEaOfo
	U/0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=OD6SYgO/IuzVGAjbIkYdp+vh6+7vzIM3oIMV/TU7WHQ=;
	b=A5E4BZilBVUozs4xeOzu2FltGbqfHhu10txFTYKwYAbGOcCFTFvq8zVOoPK40V0dRW
	yHjYINvJzEW6wwUYUSXp/ivqVhrUbf1PhdD9KvSJp6BNukrmKNsAZSB1qeJyFtFEmgcq
	uA/It3xgWagfcleE5W2m2pI3P6SzFBggl3xfFmDvDHApk3dETXWnvX3Wh5kITn486UZX
	hJy8P5j5MYD415v7/cAQ7GYK4RzBiMmJmfcZLJnwgrFDhYhzlFVCo1kn16c8FgZY2jfV
	XVAf7BzSgdCS/OSkTh3JLZ2kZiV+bq5IW2RQtTdgzjAp7aVpVf+iTe5FQpI13Q8wkN2T
	GQ5A==
X-Gm-Message-State: ALoCoQn2fxneDeiZEZZpaIzxpv7I8dit78iIb3w4aamuakb4Mal7l9aaamhwPAtHs4QjH0VzUaKIlcKd+SJVATZtEvW/wJkfew==
X-Received: by 10.194.158.73 with SMTP id ws9mr152010413wjb.40.1452527180447; 
	Mon, 11 Jan 2016 07:46:20 -0800 (PST)
Received: from localhost.localdomain (23-227-190-109.dsl.ovh.fr.
	[109.190.227.23]) by smtp.gmail.com with ESMTPSA id
	m128sm13303731wma.24.2016.01.11.07.46.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Jan 2016 07:46:19 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 16:46:10 +0100
Message-Id: <1452527171-26371-1-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <CAK18fxGB5uiXe7LigW3V9TEA2EJFQtsZTt-9yJ=rNwLzdzKY0w@mail.gmail.com>
References: <CAK18fxGB5uiXe7LigW3V9TEA2EJFQtsZTt-9yJ=rNwLzdzKY0w@mail.gmail.com>
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
X-List-Received-Date: Mon, 11 Jan 2016 15:46:24 -0000

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


