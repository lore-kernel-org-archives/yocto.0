Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2921CE00A26; Sun, 15 Nov 2015 04:31:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 046C4E0088C
	for <yocto@yoctoproject.org>; Sun, 15 Nov 2015 04:31:26 -0800 (PST)
Received: by pabfh17 with SMTP id fh17so147402615pab.0
	for <yocto@yoctoproject.org>; Sun, 15 Nov 2015 04:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=bmMXTORTGv8rkSjKSadIi1lvHsDPsCSg2ux0baUX/KA=;
	b=Auxsi3hf9LI62rL4AJLMtddLRZwI1EK58agW1mhJhqM5nzs6JjMU6aez3PARqxiUAv
	/VqxEGtT0IWcKmRYrkCPP36B/3u6ZZa2SQXQLJYg8fMM/O8oegyZlXhiS03vk/j+riQZ
	Hb1rBqZjYAE6naCpx8aziVSpFx893/dIYUaph66tzgMGFT+tzaSbU4UrYZ3vy1ckY+Zh
	cs+OOJ9BgJ/xm5ti0oRMDF3iQIL00xbUgN+kC6Dwxy98tLd57x49EQ8deAZ0uOlLj+kI
	doxlo23OzXBHwgOD3Nto+rRgQLiDNaYirJYhYXPbIyBrxSB9ipRkiPOOpUZgRMM0dxNH
	naNQ==
X-Received: by 10.66.228.199 with SMTP id sk7mr46041503pac.78.1447590686179;
	Sun, 15 Nov 2015 04:31:26 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	qv5sm30447497pbc.71.2015.11.15.04.31.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 15 Nov 2015 04:31:25 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 15 Nov 2015 23:31:25 +1100
Message-Id: <1447590685-8145-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.2
Subject: [meta-raspberrypi][PATCH v5] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Sun, 15 Nov 2015 12:31:32 -0000

[Support #16]

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 conf/machine/include/rpi-base.inc | 3 +++
 recipes-qt/qt5/qtbase_%.bbappend  | 8 ++++++++
 2 files changed, 11 insertions(+)
 create mode 100644 recipes-qt/qt5/qtbase_%.bbappend

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index e097702..b390705 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -48,3 +48,6 @@ MACHINE_EXTRA_RRECOMMENDS += " kernel-modules"
 SPLASH = "psplash-raspberrypi"
 
 IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}"
+
+# Qt packages are machine specific due to RPi integration
+QT_PACKAGES_ARCH = "${MACHINE_ARCH}"
diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..7775e70
--- /dev/null
+++ b/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,8 @@
+do_configure_prepend_rpi() {
+    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
+EGLFS_DEVICE_INTEGRATION = eglfs_brcm
+QMAKE_INCDIR_EGL = $$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
+QMAKE_INCDIR_OPENGL_ES2 = $${QMAKE_INCDIR_EGL}
+QMAKE_LIBS_EGL = -lEGL -lGLESv2
+EOF
+}
-- 
2.6.2


