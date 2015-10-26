Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD717E00B30; Mon, 26 Oct 2015 05:25:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DD3BE00473
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 05:25:05 -0700 (PDT)
Received: by pasz6 with SMTP id z6so187448547pas.2
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 05:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=VOe6wRijirgNJp/CwCIN6+O4g/R6A/m5p93H8kMhQTo=;
	b=FeDF/3la+PqObkvEHdFB3wS+GUopqgtSuxlMddRRLlgvxXbTIRRX2cX9fWi4Q6pk6s
	LbXOuK26s2Y5KZm09msMUYFYXjaPW8qOh2qR5a4L59m0dayPAal/yYBHy/AzZGkaUO99
	c/j5AlUhv0u4F48eAwCMulWX1sV9n46hE3+kLX84Wikqoc8tmOKV07A1JAzZ3UVd2Z4A
	4laRZEOayMQ/B09Kx8t7TsMxfYuw3dh0jcybSRIRja+1oHOJSRbh8CzaOiVpfy0byQ4w
	8ifZFkI2ar24WaYZN/BlGg6Ecg2PrNd80Pco7a5PHgwarpfgrtUPuDkV4vNWz4SYeHj4
	b/nQ==
X-Received: by 10.68.161.133 with SMTP id xs5mr22315921pbb.13.1445862305491;
	Mon, 26 Oct 2015 05:25:05 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	tp6sm33778750pbc.81.2015.10.26.05.25.03
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 05:25:03 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Oct 2015 23:23:57 +1100
Message-Id: <1445862237-20694-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.1
Subject: [meta-raspberrypi][PATCH v4] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 12:25:10 -0000

[Support #16]

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 conf/machine/include/rpi-base.inc | 3 +++
 recipes-qt/qt5/qtbase_%.bbappend  | 6 ++++++
 2 files changed, 9 insertions(+)
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
index 0000000..3e5e667
--- /dev/null
+++ b/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,6 @@
+do_configure_prepend_rpi() {
+    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
+EGLFS_DEVICE_INTEGRATION = eglfs_brcm
+QMAKE_LIBS_EGL = -lEGL -lGLESv2
+EOF
+}
-- 
2.6.1


