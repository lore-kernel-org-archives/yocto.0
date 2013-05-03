Return-Path: <paul.betafive@gmail.com>
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC43DE0051D
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 07:35:10 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id n12so1631765wgh.1
	for <yocto@yoctoproject.org>; Fri, 03 May 2013 07:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=ecJC2QKHulhkMhycY4DCaD1g+AHy9Y9WsN/msmMYhrg=;
	b=RSoCJZ1z8JvL+hrhYtcHzWK0w0bHE+pPfuB3qhMW3jTqA5JcdU4bkW4RiZ0YYR+I44
	XVbBma06uR0zl+7slnlrQG9HVordmQIb/lWu4efcRNHCt49MQ81s2xvCKHCvn5qzRfSc
	LYTAsxMdwitBEbTYJhECZZ13wqcZE9s9tuqn68XZd59j01MdZZbK29QFBsMPkNlk3MGm
	Za4nkcYr6mLjy7EM23Lle6IGnUyoyxEDcIQuE85HrN/JAr04D1UfLzs7OnozEJ20hOZ/
	TjGE/uJm09KrdN0bJSYfCIxEaOUoTwJrrK4WPZmxQogRN2lXBzpJmzZZi8+pWGPlJdp1
	40Eg==
X-Received: by 10.180.206.204 with SMTP id lq12mr10738229wic.30.1367591709484; 
	Fri, 03 May 2013 07:35:09 -0700 (PDT)
Received: from vesta.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83])
	by mx.google.com with ESMTPSA id er17sm3725130wic.0.2013.05.03.07.35.08
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 03 May 2013 07:35:08 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Fri,  3 May 2013 15:35:03 +0100
Message-Id: <1367591703-9582-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.2.2
Subject: [meta-raspberrypi][PATCH] rpi-gpio: renamed from RPi-GPIO
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
X-List-Received-Date: Fri, 03 May 2013 14:35:11 -0000

Package names shouldn't contain capital letters.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 .../python/RPi-GPIO/don-t-install-setuptools.patch  | 16 ----------------
 recipes-devtools/python/RPi-GPIO_0.2.0.bb           | 21 ---------------------
 .../python/rpi-gpio/don-t-install-setuptools.patch  | 16 ++++++++++++++++
 recipes-devtools/python/rpi-gpio_0.2.0.bb           | 21 +++++++++++++++++++++
 4 files changed, 37 insertions(+), 37 deletions(-)
 delete mode 100644 recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
 delete mode 100644 recipes-devtools/python/RPi-GPIO_0.2.0.bb
 create mode 100644 recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
 create mode 100644 recipes-devtools/python/rpi-gpio_0.2.0.bb

diff --git a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch b/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
deleted file mode 100644
index bc71443..0000000
--- a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-We already have setuptools python module so we will use that and not the
-one provided in this package.
-
-Upstream-Status: Inappropriate [embedded specific]
-Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
-Index: RPi.GPIO-0.2.0/setup.py
-===================================================================
---- RPi.GPIO-0.2.0.orig/setup.py	2012-05-24 13:17:31.000000000 +0300
-+++ RPi.GPIO-0.2.0/setup.py	2012-08-22 00:56:59.049001018 +0300
-@@ -1,6 +1,4 @@
- #!/usr/bin/env python
--import distribute_setup
--distribute_setup.use_setuptools()
- from setuptools import setup, find_packages
- import platform
diff --git a/recipes-devtools/python/RPi-GPIO_0.2.0.bb b/recipes-devtools/python/RPi-GPIO_0.2.0.bb
deleted file mode 100644
index 73122cd..0000000
--- a/recipes-devtools/python/RPi-GPIO_0.2.0.bb
+++ /dev/null
@@ -1,21 +0,0 @@
-DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
-HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
-SECTION = "devel/python"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=ee5754ae9d5f8061d6d4ccd9c9fe0061"
-
-SRCNAME = "RPi.GPIO"
-PR = "r0"
-
-SRC_URI = "\
-          http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
-          file://don-t-install-setuptools.patch \
-          "
-S = "${WORKDIR}/${SRCNAME}-${PV}"
-
-inherit setuptools
-
-COMPATIBLE_MACHINE = "raspberrypi"
-
-SRC_URI[md5sum] = "0fc4bfa6aabc856b0b75252a40ac75cc"
-SRC_URI[sha256sum] = "fcfd97dc9687dde76b13b9d12c122e71b13e2ba09a62913d7b8d9ddbb3e8cabf"
diff --git a/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
new file mode 100644
index 0000000..bc71443
--- /dev/null
+++ b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
@@ -0,0 +1,16 @@
+We already have setuptools python module so we will use that and not the
+one provided in this package.
+
+Upstream-Status: Inappropriate [embedded specific]
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+
+Index: RPi.GPIO-0.2.0/setup.py
+===================================================================
+--- RPi.GPIO-0.2.0.orig/setup.py	2012-05-24 13:17:31.000000000 +0300
++++ RPi.GPIO-0.2.0/setup.py	2012-08-22 00:56:59.049001018 +0300
+@@ -1,6 +1,4 @@
+ #!/usr/bin/env python
+-import distribute_setup
+-distribute_setup.use_setuptools()
+ from setuptools import setup, find_packages
+ import platform
diff --git a/recipes-devtools/python/rpi-gpio_0.2.0.bb b/recipes-devtools/python/rpi-gpio_0.2.0.bb
new file mode 100644
index 0000000..73122cd
--- /dev/null
+++ b/recipes-devtools/python/rpi-gpio_0.2.0.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
+HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=ee5754ae9d5f8061d6d4ccd9c9fe0061"
+
+SRCNAME = "RPi.GPIO"
+PR = "r0"
+
+SRC_URI = "\
+          http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
+          file://don-t-install-setuptools.patch \
+          "
+S = "${WORKDIR}/${SRCNAME}-${PV}"
+
+inherit setuptools
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+SRC_URI[md5sum] = "0fc4bfa6aabc856b0b75252a40ac75cc"
+SRC_URI[sha256sum] = "fcfd97dc9687dde76b13b9d12c122e71b13e2ba09a62913d7b8d9ddbb3e8cabf"
-- 
1.8.2.2


