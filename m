Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FEC3E00A0C; Sat, 11 Feb 2017 21:27:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 381B6E00A04
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:08 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 204so6503726pge.2
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=P6zC7GF5T7o/QSRbyBqRHXX6gCk/kvszLyAt5mHWv0o=;
	b=LtXIXbnLomlE1HUBw/rt420YxXsUFIfzim7tzV+D40VevzR7c2/1jL/3/uFphlg66w
	r8MD9KqReBh0C/HHAtbkWMvZA2kSFOIBNQMXDbT08XjWhtUydlGXd/r5odF1ZuI0REJv
	C52Rr6ExFR3G4hbh9YOQL7HbqpUVZhGGNY/rtFvpQnSN6gsi1aoUs1pY8qv6htHTCe7J
	/1jc+JFxm3OGJwrqHyo7dwrAdtWVFKH4z2Qj3T8Ac08GrgV5arfXJAahk7/hp0uLGTk4
	SMdC80miQCcJrTbQDEUG7CeXcJF4Tcq8bO674bIMm2SRORjniWOtE9/F/kQs2YKDXeYi
	abBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=P6zC7GF5T7o/QSRbyBqRHXX6gCk/kvszLyAt5mHWv0o=;
	b=GBFrA6q4aH52u3FBkGuHDx8hZm0aPhiJIArpcBHqgZk2uh/t151xvDjG8b5M5G0UA3
	OI++R/rqL2LH9oJi5obi4XisYptCpJsn44WaMwWPIiP/YcRTep8JMh0ozMnKvjkCOKOO
	20RUPkXW54qGoHfG0IU5KBtuj2hCygYr+nbGKDykDvf28+BoJGyCCYvejwtVj/1TEi0I
	GuNpsxuOVWHZsqv61HEl5BtCc/V34a0vJX+UEi+PckKfZILXfr37Hc/0rsfPXir2ZGvb
	Qfa2GL9IeKXoH84PvnETt+jWUlXA0wMOZp872LwPil/lcheVe4YObm5vJ/0+oTgZk4Je
	rt8A==
X-Gm-Message-State: AMke39nmom6DRK8R6vcAWTINS+Iw/gSyDnxDjCLrV5B31tdy17pcFYuybk28pYGCetK2eA==
X-Received: by 10.98.88.133 with SMTP id m127mr19313637pfb.155.1486877228513; 
	Sat, 11 Feb 2017 21:27:08 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f3sm13549604pfd.10.2017.02.11.21.27.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:27:08 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 11 Feb 2017 21:26:49 -0800
Message-Id: <20170212052655.12342-5-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170212052655.12342-1-raj.khem@gmail.com>
References: <20170212052655.12342-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 05/11] linux-raspberrypi_4.9.bb: Upgrade to 4.9.9
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
X-List-Received-Date: Sun, 12 Feb 2017 05:27:10 -0000

Fix dtbo builds for arm64

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  5 ++--
 2 files changed, 32 insertions(+), 2 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch b/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
new file mode 100644
index 0000000..e8bc52e
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
@@ -0,0 +1,29 @@
+From 922ce1fd0eb810b713f6ffa9a7ab97c11b6e38cf Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Fri, 10 Feb 2017 17:57:08 -0800
+Subject: [PATCH] build/arm64: Add rules for .dtbo files for dts overlays
+
+We now create overlays as .dtbo files.
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ arch/arm64/Makefile | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
+index 3635b8662724..822fefeb1cd0 100644
+--- a/arch/arm64/Makefile
++++ b/arch/arm64/Makefile
+@@ -113,6 +113,9 @@ zinstall install:
+ %.dtb: scripts
+ 	$(Q)$(MAKE) $(build)=$(boot)/dts $(boot)/dts/$@
+ 
++%.dtbo: | scripts
++	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
++
+ PHONY += dtbs dtbs_install
+ 
+ dtbs: prepare scripts
+-- 
+2.11.1
+
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index cffea1a..d414100 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,9 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.4"
+LINUX_VERSION ?= "4.9.9"
 
-SRCREV = "8b0be887f834e7eccf0de3edf630003880779a5f"
+SRCREV = "bc589fd786cec5bda91c32c683f1c3aeca9c0560"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
+           file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
 require linux-raspberrypi.inc
-- 
2.11.1


