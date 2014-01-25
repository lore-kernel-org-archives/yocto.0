Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 460C4E00405
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:25 -0800 (PST)
Received: by mail-ee0-f48.google.com with SMTP id t10so1383918eei.7
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=sDz9+BN1v2UQ6mS1Gsj+Y+83WaaOXmXmnTUxBV99xcw=;
	b=WBNZAeN/3n2gYZg7eVwbnJWtJQsdVdKnHr92lHelPj+JtlhsZbVLtqdHWMG++vU6mA
	k3tq3gu7+QQjw8XfHcEFzfXMtcWOTWl3yX2R8jYsfY3WJ4SMpJoYrgxLROEb0D6idFdC
	1PMZxYuXlH18f+HJP4AjgAhM+bmz8biWEw3zbzpoDiQXxS5nlF2Qi9DmgP/hinyNIw6+
	mtWIQg3BKjZTIVimPRkdXVq9k1FxNExKFfJwXOAWz34Ucl6xeLRPZ7V4w/dMoxHW2kia
	g02J2uUDiaGgMoV4+lQNXG+4c9xHqMMWF9yAPUgwuOPWmL9OlGhPZHTx+hEE/3stKT1S
	Z/aw==
X-Gm-Message-State: ALoCoQlbVUITSYr3+7DBl+H3c0Ypvdj2DbFfBKHEuaH/KKUtFOtslEkFzQColYDDvy/aphPyFHau
X-Received: by 10.15.41.7 with SMTP id r7mr641379eev.98.1390647445027;
	Sat, 25 Jan 2014 02:57:25 -0800 (PST)
Received: from localhost.localdomain (5-13-179-54.residential.rdsnet.ro.
	[5.13.179.54])
	by mx.google.com with ESMTPSA id 4sm14600656eed.14.2014.01.25.02.57.23
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Jan 2014 02:57:24 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sat, 25 Jan 2014 12:57:00 +0200
Message-Id: <1390647421-4818-9-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
References: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 8/9] u-boot-rpi: Integrate package
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
X-List-Received-Date: Sat, 25 Jan 2014 10:57:26 -0000

Change-Id: I61f2cd7d3b64ea3efac618aa2bb3555e9e79da2a
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bsp/u-boot/u-boot-rpi_git.bb | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot-rpi_git.bb

diff --git a/recipes-bsp/u-boot/u-boot-rpi_git.bb b/recipes-bsp/u-boot/u-boot-rpi_git.bb
new file mode 100644
index 0000000..db5ea84
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-rpi_git.bb
@@ -0,0 +1,29 @@
+DESCRIPTION = "U-Boot port for RaspberryPi"
+
+require recipes-bsp/u-boot/u-boot.inc
+
+DEPENDS += "rpi-mkimage-native"
+
+PROVIDES += "u-boot"
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb"
+
+SRCREV = "6709570cdc947c2a546f96d571551acf4474778c"
+SRC_URI = "git://github.com/gonzoua/u-boot-pi.git;branch=rpi"
+
+S = "${WORKDIR}/git"
+
+UBOOT_MACHINE = "rpi_b"
+UBOOT_MAKE_TARGET = "u-boot.bin"
+UBOOT_SUFFIX = "img"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+do_compile_append() {
+    # Create kernel.img from uboot.bin and name it u-boot.img
+    ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/imagetool-uncompressed.py u-boot.bin
+    mv kernel.img u-boot.img
+}
-- 
1.8.1.4


