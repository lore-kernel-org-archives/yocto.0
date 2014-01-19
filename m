Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D7A9E00841
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:16:14 -0800 (PST)
Received: by mail-ee0-f47.google.com with SMTP id d49so2266677eek.20
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:16:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=qBxZLXidSVjlDVZ5aTTqXRhY58Muk9WFeTBDFj+ch7I=;
	b=ZEl5Ds+uRPloZLJA8709qLCQ/0u1oMEN3Pqn69bdVRljpI7L2CLMr5vBr/QYNL6M6K
	ww+9vAv+twfygrBs+ezEuzfBar8I/IP6g1WvvumolY62KpStPLPwVPfwyDVEyTVwOMDj
	NFFz4rBCYkGGtyH42j32WFt/DB3/jVZWsjxcA3QZKasfIQyo+kMGLWEkYgXwztUp+Z9E
	t+7P8SOxarAaXHVkKXCqUmWCD6t1VI9sbc3ia50P7WekjY2WFap8weoIZ+uzUiHj2Bfs
	idhHFNpl3jsxDnbI3tMw0f6FMSejHbsbYjv7GxG2ViZEqV4OONwU4zLoh9ebn+plA5eX
	ZK7A==
X-Gm-Message-State: ALoCoQmakWXn67DZ3rGxEqpn5EDi5o410SKEyaIsKXAagrRI2hFDfzv5JtwtvzJoVEkVSQOzVHYm
X-Received: by 10.15.54.72 with SMTP id s48mr13666719eew.3.1390158974034;
	Sun, 19 Jan 2014 11:16:14 -0800 (PST)
Received: from localhost.localdomain ([79.116.111.233])
	by mx.google.com with ESMTPSA id 4sm46036842eed.14.2014.01.19.11.16.12
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Jan 2014 11:16:12 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 19 Jan 2014 21:15:54 +0200
Message-Id: <1390158956-24554-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
References: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/4] rpi-gpio: Update to v0.5.4
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
X-List-Received-Date: Sun, 19 Jan 2014 19:16:17 -0000

Change-Id: Ie24be5363933fa994e38b030677d7381eb8a7f2a
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/python/rpi-gpio_0.5.3a.bb | 20 --------------------
 recipes-devtools/python/rpi-gpio_0.5.4.bb  | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 20 deletions(-)
 delete mode 100644 recipes-devtools/python/rpi-gpio_0.5.3a.bb
 create mode 100644 recipes-devtools/python/rpi-gpio_0.5.4.bb

diff --git a/recipes-devtools/python/rpi-gpio_0.5.3a.bb b/recipes-devtools/python/rpi-gpio_0.5.3a.bb
deleted file mode 100644
index 9b0ece0..0000000
--- a/recipes-devtools/python/rpi-gpio_0.5.3a.bb
+++ /dev/null
@@ -1,20 +0,0 @@
-DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
-HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
-SECTION = "devel/python"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=35af90ff2a10e8bdc967653b9dfcb22a"
-
-SRCNAME = "RPi.GPIO"
-PR = "r0"
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
-SRC_URI[md5sum] = "9cb086d2d2186062c5ae190a40902bb0"
-SRC_URI[sha256sum] = "f3342113d39901e5af1460374ff167590c427cb55460d2bda86c72bc64efc526"
diff --git a/recipes-devtools/python/rpi-gpio_0.5.4.bb b/recipes-devtools/python/rpi-gpio_0.5.4.bb
new file mode 100644
index 0000000..7307399
--- /dev/null
+++ b/recipes-devtools/python/rpi-gpio_0.5.4.bb
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
+SRC_URI[md5sum] = "add6554ed8331d515fccb5e052c7d1ff"
+SRC_URI[sha256sum] = "5fae8e59a9a1cdb68208d40239d7ad788d22aa9d58c54c482fa5d89ccc4c0f37"
-- 
1.8.1.4


