Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DF9BE007B6
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 07:59:33 -0800 (PST)
Received: by mail-qc0-f170.google.com with SMTP id x13so5150328qcv.1
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 07:59:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=zKpULL8W+YQEaCuRIguOU/vKSeIhYrqX1+GGnuwxBF0=;
	b=hO2gHLgUcRElGJjRqLG+iFczdPQ+QmOeYFoAFBYq4nOhdpQu8Vp40LzQ/cmdLWjV+5
	lM8JboVqQG9/z2OGJDfoTOxrEphRE24gyvPQiHPLAxVUAbMmw0Lb8HmI3Lke7wScLCmF
	5opOjZZP/H89gaRz+Up6U89OXHbJfWGVbNKqwvcuuSqCmgFdoeF5czphRQZz1J+82v+j
	g6T3P1kFo5xS2mLDrogep02QGRxphYoLGJlqFOrymYBat1mQ1pXvZZn31jk+a/WFr74e
	vL1PAqchXIUKBCYtvx3LQkSal3utB7eYa3i0bXmPoQp4ZMkfxZQQRjiMs2mXIzoaug75
	LBJA==
X-Gm-Message-State: ALoCoQmKn2OGBL4A4QUkL2HbtNMOuh5yq5MgbhghvixmwVCtwWWSvfU/uolvVM9VKjLH3lUL4JXH
X-Received: by 10.229.29.1 with SMTP id o1mr37746375qcc.14.1387295973020;
	Tue, 17 Dec 2013 07:59:33 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id 4sm57745643qak.11.2013.12.17.07.59.27
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Dec 2013 07:59:31 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 17 Dec 2013 17:59:11 +0200
Message-Id: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Update v3.10.18 to v3.10.24
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
X-List-Received-Date: Tue, 17 Dec 2013 15:59:36 -0000

Change-Id: Icf95ec58d39eb187c0cf0fe31fd1822f81f3f038
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.10.18.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.10.24.bb | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.24.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
deleted file mode 100644
index 83bf253..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "b49aafd02fa7572d387acd34550beea5b4c3d239"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.24.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.24.bb
new file mode 100644
index 0000000..2adf7aa
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.10.24.bb
@@ -0,0 +1,6 @@
+SRCREV = "ff9f6d87957877265086ab8368bdabf27d35f491"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.1.4


