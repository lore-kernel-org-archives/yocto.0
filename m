Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B91E5E00D8A; Thu,  7 Sep 2017 06:24:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69999E00D88
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 06:24:48 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id x17so1037964wmd.5
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 06:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id;
	bh=VpU3vA6gch25pE/yIXq1oUTYdk9udfoiyWXqtnZKBPE=;
	b=YDB5x5DmXk/AbNTiwfc/UdyY17sjhKfaEedUGMoauRuTBhxiRPYjKbrlYFuBHcjNO0
	NT0sMMuJsGnjE2NuFFrgf2wonv4dmUPHCfiGoCdlIjjp0pYhKbRggKPpE9CdzioF608L
	vICNlr8YO9WyB6+9U4c0JTca33Y7qNulyRadtofK33A1idwqUsAPdgHvFevX+5QJ2I45
	ccoSDAuv1vxVoGGcuKKDWhGa+yMjXzdz/129KqW/8TCj69vpRga34RvzLPFYHrXotybX
	l+d3Wk07w49yBjs3F2WpwSot05uC1i7Pg/gPN4k4tJWxD2bnnIqkixkYxc49eBfxDRCj
	8KhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=VpU3vA6gch25pE/yIXq1oUTYdk9udfoiyWXqtnZKBPE=;
	b=Ss0GpS7VHN1HtBrVnBxBP/g/GKbMmtnCYIj5Xzd/dZ/nd2sm+IALSyd/AtEJWc9foH
	ha8wCX4+84JLjUUbWy1qDlmEHE7CdD4dZmwx5aA2Etwq5sxm45R09EG7WBJtG3uUHEx5
	zCZSdKlFi2+JqKrzZfXNvNjQVE5GkBeFv2hFaqSuqvApFJY4+9PpVBCiy2ZVGHUyKiCg
	neUZeLUhm816NRU1zJxQm0LaiJQBbFBtmt8boPcBI0sNwRkjnZO76bJ8GjFgof86+SMq
	8V0pF+lmw1wqoklTciB7weJ+Fns4cCYpuZOhmtQtk3LZc0uapZNq5RImCmmc5TV7390p
	jVow==
X-Gm-Message-State: AHPjjUg3WDI4SHRQrI70L5b2yje8BSWdYymEn+Wehb6ogMmaBullEQQ+
	01MiHo5CsF89fcMtc8Ctzw==
X-Google-Smtp-Source: AOwi7QCdmd8A/hPTPJFMAq8pi4dr+gsZGr/q+rjDnQhx1gPzWJWoNvfv0MX50aEK9yzEnxrtX6gQzw==
X-Received: by 10.28.93.146 with SMTP id r140mr484925wmb.133.1504790686621;
	Thu, 07 Sep 2017 06:24:46 -0700 (PDT)
Received: from localhost.localdomain
	(host109-150-130-236.range109-150.btcentralplus.com.
	[109.150.130.236]) by smtp.gmail.com with ESMTPSA id
	z108sm2581622wrc.49.2017.09.07.06.24.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Sep 2017 06:24:45 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Sep 2017 14:24:36 +0100
Message-Id: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
X-Mailer: git-send-email 2.7.4
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [PATCH 1/5] rpi-gpio: Update to 0.6.3
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
X-List-Received-Date: Thu, 07 Sep 2017 13:24:49 -0000

As well integrate with meta-oe bbclass pypi.

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-devtools/python/rpi-gpio_0.6.2.bb | 21 ---------------------
 recipes-devtools/python/rpi-gpio_0.6.3.bb | 14 ++++++++++++++
 2 files changed, 14 insertions(+), 21 deletions(-)
 delete mode 100644 recipes-devtools/python/rpi-gpio_0.6.2.bb
 create mode 100644 recipes-devtools/python/rpi-gpio_0.6.3.bb

diff --git a/recipes-devtools/python/rpi-gpio_0.6.2.bb b/recipes-devtools/python/rpi-gpio_0.6.2.bb
deleted file mode 100644
index 9c72168..0000000
--- a/recipes-devtools/python/rpi-gpio_0.6.2.bb
+++ /dev/null
@@ -1,21 +0,0 @@
-DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
-HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
-SECTION = "devel/python"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=9b95630a648966b142f1a0dcea001cb7"
-
-SRCNAME = "RPi.GPIO"
-
-SRC_URI = "\
-          http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
-          file://0001-Remove-nested-functions.patch \
-          "
-SRC_URI[md5sum] = "9db86fd5f3bae872de9dbb068ee0b096"
-SRC_URI[sha256sum] = "82acff0ef6bbe3cdf6f4dbdd73d96add5294bb94baf7f51c1d901861af3c2392"
-
-S = "${WORKDIR}/${SRCNAME}-${PV}"
-
-inherit distutils
-
-COMPATIBLE_MACHINE = "^rpi$"
-
diff --git a/recipes-devtools/python/rpi-gpio_0.6.3.bb b/recipes-devtools/python/rpi-gpio_0.6.3.bb
new file mode 100644
index 0000000..d0ff00a
--- /dev/null
+++ b/recipes-devtools/python/rpi-gpio_0.6.3.bb
@@ -0,0 +1,14 @@
+DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
+HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=9b95630a648966b142f1a0dcea001cb7"
+
+PYPI_PACKAGE = "RPi.GPIO"
+inherit pypi distutils
+
+SRC_URI += "file://0001-Remove-nested-functions.patch"
+SRC_URI[md5sum] = "e4abe1cfb5eacebe53078032256eb837"
+SRC_URI[sha256sum] = "a5fc0eb5e401963b6c0a03650da6b42c4005f02d962b81241d96c98d0a578516"
+
+COMPATIBLE_MACHINE = "^rpi$"
-- 
2.7.4


