Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56924E0098D; Sun,  8 Feb 2015 03:58:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68718E00960
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:58:52 -0800 (PST)
Received: by mail-lb0-f181.google.com with SMTP id b6so2593142lbj.12
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:58:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=I7CM+BwDXLy6yzhl11zd6uJpIzzTGhY1+o3NGkNdtOs=;
	b=lrroEvbrEbO5wWP0I/yDBYyuBx5wfbgMocfFdvLkPa7jQVA7X0tYpfRZXlxBbK/yML
	eodSvKLwm2yEJySqY0iD1YSwz4mONP05CC5KqSD67JZiKvTw9GSgF28i7wyv6xP6qKwf
	qG9j+RqPkztqYcQrvQm0zVb3GOUrWRDY0TAmPWXoaZAO8pYIhuiC5oTrAyJWqA8cL3vN
	iklDJ3AOwBnFbZfI3Mqhbj7f3olA9ND75Zo5t9K0VCbzI8rg14PxjO03HPeBA5tLrkbC
	7EUgX7Yahcrw0Fho588cJpC4dab/eQLKRHJMWVF45npApctJa1snrwav4M4QmCM+/SER
	kwPg==
X-Gm-Message-State: ALoCoQlP86nVHw15U3IM7br5xHwLf6Yh+X6kU1z9W4y90u790k9yL5Rpwbt+InZdps2FY4CwQ/n3
X-Received: by 10.112.173.42 with SMTP id bh10mr11496472lbc.103.1423396731596; 
	Sun, 08 Feb 2015 03:58:51 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id f5sm1444085laf.9.2015.02.08.03.58.50
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:58:51 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:58:34 +0200
Message-Id: <1423396716-22626-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423396716-22626-1-git-send-email-andrei@gherzan.ro>
References: <1423396716-22626-1-git-send-email-andrei@gherzan.ro>
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
X-List-Received-Date: Sun, 08 Feb 2015 11:58:53 -0000

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


