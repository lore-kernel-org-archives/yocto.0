Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f46.google.com (mail-qe0-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2210E0178C
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:39 -0800 (PST)
Received: by mail-qe0-f46.google.com with SMTP id s14so391205qeb.19
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=NemXoEtdE+nv7RV2UWr54Uv6tQx+MmMImb4SBHMSvjg=;
	b=G/0RxxMP3wPCxasLvJz6DFkNhuodg5FclMYEob9/p8vf3HurDR5BG/k7rnHYRv0+IP
	cKv2CHuQWhrSMGbTNstdKtwrgheEkr23JufptgZrnSBEUEUbm6y+8CzSUq1siwQf+QtQ
	yLNe6aG+j7bvG1tSEUyPpgXmC/XWs6ozZLIVmFG1XoWfjHkYSF6JEW8EMG+JhMRWlK8U
	apIht89xwzY5NFHbOIRxABF1yxXc8OVRWHwHKFZYZTtRq/jNthVHurPKbKlavpiAVvfW
	nU8Pw4ogdTeCDQ5F6vx66ULmLHjg4RWLl4cCGTXVv5vQqJehz42tFnACaJwwBwPpYKR3
	iWhA==
X-Gm-Message-State: ALoCoQnCGJ3QHP2lq3Zso7LU/8dsVDhnzel67Q4WqwVucuKDJ1k5PjVCrCLNWiL83hkosSofBaUo
X-Received: by 10.229.101.74 with SMTP id b10mr57304661qco.8.1384359579419;
	Wed, 13 Nov 2013 08:19:39 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id p17sm77086894qak.4.2013.11.13.08.19.37
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 08:19:38 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 18:19:22 +0200
Message-Id: <1384359566-32315-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH V2 2/6] linux-raspberrypi: Update available versions to HEAD
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
X-List-Received-Date: Wed, 13 Nov 2013 16:19:40 -0000

Update 3.11.0 to 3.11.7 HEAD.
Update 3.6.11 to HEAD.

Change-Id: Iacd8f78b418b0bd6d8513b97ce57ce0108057850
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.11.7.bb | 6 ++++++
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.7.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
deleted file mode 100644
index 1ae39b2..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "d7474694bdc9836af17f4b4d839509f9aad7ffa7"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.7.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.7.bb
new file mode 100644
index 0000000..68c890c
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.11.7.bb
@@ -0,0 +1,6 @@
+SRCREV = "b975d0aab6816dd1dc4ff938a0c95bc551831163"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
index 5314f5d..ba2c704 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
@@ -1,4 +1,4 @@
-SRCREV = "cbd6672e7e1b2dc5026f5dc7929a13a9a68f2a62"
+SRCREV = "10bc58289a7ebf6b1ab724636e0a16116278e339"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
1.8.1.4


