Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BA12E00B8F; Sun, 25 Oct 2015 15:44:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA237E00B7F
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 15:44:44 -0700 (PDT)
Received: by pacfv9 with SMTP id fv9so175639113pac.3
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 15:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=34+2emDokxZoBoWB9/WxRjMRxBkaRHYfsbyz/4NYTh4=;
	b=vbt/S5AwS+ONoYLZ0QGhrPNDeTZL5ZATtNBU27kLBqO7HkdFKs84fVBZyDinX3Hunc
	FXRGGpOurCG1swkfIRpuIT8xSJ9nCd2yMoaZbrOAVbtxuQwzMzXJt/+vrF/BUKnTTMN8
	PZrQcDL0knGo7ur9Q3ZGmbXCu3ZMthcPHnD2g+T/1hrFPkid3nJ/mGo5q5nloNb2E4Sq
	H1muGI6yGh2xiDImxmuG60GmWA3G5p/Nj2+aBPnSGeMoTjp8YnobPHcFap8xeQFpruEM
	zlhvrtoW4nco10miSwJRQWzRScb/9Fb2gyvPG4tjTJgXwqpuFIRJ2nzOY9SQig0Cz3zG
	dxEA==
X-Received: by 10.68.239.105 with SMTP id vr9mr18625511pbc.161.1445813083933; 
	Sun, 25 Oct 2015 15:44:43 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id x6sm30193694pbt.3.2015.10.25.15.44.42
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Oct 2015 15:44:42 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Oct 2015 09:43:08 +1100
Message-Id: <1445812988-6456-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.1
Subject: [meta-raspberrypi][PATCH v2] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Sun, 25 Oct 2015 22:44:48 -0000

[Support #16]

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-qt/qt5/qtbase_%.bbappend | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 recipes-qt/qt5/qtbase_%.bbappend

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


