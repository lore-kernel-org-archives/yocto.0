Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4578E00949; Sun,  8 Feb 2015 03:58:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D815E00949
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:58:50 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id u10so11808027lbd.7
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:58:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=h7vBrGfJE1F81E05YBuXAArZURiFwkkJ/k0/wzNBMLw=;
	b=evrCAASAETmrqruKRv0PgD3jZZsL2yfwN6mv3FHQnyfhnKqoDVVB6lO+mtKtrPKC1E
	v4R8BlGO27Num0v6xHV88RSfECPrF+cqePwkZzhlRrhZbREwlsBrkghx8hLemTcfwiAl
	zjKxmo4I4tZrIcmhJ7iMaCWwEh8OOw1XkRJ9Ewd3kgrIkVKPDP3rv/dGYbIA7gxnO63q
	Oovq+d7zELHoloGg37Ptr//jLyKDqt1fOFhzR1lg7dkw8mqvB09CXIK4oTzgPGUwpiJu
	TLyOmvRiahrJfU/og2Eukvm5w+rQoeYbQ8k5kT8uFF/HFkpOkCEJSoRxPoRtlBFIa6KR
	tdgQ==
X-Gm-Message-State: ALoCoQn5kSrqpW4oNGWuNc+Qk2WWoNUnMTmKqiIpGNSAbGfAHpyXDIc4yFL3tBx8FWT2PMo0v0c3
X-Received: by 10.112.173.202 with SMTP id bm10mr11379858lbc.24.1423396729886; 
	Sun, 08 Feb 2015 03:58:49 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id f5sm1444085laf.9.2015.02.08.03.58.43
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:58:43 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:58:32 +0200
Message-Id: <1423396716-22626-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
Subject: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi: Refactor kernel recipes
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
X-List-Received-Date: Sun, 08 Feb 2015 11:58:52 -0000

We use this to simplify the update process. Updating a kernel version will not
require renaming the recipe but only tweaking LINUX_VERSION.

Update kernel version:
        - bump SRCREV
        - bump LINUX_VERSION if needed

[Support #26]

Change-Id: I7565ddd1f03cc34c34aa5da92664a0057b415c9a
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi.inc        | 2 +-
 recipes-kernel/linux/linux-raspberrypi_3.10.38.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.10.bb    | 8 ++++++++
 recipes-kernel/linux/linux-raspberrypi_3.12.36.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.12.bb    | 8 ++++++++
 recipes-kernel/linux/linux-raspberrypi_3.16.5.bb  | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.16.bb    | 8 ++++++++
 recipes-kernel/linux/linux-raspberrypi_3.18.5.bb  | 5 -----
 recipes-kernel/linux/linux-raspberrypi_3.18.bb    | 8 ++++++++
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb  | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.6.bb     | 8 ++++++++
 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb  | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.8.bb     | 8 ++++++++
 13 files changed, 49 insertions(+), 36 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index ff0c5ce..c00128d 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -11,7 +11,7 @@ SRC_URI += " \
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-PV_append = "+git${SRCREV}"
+PV = "${LINUX_VERSION}+git${SRCREV}"
 
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG = "bcmrpi_defconfig"
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
deleted file mode 100644
index a0c5012..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "1b49b450222df26e4abf7abb6d9302f72b2ed386"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.bb
new file mode 100644
index 0000000..e5d5bf2
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.10.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?= "3.10.38"
+
+SRCREV = "1b49b450222df26e4abf7abb6d9302f72b2ed386"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
deleted file mode 100644
index e9e9ad7..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "90fa5df724d147564149c7b79cb1ffc571a345ec"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
new file mode 100644
index 0000000..08be83e
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?= "3.12.26"
+
+SRCREV = "90fa5df724d147564149c7b79cb1ffc571a345ec"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb b/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
deleted file mode 100644
index 97947c2..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.16.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.16.bb b/recipes-kernel/linux/linux-raspberrypi_3.16.bb
new file mode 100644
index 0000000..ccc414f
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.16.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?= "3.16.5"
+
+SRCREV = "377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.16.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
deleted file mode 100644
index 663522e..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
+++ /dev/null
@@ -1,5 +0,0 @@
-SRCREV = "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
new file mode 100644
index 0000000..921e702
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?= "3.18.5"
+
+SRCREV = "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
deleted file mode 100644
index a154bcf..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "2a8d45ec0883e3cbdce920855b3461ac77308a5f"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.bb
new file mode 100644
index 0000000..fc9ac89
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.6.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?= "3.6.11"
+
+SRCREV = "2a8d45ec0883e3cbdce920855b3461ac77308a5f"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
deleted file mode 100644
index dc8cf0a..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.bb
new file mode 100644
index 0000000..ae0dc99
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.8.bb
@@ -0,0 +1,8 @@
+LINUX_VERSION ?= "3.8.13"
+
+SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
2.1.0


