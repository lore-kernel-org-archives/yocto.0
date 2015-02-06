Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD904E00873; Fri,  6 Feb 2015 08:12:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63196E00757
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 08:12:10 -0800 (PST)
Received: by mail-we0-f177.google.com with SMTP id l61so14592750wev.8
	for <yocto@yoctoproject.org>; Fri, 06 Feb 2015 08:12:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=I7CM+BwDXLy6yzhl11zd6uJpIzzTGhY1+o3NGkNdtOs=;
	b=U6YFeK9ve5hvhLz9OtDUvo4uR224weL8UW0Lv41KmXP5+H2/6M3dEXIsFapw+eTdN+
	F0AcnVv9KLIDiIHR//aXoBsRz2SXeG9YQm7xva2Mxo7eY/4KxTIFYtaUL6/L8lV8Co2d
	/D2OE3x3dOCEGmp9OypCTg5xdjZBwSNHlTFnEJJ2sMMC0uAE2mpXXp+xKCGduhZ+G7Zc
	JH/aN1McNnhE8UZHiXEc0g2cdullZok2ZIC5Tyddr0F7wMjZIc0syPxNkeQs62HEngPK
	sRWLE9A2f/RL7T68kEUY1U3v4qcFMRsxCijx6g9fXmf+VKqPGk2xOxHZWjyXrREG0fJp
	DrRg==
X-Gm-Message-State: ALoCoQkdQgCMaK9wGVfKpimz1C5RLxXBLWet9b7Dkvl+k3/lsyzHc2ru3UM5Qdx4R1pw5+0BRw9H
X-Received: by 10.180.103.40 with SMTP id ft8mr4799484wib.68.1423239129733;
	Fri, 06 Feb 2015 08:12:09 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com (dhcp-186-165.gjk.dk.
	[195.249.186.165])
	by mx.google.com with ESMTPSA id jg3sm2088556wid.0.2015.02.06.08.12.09
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 06 Feb 2015 08:12:09 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  6 Feb 2015 18:11:57 +0200
Message-Id: <1423239119-21918-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423239119-21918-1-git-send-email-andrei@gherzan.ro>
References: <1423239119-21918-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/5] rpi-gpio: Update to v0.5.9
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
X-List-Received-Date: Fri, 06 Feb 2015 16:12:14 -0000

Change-Id: Ifc455b9106f07583ccaf3fe82723baaeb5e04d2e
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/python/rpi-gpio_0.5.6.bb | 19 -------------------
 recipes-devtools/python/rpi-gpio_0.5.9.bb | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 19 deletions(-)
 delete mode 100644 recipes-devtools/python/rpi-gpio_0.5.6.bb
 create mode 100644 recipes-devtools/python/rpi-gpio_0.5.9.bb

diff --git a/recipes-devtools/python/rpi-gpio_0.5.6.bb b/recipes-devtools/python/rpi-gpio_0.5.6.bb
deleted file mode 100644
index eff22d0..0000000
--- a/recipes-devtools/python/rpi-gpio_0.5.6.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
-HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
-SECTION = "devel/python"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=35af90ff2a10e8bdc967653b9dfcb22a"
-
-SRCNAME = "RPi.GPIO"
-
-SRC_URI = "\
-          http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
-          "
-S = "${WORKDIR}/${SRCNAME}-${PV}"
-
-inherit distutils
-
-COMPATIBLE_MACHINE = "raspberrypi"
-
-SRC_URI[md5sum] = "cbdff15871230ceef29bb407d31da485"
-SRC_URI[sha256sum] = "36b64a9485d6a0dc8f24cfca6af45759ee367ce412b952ebcf0409364e05813a"
diff --git a/recipes-devtools/python/rpi-gpio_0.5.9.bb b/recipes-devtools/python/rpi-gpio_0.5.9.bb
new file mode 100644
index 0000000..9394fd8
--- /dev/null
+++ b/recipes-devtools/python/rpi-gpio_0.5.9.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
+HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=9b95630a648966b142f1a0dcea001cb7"
+
+SRCNAME = "RPi.GPIO"
+
+SRC_URI = "\
+          http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
+          "
+S = "${WORKDIR}/${SRCNAME}-${PV}"
+
+inherit distutils
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+SRC_URI[md5sum] = "54ea6ef33502d43e3a89713593315e5a"
+SRC_URI[sha256sum] = "167fab1861093677af69db135ce815729dd4fbfb8f8e2eb830eab6324bc89152"
-- 
2.1.0


