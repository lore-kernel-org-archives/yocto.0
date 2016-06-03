Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 532A1E00DF2; Fri,  3 Jun 2016 12:58:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52D12E00DEA
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 12:58:51 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id a136so1697386wme.0
	for <yocto@yoctoproject.org>; Fri, 03 Jun 2016 12:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=PMa0a6YJZVZAIUkjiWz8APMDc+iAI0qlLv6378bPbS0=;
	b=aAqk2uJ6QwB8u+P95bVYMTmkN2Xovxwd32KwFxIH6kkoxJwRLjv9iCeiHApNitUbL9
	ZYqCuMkpOFN2qzer6hiv9qLdqKo7DgqWwtUl0nS1Hkwml5Ep86SmsrKFisGarf+WjpM7
	60vntNpugg5vnIjt0pqBaFO/4L/bukoC3Jx5vHVwrD6EXhaT60k+CMuBeqUYPHPPOlA1
	WXdI68VOQkBCngdBLOtgubWA+WRvt9g7LIIh1ZS23SQIoCBXD+uD2tKd78oX5UbOqNhJ
	6GXUcaxARDIidTLhvHNckm76Rk/b4shQ2x8XRiU1pjLmkgsJ6Rlc7JueRh2f83LiBHwR
	R48w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=PMa0a6YJZVZAIUkjiWz8APMDc+iAI0qlLv6378bPbS0=;
	b=gro72ESvy8P5otZ6tP638aDRJqYqN/w/3KU9jvRgNsLbziSmKYP+Fzpr/zmb0jT9MM
	m5+oS4VHy+D5aEAKefaY27IrtpWzevCR+OlcoBYR4Br1Keh3ajU0y0BHCFF+OV1GXiCQ
	GnKtPJfb+ypk+2MR1fzfg+JrJpxGuw9dcHipeSjsbFr6mLNhOof60wp0TjZPwWyCOoUm
	FxC2O3Us+Yoso4tSeogQ0eFD8x/AdeXGJcuoXdmZ6WdHl/oPOr3XTWNqx8M7xvH+W/Zh
	Pw+SRA9SVX9PNINzWzKByy7wVA18RTEJtUMFY1RiK4XAILi05S46Chs7DehgI7ZswfJy
	PHPw==
X-Gm-Message-State: ALyK8tKjYg3vGL+W1fg8Q1FLaUFl3OugWheZHppTjfkOnXSAfAl1NLBi7XnSUJv/7++Lzg==
X-Received: by 10.28.134.199 with SMTP id i190mr1082974wmd.26.1464983931239;
	Fri, 03 Jun 2016 12:58:51 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id v5sm7219500wjv.36.2016.06.03.12.58.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Jun 2016 12:58:50 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Fri,  3 Jun 2016 20:58:59 +0100
Message-Id: <1464983940-32210-4-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
References: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
Subject: [meta-raspberrypi][PATCH V2 3/4] rpi-mkimage: Remove unused recipe
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
X-List-Received-Date: Fri, 03 Jun 2016 19:58:57 -0000

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


