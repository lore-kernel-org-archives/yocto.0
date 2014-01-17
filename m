Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43C6EE00820
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 07:16:53 -0800 (PST)
Received: by mail-qa0-f41.google.com with SMTP id w8so3402366qac.28
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 07:16:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=7KfkX8krt9aJxXWZEoh/rHLdkM7tp9en/QoRDtl/OQ8=;
	b=B/6ZKyPGN02+Mjk322EpRHEKorbgReYUwAJh8rJdiSfGQr64L764JlRgk2NH2UQM+i
	PiMGuGiqZqCSaEHGy/plfcthJwG9zn0wkOHE3dGDwIp6PeI/+nhLnpno8rEJIw1uyojr
	g/D43xWhyR97qB+gzUsLPHf4S9h+b7HWRTFkrR2Cs6aht8UVKG8F8rZUfWxsMNIz5qca
	1qi4cXIlATTon4dPSQj+Y14ijt5s3ib7iqkqsluICLB4DdRmLk/JzpVDJMY5Wa+6TkMs
	cA0sD/NecqnMpYctr/oiAG5clM7v81jGHaoeAbzURHRnCBUWvXAH+n07GPjpGO/rXKV3
	udiQ==
X-Gm-Message-State: ALoCoQkl00P/RKd7X1jl6zOUcF+1NLOOAiRp+oSrKgRfvDo+8ZHDmqfT1H6sFas24bExo7/KMC4Y
X-Received: by 10.224.88.70 with SMTP id z6mr4157510qal.14.1389971812839;
	Fri, 17 Jan 2014 07:16:52 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id w8sm14478940qag.15.2014.01.17.07.16.50
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Jan 2014 07:16:51 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 17 Jan 2014 17:16:37 +0200
Message-Id: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi: Update v3.12.4 to v3.12.7
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
X-List-Received-Date: Fri, 17 Jan 2014 15:16:54 -0000

Change-Id: Id721163e3e69946e3c82710bf12851211b493dee
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.12.4.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.12.7.bb | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.4.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.7.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb
deleted file mode 100644
index 17025f2..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "9fbb114990c409406ae20c56871727ff8d4fa6ca"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.7.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.7.bb
new file mode 100644
index 0000000..b71363c
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.7.bb
@@ -0,0 +1,6 @@
+SRCREV = "7b3d6227aa8285f7cbd5b8ec767a840b6ac42477"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.1.4


