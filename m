Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E88AE00B73; Fri,  9 May 2014 06:09:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE,
	TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-ee0-f44.google.com (unknown [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19AE2E00BBF
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:09:22 -0700 (PDT)
Received: by mail-ee0-f44.google.com with SMTP id c41so2689846eek.3
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 06:09:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=SV6LW1iM3cBQGaitz7FmSwi6se4XpZJWZC30Ni9zp/g=;
	b=Gu0kS33Slo1G4Pw5QyvZRHVpCTqDheMoWH88Jk3liakJHi+Hpl6WH820Q3eXEWMy4M
	Hvc+7un9aB0bLPfH+XRV2Q+uktDe/wl2bBvfWIqXdj7ozeYuLwZEPUH6mXIug3NuaUCq
	2PidH0MzmpUZzOgMt+NAjj2tIF3XNI7Xd0jndAOSE9aFB9zPN/p4PsK4GjiU59LqqOi1
	/E0Am1KTrsYGuUEhPN3sS8iximvNSauYOTI1EPQmkd7nAaN8aNBku9KWdhSOrLNZ9fnZ
	PC6xUYi8JRTtqWrrM06VYeY/5NX/tLxE7z2RjzfYhPoge2E6IdRDAl3iSSFfC2MZqYc9
	4WaA==
X-Gm-Message-State: ALoCoQkdxxlkwzfykOer4e6Hcd/c1A3+zdVLNPjGbzogB2t9/zohX3Eeo/S2yvySQ4sS1lcZWBqo
X-Received: by 10.14.198.197 with SMTP id v45mr13423455een.9.1399640961725;
	Fri, 09 May 2014 06:09:21 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17]) by mx.google.com with ESMTPSA id
	x45sm11341136eef.15.2014.05.09.06.09.20 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 May 2014 06:09:21 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  9 May 2014 16:09:05 +0300
Message-Id: <1399640946-21680-8-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
References: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 8/9] rpi-gpio: Update to v0.5.5
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
X-List-Received-Date: Fri, 09 May 2014 13:09:36 -0000

Change-Id: I8394426b9ffc3c3b524e9fb536945e25d74b2ddd
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/python/rpi-gpio_0.5.4.bb | 19 -------------------
 recipes-devtools/python/rpi-gpio_0.5.5.bb | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 19 deletions(-)
 delete mode 100644 recipes-devtools/python/rpi-gpio_0.5.4.bb
 create mode 100644 recipes-devtools/python/rpi-gpio_0.5.5.bb

diff --git a/recipes-devtools/python/rpi-gpio_0.5.4.bb b/recipes-devtools/python/rpi-gpio_0.5.4.bb
deleted file mode 100644
index 7307399..0000000
--- a/recipes-devtools/python/rpi-gpio_0.5.4.bb
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
-SRC_URI[md5sum] = "add6554ed8331d515fccb5e052c7d1ff"
-SRC_URI[sha256sum] = "5fae8e59a9a1cdb68208d40239d7ad788d22aa9d58c54c482fa5d89ccc4c0f37"
diff --git a/recipes-devtools/python/rpi-gpio_0.5.5.bb b/recipes-devtools/python/rpi-gpio_0.5.5.bb
new file mode 100644
index 0000000..1d73331
--- /dev/null
+++ b/recipes-devtools/python/rpi-gpio_0.5.5.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
+HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=35af90ff2a10e8bdc967653b9dfcb22a"
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
+SRC_URI[md5sum] = "8cbc1cb0c0f1a4d93bf1efe1a745f1f0"
+SRC_URI[sha256sum] = "c8e1f0da6327103a3551a6e86055ef001113b94af683fcb08070db5f5ecea51f"
-- 
1.8.5.3


