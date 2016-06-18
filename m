Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D6ECE00CD0; Sat, 18 Jun 2016 04:06:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39C89E00DFC
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2016 04:06:52 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id k184so3289306wme.2
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2016 04:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=PMa0a6YJZVZAIUkjiWz8APMDc+iAI0qlLv6378bPbS0=;
	b=D6DFlxCiQbDtp9vaG3EkqkhKuEQeGsNBXH5t1Neldyib94h0xt2PzWs4fdXVz2Cxdz
	U4Uub9Q2Oby9AmhPYgQ6cDJhAMXuMv5hV+2TnAOrN4jFPPPF9BXy2o+EwK4O8R8zd7nI
	iUcM5FAO5i8XuD2FqN0zM4vgsJ19KmNJCB7tDBYIosEbjoEz3bMsPxWxx0UHoMsRccBt
	TRZFhi4nMdHETt9a1MT/Z4kCCKZO7t0MV/9Sy1n1ZExnuhoP4d7r3INmlOffzO1YPD6V
	8uQXsSAdn6mey/fy1be4pDgzX6NvmQ35anTT4wN344YRd4PoEo8DfpILtazQcOd9qs4c
	a3kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=PMa0a6YJZVZAIUkjiWz8APMDc+iAI0qlLv6378bPbS0=;
	b=RWU1GgOIUJRj9mpGy/pGXUZUpRftQkNt9vJmh/iDMXj5SUMD0Mlc/8x+PjL862RIG7
	qJ/NZMy98dnmeP57rEkTdEdVZ+u7wLM1ArGrSK7WvphMk7z7CgqivQFN63UCcCLJ9yac
	e75Kmq3fLIshEAjJQpoZpBXPFAPH5rcf1gzOL+5JdRZjsBK+oQhTtaE1dmBnlHjkID51
	BOCdUXTBLE0mMu6FXbHm8ewu/WjUcrwl9gXKkt6oPYHVQSbcaJD41ous7PqutwzwOU/L
	xDYNb40iCQ3ngBWC+0qx5EKrJh93fjY7i7PPIZQ5EEeD3zlBldLU4GlS0gPIW0j1Pdmk
	kI+A==
X-Gm-Message-State: ALyK8tISVFVjdEGsMZsXjOU+MYb7+NP+FOokgk76GklbblLN1Gd9t5lvAlacqWXhhHW+Cw==
X-Received: by 10.195.18.3 with SMTP id gi3mr7048571wjd.66.1466248012003;
	Sat, 18 Jun 2016 04:06:52 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	u71sm3201406wmu.13.2016.06.18.04.06.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Jun 2016 04:06:51 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sat, 18 Jun 2016 12:07:05 +0100
Message-Id: <1466248026-4838-4-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
References: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V3 3/4] rpi-mkimage: Remove unused recipe
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
X-List-Received-Date: Sat, 18 Jun 2016 11:06:55 -0000

The rpi-mkimage tools are no longer used. Recent Raspberry Pi firmware can
directly boot a Linux kernel image using device tree and mainline u-boot
supports Raspberry Pi without the use of these tools.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-bsp/rpi-mkimage/rpi-mkimage/License        | 25 ----------------------
 .../open-files-relative-to-script.patch            | 17 ---------------
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb         | 22 -------------------
 3 files changed, 64 deletions(-)
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/License
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb

diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage/License b/recipes-bsp/rpi-mkimage/rpi-mkimage/License
deleted file mode 100644
index 2582681..0000000
--- a/recipes-bsp/rpi-mkimage/rpi-mkimage/License
+++ /dev/null
@@ -1,25 +0,0 @@
-Copyright (c) 2012, Broadcom Europe Ltd
-All rights reserved.
-
-Redistribution and use in source and binary forms, with or without
-modification, are permitted provided that the following conditions are met:
-    * Redistributions of source code must retain the above copyright
-      notice, this list of conditions and the following disclaimer.
-    * Redistributions in binary form must reproduce the above copyright
-      notice, this list of conditions and the following disclaimer in the
-      documentation and/or other materials provided with the distribution.
-    * Neither the name of the copyright holder nor the
-      names of its contributors may be used to endorse or promote products
-      derived from this software without specific prior written permission.
-
-THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
-ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
-WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
-DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
-(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
-LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
-ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-
diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch b/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
deleted file mode 100644
index fa9e88b..0000000
--- a/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
+++ /dev/null
@@ -1,17 +0,0 @@
-When using open, use path relative to imagetool-uncompressed.py
-
-Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
-
-Index: git/mkimage/imagetool-uncompressed.py
-===================================================================
---- a/mkimage/imagetool-uncompressed.py
-+++ b/mkimage/imagetool-uncompressed.py
-@@ -18,7 +18,7 @@ re_line = re.compile(r"0x(?P<value>[0-9a
- mem = [0 for i in range(32768)]
- 
- def load_to_mem(name, addr):
--   f = open(name)
-+   f = open(os.path.dirname(__file__) + '/' + name)
- 
-    for l in f.readlines():
-       m = re_line.match(l)
diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
deleted file mode 100644
index cce91d7..0000000
--- a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
+++ /dev/null
@@ -1,22 +0,0 @@
-SUMMARY = "RaspberryPi tool to produce kernel.img"
-LICENSE = "Broadcom"
-LIC_FILES_CHKSUM = "file://${WORKDIR}/License;md5=957f6640d5e2d2acfce73a36a56cb32f"
-SECTION = "bootloader"
-
-DEPENDS = "python"
-
-SRCREV = "f5642106425d430e1f82ee064121a5fd0e05a386"
-SRC_URI = " \
-    git://github.com/raspberrypi/tools.git;branch=master;protocol=git \
-    file://License \
-    file://open-files-relative-to-script.patch \
-"
-
-S = "${WORKDIR}/git"
-
-do_install () {
-    install -d ${D}${bindir}
-    install -t ${D}${bindir} mkimage/*
-}
-
-BBCLASSEXTEND = "native"
-- 
2.1.4


