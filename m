Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ED48E00C3D; Sat, 27 Feb 2016 07:27:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AD5BE00DEC
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:13 -0800 (PST)
Received: by mail-qg0-f53.google.com with SMTP id y9so87796169qgd.3
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=6qHDn7TN+SdjGcH4Fr/1XGB0aeklX1jzWUMJbJilHw4=;
	b=Y57CDFiMTWO7xzhIORKlNreI0UenzWFjwLA5Mk5g4hlzMrfEy8hL/Jls+2lPGKgWJj
	DnSi0ZqbOZvb68o0XxZmQb3b40K+N7XBmaf8BRamPFm08j/P5DyfjIuBzOmDu6UFWbRV
	8wHzpj9VGjk8X4se4TY3lf3atgo6rmcdjd+yjc0vYVDE+8AAD6wHa1OSTJRN/xeIRoEP
	5VL1Oi5IYhILz/ne+r77eKwZdnpP9o3xCYs4IujJ5ixQObmBP69bsGhtT3FhrTEx2Jv/
	SMwdlrhST6iqgD2SlSwD+gOaIkV6U5ybHgQcCfbwYN1+HYRi6K7TnExoAizzE3tut5uo
	Ri1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=6qHDn7TN+SdjGcH4Fr/1XGB0aeklX1jzWUMJbJilHw4=;
	b=Iab9bQjvCPsCBDwvFb6nZiYDUY+mQV/GKXoX9SSjScbJbYYNFcFUKAdrgmtaIq6ZaD
	s7A1s2Fin/X1vj/RSFlFBi4rgj15bimYHacYrphHRuXtXyinf7cDkJ9e+5L/Lps2uVuA
	TELN/pg2qelRfc1PgWODtD7VBKlHPON2hUlouDDiHCRBt+/L9/ijI8GlfhW20siENyUr
	0T7qrTC0tqKtlfeL83rsm5I0MTlQ1Q5rC4xnJkv3gdbY/Y8lcsRnzqK9OqFeJxFlRZTZ
	jT/jvv9KwvShkIPy5+b3YM5vrli2oNXH+YycR40l6ZhKZ+93V6dXzqJAklyUxxKLBdmQ
	76jQ==
X-Gm-Message-State: AD7BkJKAzu6sfbEbUdWSLBnTdTZwOZz3l6D8iBsSsMls1LmTdL08UUkd+KsoI0h3qhP80g==
X-Received: by 10.140.158.135 with SMTP id e129mr9508566qhe.84.1456586833499; 
	Sat, 27 Feb 2016 07:27:13 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:12 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:46 +0000
Message-Id: <f216583ae91ecd620e0a9e175bb9e38cac15d113.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 07/23] python-rtimu: Fix build with musl
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

ioctl(3) needs to include asm/ioctl.h for its signature

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...0001-include-asm-ioctl.h-for-ioctl-define.patch | 33 ++++++++++++++++++++++
 recipes-devtools/python/python-rtimu_git.bb        |  4 ++-
 2 files changed, 36 insertions(+), 1 deletion(-)
 create mode 100644 recipes-devtools/python/python-rtimu/0001-include-asm-ioctl.h-for-ioctl-define.patch

diff --git a/recipes-devtools/python/python-rtimu/0001-include-asm-ioctl.h-for-ioctl-define.patch b/recipes-devtools/python/python-rtimu/0001-include-asm-ioctl.h-for-ioctl-define.patch
new file mode 100644
index 0000000..4a93a1c
--- /dev/null
+++ b/recipes-devtools/python/python-rtimu/0001-include-asm-ioctl.h-for-ioctl-define.patch
@@ -0,0 +1,33 @@
+From c3aa4af56652b403e304ea5f321acfe289e42922 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 30 Jan 2016 16:07:14 -0800
+Subject: [PATCH] include asm/ioctl.h for ioctl() define
+
+also fixes errors e.g.
+
+../../RTIMULib/RTIMUHal.cpp:208:29: error: '_IOC_SIZEBITS' was not
+declared in this scope
+         return ioctl(m_SPI, SPI_IOC_MESSAGE(1), &wrIOC);
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+Upstream-Status: Submitted
+
+ RTIMULib/RTIMUHal.cpp | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/RTIMULib/RTIMUHal.cpp b/RTIMULib/RTIMUHal.cpp
+index f9c3d15..d968326 100644
+--- a/RTIMULib/RTIMUHal.cpp
++++ b/RTIMULib/RTIMUHal.cpp
+@@ -29,6 +29,7 @@
+ #if !defined(WIN32) && !defined(__APPLE__)
+ 
+ #include <linux/spi/spidev.h>
++#include <asm/ioctl.h>
+ 
+ RTIMUHal::RTIMUHal()
+ {
+-- 
+2.7.0
+
diff --git a/recipes-devtools/python/python-rtimu_git.bb b/recipes-devtools/python/python-rtimu_git.bb
index f51a234..63c92b3 100644
--- a/recipes-devtools/python/python-rtimu_git.bb
+++ b/recipes-devtools/python/python-rtimu_git.bb
@@ -5,7 +5,9 @@ SECTION = "devel/python"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://../../LICENSE;md5=96cdecb41125f498958e09b72faf318e"
 
-SRC_URI = "git://github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master"
+SRC_URI = "git://github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master \
+           file://0001-include-asm-ioctl.h-for-ioctl-define.patch;patchdir=../.. \
+          "
 SRCREV = "b949681af69b45f0f7f4bb53b6770037b5b02178"
 
 S = "${WORKDIR}/git/Linux/python/"
-- 
1.9.1


