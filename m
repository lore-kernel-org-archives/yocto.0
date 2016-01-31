Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4974E00B5C; Sat, 30 Jan 2016 17:19:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C32EE00B45
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 17:19:49 -0800 (PST)
Received: by mail-pa0-f50.google.com with SMTP id yy13so61503748pab.3
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 17:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=HveP8FdHKvXjBoX/hAE+TBDb+0fMs91r79E5GwlY33Y=;
	b=nwKLnMhK6pL9q1GdTJ9gTGI75nHKhLavOR3f7pv4r1yI1MSCY+9NY+S/6i3pEOJtuH
	fht4WS9RG17PK0dsZBNsYZYpTcLIU6bsEiqytMoRE+474SpNHu/8NH6qANBy8cXGoTHt
	S5vok4Vvh9i2j/onLfiD9E4zS+sZzkhjBx6BRXqD1BvvorrIqSSNUi4LN9PO8LOfhod5
	HKrS4FfoGeyQXfwuWBq+l58/Y8jyXqYjNWiOb8TK+5wulAk5whfJdHqyE1IIMYL8xjYX
	MAQzUui/5Nq/QbmgvQ0tD7Mc5ZEyGmAOQwNk6kdMj8/vruPHs0VbPErR0de+4WE7EsFw
	NqbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=HveP8FdHKvXjBoX/hAE+TBDb+0fMs91r79E5GwlY33Y=;
	b=eavDiAGZvhOXFC3Xm0WKvgismIFNghshX4wCFg8IV4D6DLmZqr+/YXuivGTSLiF7Fi
	L/kDiPGap8AQ9Dke9cQNa8IGdzF69L6DFQc51aXMYL0ZDixo9+gakb8UeVqjGdnj2bEe
	vj+MsPK+G9XpXLD8N0g/BUeXMFeT6nT+GyE5hsYfqiMo6h3qRwZmRmWZBaYp71ke9qU7
	M68MlQv6DnU8RPRkedhheXW0OrjxILjqKiiON8qrnTnRrxJulok/wC1VXv2uxe4UV10/
	+VzQ7tNtMH8Tzj1gTm/KkOifNVs+bnxfJjSYo5g0bDnuDB+gKc+S+efxjzawIm7bMtvp
	FR0g==
X-Gm-Message-State: AG10YOSMVlXttdaIUEmakqjAXbgY7b1px9NrFY1YeTxlh65ac+5Cp6sgcCKt8yZ+H/ihXQ==
X-Received: by 10.66.232.202 with SMTP id tq10mr26723061pac.14.1454203189731; 
	Sat, 30 Jan 2016 17:19:49 -0800 (PST)
Received: from haswell.localdomain (c-73-252-206-77.hsd1.ca.comcast.net.
	[73.252.206.77]) by smtp.gmail.com with ESMTPSA id
	n84sm33014543pfa.45.2016.01.30.17.19.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 30 Jan 2016 17:19:48 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Jan 2016 17:19:42 -0800
Message-Id: <1454203182-30343-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.0
Subject: [meta-raspberrypi][PATCH] rpio: Include sys/types.h for caddr_t
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
X-List-Received-Date: Sun, 31 Jan 2016 01:19:53 -0000

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
2.7.0


