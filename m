Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A274E01590
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:54 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id n15so343754ead.16
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=juUs7vo6nx30dcEBBYkZDWRaD271FYaRQ+xV9ET2U80=;
	b=KWCXtBFzP5s3UWhTVtXKevFnZ4QsOfjJPYNZvnXX0e+XUmLiL5SGidMWoxNdi1AHmj
	eD17dST+A4BGKs4im6plVfXD7sRTc0nJdUKFBe8wqGhaAlZOclHqW1WFvRcxIFluqlcq
	AnZFleCjTA6U9y4SpQH/XIj81LEYA83DLobF5EZz/6Vt1DJw5+zyUGiav8Xf38wcsnCt
	1aEiwqn2Ki0fKotU3ex34k6xchswqYRNEvV6B+FO07/uYrnCo/yNCIN/0cjjCO2m2Six
	EaaLWxXCKbdu1I9fPCA8GR+ZHtdV30dwABUTQQB+pX90EXqaANuD0L30kxS6MMHE1f9F
	i9WQ==
X-Gm-Message-State: ALoCoQnhjbK3Rv1IWDWE2wG+TIi4kTw7/NQAnRjYBxJHMTI0y6W6HFTgzldwEuzb0zB7jgFrhg4R
X-Received: by 10.14.89.72 with SMTP id b48mr3502924eef.43.1377018173745;
	Tue, 20 Aug 2013 10:02:53 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:53 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:32 +0300
Message-Id: <1377018158-2983-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 05/11] rpi-gpio: Update to v0.5.3a
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
X-List-Received-Date: Tue, 20 Aug 2013 17:02:57 -0000

don-t-install-setuptools.patch was removed as this is included now in the new
version.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../python/rpi-gpio/don-t-install-setuptools.patch |   16 ---------------
 recipes-devtools/python/rpi-gpio_0.2.0.bb          |   21 --------------------
 recipes-devtools/python/rpi-gpio_0.5.3a.bb         |   20 +++++++++++++++++++
 3 files changed, 20 insertions(+), 37 deletions(-)
 delete mode 100644 recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
 delete mode 100644 recipes-devtools/python/rpi-gpio_0.2.0.bb
 create mode 100644 recipes-devtools/python/rpi-gpio_0.5.3a.bb

diff --git a/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
deleted file mode 100644
index bc71443..0000000
--- a/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
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
diff --git a/recipes-devtools/python/rpi-gpio_0.2.0.bb b/recipes-devtools/python/rpi-gpio_0.2.0.bb
deleted file mode 100644
index 73122cd..0000000
--- a/recipes-devtools/python/rpi-gpio_0.2.0.bb
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
diff --git a/recipes-devtools/python/rpi-gpio_0.5.3a.bb b/recipes-devtools/python/rpi-gpio_0.5.3a.bb
new file mode 100644
index 0000000..9b0ece0
--- /dev/null
+++ b/recipes-devtools/python/rpi-gpio_0.5.3a.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
+HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=35af90ff2a10e8bdc967653b9dfcb22a"
+
+SRCNAME = "RPi.GPIO"
+PR = "r0"
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
+SRC_URI[md5sum] = "9cb086d2d2186062c5ae190a40902bb0"
+SRC_URI[sha256sum] = "f3342113d39901e5af1460374ff167590c427cb55460d2bda86c72bc64efc526"
-- 
1.7.9.5


