Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C517E00C5B; Sat, 27 Feb 2016 07:27:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56138E00DDF
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:15 -0800 (PST)
Received: by mail-qg0-f53.google.com with SMTP id y89so86674557qge.2
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=R9g4Luq9y1MSSE55sXdyoxSKerYEAmRXZaHgD1cO1qM=;
	b=W/fU5QqPUF4NOO8hToTqxb8oqCdGJlr7QQEkJ8H9V1VhMbV23uz8jHW+8y0t+Xmmue
	heEnn1du3rKRQI4vupFqeIW56+3p5evPnTq+SPVSNcygumnk0Cfz/q/ZLZ4f+oDUlCqp
	f4EEbfy+Lxs8sXT8gRsJKid1HR25EmNsFMDoZvvZpo4MYLdgTxGffgVtOhu20FvlM8YI
	dPKBMlp2125abgIy2d4eUzf5VxjpnCHG7AG3/0A5c7tV9bGDTeaDvOXlx5zDD18M5gUv
	5PiBoE+vQXK2Eh1OcEMh3i7VKbPIwlcepQJTAYnndEKA5C/a7rBXkL6Inh1rLbPz6nEz
	uwgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=R9g4Luq9y1MSSE55sXdyoxSKerYEAmRXZaHgD1cO1qM=;
	b=bYlYNczSIZI8pnQcIeuL8lF9UA1T7U6X4NJYaXHXAbTyn5Zqs5ReHD6sMNDyLL4U8Z
	5v+K1hUM1eJGVWSZgFIrQeQx7p8e8CTuH8ao8N02uoPeePVqlEEVlP25r5d06dJ2Coha
	Vf8kaxeGrBjTO5iL9NkkBl2CK6fd8EGwN296+AATyTAQn44vVGgtPxsaMhI/huumn+k/
	H+RlGYvwzjScGUedT9jNMtvCll/psjRkcAI0VUv2T8+ds1DaVR4D0BJBmMeJ7vSstA8u
	36DUX9qNha30aZswf5SszhZsMpDrQfyWEzicGICm8PzQLrKIgYmaChv3Fuo0rcub/gwF
	Kz7w==
X-Gm-Message-State: AD7BkJLgnonT/PA6VkRGDpYKAhlx5LJCWbpHpQ5ZOB74FwHOdRCCMN6J0jl0pliFcnZa+g==
X-Received: by 10.140.136.210 with SMTP id 201mr9528835qhi.6.1456586834986;
	Sat, 27 Feb 2016 07:27:14 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:14 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:49 +0000
Message-Id: <3ab781f1bae8e3e0d0e8bff3512f56e30cf11429.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 10/23] rpio: Include sys/types.h for caddr_t
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:27 -0000

Fixes build with musl

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...-types.h-explicitly-for-getting-caddr_t-d.patch | 30 ++++++++++++++++++++++
 recipes-devtools/python/rpio_0.10.0.bb             |  6 ++---
 2 files changed, 33 insertions(+), 3 deletions(-)
 create mode 100644 recipes-devtools/python/rpio/0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch

diff --git a/recipes-devtools/python/rpio/0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch b/recipes-devtools/python/rpio/0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch
new file mode 100644
index 0000000..bed9749
--- /dev/null
+++ b/recipes-devtools/python/rpio/0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch
@@ -0,0 +1,30 @@
+From c86bfacc98d58244f532626954ed00d84ecfa82d Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 30 Jan 2016 17:12:37 -0800
+Subject: [PATCH] include sys/types.h explicitly for getting caddr_t definition
+
+Helps fixing build on musl where sys/types.h is not included indirectly
+as happening on glibc
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+Upstream-Status: Submitted
+
+ source/c_gpio/c_gpio.c | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/source/c_gpio/c_gpio.c b/source/c_gpio/c_gpio.c
+index 25a04ca..70df632 100644
+--- a/source/c_gpio/c_gpio.c
++++ b/source/c_gpio/c_gpio.c
+@@ -29,6 +29,7 @@
+ #include <stdint.h>
+ #include <stdlib.h>
+ #include <fcntl.h>
++#include <sys/types.h>
+ #include <sys/mman.h>
+ #include "c_gpio.h"
+ 
+-- 
+2.7.0
+
diff --git a/recipes-devtools/python/rpio_0.10.0.bb b/recipes-devtools/python/rpio_0.10.0.bb
index 1cc1661..69ecb6f 100644
--- a/recipes-devtools/python/rpio_0.10.0.bb
+++ b/recipes-devtools/python/rpio_0.10.0.bb
@@ -7,9 +7,9 @@ LIC_FILES_CHKSUM = "file://README.rst;beginline=41;endline=53;md5=d5d95d7486a4d9
 
 SRCNAME = "RPIO"
 
-SRC_URI = "\
-          http://pypi.python.org/packages/source/R/RPIO/${SRCNAME}-${PV}.tar.gz \
-          "
+SRC_URI = "http://pypi.python.org/packages/source/R/RPIO/${SRCNAME}-${PV}.tar.gz \
+           file://0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch \
+           "
 S = "${WORKDIR}/${SRCNAME}-${PV}"
 
 inherit setuptools
-- 
1.9.1


