Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 610D5E01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:42 -0800 (PST)
Received: by mail-qc0-f180.google.com with SMTP id e9so337907qcy.11
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:47:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=9YVWqciLCuF/C/YKRcL6jp39dfknPqnQIu7Kchti5g8=;
	b=CcN6fhKEDBBURSq6POd9V6l5rp57xeiQMwzpnsqWXrpqgTXGCMDV57iW/CuG3DU5+5
	1UC4oZqvyAAMakV2jTz6CORBi2cIDqCr30kbZtH46Feym0CvVmBtos7jlwEOLZPPAKrW
	4DW7QRtJZIHbbDMV4zsAOVpImDwscC+r2z3x+EOGDwdlHLU1MGkQHzmXeYlnZNgRQ9Yc
	2+qhu2vy+t8NB2rF4N4cYOPKcfkuEpNzpqiuabs5rIth2d8uDCQOnJisOCmqSIN26jwC
	OGkHubmkwaLVAIjnnRj/4bEZpqX3GXkQWPR71wkgf7NwemvTD5RxzO46KPRWzqFpxeSG
	HjmA==
X-Gm-Message-State: ALoCoQk7ATSSahJVtNLRk8ZPYwttmgYPgZsuvO6yQK6Z1mgwZTC9f4s2+QRWjPdkLNqqQvFb9V9V
X-Received: by 10.49.86.35 with SMTP id m3mr66852223qez.7.1384357662074;
	Wed, 13 Nov 2013 07:47:42 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id j15sm10643621qaa.6.2013.11.13.07.47.39
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 07:47:41 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 17:47:26 +0200
Message-Id: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Move patch in inc file
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
X-List-Received-Date: Wed, 13 Nov 2013 15:47:45 -0000

In order to avoid duplicated code, move sl030raspberrypii2ckernel.patch
in linux-raspberrypi.inc.

Change-Id: I8c3e7a70224672a8def6518baecd4ef86bbb15c4
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi.inc       | 2 ++
 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb | 4 +---
 recipes-kernel/linux/linux-raspberrypi_3.2.27.bb | 4 +---
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb | 4 +---
 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb | 4 +---
 5 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index e756b57..3397bcb 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -11,6 +11,8 @@ PV_append = "+git${SRCREV}"
 
 S = "${WORKDIR}/git"
 
+SRC_URI += "file://sl030raspberrypii2ckernel.patch"
+
 # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
 KERNEL_DEFCONFIG = "bcmrpi_defconfig"
 
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
index 1ae39b2..b197289 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
@@ -1,6 +1,4 @@
 SRCREV = "d7474694bdc9836af17f4b4d839509f9aad7ffa7"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y"
 
 require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
index cc4ee38..7c593a8 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
@@ -1,6 +1,4 @@
 SRCREV = "ada8b4415ff44d535d63e4291a0eca733bc2ad0f"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27 \
-           file://sl030raspberrypii2ckernel.patch \
-          "
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27"
 
 require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
index 5314f5d..5f173f9 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
@@ -1,6 +1,4 @@
 SRCREV = "cbd6672e7e1b2dc5026f5dc7929a13a9a68f2a62"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y"
 
 require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
index dc8cf0a..613c172 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
@@ -1,6 +1,4 @@
 SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y"
 
 require linux-raspberrypi.inc
-- 
1.8.1.4


