Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C0D0E00B45; Sat, 30 Jan 2016 16:26:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DEB5E00B3A
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 16:26:36 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id yy13so61110215pab.3
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 16:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=3sbyZkwnhESPIm+zxsYiS4AZJQi34gEEcCg5GUUYvfk=;
	b=UZ1S8s2n+AnmX0271i3FeqWkrslWVNABjeQgTXT8tWmgiihe0FkFrsSZj4rLiLCqN4
	F1pkhtdx8/sEze6JQWD9A09wEYSqvANE8C5rOZn2i3mk8vtoIsy8OrAslM4/1y+w0Hdh
	FnOCin2mvBGTTdHF6Ci2WKfGLEQgT4U1DqcgLgkSFf30ZTysodGZUK6RkHriN+P5xlYe
	Mp6UPbu0MOG0CnTQeGbGSo7w6BasjrI+/IyWemUBki9A9OykXiChOEzRj8AvY4xpo4rO
	OoCWjxyodyH1LcfjtxCcIBTeEznWI9VB7otVjyGcA1swuqBMvjlvUPQizG4pqdxT/pGc
	mH6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=3sbyZkwnhESPIm+zxsYiS4AZJQi34gEEcCg5GUUYvfk=;
	b=Mx4+I7/fvTEzH6KlEUROiztGLItEoTwNCmoFgrll+lhiqu4BP94rEZ+3stRJidU4oE
	eDCXJ0gvGsUrMx1Bmumu6g1iMNJLnS3t2cWa91jKKOqohjHD3XzDelST9FPW1dK9T4wH
	DzyDGdGGkSqS8DwupXBXzFqfeGmOimkyk0WH3vlhUfDhpg8nYDJK3roWaujZ1tWIsga+
	uSzAS+0JF5QSYanp88v/BlJd8oXnWOQgU5qlIBg9aKprDr6X8hcudigyse9tXWzftxB0
	WN2AKoUqgrz03JdE+JkdCaefkV53hK/r83VV6dDs8TJVql768O9aEVi0VZ17zevFBdku
	KIgQ==
X-Gm-Message-State: AG10YOR3w4rmWnLUs49OBxfks6tC9Hypjvea2yvM7hLFHMH0r1psBLFBo0Nczb6y8BaGDg==
X-Received: by 10.67.14.234 with SMTP id fj10mr25980960pad.149.1454199996212; 
	Sat, 30 Jan 2016 16:26:36 -0800 (PST)
Received: from haswell.localdomain (c-73-252-206-77.hsd1.ca.comcast.net.
	[73.252.206.77]) by smtp.gmail.com with ESMTPSA id
	b28sm32891275pfd.24.2016.01.30.16.26.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 30 Jan 2016 16:26:35 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Jan 2016 16:26:28 -0800
Message-Id: <1454199988-15502-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.0
Subject: [meta-raspberrypi][PATCH] python-rtimu: Fix build with musl
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
X-List-Received-Date: Sun, 31 Jan 2016 00:26:41 -0000

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
2.7.0


