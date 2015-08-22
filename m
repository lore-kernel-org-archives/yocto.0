Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDF07E00B21; Sat, 22 Aug 2015 02:11:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 674F6E00A99
	for <yocto@yoctoproject.org>; Sat, 22 Aug 2015 02:11:54 -0700 (PDT)
Received: by pdbmi9 with SMTP id mi9so34835090pdb.3
	for <yocto@yoctoproject.org>; Sat, 22 Aug 2015 02:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Z8fHW0jrl2ufJMtEbh5ljndgw6KMKxG/MM1jG7BVP84=;
	b=nr0ed5+zN5xCSgvQT1kwCUif0i8PDQss/zCLauHlhR1p+c6Txq/gaVsWjzXwxqiPRY
	Z52lBQN6XS578voqSjvy11xDuMh7KM4BgtnTZOIRirSAVi8WLOE4AWQtjWm181KkZzn9
	NA8zUt69Ce8UBPJkoEBhUJfhwyrHD3TwGMxnwSTkvNRVeiQ3csSIhNgMfvKJFq1yQ2NK
	3+Zz6kF1vFE0LlAeHneibnJan9nUXpL+iB8PF6KLZrTnkPAfJcM7voCBYU+WNW8JrFNa
	7OInjUARYPhJ16iDnYmJlOejHRcYLK0OIIfDFpuHJUE1c2jgB/v8Jd+w3D2Icq9CgL0x
	ASqA==
X-Received: by 10.70.127.167 with SMTP id nh7mr25959676pdb.2.1440234714750;
	Sat, 22 Aug 2015 02:11:54 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	e4sm10421131pdd.45.2015.08.22.02.11.53
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 22 Aug 2015 02:11:54 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 22 Aug 2015 19:11:19 +1000
Message-Id: <1440234679-5948-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.5.0
Subject: [meta-raspberrypi][PATCH] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Sat, 22 Aug 2015 09:11:56 -0000

[Support #16]

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-qt/qt5/qtbase_%.bbappend | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 recipes-qt/qt5/qtbase_%.bbappend

diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..d3d41e2
--- /dev/null
+++ b/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,21 @@
+do_configure_prepend_rpi() {
+    if ! grep -q '^EGLFS_' ${S}/mkspecs/linux-oe-g++/qmake.conf; then
+        cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf << 'EOF'
+QMAKE_INCDIR_EGL = $$[QT_SYSROOT]${includedir}/interface/vcos/pthreads \
+                   $$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
+QMAKE_INCDIR_OPENGL_ES2 = $${QMAKE_INCDIR_EGL}
+QMAKE_LIBS_EGL = -lEGL -lGLESv2
+EOF
+
+        if [ -d ${S}/src/plugins/platforms/eglfs/deviceintegration/eglfs_brcm ]; then
+            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf << 'EOF'
+EGLFS_DEVICE_INTEGRATION = eglfs_brcm
+EOF
+        else
+            cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf << 'EOF'
+EGLFS_PLATFORM_HOOKS_LIBS = -lbcm_host
+EGLFS_PLATFORM_HOOKS_SOURCES = $$PWD/../devices/linux-rasp-pi-g++/qeglfshooks_pi.cpp
+EOF
+        fi
+    fi
+}
-- 
2.5.0


