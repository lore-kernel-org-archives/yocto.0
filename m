Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2B3AE00BB9; Mon, 26 Oct 2015 03:50:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDBC3E009BA
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 03:50:08 -0700 (PDT)
Received: by pacfv9 with SMTP id fv9so193810019pac.3
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 03:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=mt05CGjG/tcwpjdu91ztwq/XKxZAYrL4KXJewmvgWDE=;
	b=rCJG7zjXI96xPrXcBV2vXWJ47ALr/qEzIOmutYR/U5sfr+jkMoAJuU+ql0H4t/3qwX
	dh7xQVDFdVOI9JtdTpMPFTb5G0oR8XAXL54Vza/c6sdtoW/+8BUw/KBZwU09BEoG4igo
	riWSxSFNginCFHF2ZFSvW6eWDV7OuXO/PB/cqod0YEiS5X4R3cGHnuJSEs1U3LjO/pge
	bYoBoeJrvmpHAf1ic8fRX2FItFEvQ0qwBQozVdbMyt4s51LL6XQ1rAzaLX1m5xtiII8V
	O4u+0fyNAMrTBoS4UgRJa78H7yvzuJrHIXU2j1zwF88uh8kV9VGoJ/1qnBXyMbJuXg0e
	veJw==
X-Received: by 10.68.163.69 with SMTP id yg5mr21402127pbb.157.1445856608462;
	Mon, 26 Oct 2015 03:50:08 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	be3sm33244629pbc.88.2015.10.26.03.50.07
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 03:50:07 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Oct 2015 21:49:54 +1100
Message-Id: <1445856594-27890-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.1
Subject: [meta-raspberrypi][PATCH v3] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 10:50:26 -0000

[Support #16]

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-qt/qt5/qtbase_%.bbappend | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-qt/qt5/qtbase_%.bbappend

diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..b20138a
--- /dev/null
+++ b/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,8 @@
+PACKAGE_ARCH_rpi = "${MACHINE_ARCH}"
+
+do_configure_prepend_rpi() {
+    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
+EGLFS_DEVICE_INTEGRATION = eglfs_brcm
+QMAKE_LIBS_EGL = -lEGL -lGLESv2
+EOF
+}
-- 
2.6.1


